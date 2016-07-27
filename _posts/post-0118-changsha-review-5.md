---
title: 长沙项目总结 5
date: 2016-07-27
keywords:
tags:
...

长沙项目总结 5 -- 通信模块：Wrappers 和 Moderator
=================================================

[【回到目录】](post-0113-changsha-review.html){style="font-size:80%; color: red;" title="post-0113-changsha-review.md"}

>   简介跨电脑 IPC，进行函数调用；

（这部分很内容也很多。暂时没时间写完。）

电脑/进程之间的通信，可以使用 TCP，可以说 TCP 是最好的 IPC（没有之一），因为它：

-   跨平台、跨主机
-   跨语言
-   效率高
-   可靠传输

唯一的不好在于它不能使用共享内存，也就是说不能使用同一个变量。
可能存在变量的更新问题。But，anyway，用 TCP 来通信总是不错的。

（总有些人，要 UDP 来实现一个捉急的 TCP，效率低、效果差，早该一劳永逸直接上 TCP。）

其实以前的一篇 post 已经提到过：[封装说明](http://tangzx.qiniudn.com/post-0059-exe-wrapper.html)，
可以先看这边。这个 post 讲得是架构，也就是说【如何屏蔽程序调用？不管它来自本机，还是异地】。
对应的代码在 [district10/CrossOS: Cross OS Communication](https://github.com/district10/CrossOS){.featured .heart}，
已经在 Linux 和 Windows 上测试通过。

在上面 repo 的 README.txt 里，写到：

>   还需要定义一个协议，规定相互传递数据的格式。如：
>   第一个字节代表传输类型，文本？buf？需要保存？数据开始？数据结束？等等。
>
>   假设这个规则为 moderator，moderator 需要在发送前对数据进行封装，在收到数据时进行解析和分发。
>   就好象这个 moderator 是我们的 PDU 解析工具。

基于这个 Wrapper，我设计了 Moderator（中介）模块，专门负责序列化和反序列化后函数调用。

它的作用如下图：

![](http://whudoc.qiniudn.com/2016/system-flow.png)

P.S. 中介通常翻译成 intermediary agent，为什么我要用 moderator 来做这个模块名？

:   因为我曾上过的一门自己喜欢的选修课：[英语演讲与辩论](http://tangzx.qiniudn.com/post-0027-ai-will-kill-us.html)，里
    每次讨论小组里都要有一个 moderator 作为协调者。他来统领讨论的进行。

    我觉得这个概念和这里完全契合。所以把这个模块叫 moderator。

Moderator 主要利用了 Qt 提供的序列化功能，实现了函数调用（以及调用参数）的的序列化。

首先要明确，我们的代码只有一份，只不过高性能计算机上会运行 Master 程序，工控机上会
运行 Slave 程序，两者都有各个传感器模块，只不过传感器只有一边是真的有，另一边只是
有一个空壳，它唯一的作用是请求另一边的传感器，并假装自己这边真的有传感器。
Moderator 在两边都有，下面是代码：

```cpp
class Moderator
{
public:
    Moderator( );
    static bool doItYourself( BCD::TypeID tid );

public:
    static void dispatch( QByteArray &msg );

    typedef QHash<BCD::TypeID, MasterSlaveType> WhichSide;
    const static WhichSide wss;
    enum CrossType {
        // -- G E N E S I S - L M S --
        GEN_LMS__START__QINT64,
        GEN_LMS__STOP__VOID,
        ...
        // -- G E N E S I S - U R --
        GEN_UNIT__SET_UR_POSE__DOUBLE_DOUBLE_DOUBLE_DOUBLE_DOUBLE_DOUBLE
    };
    // -- G E N E S I S --
    static QByteArray genLMS_start( const qint64 &dt = 0 );
    static QByteArray genLMS_stop( );
    static QByteArray genUnit_setUrPose( double x, double y, double z,
                                         double rx, double ry, double rz );
    ...

private:
    static WhichSide initWhichSides( );
};
```

需要留意的地方有：

1.  `static bool doItYourself( BCD::TypeID tid )` 这个函数在一侧返回了 true，在另一侧就要返回 false，
    因为一个函数要把在 master 上执行，要不再工控机上执行，不能同时为 true（或者 false）。它的实现代码也
    颇为简单：`return Bundle::whoAmI() == wss.value( tid );`{.cpp}，其中 wss 存储了注册信息，也就是一个
    模块到底是要在工控机，还是高性能上运行。doItYourself 的参数是 BCD::TypeId
    tid，就是一个模块的编号。这个在日志模块那一部分讲过：

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
    }
    ```

    一个传感器要注册到 Master 或者 Slave，在 moderator.cpp 里有实现：

    ```cpp
    const Moderator::WhichSide Moderator::wss = Moderator::initWhichSides( );
    Moderator::WhichSide Moderator::initWhichSides( )
    {
        WhichSide wss;
        // Master: 高性能平台
        // Slave : 工控机
        wss.insert(  BCD::TYPE_SERVER,                  SLAVE           );
        wss.insert(  BCD::TYPE_CLIENT,                          MASTER  );
        wss.insert(  BCD::TYPE_LMS,                             MASTER  );
        wss.insert(  BCD::TYPE_MCU,                             MASTER  );
        wss.insert(  BCD::TYPE_UR,                      SLAVE           );
        wss.insert(  BCD::TYPE_ARM,                     SLAVE           );
        wss.insert(  BCD::TYPE_SP20000C,                        MASTER  );
        wss.insert(  BCD::TYPE_MULTIPLICATION_ON_SLAVE, SLAVE           );
        wss.insert(  BCD::TYPE_ADDITION_ON_MASTER,              MASTER  );

        return wss;
    }
    ```

2.  函数的序列化，需要将函数名注册，并和本地函数绑定，`enum CrossType { ... }` 做的
    就是函数名注册的工作，它里面的每一个标志都对应一个函数，比如 `GEN_LMS__START__QINT64`
    就对应 `static QByteArray genLMS_start( const qint64 &dt = 0 )`，`GEN_LMS__STOP__VOID`
    就对应 `static QByteArray genLMS_stop( )`。

    这三个函数的实现放在这里，以做参考：

    ```cpp
    为了减少输入量，TX_OUT 是一个宏（在通信领域，TX 通常指的是 transmission）
    #define TX_OUT \
        QByteArray tx; \
        QDataStream out( &tx, QIODevice::WriteOnly ); \
        out.setVersion( QDataStream::Qt_4_8 ); \
        out

    QByteArray Moderator::genLMS_start( const qint64 &dt /*= 0 */ )
    {
        TX_OUT << (int)GEN_LMS__START__QINT64 << dt;
        return tx;
    }

    QByteArray Moderator::genLMS_stop( )
    {
        TX_OUT << (int)GEN_LMS__STOP__VOID;
        return tx;
    }

    QByteArray Moderator::genUnit_setUrPose( double x, double y, double z, double rx, double ry, double rz )
    {
        TX_OUT << (int) GEN_UNIT__SET_UR_POSE__DOUBLE_DOUBLE_DOUBLE_DOUBLE_DOUBLE_DOUBLE
               << x << y << z << rx << ry << rz;
        return tx;
    }
    ```

    其实就是把函数的标志号和参数一一序列化。

3.  dispatch 函数，就是收到反序列化为一个操作，然后如何调用具体的模块：

    ```cpp
    void Moderator::dispatch( QByteArray &msg )
    {
        int flag( -1 );

        QDataStream in( &msg, QIODevice::ReadOnly );
        in.setVersion ( QDataStream::Qt_4_8 );

        while ( !in.atEnd() ) {
            in >> flag;

            if ( false ) {
            }
            ...
            else if ( GEN_LMS__START__QINT64 == flag )
            {
                qint64 ts;
                in >> ts;
                if ( Bundle::activated() && Bundle::whoAmI() == SLAVE ) {
                    Bundle::getInstance()->m_LMSReader->start( ts );
                }
            }
            else if ( GEN_LMS__STOP__VOID == flag )
            {
                if ( Bundle::activated() && Bundle::whoAmI() == SLAVE ) {
                    Bundle::getInstance()->m_LMSReader->stop();
                }
            }
            ...
            else if ( GEN_UNIT__SET_UR_POSE__DOUBLE_DOUBLE_DOUBLE_DOUBLE_DOUBLE_DOUBLE == flag )
            {
                double x, y, z, rx, ry, rz;
                in >> x >> y >> z >> rx >> ry >> rz;
                if ( Bundle::activated() && Bundle::whoAmI() == SLAVE ) {
                    // config ur pose
                    if ( Bundle::getInstance() && Bundle::getInstance()->collectionUnit ) {
                        Bundle::getInstance()->setURPose( x, y, z, rx, ry, rz );
                    }
                }
            }
            else
            {
            }
        }
        ```

至此，问题都解决了。

---

[【下一节：长沙项目总结 6 -- 总结：收获与不足】](post-0119-changsha-review-6.html){style="font-size:80%; color: red;" title="post-0119-changsha-review-6.md"}
