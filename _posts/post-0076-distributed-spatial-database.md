% 分布式空间数据库
% TANG ZhiXiong
% 2015-12-08

分布式空间数据库
================

概念、特点、关键技术问题、研究现状、发展趋势，5000 字。

空间数据具有和一般数据不同的特性。

首先是它具有空间性。空间数据描述了空
间物体的位置、形态，甚至需要 描述物体 的空间拓扑关
系。

例如描述一条河流，一般数据侧重于河流的流域面
积 ，水流量 ，枯水期等。而空间数据则侧重于河流的位

置、长度、发源地等和空间位置有关的信息。复杂一点
的还要处理河流与流域内城市间的距离、方位等空间
关系。空间性是空间数据区别于其他数据的标志特征。

(2)抽象性
空间数据描述的是现实世界 中的地物和地貌特
征 ，非常的复杂 ，必须经过抽象处理 。不 同主题 的空间
数据库，人们所关心的内容也有差别。所以空间数据的
抽象性还包括人为地取舍数据。抽象性还使数据产生
多语义问题。在不同的抽象中，同一自然地物表示可能
会有不同的语义。如河流既可以被抽象为水系要素，也
可以被抽象 为行政边界 ，如省界 ，县界等 。
(3 )多尺度与多态性
不同的观察尺度具有不同的比例尺和不同的精

度 ，同一地物在不同的情况下就会有形态差异。最典型
的例子有 ：就形态而言，任何城市在地理空间中都 占据
一
定范围的区域，因此可以认为其是面状地物 ，但在 比
例尺比较小的空间数据库中，城市是作为点状地物来
处理 的。

多时空性
G IS 数 据具有很强 的时空特性 。一个 G IS 系统 中
的数据源既有同一时间不同空间的数据系列 ；也有 同
一
空间不同时间序列的数据。不仅如此，GIS 会根据系
统需要而采用不 同尺度 对地理空 间进 行表达 。GIS 数
据是包括不同时空和不同尺度数据源的集成。


空 间数据存储方式 的演变过程与计算机技术 的演
变过程几乎是相同的。都经历 了文件存储、关系型数据
库存储、面向对象数据模型存储等过程。

分布式面向对象数据模型存储

随着 面向对象思想 的出现和面向对象 方法学的应
用 ，人们开始用面 向对象的思想来进 行空问数据模型
的设计。按照面向对象思想 ，每种地物都可以被抽象为
某一类具有公共属性的对象，如点、线、面等 ，具体的地
物则是该对象的一个实例，它还具有自己的属性。各种
对象分层管理。这样就解决了空间数据与属性数据的
一
体化管理 。如 目前广泛使用 的 A RCG IS 的 G eo—
database数据模型翻。这种数据模型不但可以存储空问
特征和空间关系。同时在应用层 ，利用 SDE 做空间数
据引挚 ，可 以实现跨平台、分布式空间数据管理 ，从根
本上解决了异构、海量 、多时态等行业难题。


数据增量同步 、复制的原理

获得增量的方法
空 间成果数据的变更过程中可以通过变更 日志记
录 ，这一功能可 以通过应用开发扩展来实现 。这一方法
的缺点也是很明显的，那就是不能防止别的用户通过
别的接 口来修改数据库。Geodatabase 的版本和历史数
据管理可以更底层的解决这个问题，底层的数据管理
对应用程序是透明的，提供了统一的操作接口。

与关系型数据库同步复制功能的区别
基 于 Geodatabase 的 数 据 复 制 (Replication)，是
A rcGIS 提供 的数据分发 方法 ，是建立 在版本环境 之上
的，支持所有 G eodatabase 数据模型，包括拓扑和网络。
它提供了一种松散耦合的同步机制，可以实现跨操作
系统、跨数据库平台之间的数据同步与复制。而关系型
数据库(D BM S )自身的复制，是 D BM S 内置的复制方
法。无法识别空间信息的特有机制 ，即：不支持拓扑、网
络、关系类等数据模型。


D BM S 不支持跨平 台之 间复制

事实上，基于不同的数据库格式或平台的应用系
统 ，大量服务于国土行业的信息化建设 ，要求所有节
点使用相同的数据库平台或数据格式，代价高昴，且

D BM S 直接 复制更新 而忽视版本
DBM S 不支持 G eodatabase 高级对象

它内置的安全保障
机制可以防止数据丢失、数据冗余和系统的不稳定。

利用增量同步技术，数据同步时可采用任意的数
据传输手段 ，如 ：使用 K IP、Q Q 、M SN 等，对需要同步的
数据进行打包传输，对方拿到该数据包后 ，再行解包并
通过 Geodatabase 的检入(Check—in)功能将数据写入
本 地 Geodatabase[~中 ，从 而实 现省 、市 、县多级 异地 的
数据同步。

省 、市 、县土地调查成果数据 同步要求及 时、可靠 、
安全的同时，还要求高效。空间数据同步机制中，影响
效率最直接的因素是同步时机的设定。无论是县级数
据 ，还是市局和省级数据库，无论哪一方的内容发生了
变化时，规定数据同步的时机和频率的做法有两种 ，一
是实时动态同步复制，二是周期性同步复制。

在 ArcG IS 9．3 中 ，检 出 (Check—out)的数 据 ，通 常
以M DB 文件形式存在，需要对成果文件进行加密后进
行传送 ，数据到达对方后，再根据约定进行解密还原。
同样，当对检出数据进行编辑操作时，系统将记录被修
改的部分(增量)，在该增量数据 回传之前进行加密打
包，然后传送，达到对方后解密并检入(Check—in)。

总之 ，基于 SDE 的 Geodatabase 数据模型提供了
更加开放和易于扩展的异构、分布式空间数据的集成
能力，具有跨平台数据库的直接访问、与平台无关数据
集成、与位置无关数据集成和多源数据复合分析等特
点 ，有效地解决了不同地域 、跨平台土地利用数据资源
的综合利用问题 ，增量更新问题 ，多时态数据管理与回
溯问题 ，在第二次土地利用数据库建设 中将发挥更大
的作用 。


lntem et GIS 适应 了 四S 走 向网络化、部件化的
趋势 ，然而 Intem et／Intrmm t环境本身 的开放性和网
络化都要求传统 GIS 适应其特点，从整个软件的结
构体系 、计算任务分配、资源负载平衡、部件 内部或
之间的组织关系到数据模型、语义模型的互操作 ，还
有大量的理论和应用问题需要解决。



Spatial data partitioning


![spatial-data-partitioning]

During the process of applying remote sensing
image data, how to save the mass remote sensing image data of
different times and use them effectively is an important
problem.  Researches  show  that  the  traditional  large
commercial relational database cannot storage the mass
remote sensing data effectively and also cannot support
unlimited data storage. 

Compared with conventional database, distributed spatial
database has some special features, such as a large quantity
of data storage, widely used for the purpose, in the physical
distribution and good network environment for data sharing.
Those features determine the complexity of the database
environment configuration during the database design and
construction process. In order to supply fast response when
dealing huge amounts of data, distributed spatial database
must adopt certain mechanism to ensure the mass data
transmit rapidly between the service nodes. Obviously, this
mechanism is a key consideration during the construction of
the distributed space database.


关键技术：同步、加密、

研究现状：数据获取（query）


发展趋势：


![](File Naming Convention)[naming-convention.png]

<div class="bshare-custom"><a title="分享到豆瓣" class="bshare-douban"></a><a title="分享到新浪微博" class="bshare-sinaminiblog"></a><a title="分享到QQ空间" class="bshare-qzone"></a><a title="更多平台" class="bshare-more bshare-more-icon more-style-addthis"></a><span class="BSHARE_COUNT bshare-share-count">0</span></div><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=1&amp;lang=zh"></script><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script>



![spatial-data-partitioning](spatial-data-partitioning.png)