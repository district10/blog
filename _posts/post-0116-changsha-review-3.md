---
title: 长沙项目总结 3
date: 2016-07-27
keywords:
tags:
  - review
  - project
---

长沙项目总结 3 -- Logger 模块和 Utils 模块
==========================================

[【回到目录】](post-0113-changsha-review.html){style="font-size:80%; color: red;" title="post-0113-changsha-review.md"}

>   这是整个软件系统通用的部分；

## 日志模块

>   才发现自己之前把这部分源码整个提取出来放在 GitHub 上的：[district10/Logger: A Simple Logger](https://github.com/district10/Logger)。

日志（logger）模块是项目进行到一段时间后才开发的，但我还是要放到其他模块之前讲。

程序在多线程、有网络通信无法用常规设置断点等方式 debug 的情况下，
实现多人参与多模块的系统代码调试，只能通过日志模块。
只有这种低级的打印方式才能发现程序运行中出现的问题。我们是迫于无奈，才要
弄这么一个日志模块，写得过程中碰到许多麻烦，但终于是搞定了~
（但现在我不主张自己写 Logger 模块。有次我直接从 CloudCompare 的源码里扣它的日志模块，
大概用了半小时就搞定了==，它还有一个界面，输出效果也比较满意。）

它的使用方法是：

-   `Logger::log( ) << 3 << "is three.";`{.cpp}，直接输出日志；
-   `Logger::log( 4 ) << "emphasized log."; // 1..5`{.cpp}，设定日志等级；
-   `Logger::log( BCD::LMS::CONNECT, QString("<QString> remarks") );`{.cpp}，某一个模块某一个函数输出的日志，传入 QString 类型；
-   `Logger::log( BCD::LMS::CONNECT, std::string("<c++ string> remarks") );`{.cpp}，传入 std::string 类型；
-   `Logger::log( BCD::LMS::CONNECT, "<c style string> remarks" );`{.cpp}，传入 char * 类型。

上面的 BCD 是我们项目的 namespace（BCD 的意思是 Bridge Crack Detection，桥梁裂缝检测）。
`BCD::LMS::CONNECT` 则指的是 LMS 采集模块的 `connect` 函数，我们在日志模块提前注册了各个模块的函数，所以
可以直接这么用。其实可以直接使用 C 语言提供的 `__FILE__` 和 `__FUNCTION__` 来进行日志，我们把这些东西都
提前定义好，是为了在使用的时候方便点（毕竟 VS 提供的代码补全可以让我们在写 `BCD::LMS::` 的时候就
弹出所有的候选项目）。

日志模块是一个类，使用了设计模式中的**单例模式**。为了显示方便，我们的日志模块输出的是 markdown 格式
的表格。上面提到的 [LMS 数据量](post-0056-lms-chunk.html) 这篇文章里的表格，其实就是我直接从日志拷贝过去
（一行都没有修改）的显示效果。
下面把我的实现贴一下。

首先，**日志是分级的，我预设里 5 个等级，从 1 到 5 紧要程度以此降低**。
默认日志等级是 3（`BCD::ActionInfo::LEVEL3`），日志模块在界面上和控制台
显示的时候可以默认过滤掉一些等级不够的 log（虽然我这里并没有过滤）。

```cpp
#define LOG_FILTER_CONSOLE (  BCD::ActionInfo::LEVEL3  )
#define LOG_FILTER_GUIVIEW (  BCD::ActionInfo::LEVEL5  )
#define LOG_FILTER_ARCHIVE (  BCD::ActionInfo::LEVEL5  )
```

用 `#define` 定义常量太 naive 了，用 const int 定义常量太不帅，
所以我用了传说中的 enum hack：

```cpp
enum LOG_CONFIGS {
    WIDTH_INDEX            =  10,
    WIDTH_TYPE             =  10,
    WIDTH_LEVEL            =   5,
    WIDTH_REMARKS          =  40,
    LOG_LEVEL_MAX          =   9,
    LOG_LEVEL_MIN          =   0,
    LOG_LEVEL_STEP         =   5,
    LOG_LEVEL_DEFAULT      =   4,
    LOG_ENTRY_OFFSET       =   8, // at most 2^8 actions of each type
};
```

所有的函数都要注册，全部写死在代码里。（当时和组内成员沟通了好久==才把所有人的函数名敲定下来。==）

```cpp
namespace BCD {
// types
enum TypeID {
    TYPE_ARM,       // 对应 BCD::ARM::...
    TYPE_IMU,       // 对应 BCD::IUM::...
    TYPE_LMS,       // ...
    TYPE_MCU,
    TYPE_UR,
    ...
};
...

// actions
typedef int ActionID;
typedef struct {                  // 等级可以用来过滤
    enum Level {
        LEVEL1,                   // fatal error
        LEVEL2,                   // important
        LEVEL3,                   // average
        LEVEL4,                   // below average
        LEVEL5                    // least significant
    } level;
    QString info;
} ActionInfo;

// LMS
namespace LMS {
enum Action {
    LMS                           = TYPE_LMS<<LOG_ENTRY_OFFSET,
    CONSTRUCT,

    CONFIG_ADDRESS_PORT,
    CONFIG_ACTIONS,

    TURN_ON_READING,
    TURN_OFF_READING,

    ...
};
}  // namespace LMS
}  // namespace BCD
```

上面的 `LMS = TYPE_LMS<<LOG_ENTRY_OFFSET,`{.cpp} 的意思是每个模块里最多可以注册
LOG_ENTRY_OFFSET 个函数。有点难以解释，所以我不解释具体是啥意思啦:smile:，懂
enum 和位操作的人都懂我啥意思==。

下面到了重点。**每一条日志都是 Log 类的一个实例。**里面包含 log 的类型（type），id
号（action），备注信息（message），时间戳（timestamp）。

```cpp
class Log
{
private:
    static size_t               counter;

public:
    BCD::TypeID                 type;
    BCD::ActionID               action;
    QString                     message;
    qint64                      timestamp;

public:
    Log( ) {
        type            =       BCD::TYPE_META;
        action          =       (BCD::ActionID)0;
        message         =       QString();
        timestamp       =       0;
    }

    Log( BCD::TypeID tid, BCD::ActionID aid, QString msg="", qint64 ts=0 )
      : type( tid )
      , action( aid )
      , message( msg )
      , timestamp( 0 == ts ? QDateTime::currentMSecsSinceEpoch() : ts ) { ++counter; }

    const Log &show( ) const;
};
```

现在看起来这个 Log 很明显不应该维护一个 `static size_t counter`，但现在我们不讨
论其中的不足（这部分留到最后一篇总结）。

为了让 Log 可以使用 C++ 的“流操作”，我重载了两个操作符：

```cpp
QDataStream &operator<<( QDataStream &out, const Log &log )
{
    out << (int)log.type
        << (int)log.action
        << log.message
        << log.timestamp;
    return out;
}

QDataStream &operator>>( QDataStream  &in, Log &log )
{
    int type, action;
    in  >> type
        >> action
        >> log.message
        >> log.timestamp;
    log.type = (BCD::TypeID)type;
    log.action = (BCD::ActionID)action;
    return in;
}
```

Logger 用来生成和管理 Log 成员。在日志的过程中，必须上锁，所以用了
Qt 的 `QMutex`，日志全部存在一个静态的 `QList<Log>` 里。

```cpp
namespace BCD { typedef QString TypeInfo; }
class Logger
{
private:
    static QMutex           mutex;
    static QList<Log>       logs;
    const static QString    logPath;

private:
    typedef QHash<BCD::TypeID, BCD::TypeInfo> Type;
    typedef QHash<BCD::ActionID, BCD::ActionInfo> Action;

    // 这三个静态函数是一个设计上的失误
    static int initActionInfoWidth( );
    static Type initTypes( );
    static Action initActions( );

    static QList<Log> refresh( );
    static void saveLogs( QList<Log> &logs,
                          BCD::ActionInfo::Level level );

public:
    const static int widthActionInfo;
    const static Type types;
    const static Action actions;

public:
    Logger( ) { /* Empty Logger Constructor */ }
    ...
}; // class Logger
```

QMutex 使用的时候，可以用 QMutexLocker 来简便这个过程（这样也更不容易出错）。
一般的 mutex 类库都提供这样一个功能，比如 Boost 里也有 `boost::mutex::scoped_lock`，
和 Qt 这个 QMutexLocker 就是类似对等的。我们代码里的实例：

```cpp
// 还在 class Logger 里
static Log &log( Log &log )
{
    QMutexLocker locker( &mutex );
    logs.append( log.show() );
    return log;
}
```

为什么 Qt 这 `QMutexLocker` 或者说 `boost::mutex::scoped_lock` 能够自动锁住和释放 mutex 呢？
其实很简单，因为它是一个局部变量，在构造的时候拿了 mutex 的指针，来锁住它；在析构的时候
就会自动释放它。

因为很多代码都是重复的，我还用了很多宏：

```cpp
    // generic log (meta programming, saved a lot of typing...)
#define GENERIC_LOG_QSTRING(TYPE) \
    static Log log( BCD::##TYPE::Action action, QString message = "" ) \
    { \
        QMutexLocker locker( &mutex ); \
        Log log( BCD::TYPE_##TYPE, action, message ); \
        logs.append( log.show() ); \
        return log; \
    }

#define GENERIC_LOG_STRING(TYPE) \
       static Log log( BCD::##TYPE::Action action, std::string message ) \
       { return log( action, QString( message.c_str() ) ); }

#define GENERIC_LOG_CSTR(TYPE) \
       static Log log( BCD::##TYPE::Action action, char *message ) \
       { return log( action, QString( message ) ); }

       GENERIC_LOG_QSTRING(  LMS                    )
       GENERIC_LOG_QSTRING(  MCU                    )
       GENERIC_LOG_QSTRING(  UR                     )
       ...

       GENERIC_LOG_STRING(  LMS                    )
       GENERIC_LOG_STRING(  MCU                    )
       GENERIC_LOG_STRING(  UR                     )
       ...

       GENERIC_LOG_CSTR(  LMS                    )
       GENERIC_LOG_CSTR(  MCU                    )
       GENERIC_LOG_CSTR(  UR                     )
       ...

#undef GENERIC_LOG_QSTRING
#undef GENERIC_LOG_STRING
#undef GENERIC_LOG_CSTR
```

以上是头文件 logger.h，在 logger.cpp 里，我们首先要实例化那些 static 变量
（因为之前没有用过 static 成员，刚开始写这部分的时候，犯了很多错误。回头来看，那真
是太蠢了）。

```cpp
using namespace BCD;

const Logger::Type Logger::types = Logger::initTypes();
const Logger::Action Logger::actions = Logger::initActions();
const QString Logger::logPath = QString().sprintf( LOG_OUTPATH_FORMAT,
                                                   Util::ts( ) );
const int Logger::widthActionInfo = Logger::initActionInfoWidth( );
// 其中 initInfoWidth 只是获得字符串的最大宽度，便于对齐，实现如下：
//  int Logger::initActionInfoWidth( )
//  {
//      int width = 0;
//      foreach ( const ActionInfo &ai, actions.values() ) {
//          if ( ai.info.length() > width ) {
//              width = ai.info.length();
//          }
//      }
//      return width;
//  }

size_t Log::counter = 0;
QMutex Logger::mutex;
QList<Log> Logger::logs;
```

其实这里也有过度工程的嫌疑，因为 `initTypes()` 等函数只用了一次，完全没有必要放到 Logger 类
里面去（虽然设置了这些函数为 private 防止其他人调用），只要在 cpp 文件里用文件作用域的
static 函数就可以了。即把

```
// logger.cpp
Logger::Type Logger::initTypes( )
{
    Type types;

    types[  TYPE_ARM                   ] = QObject::tr(  "ARM"          );
    types[  TYPE_IMU                   ] = QObject::tr(  "IMU"          );
    types[  TYPE_LMS                   ] = QObject::tr(  "LMS"          );
    types[  TYPE_MCU                   ] = QObject::tr(  "MCU"          );
    types[  TYPE_UR                    ] = QObject::tr(  "UR"           );
    ...

    return types;
}
```

改成

```cpp
// logger.cpp
static Logger::Type initTypes( )
{
    Logger::Type types;

    types[  TYPE_ARM                   ] = QObject::tr(  "ARM"          );
    types[  TYPE_IMU                   ] = QObject::tr(  "IMU"          );
    types[  TYPE_LMS                   ] = QObject::tr(  "LMS"          );
    types[  TYPE_MCU                   ] = QObject::tr(  "MCU"          );
    types[  TYPE_UR                    ] = QObject::tr(  "UR"           );
    ...

    return types;
}
```

即可。

initActions 函数注册了所有 logger 可以直接使用的函数：

```cpp
// logger.cpp
Logger::Action Logger::initActions( )
{
    Action actions;
#define ACTION(aid, level, info) \
    actions[(int)aid]=actionInfo(ActionInfo::LEVEL##level,QObject::tr(info));

    /*
     * -- L M S --
     */
    ACTION( LMS::LMS,                               1, "LMS generic" );
    ACTION( LMS::CONSTRUCT,                         1, "construct" );
    ACTION( LMS::GEN_NEW_PATH,                      1, "gen new path" );

    ACTION( LMS::CONFIG_ADDRESS_PORT,               1, "configure ip, port" );
    ACTION( LMS::CONFIG_ACTIONS,                    1, "configure actions" );
    ACTION( LMS::CONFIG_AUTH_LEVELS,                1, "configure auth levels" );
    ACTION( LMS::CREATE_THREAD,                     1, "create thread" );
    ACTION( LMS::DETACH_THREAD,                     1, "detach thread" );

    ACTION( LMS::TURN_ON_READING,                   1, "turn on READING" );
    ACTION( LMS::TURN_OFF_READING,                  1, "turn off READING" );
    ACTION( LMS::POLLING_ONE,                       1, "just polling one" );

    ACTION( LMS::PARSE_PROFILE,                     1, "parse profiles" );
    ACTION( LMS::SAVE_PROFILES,                     1, "save profiles" );
    ACTION( LMS::CONFIG_BASEDIR,                    1, "configure output base dir" );

    ...

#undef ACTION

    return actions;
}
```

日志在保存的时候，可能存在时间戳的混乱（两台电脑的日志分别记录，他们的时间设定可能存在误差，
待程序结束的时候，工控机的日志除了本地保存，还会通过 TCP 回传给高性能。高性能会保存所有日志）：

```cpp
// 按照时间戳排序
bool compare( const Log &log1, const Log &log2 ) {
    return log1.timestamp < log2.timestamp;
}

void Logger::saveLogs( QList<Log> &logs, ActionInfo::Level level )
{
    if ( logs.isEmpty() ) { return; }

    // 不过我们实际使用中并没有排序，因为它不那么必要
    // qSort( logs.begin(), logs.end(), compare );

    // 会保存成 UTF-8 without BOM 格式
    FILE *fp = fopen( qPrintable(logPath), "a+" );
    // 这里本来有一些 Debug 信息，但是放到这里我把它们去掉了
    if ( NULL == fp ) { return; }

    int widthTimestamp = Util::ts2YYYYMMDD_HHMMSS_MS().length();
    static size_t i = 0;
    if ( 0 == i ) {
        // Markdown 格式的表格的表格头，因为我想让表格好看点，所以要对表格进行
        // 对齐，还花了不少功夫==
        // 原谅我处女座强迫症。
#define H(header, width) \
     arg("", (##width-QObject::tr(##header).length())/2, ' ') \
    .arg(QObject::tr(##header)) \
    .arg("", ##width-QObject::tr(##header).length()-(##width-QObject::tr(##header).length())/2, ' ')

    // 上面这一个蛋疼的宏，就是为了实现 C 语言字符串格式化中应该有而没有的居中对齐

        fputs( qPrintable( QString( "| %1%2%3 "          // index
                                    "| %4%5%6 "          // timestamp
                                    "| %7%8%9 "          // log level
                                    "| %10%11%12 "       // type
                                    "| %13%14%15 "       // action
                                    "| %16%17%18 |\n" )  // remarks
                                    .H( "INDEX",        WIDTH_INDEX )
                                    .H( "TIMESTAMP", widthTimestamp )
                                    .H( "LEVEL",        WIDTH_LEVEL )
                                    .H( "TYPE",          WIDTH_TYPE )
                                    .H( "ACTION",   widthActionInfo )
                                    .H( "REMARKS",    WIDTH_REMARKS ) ), fp );

#undef H
        // 格式就是这样：| idx | timestamp | level | type | action | remarks |
        fputs( QString( "| :%1: | :%2: | :%3: | :%4: | :%5: | :%6: |\n" )
                        .arg( "", WIDTH_INDEX-2,     '-' )
                        .arg( "", widthTimestamp-2,  '-' )
                        .arg( "", WIDTH_LEVEL-2,     '-' )
                        .arg( "", WIDTH_TYPE-2,      '-' )
                        .arg( "", widthActionInfo-2, '-' )
                        .arg( "", WIDTH_REMARKS-2,   '-' )
                        .toStdString().c_str(), fp );
    }  // header

    int i0 = i;
    foreach ( const Log &log, logs ) {
        // current level
        ActionInfo::Level cl = actions.value(log.action).level;
        if ( true || cl <= level ) {
            int len = strlen( qPrintable( types.value(log.type) ) );
            fprintf( fp,
                     "| %*i "              // index
                     "| %*s "              // timestamp
                     "| %*s%d%*s "         // log level
                     "| %*s%s%*s "         // type (aligned to center)
                     "| %-*s "             // action
                     "| %*s |\n",          // message
   /* index     */   WIDTH_INDEX, ++i,
   /* timestamp */   widthTimestamp, qPrintable(Util::ts2YYYYMMDD_HHMMSS_MS(log.timestamp)),
   /* log level */   (WIDTH_LEVEL-1)/2, "", (int)actions.value(log.action).level+1, WIDTH_LEVEL-(WIDTH_LEVEL-1)/2-1, "",
   /* type      */   (WIDTH_TYPE-len)/2, "", qPrintable(types.value(log.type)), WIDTH_TYPE-len-(WIDTH_TYPE-len)/2, "",
   /* action    */   widthActionInfo, qPrintable(actions.value(log.action).info),
   /* message   */   WIDTH_REMARKS, log.message.isEmpty() ? "" : qPrintable(log.message) );
        }
    }  // foreach

    fclose( fp );
    log() << "Saving logs... done. ("
          << (i-i0) << "out of "
          << logs.size() << "logs )";
}

QList<Log> Logger::refresh( )
{
    QList<Log> copy;

    QMutexLocker locker( &mutex );
    foreach ( const Log &log, logs ) {
        copy.append( log );
    }
    logs.clear();

    return copy;
}

// 还要按照等级保存，可能一些临时的级别特别低的调试信息就不保存了。
void Logger::save( ActionInfo::Level level )
{
    QList<Log> &logs = refresh();

    if ( !Bundle::activated() ) {
        saveLogs( logs, level );
    } else {
        // 工控机要把日志回传给高性能计算机
        qDebug() << "Sending" << logs.length() << "logs to MASTER...";
        QByteArray tx;
        QDataStream out( &tx, QIODevice::WriteOnly );
        out.setVersion( QDataStream::Qt_4_8 );
        out << (int)Moderator::META__SAVE_LOG__VOID;
        out << logs.length();
        foreach ( const Log &log, logs ) {
            out << log;
        }
        Bundle::send( tx );
        qDebug() << "Sending" << logs.length() << "logs to MASTER... done.";
    }
}

void Logger::lazySave()
{
    QList<Log> logs = refresh();
    saveLogs( logs, LOG_FILTER_ARCHIVE );
}
```

## Utils 模块

因为有很多网络数据需要处理，所以建了一个 utils 模块，放置一些通用的字节处理函数。

首先，引入 Qt 的头文件和日志模块：

```cpp
#ifndef BYTESUTILS
#define BYTESUTILS
#include <QtCore>
#include "logger.h"
```

第一个 util，是从字符串读取字节作为原始数据。
一般的 COM 串口助手都有类似的功能，我们发现没有这个函数很多时候调试起来很麻烦，
所以需要这么一个函数。

```cpp
//! e.g. "0x34 0x48" ==> 0x34 0x48
QByteArray parseHexString( const QString &hexstr )
{
    QStringList sl = hexstr.split(" ");
    QByteArray ba;
    foreach ( const QString &str, sl ) {
        int i = 0;
        sscanf_s( qPrintable( str ), "0x%x", &i );
        ba.append((quint8)i);
    }

    return ba;
}
```

这里的 `qPrintable` 宏真是详见恨晚！因为去长沙参与这个项目前对 Qt 并不熟悉，
刚开始我们使用的是 `qstr.toStdString().c_str()`，使用起来真是麻烦。
后来才发现 Qt 提供了这么一个宏。

有时候，还要把原始数据打印成可以看到的字符，就写了 ba2hexstr 函数：

```cpp
//! QByteArray to Hex String, e.g. 0x34 0x45 ==> "0x 34 0x45"
QString ba2hexstr( const QByteArray &ba,
                   QString prefix /* = "0x" */,
                   QString postfix /* = "" */ )
{
    QString str;
    for ( int i = 0; i < ba.length(); ++i ) {
        str.append( QString().sprintf( "%s%02x%s",
                                       qPrintable( prefix ),
                                       (uchar)ba.at(i),
                                       qPrintable( postfix ) ) );
    }
    return str;
}
```

上面的 [LMS 数据量](post-0056-lms-chunk.html) 这篇文章里打印的
LMS 数据的每个字节就是这么显示出来的。

有时候，我们要像串口发送一个数据，然后，等待大概 2 秒钟，等现有的操作完成后，再发送下一个任务。
举例说，如下图，LMS 下方有一个步进电机（红色框出来了），LMS 工作的时候，就需要连续做三个动作，
然而步进电机不能反馈说“这个动作操作完成了”，我们好进行回调操作。所以，我们只能估计一个时间间隔，
插入到这三个操作调用之间。

![先逆时针转 15 度，再顺时针转 120 度，再逆时针转 15 度，中间都需要等待上一个操
    作完成，才能进行下一步。](http://whudoc.qiniudn.com/2016/2016-07-26_10-21-40.png)

这就是 `delay_ms` 函数，它能将线程暂停一定的毫秒数，而不影响主界面的消息循环。

```cpp
//! delay msecs
void delay_ms( const quint16 &t )
{
    QTime dieTime = QTime::currentTime().addMSecs(t);
    while( QTime::currentTime() < dieTime ) {
        QCoreApplication::processEvents( QEventLoop::AllEvents, 100 );
    }
}
```

下面两个比较简单，就是角度和弧度的转化：

```cpp
double rad2deg( const double &r ) { return r / M_PI * 180.0; }
double deg2rad( const double &d ) { return d * M_PI / 180.0; }
```

下面是几个时间戳函数。时间戳我们使用的是 Qt 的 `QDateTime::currentMSecsSinceEpoch()`，
因为它能明确表示一个时间点，而且精度是毫秒，它实际上是一个 int64_t 整型。话说我相册还有一个截图：

![](https://img3.doubanio.com/view/photo/photo/public/p2255334335.jpg)

```cpp
QString Util::ts2HHMMSS_MS( qint64 ts/* =0 */ )
{
    QDateTime dt = ts2dt( ts );
    return QString().sprintf( "%02d:%02d:%02d.%03d"  // e.g. 01:23:45.678
                            , dt.time().hour()
                            , dt.time().minute()
                            , dt.time().second()
                            , dt.time().msec() );
}

QString Util::ts2YYYYMMDD_HHMMSS_MS( qint64 ts/*=0*/
    , const char *format/*="%4d/%02d/%02d %02d:%02d:%02d.%03d"*/ )
{
    QDateTime dt = ts2dt( ts );
    return QString().sprintf( format
                            , dt.date().year()
                            , dt.date().month()
                            , dt.date().day()
                            , dt.time().hour()
                            , dt.time().minute()
                            , dt.time().second()
                            , dt.time().msec() );
}

qint64 timestamp( )
{
    return QDateTime::currentMSecsSinceEpoch();
}

QString timestampstr( )
{
    qint64 dt = QDateTime::currentMSecsSinceEpoch();
    return timestampstr( dt );
}

QString timestampstr( const qint64 &dt )
{
    QString str;
    str.sprintf( "%lld", dt );
    return str;
}
```

之前我还对比过 `clock_t`、`time_t`，发现还是 Qt 的 `currentMSecsSinceEpoch` 好：
^[见 [clock_t 不是时间 - dvorak4tzx](http://dvorak4tzx.lofter.com/post/1d4021c8_7911622)。]

-   `clock_t` 根本不是时间戳，时间的 span 太短，只能用来对比时间先后，而不是真正的“纪录”时间；
-   `time_t` 和 Linux 上常用的 `date +%s` 应该等价，不过时间精度是秒，不够精确；
-   `QDateTime` 和 `time_t` 类似，但是精度达到了毫秒，所以它最好。

在 COM 编程（串口编程）中，经常需要处理一个
word 的数据（两个字节），所以写了几个字节操作，
用来获取高位、低位，把两个字节合并为一个 word：

```cpp
//! get higher byte
quint8 high( const quint16 &letter )
{
    return (quint8)(letter>>8 & 0xFF);
}

//! get lower byte
quint8 low( const quint16 &letter )
{
    return (quint8)(letter & 0xFF);
}

//! patch two bytes
quint16 highlow( const quint8 &high, const quint8 &low )
{
    quint16 hl = 0;
    hl |= (quint16)high << 8;
    hl |= low;
    return hl;
}
```

高位和低位我也是在长沙才 GET 到的概念。那时候我还在看 CSAPP，刚看到 two's complement。
串口数据经常会凌乱，所以通常都要校验，串口助手里，通常也有一个选项，需要你设置到底校验是
CRC16 校验是【高位在前】，还是【低位在前】。自己发送出去的数据，也要加上校验的两个字节
才可以。 否则对方也会认为数据“已损坏”。这个代码由长沙大学的刘博士提供的 MFC 程序修改
而来：

```cpp
//! generate CRC16 checksum
quint16 genCRC16( const QByteArray &ba, int length /* = -1 */ )
{
    quint16 crc = 0xFFFF;

    int len;
    if ( length > ba.length() || ba.length() == 0 ) {
        return 0;
    } else if ( -1 == length ) {
        len = ba.length();
    } else {
        len = length;
    }

    for ( int cnt = 0; cnt < len; ++cnt ) {
        int i;
        crc ^= (quint8)ba.at(cnt);

        for ( i = 0; i < 8; ++i ) {
            if ( crc & 0x01 ) {
                crc >>= 1;
                crc ^= 0xA001;       // magical...
            } else {
                crc >>= 1;
            }
        }
    }

    return crc;
}
```

首先获取收到的数据（我们把所有的原始数据都存在 QByteArray 里，而不是 `char *`
什么的里）的最后两个字节，然后把它整合成一个 quint16（word）：

```cpp
//! get last 2 bytes then patch to uint16
quint16 getCRC16( const QByteArray &ba )
{
    if ( ba.length() < 2 ) {
        return 0;
    }

    quint8  low  = ba.at( ba.length() - 2 ); // LSB first
    quint8  high = ba.at( ba.length() - 1 );
    quint16 hl = highlow( high, low );
    return hl;
}
```

给自己要发送的数据加上校验字节，我们的约定是【低位在前】：

```cpp
//! patch CRC16 tail
void patchCRC16Tail( QByteArray &data )
{
    quint16 crc = genCRC16( data );
    data.append( low(crc) );  // low first
    data.append( high(crc) );
}
```

```cpp
//! check if crc16 passed
bool crc16Passed( const QByteArray &ba )
{
    if ( getCRC16( ba ) == genCRC16(ba, ba.length()-2) ) {
        return true;
    } else {
        return false;
    }
}
```

然后就是把得到的原始数据转化为相应的 double，int 等类型，这部分在编码器模块、UR 模块里应用很多。

```cpp
quint16 parse2BytesToUInt16( const QByteArray &ba, quint16 cursor, bool doit /* = true */ )
{
    if ( cursor + 1 >= ba.length() ) {
        Logger::log( BCD::META::META, "Error parse 2 bytes to Uint16" );
        return 0;
    }

    if ( !doit ) {
        return 0;
    }

    quint16 num = 0;
    num  = (quint16)(ba.at(cursor + 0)) << 8; // MSB first
    num |= (quint8)ba.at(cursor + 1);
    return num;
}

quint32 parse4BytesToUInt32( const QByteArray &ba, quint16 cursor )
{
    if ( cursor + 3 >= ba.length() ) {
         Logger::log( BCD::META::META, "Error parse 4 bytes to Uint32" );
         return 0;
    }

    quint32 num = 0;
    quint16 low  = parse2BytesToUInt16( ba, cursor + 0 );  // LSB first
    quint16 high = parse2BytesToUInt16( ba, cursor + 2 );
    num |= (quint32)low;
    num |= ((quint32)high << 16);

    //QByteArray tmp = ba.mid( 0, 4 );
    //qDebug() << ba2hexstr( tmp ) << " : " << num;
    return num;
}

quint64 parse8BytesToUInt64( const QByteArray &ba, quint16 cursor )
{
    if ( cursor + 7 >= ba.length() ) {
        Logger::log( BCD::META::META, "Error parse 8 bytes to uint64" );
        return 0;
    }

    quint64 i = 0;
    i |= ba.at( cursor + 0 ) << 56;
    i |= ba.at( cursor + 1 ) << 48;
    i |= ba.at( cursor + 2 ) << 40;
    i |= ba.at( cursor + 3 ) << 32;
    i |= ba.at( cursor + 4 ) << 24;
    i |= ba.at( cursor + 5 ) << 16;
    i |= ba.at( cursor + 6 ) <<  8;
    i |= ba.at( cursor + 7 ) <<  0;
    return i;
}

int parse4Bytes2Int4UR( const QByteArray &ba, quint16 beg )
{
    if ( beg + 3 >= ba.length() ) {
        Logger::log( BCD::META::META, "Error parse 8 bytes to int 4ur" );
        return 0.0;
    }

    int i = 0;
    char *ii = (char *)&i;
    *ii |= ba.at(beg + 3); ++ii;
    *ii |= ba.at(beg + 2); ++ii;
    *ii |= ba.at(beg + 1); ++ii;
    *ii |= ba.at(beg + 0);
    return i;
}

// 为了让 UR 模块的代码好看点，添加了一个参数，当它为 true 的时候，可以“偷懒”不 parse。
double parse8Bytes2Double4UR( const QByteArray &ba, quint16 beg, bool parse )
{
    if ( beg + 7 >= ba.length() ) {
        Logger::log( BCD::META::META, "Error parse 8 bytes to double 4 ur" );
        return 0.0;
    }

    if ( !parse ) { return 0.0; }

    // 可以看到内存里字节序和网络收到的字节序是一样的，
    // 鉴于大部分操作系统包括 Windows 都是 small endian，
    // 那我们的网络字节序应该也是 small endian
    // （但我不保证啊……我早忘记了==）
    double d = 0.0;
    char *dd = (char *)&d;
    *dd |= ba.at(beg + 0); ++dd;
    *dd |= ba.at(beg + 1); ++dd;
    *dd |= ba.at(beg + 2); ++dd;
    *dd |= ba.at(beg + 3); ++dd;
    *dd |= ba.at(beg + 4); ++dd;
    *dd |= ba.at(beg + 5); ++dd;
    *dd |= ba.at(beg + 6); ++dd;
    *dd |= ba.at(beg + 7);
    return d;
}

double parse8BytesToDouble( const QByteArray &ba, quint16 beg, bool parse /*=true*/ )
{
    if ( beg + 7 >= ba.length() ) {
        Logger::log( BCD::META::META, "Error parse 8 bytes to double" );
        return 0.0;
    }

    if ( !parse ) {
        return 0.0;
    }

    double d = 0.0;
    char *dd = (char *)&d;
    *dd |= ba.at(beg + 7); ++dd;
    *dd |= ba.at(beg + 6); ++dd;
    *dd |= ba.at(beg + 5); ++dd;
    *dd |= ba.at(beg + 4); ++dd;
    *dd |= ba.at(beg + 3); ++dd;
    *dd |= ba.at(beg + 2); ++dd;
    *dd |= ba.at(beg + 1); ++dd;
    *dd |= ba.at(beg + 0);
    return d;
}

// 现在看，我也不知道为什么 unsigned 转化成 signed 要自己判断，
// 但肯定是普通的 cast 出了问题，我才这么“玩”的。多亏了当时自己
// 看了 CSAPP。
qint16 us2s( const quint16 &us )
{
    qint16 s = 0;

    if ( us > 0x7FFF ) {          // neg，让我现在写我就改成 us>>15 & 0x1
        s = us & 0x7FFF - 0x8000;
    } else {                      // pos
        s = us;
    }

    return s;
}
```

下面这个纯粹是用来调试字节了：

```cpp
//! pretty print bytes
QString bytes2bits( char *c, quint8 n )
{
    char *w = c;
    QString str;

    for ( int i = 0; i < 8 * n; ++i ) {
       int j = i / 8;
       int k = i % 8;

       if ( (*(w+n-1-j)>>(7-k)) & 0x01 == 1 ) {
           str.append("1");
       } else {
           str.append("0");
       }

       if ( k == 7 && j != n-1 ) {
           str.append(", ");
       }
    }
    return str;
}

// 可以看到这是 big endian，这应该是串口通信用到的
QByteArray word2ByteArray( const qint16 &data )
{
    QByteArray ba;
    ba.append( high(data) );
    ba.append( low(data) );
    return ba;
}

QByteArray patchAddrLength( const quint16 &addr, const quint16 &length )
{
    QByteArray ba;
    // addr
    ba.append( high(addr) );
    ba.append( low(addr) );
    // length
    ba.append( high(length) );
    ba.append( low(length) );

    return ba;
}

QByteArray bytes2Bits( const QByteArray &bytes, const quint16 &bitNum )
{
    QByteArray bits;

    if ( bitNum > 8 * bytes.length() ) {
        qDebug() << "bytes2bits wrong.";
        return bits;
    }

    for ( int i = 0; i < bitNum; ++i ) {
        bits.append( (quint8)( 0x1 & bytes.at((quint16)i/8) >> i%8 ) );
    }

    return bits;
}

QString parseBits2String( const QByteArray &bits )
{
    QString str;
    foreach ( const quint8 &c, bits ) {
        str.append( c == 0 ? "0 " : "1 " );
    }
    return str;
}
```

---

[【下一节：长沙项目总结 4 -- 传感器模块选讲（LMS 和 IMU 和 UR）】](post-0117-changsha-review-4.html){style="font-size:80%; color: red;" title="post-0117-changsha-review-4.md"}
