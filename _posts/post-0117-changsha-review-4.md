---
title: 长沙项目总结 4
date: 2016-07-22
keywords:
tags:
...

长沙项目总结 4 -- 传感器模块选讲（LMS 和 IMU 和 UR）
===================================================

[【回到目录】](post-0113-changsha-review.html){style="font-size:80%; color: red;" title="post-0113-changsha-review.md"}

>   简介如何写一个传感器代码，为算法模块提供接口；

## LMS

![](http://whudoc.qiniudn.com/2016/lms_illus.png){align=right .w13}

在阅读了 [LMS 说明文档](http://gnat-tang-archive.qiniudn.com/lms.pdf) ，明白
LMS 数据采集和存储基本原理后，LMS 是我完成的第一个传感器模块。

代码实现上，主要文件有

-   lmsreader.h
-   lmsreader.cpp
-   lmsreaderconfig.h
-   lmsreaderconfig.cpp
-   lmsreaderconfig.ui

其中 `lmsreader{.h, .cpp}` 是实现 LMS 功能的类，
`lmsreaderconfig{.h, .cpp, .ui}` 是对 LMS 进行设置的界面。
基于【界面（相当于一个代理）和类（实际干活的人）应当低耦合】的原则，
lmsreaderconfig 界面只做简单的 validation, confinement，将按钮对应相应的函数，
内部都是在调用 lmsreader 的函数。
（关于低耦合，详细见我们之前的文档：
[changsha/modulize.md at master · district10/changsha](https://github.com/district10/changsha/blob/master/doc/modulize.md)）

LMS 提供的基础功能有

-   `QString getAddress()`, 获得 LMS 的 IP 地址
-   `quint16 getPort()`, 端口
-   `void turnOnReading()`, 开始读取
-   `void turnOffReading()`, 停止读取并保存
-   `void getAngleStartEnd()`, 请求 LMS 设置: 扫描起始角
-   `void getFrequencyAngleresolution()`, 请求 LMS 设置: 扫描频率, 角度分辨率

扩展功能（其实这些代码只要运行过一次就好，因为 LMS 的设定都要固定，不需要随时调整）

-   `void authorize()`, authorize 后才能设置扫描角度分辨率, 恢复出厂设置, etc
-   `void setFactoryDefault()`, 恢复出厂设置
-   `void saveSettings()`, 保存设置

Signals (public)

-   `void angle_start_end(int beg, int end)`, 扫描角度范围
-   `void frequency_angleresolution(int freq, double res)`, 频率,角度分辨率
-   `void authorization_passed(bool auth)`
-   `void scanning(int i, int freq)`, for showing 1/50~50/50 or 1/25~25/25

下面直接看代码。

首先我们定义了一些标志位，方便 LMS 在不同条件下工作。

```cpp
#ifndef LMSREADER_H
#define LMSREADER_H

#define LMS_USE_THREAD              (  true   )
#define LMS_PARSE_ON_THE_FLY        (  true   )  // on the fly: slightly slower
#define LMS_PRINT_SCAN_BUF          (  false  )  // flags for debugging
...
#define LMS_PROFILE_SIZE            (  50*60*5 )
#define LMS_DEFAULT_ADDRESS         ( "192.168.0.1" )
#define LMS_DEFAULT_PORT            ( 2111 )
#define LMS_PROFILE_POINTS_NUM      ( 541 )
...

#define M_PI (3.14159265358979323846)

#include "datastruct.h"
#include "utils.h"
#include "logger.h"
#include <QStringList>
#include <QTcpSocket>   // 提供 TCP 网络功能
#include <QHash>
#include <string>

#ifndef Q_MOC_RUN
#include <boost/thread.hpp>
#include <boost/thread/mutex.hpp>
#include <boost/thread/condition.hpp>
#include <boost/chrono/chrono.hpp>
#endif
```

其中最重要的是 `#define LMS_PARSE_ON_THE_FLY`，它决定了 LMS 采集到的数据要不要在线转化为坐标点。
这里用的是宏而不是 enum hack，主要考虑的是这些变量还要被算法模块用到，enum hack 有作用域，在外部
使用起来没有宏方便。那个 `M_PI` 是从 math.h 拷贝来的（那几个
`USE_MATH_DEFINITIONS` 之类的几个破宏真是太麻烦了，所以我索性给它拷贝过来了）。

还用到了 boost 库的多线程，所以加上了它的头文件。`boost/chrono/chrono.hpp` 原本是要做时间戳，
但后来我们用了 Qt 的 QDateTime，所以其实已经被废置了。

至于那个 `#ifndef Q_MOC_RUN`，我们是碰到了问题才加上的。说是
“我们不希望 Qt 的 `moc`{.bash} 对 Boost 的头文件进行 moc，所以只在 moc 前 include。”，
但我其实不懂，为什么 moc 要处理 boost 的代码？……

LMSReader 通过 TCP 和 LMS 连接，进行通信，它首先集成至 QTcpSocket 类。这个类主要提供：

-   `readyReady` 信号，当数据来了的时候，这个信号被 emit；
-   `read` 函数，可以读取网络数据，类似的还有 `readAll` 函数，等等，它们返回的都是 `QByteArray` 类型的数据；
-   `write` 函数，可以写出数据。

下面是主要代码：

```cpp
class LMSReader : public QTcpSocket
{
    Q_OBJECT

private:
    enum LMSAction { GET_FREQ_ANGRES, SET_FREQ_ANGRES, GET_ANGBEG_ANGEND, SET_ANGBEG_ANGEND, ...  };
    typedef QHash<LMSAction, QString> ActionType;
    const static ActionType actions;
    // 这是过度工程的遗迹
    static ActionType configureActions( );

    enum LMSAuth {
        AUTH_MAINTENANCE          = 0x02,
        AUTH_AUTHEDCLIENT         = 0x03,
        AUTH_SERVICELEVEL         = 0x04,
    };
    typedef QHash<LMSAuth, QString> AuthType;
    const static AuthType auths;
    // 这也是过度工程的遗迹
    static AuthType configureAuthLevels( );

    // 写过几次代码，你就记住了 static 对象，【只】有 int 型可以在声明的时候就初始化。
    // （也不用再在类外再定义）
    const static int lmsAngleMin  = -45;
    const static int lmsAngleMax  = 225;

    enum LMSUserLevel {
        MAINTENANCE               = 0x02,
        AUTHORIZED_CLIENT         = 0x03,
        SERVICE                   = 0x04,
    };

    enum {
        // STX, ETX 这两个 ASCII 字符了解一下是不错的，前者是
        // STX: start of text，后者是
        // ETX: end   of text
        STX                       = 0x02,
        ETX                       = 0x03,
        AUTHORIZATION_SUCCESS     = 1,
        AUTHORIZATION_FAULURE     = 0,
        ANGLE_SCALE_FACTOR        = 10000,          /* 1/10000 Hz   */
        FREQUENCY_SCALE_FACTOR    = 100,            /* 1/100 Degree */
    };

    QString address;            // LMS 的 ip 地址
    quint16 port;               // LMS 的端口，默认 2111，LMS 相当于一个服务器，
                                // 它会给每一个连接发送数据（要先请求 LMS 发送数据）
    QByteArray lmsBA;
#ifdef LMS_PRINT_PROFILE_SAMPLE
    QByteArray zgBA;
#endif

    int lmsFrequency;           // 一些变量
    double lmsAngleRes;
    double lmsAngleBeg;
    double lmsAngleEnd;
    size_t lmsCount;

public:
    bool isRun;
    bool connected;
    int profileCur;
    boost::mutex mutex;
    vector<QStringList> profiles_raw;
    profile_t profilesX[ LMS_PROFILE_SIZE ];
    ...
```

这里值得一提的是 profilesX，它原来也是用的 vector，但是老出问题，后来发现原来是 `push_back` 太多后，
vector 的首地址就换了位置（原来的地方放不下，于是它重新分配了一个连续空间），于是我们写死了大小，
换成了数组。

不过现在知道，vector 也可以预留大小==，定义的时候直接用 `vector<T> v(t, a_big_number)` 就可以了啊。

另外值得一提的是那个 `bool isRun`，原来我们使用的是函数内的静态成员，但实际用了才发现我们的两个 LMS 凌乱了，
因为两个成员 lms1 和 lms2 居然使用了一个 `isRun`，但它们应当是独立的。这也是实践过程中碰到的一个大坑。

接着上面的代码。

```cpp
// class LMSReader() {
    ...

public:
    explicit LMSReader( );
    ~ LMSReader( );

    // 天知道我花了多少时间写这些无聊的 getter、setter 函数
    //! configure LMS address & port
    void setAddressPort( const QString &address, const quint16 &port );
    void resetAddressPort( );
    QString getAddress( ) { return address; }
    quint16 getPort( ) { return port; }

    //! set basedir of output
    // 毫无必要的重载，当时应该在项目组里推 QString，但是大家似乎都喜欢 std::string，
    // 我倒是觉得 QString 好用得多太多。
    void setBasedir( const string &bd )  { basedir = QString( bd.c_str() ); }
    void setBasedir( const char *bd )    { basedir = QString( bd ); }
    void setBasedir( const QString &bd ) { basedir = bd; }

    void postparse( );
    void start( qint64 ts = 0 );
    void stop( );
    void closeConnection( );

    void pollingOne( );
    void turnOnReadingInLazyMode( );
    void turnOnReading( );
    void turnOffReading( );
    // 这里删掉了很多函数声明，因为它们没必要在这里提到

private:
    QString basedir;
    void writeLMS( const QString &msg );
    void parse( const QStringList &bufstrlist );
    void postparse( QStringList &bufstrlist, profile_t &profile );
    ...
```

下面是一些 signal/slots（信号和槽），主要用于告诉主界面，LMS 配置好了，可以进行函数回调。

```cpp
// class LMSReader() {
    ...

signals:
    void angle_begin_end( int beg, int end );
    void frequency_angleresolution( int freq, double res );
    void authorization_passed( bool auth );
    void scanning( int i, int freq );
    void lmsConnected( bool on );

public slots:
    void connectToLMS( );
    void connectToLMS( QString addr, quint16 port );
    void readLMS( );
    void lmsConnectionError( QAbstractSocket::SocketError );
    void onStateChanged( QAbstractSocket::SocketState state );
};
```

从 LMS 的说明文档里，我知道每个对 LMS 的操作，其实都是向 LMS 发送一个特定的字符串。
于是我过度工程地（为什么又是过度工程==）把这些字符串起了名字，还用了 QHash：

```
enum LMSAction {
    GET_FREQ_ANGRES,
    SET_FREQ_ANGRES,
    GET_ANGBEG_ANGEND,
    SET_ANGBEG_ANGEND,
    ...
};
typedef QHash<LMSAction, QString> ActionType;
const static ActionType actions;
static ActionType configureActions( );
```

现在想想真是毫不必要。

lmsreader.cpp 里的实现：

```cpp
const LMSReader::ActionType LMSReader::actions = LMSReader::configureActions( );
// 实现是：
//  LMSReader::ActionType LMSReader::configureActions( )
//  {
//      LMSReader::ActionType actions;
//      actions[  GET_FREQ_ANGRES    ] = "sRN LMPscancfg";
//      actions[  SET_FREQ_ANGRES    ] = "sMN mLMPsetscancfg";
//      actions[  GET_ANGBEG_ANGEND  ] = "sRN LMPoutputRange";
//      ...
//      return actions;
//  }

const LMSReader::AuthType LMSReader::auths = LMSReader::configureAuthLevels( );
// 实现是：
//  LMSReader::AuthType LMSReader::configureAuthLevels( )
//  {
//      LMSReader::AuthType authLevels;

//      authLevels[  AUTH_MAINTENANCE   ] = "B21ACE26";
//      authLevels[  AUTH_AUTHEDCLIENT  ] = "F4724744";
//      authLevels[  AUTH_SERVICELEVEL  ] = "81BE23AA";

//      // Logger::log( BCD::LMS::CONFIG_AUTH_LEVELS );
//      return authLevels;
//  }
```

毫无疑问，这两个 hash 毫无必要。当时我还插了，说是 QHash 和 QMap 的接口几乎一样，但是 QHash 效率高一点，
所以这里用的是 QHash。但，我们的实际，用哪个其实都一样，最好不要用==。

在 LMS 的构造函数里，要链接一些槽函数：

```cpp
connect( this, SIGNAL(readyRead() ),
         this, SLOT(readLMS()) );
connect( this, SIGNAL(disconnected()),
         this, SLOT(connectToLMS()) );
connect( this, SIGNAL(error(QAbstractSocket::SocketError)),
         this, SLOT(lmsConnectionError(QAbstractSocket::SocketError)) );
connect( this, SIGNAL(stateChanged(QAbstractSocket::SocketState)),
         this, SLOT(onStateChanged(QAbstractSocket::SocketState)) ); // 这个函数会提示界面 LMS 是否“掉线”

// 这是日志纪录，后面的 Logger::log 之类代码我就去掉了。
Logger::log( BCD::LMS::CONSTRUCT );
```

这个 lmsConnectionError 是一个无聊的函数，要是有 C++11，谁还专门写一个这函数啊！
用 lambda 函数不就好了。我们可以把

```cpp
connect( this, SIGNAL(error(QAbstractSocket::SocketError)),
         this, SLOT(lmsConnectionError(QAbstractSocket::SocketError)) ); // 连接到这个槽
...
// 实现它
void LMSReader::lmsConnectionError( QAbstractSocket::SocketError err )
{
    Logger::log (  BCD::LMS::CONNECTION_ERROR, QString( err ) );
}
```

改成

```cpp
connect( this, SIGNAL(error(QAbstractSocket::SocketError)),
         this, [=](QAbstractSocket::SocketError err) {  // 直接在这里实现
            Logger::log (  BCD::LMS::CONNECTION_ERROR, QString( err ) );
        } );
```

好看多了，是吧~

析构的时候，先关闭网络连接。

```cpp
LMSReader::~LMSReader( )
{
    closeConnection();
    Logger::log( BCD::LMS::DESTRUCT );
}

// 这是实现代码
void LMSReader::closeConnection( )
{
    if ( isOpen() ) {
        close();
        Logger::log (  BCD::LMS::DISCONNECT );
    }
}
```

按照约定 LMS 发送的数据应该满足格式：`STX + 数据字节 + ETX`，
STX 和 ETX 标志了数据的一帧。一帧数据就是一次扫描，大概有 550 个扫描点（具体在
【LMS 的数据量】里可以看到），代码如下：

```cpp
void LMSReader::writeLMS( const QString &data )
{
    QByteArray ba;
    ba.append( 0x02 ); // <STX>, start of text，就说了之前的那个 enum hack 里的
                       // STX，ETX 是过度工程，因为只有我自己用这两个变量，我又没有用！
    ba.append( data );
    ba.append( 0x03 ); // <ETX>, end of text
    write( ba );
}
```

其中的 `write` 函数是 QTcpSocket 提供的。其实 `ba.append( data )` 可以更方便地
写成 `ba << data`，但是我写习惯了，所以几乎没有用过 `operator<<`==。

还有如下的一些函数，存在有意义，但是几乎在我写完后，只设置了一遍，就不需要再使用了==。

```cpp
// 因为我们只要 authorize 一次，就能设定 LMS 的起始扫描角度、扫描的角度分辨率、频率
// 然后它就固定下来了
void LMSReader::authorize( )
{
    QString str;
    str.sprintf( "%s %2d %s",
                 qPrintable(actions.value( AUTHORIZE )),
                 AUTH_AUTHEDCLIENT,
                 qPrintable(auths.value( AUTH_AUTHEDCLIENT )) );
    writeLMS( str );

    Logger::log( BCD::LMS::AUTHORIZE );
}

// 也没有必要再次获取起始扫描角度，角度分辨率等了
void LMSReader::getAngleStartEnd( )
{
    writeLMS( actions[ GET_ANGBEG_ANGEND ] );

    Logger::log( BCD::LMS::ASK_SCANNING_ANGLE_START_END );
}

void LMSReader::getFrequencyAngleresolution( ) { ... }
void LMSReader::setFrequencyAngleresolution( const int &freq,
                                             const double &angres )
{
    QString str;
    str.sprintf( "%s %X %d %X %X %X",
                 qPrintable( actions[ SET_FREQ_ANGRES ] ),
                 FREQUENCY_SCALE_FACTOR * (freq),         // 25 or 50 Hz
                 1,                                       // reserved
                 (int) (ANGLE_SCALE_FACTOR * (angres)),   // 0.25 or 0.5 degree
                 (int) (ANGLE_SCALE_FACTOR * (-45 + 0)),  // place holder
                 (int) (ANGLE_SCALE_FACTOR * (225 - 0))   // place holder
               );
    writeLMS( str );

    Logger::log ( BCD::LMS::SET_SCANNING_FREQ_ANGRES,
                  QString( "freq: %1, angres: %2" ).arg( freq ).arg( angres ) );
}

void LMSReader::setAngleStartEnd( double start, double end )
{
    if ( start  > end )         { return; }
    if ( start  < lmsAngleMin ) { start = lmsAngleMin; }
    if ( end    > lmsAngleMax ) { end = lmsAngleMax; }

    QString str;
    str.sprintf( "%s %d %X %X %X",
                 qPrintable( actions[ SET_ANGBEG_ANGEND ] ),
                 1,                                  // status code
                 FREQUENCY_SCALE_FACTOR * (25),      // place holder
                 (int) (ANGLE_SCALE_FACTOR * start),
                 (int) (ANGLE_SCALE_FACTOR * end) );
    writeLMS( str );

    Logger::log ( BCD::LMS::SET_SCANNING_ANGLE_START_END,
                  QString( "start: %1, end: %2" ).arg( start ).arg( end ) );
}


void LMSReader::setTimestamp( quint16 year        /* = 2015 */
                            , quint8 month        /* =    1 */
                            , quint8 day          /* =    1 */
                            , quint8 hour         /* =    0 */
                            , quint8 minute       /* =    0 */
                            , quint8 second       /* =    0 */
                            , quint8 microsecond  /* =    0 */ )
{
    QString str;
    //               Y  M  D  H  M  S MS
    str.sprintf( "%s %X %X %X %X %X %X %X",
                 qPrintable( actions[SET_TIMESTAMP] ),
                 year, month, day,
                 hour, minute, second,
                 microsecond );
    writeLMS( str );

    Logger::log( BCD::LMS::SET_TIMESTAMP,
                 QString( "%1/%2/%3-%4:%5:%6.%7" )
                 .arg( year )
                 .arg( month )
                 .arg( day )
                 .arg( hour )
                 .arg( minute )
                 .arg( second )
                 .arg( microsecond ) );
}

// 还有一些类似的代码，就不一一贴在这里了
void LMSReader::setFactoryDefault( ) { ... }
void LMSReader::setFactoryDefault( ) { ... }
void LMSReader::getTimestamp( ) { ... }
void LMSReader::logout( ) { ... }
void LMSReader::startMeasure( ) { ... }
void LMSReader::stopMeasure( ) { ... }
void LMSReader::reboot( ) { ... }
void LMSReader::pollingOne( ) { ... }
void LMSReader::connectToLMS( ) { ... }
void LMSReader::connectToLMS( QString addr, quint16 port ) { ... }
```

LMS 的数据应该保存出来，但是没必要存到 log 里，所以它每次 start、stop 运行后，
就会保存出一个点云数据，可以用 CloudStudio 直接打开（第二列即 y 轴的拉伸要把握好才好看）：

```cpp
void LMSReader::genNewPath( )
{
    quint64 dt = QDateTime::currentMSecsSinceEpoch();
    lmsOutputPath.sprintf( "%lld-LMS-XYZ.txt", dt );

    Logger::log( BCD::LMS::GEN_NEW_PATH, lmsOutputPath );
}
/*
 * 保存出来的文件大概是这样：

      124.4507934888                  1437721968720      -124.4507934888
      116.2598232121                  1437721968720      -114.2482100809
      145.3066396684                  1437721968720      -140.3209908327
      155.2301153966                  1437721968720      -147.3078791985
      139.6885570093                  1437721968720      -130.2616867719
      134.9217526363                  1437721968720      -123.6330079937
      163.4918616050                  1437721968720      -147.2087333989
      232.1762734446                  1437721968720      -205.4122149469

**/
```

最后，LMS 最核心的一部分，是对收到的 LMS 数据进行解析，下面我们一点点分析这个函数。

首先，当网络中有数据时，信号 `readyRead` 就被 emit，就会调用 `readLMS()` 函数。

```cpp
//  connect( this, SIGNAL(readyRead() ),
//           this, SLOT(readLMS()) );
void LMSReader::readLMS( )
{
    ...
}
```

在 `readLMS` 函数里，它先把所有的数据读取到：

```cpp
QByteArray ba = readAll();
lmsBA.append( ba );

// read until <ETX> (end of one scan)
if ( ba.at(ba.length() -1) != ETX ) {
    return;
}
```

上面的 `ba.at(ba.length()-1 != ETX)` 是一个保护性质的操作，也是我们在实际写代码
后发现了问题，才改进的。因为 LMS 一个 profile 的网络数据可能会分成多次传给电脑，
电脑不应该在收到数据就进行处理，它要先判断，这个 profile 是否完整，如果完整了
（收到了 `ETX`），才处理之。

```cpp
    QString bufstr( lmsBA );

#ifdef LMS_PRINT_PROFILE_SAMPLE
    zgBA = lmsBA;
#endif

    lmsBA.clear();
```

LMS 每收到一组数据，就 emit 一个信号，让界面显示进度：

```cpp
// emit progress, 1/50 ~ 50/50 or 1/25 ~ 25/25
static int f = 0;
f = (++f) % lmsFrequency;
emit scanning( f+1, lmsFrequency );
```

```cpp
// not run, so no need to parse
// 如果没有打开读取（turnOnReading），就不处理收到的数据
if ( !isRun ) {
    // qDebug() << "Hit! But drop it.";
    return;
}

// 这是 debug 的时候用到的，可以把收到的内容打印在控制台
if( LMS_PRINT_SCAN_BUF ) {
    qDebug() << "Bufstr: " << bufstr;
}

// do it now!
QStringList bufstrlist = bufstr.split(" ");
```

然后对收到的数据进行分发：

```cpp
    // dispatch
    if( false ) {
        // 我通常都喜欢先写一个 if(false)，你造为什么吗？
    } else if( bufstrlist.at(1) == actions[TURN_ON].split(" ").at(1) ) {
        if ( LMS_PARSE_SCAN ) {
            // 这里是最终的一部分！！
            parse( bufstrlist );
            return;
        }
    } else if( bufstrlist.at(1) == actions[GET_ANGBEG_ANGEND].split(" ").at(1) ) {
        // 这是设置 LMS 或者获取 LMS 参数的时候，LMS 的返回情况：
        // sRA LMPoutputRange 1 1388 FFF92230 225510
        // 我们要把拿到的数据解析出来，然后设置到自己的变量里
        int angbeg, angend;
        sscanf_s( qPrintable( bufstrlist.at(4) ), "%x", &angbeg );
        sscanf_s( qPrintable( bufstrlist.at(5) ), "%x", &angend );
        lmsAngleBeg = angbeg / ANGLE_SCALE_FACTOR;
        lmsAngleEnd = angend / ANGLE_SCALE_FACTOR;
        emit angle_begin_end( lmsAngleBeg, lmsAngleEnd );
        Logger::log (  BCD::LMS::GOT_SCANNING_ANGLE_START_END,
                       QString("[%1-%2]").arg(lmsAngleBeg).arg(lmsAngleEnd) );
        return;
    } else if( bufstrlist.at(1) == actions[GET_FREQ_ANGRES].split(" ").at(1) ) {
        // 和上面类似，就不贴代码了
        // ...
        return;
    } else if( bufstrlist.at(1) == actions[AUTHORIZE].split(" ").at(1) ) {
        // ...
    } else {
        // 最后我还要写一个 else，虽然很可能这里从来没有东西，你造为什么吗？
    }
}
```

现在就差那个 `parse( bufstrlist )` 不知道是啥了。先判断是否是数据帧：

```cpp
void LMSReader::parse( const QStringList &bufstrlist )
{
    // 首先判断了是否是 LMS 的数据帧
    // already "LMDscandata" data
    // No: "sEA LMDscandata 0", Yes: "sSN LMDscandata 1" or "sRA LMDscandata"
    string ct = bufstrlist.at(0).toStdString().erase(0, 1); // command type
    if ( "sSN" != ct && "sRA" != ct ) {
        // cerr << "sEA data, not LMS scan.\n";
        return;
    }
```

需要打印？然后就打印一个帧的原始数据：

```cpp
#ifdef LMS_PRINT_PROFILE_SAMPLE
    static bool first = true;
    if ( first ) {
        Logger::log( BCD::LMS::LMS, QString( "LMS data (%1 bytes): %2" ).arg( zgBA.length() )
                                                                        .arg( ba2hexstr( zgBA ) ) );
        first = false;
    }
#endif
```

其实上文那个【LMS 数据量】里面的 “LMS data (6429 bytes): 0x02 0x73 0x53 0x4e...”就是在这里打印出来的。
没想到我打印完这个日志居然把代码还留着了，这种一次性代码理应删掉的。

```cpp
    // parse data
    profiles_raw.push_back( bufstrlist );               // 保存了原始数据，如果不在线处理
                                                        // profiles_raw 就会在离线处理的时候被用到
    // 每个数据帧，有 550 左右个点，时间戳都打成一样的（虽然扫描有先后）
    profilesX[profileCur].timestamp =  QDateTime::currentMSecsSinceEpoch();

    if ( !LMS_PARSE_ON_THE_FLY ) { // do not process, just return
        {
        // 我突然在想这个 scope 里的 lock 什么时候析构……应该在这个中括号后就析
        // 构，但总感觉它“死的”也太早了，哪天有空测试一些
            boost::mutex::scoped_lock lock( mutex );
            ++profileCur;
        }
        return;
    }

    // Parse it on the fly
    postparse( profiles_raw.at( profiles_raw.size()-1 ),
               profilesX[profileCur] );
    {
        boost::mutex::scoped_lock lock( mutex );
        ++profileCur;
    }
}
```

上面的 postpares 处理了当前帧，代码如下：

```cpp
void LMSReader::postparse( QStringList &bufstrlist, profile_t &profile )
{
    // emit progress, 1/50 ~ 50/50 or 1/25 ~ 25/25
    // 首先定义一些变量
    int scannednum = 0;
    int distance = 0;
    double anglebeg = 0.0, angleres = 0.0, anglecur = 0.0;
    double x = 0.0, z = 0.0;
    int tmp = 0;

    // start angle，起始扫描角
    sscanf_s( qPrintable( bufstrlist.at(23) ), "%x", &tmp );
    anglebeg = (double) tmp / ANGLE_SCALE_FACTOR;

    // angle resolution，角度分辨率
    sscanf_s( qPrintable( bufstrlist.at(24) ), "%x", &tmp );
    angleres = (double) tmp / ANGLE_SCALE_FACTOR;

    // num of points in this scan，当前帧的点数，大概 550 个
    sscanf_s( qPrintable( bufstrlist.at(25) ), "%x", &scannednum );

    int cnt = 0; // check for possible lost of points
    for ( int i = 0; i < scannednum; ++i ) {
        ++cnt;
        // scan distance, metric: mm，单位是毫秒
        // 先从字符中扫描出距离值
        sscanf_s( qPrintable( bufstrlist.at(i + 26) ), "%x", &distance );
        // 然后根据点的 index，计算点的角度
        anglecur = (anglebeg + i * angleres) / 180.0 * M_PI;
        // 最后，根据角度和距离，把点的位置计算出来
        profile.pts[i].x = cos(anglecur) * distance;
        profile.pts[i].z = sin(anglecur) * distance;
        // pt.x 和 pt.z 分别存了两个坐标，pt.y 存了时间戳（但实际上我们只要在一
        // 个 profile 里存一个时间戳就可以了）
    }

    Logger::log( BCD::LMS::PARSE_PROFILE );
}
```

当关闭读数后，LMS 会自动保存数据：

```cpp
void LMSReader::saveprofiles( )
{
    qDebug() << "Save LMS data(" << profiles_raw.size() << " profiles) ... to ";
    if ( !LMS_PARSE_ON_THE_FLY ) { // if not on the fly, we need to parse it now
        // 如果没有在线处理，那就用 profiles_raw 的数据，来 parse 出各个数据点
        qDebug() << "Save Profiles, Parsing...";
        // parse
        for ( int i = 0; i < profiles_raw.size(); ++i ) {
            postparse( profiles_raw[i], profilesX[i] );
        }
        {
            boost::mutex::scoped_lock lock( mutex );
            profileCur = profiles_raw.size();
        }
    } else {
        qDebug() << "Save Profiles, no need to parse.";
    }

    if ( lmsOutputPath.isEmpty() ) { genNewPath(); }
    FILE *fp = fopen( qPrintable( QString( "%1/%2" ).arg( basedir )
                                                    .arg( lmsOutputPath ) ), "a+" );
    if ( NULL == fp ) {
        qDebug() << "err, cant open file.";
        return;
    }

    qDebug() << "Save Profiles, saving...";
    for ( int i = 0; i < profiles_raw.size(); ++i ) {
        for ( int j = 0; j < LMS_PROFILE_POINTS_NUM; ++j ) {
            fprintf( fp, "%20.10f %30lld %20.10f\n"
                    , profilesX[i].pts[j].x
                    , profilesX[i].timestamp
                    , profilesX[i].pts[j].z );
        }
    }
    fclose( fp );

    Logger::log( BCD::LMS::SAVE_PROFILES );
}
```

上面已经提过，保存出来的数据大概这样：

```
      145.3066396684                  1437721968720      -140.3209908327
      155.2301153966                  1437721968720      -147.3078791985
      139.6885570093                  1437721968720      -130.2616867719
```

打开、关闭 LMS 数据的读取：

```cpp
void LMSReader::turnOnReading( )
{
    isRun = true;
    {
        boost::mutex::scoped_lock lock( mutex );
        profileCur = 0;
    }
    profiles_raw.clear();
}

void LMSReader::turnOffReading( )
{
    isRun = false;
    // parse & save
    saveprofiles();
}

void LMSReader::start( qint64 ts /* = 0 */ )
{
    qint64 dt = (ts == 0)
              ? QDateTime::currentMSecsSinceEpoch()
              : (qint64)ts;
    // 每次 start 都要产生新的输出路径，这样就不会覆盖原来保存下来的数据了
    genNewPath( dt );
    turnOnReading();
}

void LMSReader::stop( )
{
    turnOffReading();
}
```

在我看 LMS 代码的时候，我看到了自己最开始的注释：

```cpp
/*
 *
 *   // Fog Filter
 *   // <-- "sWN MSsuppmode 1"; // 0: glitch, 1: fog
 *   // --> "sWA MSsuppmode"
 *
 *   // n-Pulse to 1-Pulse Filter
 *   // <-- "sWN LFPnto1filter 1"; // 1: active, 0: inactive
 *   // --> "sWA LFPnto1filter"
 *
 *   // Mean Filter
 *   // <-- "sWN LFPmeanfilter 1 +10 0"; // 0: inactive, 1: active. number of scans: +2..+100. 0
 *   // --> "sWA LFPmeanfilter"
 *
 *   // Configure the data content for the scan
 *   // QString str = "sWN LMDscandatacfg";
 *   // channel: c1: 1, c2: 2, c1+c2: 3
 *   // Remission data output: 0: no, 1: yes
 *   // Resolution of Remission Data: 0: 8bit, 1: 16bit
 *   // Unit of Remission Data:
 *   // double AngRes = 2.0 / round(2.0 / GivenAngRes);
 *
 *   // Function Front Panel
 *   // <-- "sWN LMLfpFcn 1 0 1"; // 1: reserved, 0-2: Q1/Q2, 0-2: Okay/Stop, 0-1: display function
 *   // 0: no function, 1: application, 2: command
 *   // 0: application, 1: command
 *   // --> "sFA 8"
 *
 *   // Synchronization Phase
 *   // <-- "sWN SYPhase +90";
 *   // --> "sWA SYPhase"
 *
 *   // Set factory defaults
 *   // <-- "sMN mSCloadfacdef"
 *
 *   // Set IP-Address
 *   // <-- "sWN EIIpAddr C0 A8 0 1";
 *   // --> "sWA EIIpAddr"
 *
 *   // Power On Counter
 *   // <-- "sRN ODpwrc";
 *   // --> "sRA ODpwrc A7"
 *
 *   // Operating hours
 *   // <-- "sRN ODoprh";
 *   // --> "sRA ODoprh 4F4", 4F4 * 1/10h = 126.8 hours
 *
 *   // Ask Device Name
 *   // <-- "sRN LocationName";
 *   // --> "sRA LocationName B not defined"
 *
 *   // Device State
 *   // <-- "sRN SCdevicestate";
 *   // --> "sRA SCdevicestate 1", 0: busy, 1: ready, 2: error
 *
 *   // Device Ident
 *   // <-- "sRN DeviceIdent/sRI 0";
 *   // --> "sFA 3"?
 *
 *   // Reset output counter
 *   // <-- "sMN LIDrstoutpcnt";
 *   // --> "sAN LIDrstoutpcnt 0", 0: success
 *
 *   // Set output state
 *   // <-- "sMN mDOSetOutput 1 1"; // output number: 1-3, output state: 0:inactive / 1:active
 *   // "sAN mDOSetOutput 0", 0: err, 1: success
 *
 *   // Ask state of the outputs
 *   // <-- "sRN LIDoutputstate";
 *   // --> "sRA LIDoutputstate 1 E88CDA0F 1 A 1 A 1 A 2 0 2 0 2 0 2 0 2 0 2 0 2 0 2 0 1 7DD 1 1 0 1D 3B 5B8D8"
 *
 *   // Ask speed threshold
 *   // "sRN LICSpTh";
 *   // "sRA LICSpTh 5"
 *
 *   // Fixed speed
 *   // <-- "sWN LICFixVel +5"; // +0.001..+10
 *   // --> "sWA LICFixVel"
 *
 *   // Encoder resolution
 *   // QString str = "sWN LICencres +1000"; // +0.001..+2000
 *   // "sWA LICencres"
 *
 *   // Encoder Settings
 *      0 = Off
 *      1 = single Increment/INC1
 *      2 = Direction recognition (phase)
 *      3 = Direction recognition (level)
 *
 *   // <-- "sWN LICencset 2"
 *   // --> "sWA LICencset"

 *   // Increment source
 *   // <-- "sWN LICsrc 1"); // 0: fixed speed, 1: encoder
 *   // --> "sWA LICsrc"

 *   // <-- "sMN LMCstartmeas";
 *   // "sAN LMCstartmeas 0"

 *   // <-- "sMN LMCstandby"; // cant turn on, but can poll one
 *   // "sAN LMCstandby 0"

 *   // <-- "sMN LMCstopmeas";
 *   // ""sAN LMCstopmeas 0"

 *   // <-- "sMN mSCreboot";
 *   // "sAN mSCreboot"

 *   // <-- "sRN STlms";
 *   // "sRA STlms 7 0 8 00:34:19 A 01.01.1970 0 0 0"

 *   // <-- "sMN LSPsetdatetime";
 *   // "sAN LSPsetdatetime 1"

 *   // <-- "sMN mEEwriteall";
 *   // "sAN mEEwriteall 1"
 *
**/
```

可以看到 LMS 还提供很多功能，只不过我们没用用过，而已。

`lmsreaderconfig{.h, .cpp, .ui}` 内容没有多少，它只是一个封装。所有的代码大概都是这样：

```cpp
void on_pushButton_ip_port_clicked( ) {

    QString address   = ui->lineEdit_ip->text().simplified();
    quint16 port      = ui->lineEdit_port->text().toInt();
    lmsReader->setAddressPort( address, port );

}
```

.ui 其实是一个 xml 文件：

```xml
<?xml version="1.0" encoding="UTF-8"?>
<ui version="4.0">
 <class>lmsreaderconfig</class>
 <widget class="QWidget" name="lmsreaderconfig">
  <property name="geometry">
   <rect>
    <x>0</x>
    <y>0</y>
    <width>901</width>
    <height>429</height>
   </rect>
  </property>
  <property name="windowTitle">
   <string>lmsreaderconfig</string>
  </property>
  <layout class="QGridLayout" name="gridLayout">
   <item row="0" column="0">
   ...
```

用 Qt 的 `uic`{.bash} 转为 cpp 文件一起编译，就生成成了界面程序。

LMS 就这样讲完了。讲得比较细致，因为它是我写的第一个传感器程序，后面的 IMU 和 UR 就要
讲得糙一点，快一点了。

## IMU

IMU（Inertial measurement unit，惯性测量单元，俗称俗称惯导，或惯性导航）是测量
物体三轴姿态角（或角速率）以及加速度的装置。IMU 装在 MCU（Micro Controller Unit，
微控制器）上，和电脑通过串口（COM）连接（用 Modbus 串口协议）。

使用到了第三方库
[QExtSerialPort](https://github.com/qextserialport/qextserialport)，这个库给
Qt4 提供了串口通信的功能（Qt5 中已经集成了这个功能）。
我们碰到的第一个问题是，怎么把 Qt 程序，移植到 VS 里？

其实我们的 Qt 也是用的 VS 的编译器。所以显示把原来 Qt 工程的那些 dll 和 lib 文件弄到 CMake 工程
是可行的。废了好几天的功夫（那时候我们 CMake 也不熟），我终于搞定了，大概的 CMakeLists.txt 文件
如下：

```cmake
# 首先加上 include 路径
include_directories( ${CMAKE_SOURCE_DIR}/GeneralLibs/imulib/bundle )

# 源码要一起编译
set( QEXTSERIALPORT_SOURCES
     ${CMAKE_SOURCE_DIR}/GeneralLibs/imulib/bundle/qextserialport.cpp
     ${CMAKE_SOURCE_DIR}/GeneralLibs/imulib/bundle/qextserialenumerator.cpp
     ${CMAKE_SOURCE_DIR}/GeneralLibs/imulib/bundle/qextserialenumerator_win.cpp
     ${CMAKE_SOURCE_DIR}/GeneralLibs/imulib/bundle/qextserialport_win.cpp )

# link 的目录和 link 的 lib 文件
link_directories( ${CMAKE_SOURCE_DIR}/GeneralLibs/imulib/lib )
set( QEXTSERIALPORT_LIBS "setupapi;advapi32;user32;qextserialport1;qextserialportd1;" )

file( GLOB QEXTSERIALPORT_HEADERS ${CMAKE_SOURCE_DIR}/GeneralLibs/imulib/bundle/*.h )
add_library( ${PROJECT_NAME} STATIC
    ${SRCS_FILES}
    ${UI_FILES} ${HDRS_FILES} ${MOC_SRCS} ${UI_HDRS} ${RSC_SRCS} ${CD_FILES}
    ${QEXTSERIALPORT_HEADERS} ${QEXTSERIALPORT_SOURCES} )
target_link_libraries( ${PROJECT_NAME} ${QT_LIBRARIES} ${QEXTSERIALPORT_LIBS} Utils )
```

IMU 没有像 LMS 一样继承别人，而是把提供了串口功能的 QextSerialPort 作为自己的一个成员：

```cpp
private:
    QextSerialPort *imuCom;
    QextSerialEnumerator *imuSerialeEnumerator;
```

那个 QextSerialEnumerator 可以显示电脑开启的 COM 接口，在 Qt creator 里可以正常工作，但在 VS 里
却没用。所以这样的代码是无效的：

```cpp
foreach ( const QextPortInfo &info, QextSerialEnumerator::getPorts() ) {
    ports << info.portName; // "COM1", "COM3", ...
    portsInfo << info;
}
```

眼尖的你，可能发现了 `getPorts` 函数是静态的，觉得没必要弄一个成员。
但其实我们只是要在串口号有更新的时候能够自动反馈一下而已，所以才
需要一个成员来连接槽函数：

```cpp
connect(imuSerialeEnumerator, SIGNAL(deviceDiscovered(QextPortInfo)),
        this, SLOT(onPortAddedOrRemoved()));
connect(imuSerialeEnumerator, SIGNAL(deviceRemoved(QextPortInfo)),
        this, SLOT(onPortAddedOrRemoved()));
```

Anyway，因为 enumerate 串口号的功能的失效，我们是在界面里自动生成 20 个串口的选项：

```cpp
void IMUReaderConfig::loadPorts( QStringList ports )
{
    // 如果不是 VS 里，就可以用 loadPorts( ports ) 直接加载。
    // 其中的 ports 就是从上面的“ports << info.portName; // "COM1", "COM3", ...”而来。
#ifndef _WIN64
    ui->comboBox_port->clear();
    if ( ports.length() == 0 ) { return; }

    int i = 0;
    int ci = 0;
    bool newPort = true;
    foreach ( const QString &port, ports ) {
        ui->comboBox_port->addItem( port );
        if ( port == arm->getCurPort() ) {
            ci = i;
            newPort = false;
        }
        ++i;
    }

    if ( newPort ) {
        ui->comboBox_port->setCurrentIndex( 0 );
        arm->setCurPort( ports.at(0) );
    } else {
        ui->comboBox_port->setCurrentIndex( ci );
    }
#else
    // VS 的话，就直接生成 20 个 COM 口。
    for ( int i = 0; i < 20; ++i ) {
        static QString str;
        str.sprintf( "COM%d", i+1 );
        ui->comboBox_port->addItem( str );
    }
#endif
}
```

配置界面弹出的时候，我们还要载入原来的设置，这里还会自动的把 combo box 的选中
自动切换到相应的 index（如果在选项中的话（如果不在，就添加一个，然后切换过去）），
代码略复杂：

```cpp
void IMUReaderConfig::loadConfigs( )
{
    // load ports
    loadPorts( arm->getPorts() );

    // baud rate, etc
    // clear
    ui->comboBox_baudrate->clear();
    ui->comboBox_databits->clear();
    ui->comboBox_parity->clear();
    ui->comboBox_stopbits->clear();

    // load and select
    int i = 0; // index
    int ci = 0; // current index
    foreach ( const QString &brt, arm->getBRTs().keys() ) {
        ui->comboBox_baudrate->addItem( brt );
        if ( brt == arm->getBRTs().key(arm->getBRT()) ) {
            ci = i;
        }
        ++i;
    }
    ui->comboBox_baudrate->setCurrentIndex( ci );

    i = ci = 0;
    foreach ( const QString &dbt, arm->getDBTs().keys() ) {
        ui->comboBox_databits->addItem( dbt );
        if ( dbt == arm->getDBTs().key(arm->getDBT()) ) {
            ci = i;
        }
        ++i;
    }
    ui->comboBox_databits->setCurrentIndex( ci );

    i = ci = 0;
    foreach ( const QString &pt, arm->getPTs().keys() ) {
        ui->comboBox_parity->addItem( pt );
        if ( pt == arm->getPTs().key(arm->getPT()) ) {
            ci = i;
        }
        ++i;
    }
    ui->comboBox_parity->setCurrentIndex( ci );

    i = ci = 0;
    foreach ( const QString &sbt, arm->getSBTs().keys() ) {
        ui->comboBox_stopbits->addItem( sbt );
        if ( sbt == arm->getSBTs().key(arm->getSBT()) ) {
            ci = i;
        }
        ++i;
    }
    ui->comboBox_stopbits->setCurrentIndex( ci );

    // disable set buttons
    ui->pushButton_set->setEnabled( false );
    ui->pushButton_wheel_fb->setEnabled( false );
    ui->pushButton_arm3_fb->setEnabled( false );
    ui->pushButton_arm3_fb_2->setEnabled( false );
}
```

这里的 SBT，DBT 之类，熟悉串口的朋友应该都知道，这里简要说明一下。
比如 BRT，其实就是 baud rate（波特率），有关数据传输的速率。
常用的波特率有 9600, 19200, 38400 等等，代码如下：

```cpp
const IMUReader::BRT IMUReader::brts = IMUReader::initBRTs();
//  IMUReader::BRT IMUReader::initBRTs( )
//  {
//      BRT brts;
//      brts[    "9600"  ] = BAUD9600;
//      brts[   "19200"  ] = BAUD19200;
//      brts[   "38400"  ] = BAUD38400;
//      brts[  "115200"  ] = BAUD115200;
//      brts[  "256000"  ] = BAUD256000;
//      return brts;
//  }
```

DBT 指的是 data bits（数据位），候选项有 `DATA_7`，`DATA_8`。
SBT 指的是 stop bits（停止位），候选项有 `STOP_1`，`STOP_2`。
PT 指的是 parity type（校验位类型），候选项有 `PAR_NONE`（无校验），
`PAR_ODD`（奇校验），`PAR_EVEN`（偶校验），可能还要设置 FlowControl，
它的候选项有 `FLOW_ON`，`FLOW_OFF`。

IMU 在构造的时候，就要把默认得配置设置好（否则连接了，数据读到的也是有问题的）：

```cpp
// default configs
imuBRT  = BAUD256000;
imuDBT  = DATA_8;
imuPT   = PAR_NONE;
imuSBT  = STOP_1;
```

连接串口：

```cpp
void IMUReader::openIMU(QString com /*=QString()*/) // com 的值可能是 "COM1"，"COM2"，等等
{
    // 如果提供了串口号，就尝试打开
    if (!com.isEmpty()) {
        imuCom = new QextSerialPort(com, QextSerialPort::EventDriven);
        imuCom ->open(QIODevice::ReadWrite);
    } else {
    // 如果没有提供串口号，就一个个试，直到打开一个
        QString str;
        for (int i = 0; i < 10; ++i) {
            com = str.sprintf("COM%d", i+1);
            imuCom = new QextSerialPort(com, QextSerialPort::EventDriven);
            imuCom ->open(QIODevice::ReadWrite);
            if (imuCom->isOpen()) {
                break;
            }
        }
    }

    if (!imuCom->isOpen()) {
        qDebug() << "Not open";
        emit comState(false);
        return;
    }

    emit comState(true);
    qDebug() << "Connected to " << com;

    imuCom->setBaudRate(imuBRT);
    imuCom->setDataBits(imuDBT);
    imuCom->setParity(imuPT);
    imuCom->setStopBits(imuSBT);
    imuCom->setFlowControl(FLOW_OFF);
    imuCom->setTimeout(10);

    // imu
    connect(imuCom, SIGNAL(readyRead()),
                  this, SLOT(readIMU()));
}
```

有数据来的时候，就读取之，这里只是简单地把数据 dump 出来：

```cpp
void IMUReader::readIMU()
{
    QByteArray ba = imuCom->readAll();
    QString str(ba);
    emit imuData(str);

    if (imuOutputPath.isEmpty()) { genNewOutputPath(); }
    FILE *fp = fopen(imuOutputPath.toAscii().data(), "a+");
    if (NULL == fp) {
        return;
    }
    fprintf(fp, "%s", str.toAscii().data());
    fclose(fp);
}
```

IMU 和 LMS 大大不同的地方是，IMU 是被动的需要你主动去请求数据。而 LMS 是主动地，
你请求一次后，数据就会持续传过来。由于 IMU 的被动性质，我们只能定时去请求 IMU 的
姿态，需要使用一个定时器：

```cpp
// QTimer t;
t.setInterval(100);
connect( &t, SIGNAL(timeout() ),
         this, SLOT(printPorts()) );
```

IMU 就讲到这里。其实 IMU 是最难最复杂的一个传感器模块，这里讲得如此简单，是因为这是早期的
一个 IMU 实现。后来我们所有的串口，都集中到了 MCU 模块，`class MCUController` 不仅可以生成一个
IMU 实例，还可以是触发器（可以触发激光器和面光源），编码器（用来测量行走轮行走的距离）。
只要在构造的时候传入相应的参数即可：

```cpp
namespace DeviceType {
enum DeviceAddress {
    TRIGGER = 0x01,     // COM1，当时，我们的触发器默认接线在 COM1，用来触发 C2
                        // 和 SP20000C 相机的采集频率，以及激光器和面光源的打开和关闭
    LMS_IMU = 0x02,     // COM2
    ENCODER = 0x03,     // COM3
    ENCODER2 = 0x04,    // COM4
};
}

class MCUController : public QObject
{
    Q_OBJECT
```

这部分讲 IMU，但是并没有涉及 IMU 数据的解析，因为它太复杂。在解析数据之前要讲串口通信的寄存器的读和写，
要讲什么是 holding registers，什么是 coils 等等概念。而 IMU 后来整合到 MCU 后，变得更加复杂，
mcu.h 和 mcu.cpp 的源码加起来将近 2500 行。这里贴一些头文件，感受下其中逻辑的复杂性：

```cpp
// 底层的数据读取，十分感谢长沙机械团队没有设置 coils，全部用了 resgisters 来存配置
enum MCUFunctionCodes {
    READ_HOLDING_REGISTERS    = 0x03,  // read output registers
    WRITE_MULTIPLE_REGISTERS  = 0x10,  // write multiple output registers
};
void readHoldingRegisters( const quint16 &addr,
                           const quint16 &length );
void writeMultipleRegisters( const quint16 &addr,
                             const quint16 &length,
                             const QByteArray &ba );

// 编码器
void mcuEncoders( double e1, double e2 );

// C2 相机和 SP20000C 的触发频率也有用我们的程序来控制
void mcuC2Frequency( quint16 c2f );
void mcuSP20000CFrequency( quint16 sp20000cf );

// 车体周围有五个超声波，他们的测距也要实时解析出来
void mcuRange1to5( quint16 r1,
                   quint16 r2,
                   quint16 r3,
                   quint16 r4,
                   quint16 r5 );

// 最复杂的，还是编码器，有很多变量有交替获取
// 也有很多计算（计算由算法模块提供）
void   getQuaternion( );
void parseQuaternion( const QByteArray &ba );
// 实现代码：
//              void MCUController::parseQuaternion( const QByteArray &ba )
//              {
//                  // 0: devAddr, 1: fc, 2: num
//                  if ( ba.length() != 3+8+2 || ba.at(2) != 8 ) {
//                      return;
//                  }
//
//                  quint8 c = 3; // cursor
//                  mcuInfo.quaternion[0] = us2s( parse2BytesToUInt16( ba, c ) ); c += 2;
//                  mcuInfo.quaternion[1] = us2s( parse2BytesToUInt16( ba, c ) ); c += 2;
//                  mcuInfo.quaternion[2] = us2s( parse2BytesToUInt16( ba, c ) ); c += 2;
//                  mcuInfo.quaternion[3] = us2s( parse2BytesToUInt16( ba, c ) ); c += 2;
//
//                  emit mcuQuaternion( mcuInfo.quaternion[0],
//                                      mcuInfo.quaternion[1],
//                                      mcuInfo.quaternion[2],
//                                      mcuInfo.quaternion[3] );
//                  Logger::log( BCD::MCU::GOT_QUATERNION,
//                               QString( "[ %1, %2, %3, %4 ]" ).arg( mcuInfo.quaternion[0] )
//                                                              .arg( mcuInfo.quaternion[1] )
//                                                              .arg( mcuInfo.quaternion[2] )
//                                                              .arg( mcuInfo.quaternion[3] ) );
//              }
//
void   getRollPitchYaw( );
void parseRollPitchYaw( const QByteArray &ba );
void   getAcceleration( );
void parseAcceleration( const QByteArray &ba );
void   getGyroScope( );
void parseGyroScope( const QByteArray &ba );
void   getMagnetometer( );
void parseMagnetometer( const QByteArray &ba );
void   getRotation( );
void parseRotation( const QByteArray &ba );
void   getEkf( );
void parseEkf( const QByteArray &ba );
// 处理好的数据，也要保存起来（直接用 Logger::log 存日志里就可以）
void savedata( const qint64 &dt, const qint16 &d0
             , const qint16 &d1, const qint16 &d2, const qint16 &d3
             , const qint16 &d4, const qint16 &d5, const qint16 &d6
             , const qint16 &d7, const qint16 &d8, const qint16 &d9
             , const qint16 &da, const qint16 &db, const qint16 &dc
             , const qint16 &dx, const qint16 &dy, const qint16 &dz);
// 主界面还要显示出来，这是一些信号
void mcuQuaternion( qint16 q0,
                    qint16 q1,
                    qint16 q2,
                    qint16 q3 );
void mcuAdisRequireData( qint16 d1, qint16 d2, qint16 d3,
                         qint16 d4, qint16 d5, qint16 d6,
                         qint16 d7, qint16 d8, qint16 d9,
                         qint16 da, qint16 db, qint16 dc );
void mcuRollPitchYaw( qint16 r,
                      qint16 p,
                      qint16 y );
void mcuAcc( qint16 x,
             qint16 y,
             qint16 z );
void mcuGyro( qint16 gyro_x,
              qint16 gyro_y,
              qint16 gyro_z );
void mcuMag( qint16 mag_x,
             qint16 mag_y,
             qint16 mag_z );
void mcuRefMatrix( qint16 r1, qint16 r2, qint16 r3,
                   qint16 r4, qint16 r5, qint16 r6,
                   qint16 r7, qint16 r8, qint16 r9 );
```

读取 MCU 数据后，也要 dispatch，而且还要判断读取是否有“交错”，因为数据读取
往往是向多个寄存器进行的，并不能假定请求和收到的数据就是一一匹配的，MCU 的
读取代码如下：

```cpp
void MCUController::readMCU( )
{
    QByteArray ba = mcuCom->readAll();

    // chop garbage values
    int i = 0;
    while ( i < ba.length() && ba.at(i) != devAddr ) {
        ++i;
    }
    ba.remove( 0, i );

    if ( ba.length() < 2 ) {      // at least 2 bytes: devAddr, function code
        return;
    }

    QString str( ba );
    QString hexstr = ba2hexstr( ba );
    emit mcuData( str );
   // emit mcuHexData( hexstr );
    if ( SHOW_READ ) {
        Logger::log( BCD::MCU::MCU, QString( "MCU%1 Received %2 bytes: %3" ).arg( id ).arg( ba.length() ).arg( hexstr ) );
    }

    quint8 fc = ba.at( 1 ); // function code
    if ( fc != functionCode ) {
        // function code is the <write data>'s status,
        // it must equal the <received data>'s status
        Logger::log( BCD::MCU::CONVOLUTED_TX_RX );
        return;
    }

    // dispatch
    if ( false ) {
    } else if ( READ_HOLDING_REGISTERS == fc ) {
        // 里面还要判断读到的地址和自己上次请求的地址是否一致。
        onReadHoldingRegisters( ba );
    }

    if ( !crc16Passed( ba ) ) {
        Logger::log( BCD::MCU::MCU, "err crc16 failed" );
        return;
    }
}

void MCUController::onReadHoldingRegisters( QByteArray &ba )
{
    switch ( currentMode ) {
    case GET_TIME_STAMP:                 parseTimestamp( ba );              break;
    case GET_RANGE_1_TO_5:               parseRange1to5( ba );              break;
/*  case GET_ADIS_REQUIRE_DATA:          parseADISRequiredata( ba );        break; // only one scan */
    case GET_ADIS_REQUIRE_DATA:          parseADISScans( ba );              break; // multiple scans
/*  case GET_ADIS_REQUIRE_DATA:          threadParseADIS( ba );             break; */
    case GET_QUATERNION:                 parseQuaternion( ba );             break;
    case GET_ROLL_PITCH_YALL:            parseRollPitchYaw( ba );           break;
    case GET_ACCEL_XYZ:                   parseAcceleration( ba );          break;
    case GET_GYRO_XYZ:                   parseGyroScope( ba );              break;
    case GET_MAG_XYZ:                    parseMagnetometer( ba );           break;
/*  case GET_H_MOTOR_NUM:                parseHMotorNum( ba );              break; */
    case GET_HORIZONTAL_MOTORNUM:        parseHorizontalMotornum( ba );     break;
    case GET_ROTATION_XYZ:               parseRotation( ba );               break;
    case GET_ENCODERS:                   parseEncoders( ba );               break;
    case GET_EKF:                        parseEkf( ba );                    break;
    default:                             Logger::log( BCD::MCU::MCU, "mcuFC not match." );
    }
}
```

IMU 用来测量姿态和加速度，如果一直使用精度就会很差，所以需要不时地 tare（置零）一下：

```cpp
void MCUController::doTare( )
{
    QByteArray tx;
    tx.append( '\0' );
    tx.append(  13  );
    writeMultipleRegisters( mcuAddr.value( ON_OFF_ADDR ), 1, tx );
    Logger::log( BCD::MCU::TARE );
}
```

从 `writeMultipleRegisters( mcuAddr.value( ON_OFF_ADDR ), 1, tx )` 可以看出，我依旧是把所有的函数地址
存在了一个 map 里。这样用起来比较方便（虽然有过度工程的嫌疑）。

那个 `tx.append( '\0' )` 则是无奈之举，因为我试了 `tx.append( 0 )` 和 `tx.append( char(0) )`，都不可以。
还好终于成功了==。

（By the way，这可能是早期的代码，因为现在一看就应该用 `quint16 highlow( const quint8 &high, const quint8 &low )` 啊。）

IMU 模块就到这里。下面讲 UR 模块。

## UR

在我还在老师的公司做本科毕设的时候，我就看到了 UR10。没想到后来它的控制程序还是我写的。

![放在公司二楼的 UR10 机械臂](http://whudoc.qiniudn.com/2016/2016-07-26_10-20-05.png){align=right}

先简要介绍一下它：

>   UR（Universal Robot）是一个机械臂，位于车机械臂末端，搭载了全部传感器。 共 6 个关节，均可 360 度旋转，可定点移动。

相比 LMS 使用 TCP，IMU 使用串口 Modbus 协议，UR10 提供了更全面便捷的交互接口：
你可以使用 TCP，也可以是用 Modbus（而且是 Modbus TCP，比 IMU 的串口 Modbus 好用得多）。

因为 TCP 使用起来方便得多，我们使用了 TCP[^urtcp]，它提供四个端口，所以我们的 URController 类里有四个成员变量：

```cpp
QTcpSocket urDashboardAgent;
QTcpSocket urClient1;
QTcpSocket urClient2;
QTcpSocket urStatusAgent;
```

这是一些有用的变量。

```cpp
enum {
    UR_ModbusTCPPort          = 502,    // UR 提供的 ModbusTCP 端口，不好用，所以没用了
    UR_DashboardPort          = 29999,
    UR_Client1Port            = 30001,  // controller
    UR_Client2Port            = 30002,
    UR_StatusPort             = 30003,  // UR status, 100Hz
};
```

如下图，urClient1 连接到端口 30001，用来控制 UR 的移动，使用的是 UR 文档中说到的 UScript 脚本。
urStatusAgent 连接到端口 30003，用来获取 UR 当前的位姿和状态，数据频率是 100 Hz，每次 1440 个字节的数据。

![](http://whudoc.qiniudn.com/2016/ur-conn-UR.png)

上图原是我画在 processingon 上的，链接在这里：<https://www.processon.com/view/link/56ee186de4b0881f9ac2e009>。

[^urtcp]: 开始我并不知道可以用 TCP，还在尝试用 Modbus 请求的方式一个个读取 register，
    后来惊现原来可以用 TCP，于是这些东西统统都用不着了：

    ```cpp
    enum URFunctionCodes {
        READ_COILS                = 0x01,  // read output bits
        READ_DISCRETE_INPUTS      = 0x02,  // read input bits
        READ_HOLDING_REGISTERS    = 0x03,  // read output registers
        READ_INPUT_REGISTERS      = 0x04,  // read input registers
        WRITE_SINGLE_COIL         = 0x05,  // write output bit, turn ON/OFF
        WRITE_SINGLE_REGISTER     = 0x06,  // write output register
        WRITE_MULTIPLE_COILS      = 0x0f,  // write multiple output bits
        WRITE_MULTIPLE_REGISTERS  = 0x10,  // write multiple output registers
    };
    ```

UR 最重要的，是它的当前姿态，我们把它存在了一起：

```cpp
struct URStatus {
    quint32 size;
    double time;
    double q_target[6];                 // joint target, rad
    double qd_target[6];                // rad/s
    double qdd_target[6];               // rad/s^2
    double i_target[6];                 // target current, A
    double m_target[6];                 // torque, in Nm

    double q_actual[6];                 // rad
    double qd_actual[6];                // rad/s
    double i_actual[6];                 // needed current, A
    double i_control[6];                // supplied current, A

    double tcp_vector_actual[6];        // m, rad
    double tcp_speed_actual[6];         // m/s, rad/s
    double tcp_force_actual[6];         // N, Nm
    double tcp_vector_target[6];        // m, rad
    double tcp_speed_target[6];         // m/s, rad/s

    double digital_input_bits;
    double motor_temperatures[6];       // temperature(°C) of six joints

    double controller_timer;
    double reverved_value;
    double robot_mode;
    double joint_modes[6];
    double safety_mode;

    double ur_only1[6];
    double tool_accelerometer_values[3];
    double ur_only2[6];

    double speed_scaling;
    double linear_momentum_norm;
    double ur_only3;
    double ur_only4;

    double v_main;                      // V
    double v_robot;                     // V
    double i_robot;                     // A
    double v_actual[6];
} ust;
```

里面的 tcp 可不是网络通信的 tcp，而是 tool center point，也就是 UR10 末端（最远端）。

在 UR 的构造函数里，需要连接几个槽：

```cpp
// 有数据就读数据
connect( this, SIGNAL(readyRead()),
         this, SLOT(readUR()) );
connect( &urClient1, SIGNAL(readyRead()),
         this, SLOT(parseURAgent1()) );
connect( &urClient2, SIGNAL(readyRead()),
         this, SLOT(parseURAgent2()) );
connect( &urDashboardAgent, SIGNAL(readyRead()),
         this, SLOT(parseURDashboard()) );
connect( &urStatusAgent, SIGNAL(readyRead()),
         this, SLOT(parseURStatus()) );

// 掉线就自动重连
connect( this, SIGNAL(disconnected()),
         this, SLOT(connectUR()) );
connect( &urDashboardAgent, SIGNAL(disconnected()),
         this, SLOT(connectDashboard()) );
connect( &urClient1, SIGNAL(disconnected()),
         this, SLOT(connectClient1()) );
connect( &urClient2, SIGNAL(disconnected()),
         this, SLOT(connectClient2()) );
connect( &urStatusAgent, SIGNAL(disconnected()),
         this, SLOT(connectStatusAgent()) );
connect( this, SIGNAL(stateChanged(QAbstractSocket::SocketState)),
         this, SLOT(urStateChanged(QAbstractSocket::SocketState)) );
```

```cpp
void URController::dashboardWrite( QByteArray &ba )
{
    ba.append( "\r\n" );
    urDashboardAgent.write( ba, ba.length() );
    Logger::log( BCD::UR::DASHBOARD_WRITE );
}

void URController::client1Write( QByteArray &ba ) { ... }
void URController::client2Write( QByteArray &ba ) { ... }
```

UR 最重要的是获取 UR 的当前姿态，而且我们只 parse 我们需要的数据：

![](http://whudoc.qiniudn.com/2016/ur-decode-status.png)

代码如下：

```cpp
void URController::parseURStatus( const QByteArray &ba )
{
    if ( ba.length() != 2 * UR_STATUS_BUF_LENGTH ) { return; }

    // then we parse the 1044 bytes
    bool t = true, f = false;     // flag to determine Parsing or Not
    quint16 c = 0;                // cursor

    ust.size                         = parse4Bytes2Int4UR( ba, c ); c += 4;
    if (ust.size != UR_STATUS_BUF_LENGTH) {
        qDebug() << "oops: " << ust.size;
        return;
    }

#define PARSE_TO_DOUBLE parse8BytesToDouble
// #define PARSE_TO_DOUBLE parse8Bytes2Double4UR
    ust.time                         = PARSE_TO_DOUBLE( ba, c, f ); c += 8;
    // q target，这些东西不重要，所以传入“f”，即：【不处理】
    ust.q_target[0]                  = PARSE_TO_DOUBLE( ba, c, f ); c += 8;
    ...
    ust.q_target[5]                  = PARSE_TO_DOUBLE( ba, c, f ); c += 8;
    // q target differential
    ust.qd_target[0]                 = PARSE_TO_DOUBLE( ba, c, f ); c += 8;
    ...
    ust.qd_target[5]                 = PARSE_TO_DOUBLE( ba, c, f ); c += 8;
    // qdd
    ust.qdd_target[0]                = PARSE_TO_DOUBLE( ba, c, f ); c += 8;
    ...
    ust.qdd_target[5]                = PARSE_TO_DOUBLE( ba, c, f ); c += 8;
    // I
    ust.i_target[0]                  = PARSE_TO_DOUBLE( ba, c, f ); c += 8;
    ...
    ust.i_target[5]                  = PARSE_TO_DOUBLE( ba, c, f ); c += 8;
    // M
    ust.m_target[0]                  = PARSE_TO_DOUBLE( ba, c, f ); c += 8;
    ...
    ust.m_target[5]                  = PARSE_TO_DOUBLE( ba, c, f ); c += 8;
    // q actual，关节的角度。这是我们关心的内容，所以传入“t”，表示【需要 parse】
    ust.q_actual[0]                  = PARSE_TO_DOUBLE( ba, c, t ); c += 8;
    ust.q_actual[1]                  = PARSE_TO_DOUBLE( ba, c, t ); c += 8;
    ust.q_actual[2]                  = PARSE_TO_DOUBLE( ba, c, t ); c += 8;
    ust.q_actual[3]                  = PARSE_TO_DOUBLE( ba, c, t ); c += 8;
    ust.q_actual[4]                  = PARSE_TO_DOUBLE( ba, c, t ); c += 8;
    ust.q_actual[5]                  = PARSE_TO_DOUBLE( ba, c, t ); c += 8;
    // 解析得到的数据立马 emit 出去，主界面获得了，可以实时显示出来
    emit ustJ0toJ5( rad2deg( ust.q_actual[0] ),
                    rad2deg( ust.q_actual[1] ),
                    rad2deg( ust.q_actual[2] ),
                    rad2deg( ust.q_actual[3] ),
                    rad2deg( ust.q_actual[4] ),
                    rad2deg( ust.q_actual[5] ) );
    // qd，这是加速度。
    ust.qd_actual[0]                    = PARSE_TO_DOUBLE(ba, c, t); c += 8;
    ust.qd_actual[1]                    = PARSE_TO_DOUBLE(ba, c, t); c += 8;
    ust.qd_actual[2]                    = PARSE_TO_DOUBLE(ba, c, t); c += 8;
    ust.qd_actual[3]                    = PARSE_TO_DOUBLE(ba, c, t); c += 8;
    ust.qd_actual[4]                    = PARSE_TO_DOUBLE(ba, c, t); c += 8;
    ust.qd_actual[5]                    = PARSE_TO_DOUBLE(ba, c, t); c += 8;
    emit ustJ0toJ5d( rad2deg( ust.qd_actual[0] ),
                     rad2deg( ust.qd_actual[1] ),
                     rad2deg( ust.qd_actual[2] ),
                     rad2deg( ust.qd_actual[3] ),
                     rad2deg( ust.qd_actual[4] ),
                     rad2deg( ust.qd_actual[5] ) );
    ...

    // TCP，末端得位置
    ust.tcp_vector_actual[0]         = PARSE_TO_DOUBLE( ba, c, t ); c += 8;
    ust.tcp_vector_actual[1]         = PARSE_TO_DOUBLE( ba, c, t ); c += 8;
    ust.tcp_vector_actual[2]         = PARSE_TO_DOUBLE( ba, c, t ); c += 8;
    ust.tcp_vector_actual[3]         = PARSE_TO_DOUBLE( ba, c, t ); c += 8;
    ust.tcp_vector_actual[4]         = PARSE_TO_DOUBLE( ba, c, t ); c += 8;
    ust.tcp_vector_actual[5]         = PARSE_TO_DOUBLE( ba, c, t ); c += 8;
    emit ustXYZRxRyRz( ust.tcp_vector_actual[0],
                       ust.tcp_vector_actual[1],
                       ust.tcp_vector_actual[2],
                       ust.tcp_vector_actual[3],
                       ust.tcp_vector_actual[4],
                       ust.tcp_vector_actual[5] );

    // tcp speed actual
    ust.tcp_speed_actual[0]          = PARSE_TO_DOUBLE( ba, c, f ); c += 8;
    ...
    ust.tcp_speed_actual[5]          = PARSE_TO_DOUBLE( ba, c, f ); c += 8;

    // tcp force
    ust.tcp_force_actual[0]          = PARSE_TO_DOUBLE( ba, c, f ); c += 8;
    ...
    ust.tcp_force_actual[5]          = PARSE_TO_DOUBLE( ba, c, f ); c += 8;

    // tcp target
    ust.tcp_vector_target[0]         = PARSE_TO_DOUBLE( ba, c, f ); c += 8;
    ...
    ust.tcp_vector_target[5]         = PARSE_TO_DOUBLE( ba, c, f ); c += 8;

    // tcp speed target
    ust.tcp_speed_target[0]          = PARSE_TO_DOUBLE( ba, c, f ); c += 8;
    ...
    ust.tcp_speed_target[5]          = PARSE_TO_DOUBLE( ba, c, f ); c += 8;
    ...

#undef PARSE_TO_DOUBLE
    // parsed c=1044 bytes now.
}
```

UR 模块还可以控制 UR 六个机械臂的移动：

```cpp
// 移动到某个角度
void URController::moveJ( const double &x1,
                          const double &x2,
                          const double &x3,
                          const double &x4,
                          const double &x5,
                          const double &x6 )
{
    QString str;
    str.sprintf( "movej([%lf, %lf, %lf, %lf, %lf, %lf]"
                 ",a=%.2lf, v=%.2lf, t=%.2lf, r=%.2lf)",
                  x1, x2, x3, x4, x5, x6,
                  urConf.qAcceleration,
                  urConf.qVelocity,          // velocity
                  urConf.time,               // time
                  urConf.blendRadius );      // blend radius
    QByteArray ba;
    ba.append( str );
    client1Write( ba );
    Logger::log( BCD::UR::UR, QString( "UR moveJ： %1").arg( str ) );
}

// 移动某个角度
void URController::moveJDiff( const double &x1,
                              const double &x2,
                              const double &x3,
                              const double &x4,
                              const double &x5,
                              const double &x6 )
{
    double j[6] = { ust.q_actual[0],
                    ust.q_actual[1],
                    ust.q_actual[2],
                    ust.q_actual[3],
                    ust.q_actual[4],
                    ust.q_actual[5] };
    Logger::log( BCD::UR::UR,
        QString( "UR moveJDiff： delta=[%1, %2, %3, %4, %5, %6]").arg( x1 ).arg( x2 ).arg( x3 ).arg( x4 ).arg( x5 ).arg( x6 ) );
    moveJ( j[0] + x1
         , j[1] + x2
         , j[2] + x3
         , j[3] + x4
         , j[4] + x5
         , j[5] + x6 );
}
```

里面用的是 UR 提供的脚本。UR10 的说明文档里有一本 UScript 1.0，里面对此
有所说明。我们需要的只是移动关节、移动到某一个位置。所以还不算太复杂。

![](http://whudoc.qiniudn.com/2016/ur-process.png)

![这是早期的一个截图](http://whudoc.qiniudn.com/2016/ur-old.png)

UR 就讲到这。

传感器模块也就到底为止了。

---

[【下一节：长沙项目总结 5 -- 通信模块：Wrappers 和 Moderator】](post-0118-changsha-review-5.html){style="font-size:80%; color: red;" title="post-0118-changsha-review-5.md"}
