---
title: 长沙项目总结 2
date: 2016-07-27
keywords:
tags:
  - review
  - project
---

长沙项目总结 2 -- 系统架构
==========================

[【回到目录】](post-0113-changsha-review.html){style="font-size:80%; color: red;"}

>   简介高性能计算机和工控机的各自职责和各传感器；

首先，系统的软件部分主要运行在高性能计算机和公控机上。整个系统可分为四部分：

![采集模块+通信模块+算法模块+展示模块（这里没有画出）](http://whudoc.qiniudn.com/2016/system-architecture.png)

采集模块包括个传感器：LMS、IMU、UR 等，传感器分布在两台电脑上（指高性能计算机和工控机），
具体连接情况要看当时的接线。通信模块指的是两台电脑直接的传感器数据的共享，以及两者间的
IPC，函数调用。算法模块主要是对传感器定位定姿，对采集的影像数据拼接合并，多种传感器数据的配准融合。

## 采集模块

下面只介绍项目中我接触到的传感器。因为 C2 和 SP20000C 有官方提供的 SDK，不需要撰写数据获取程序，这里略过。

LMS

:   ![](http://gnat-tang-archive.qiniudn.com/lms.gif){align=right}

    在我 2015 年 9 月的一篇 post（[LMS 数据量](post-0056-lms-chunk.html)），我也提过 LMS。

    LMS 是 SICK（德国西克） 公司生产的 Laser Measurement Sensor（激光测距仪）。
    通过一根网线可以读取 LMS 采集的数据。在我们的设置下，它的数据量约为 0.3 Mb/s。

MUC, IMU

:   TODO

ARM

:   大机械臂，TODO

UR 10

:   TODO

## 通信模块

传感器和计算机之间通信主要有 1）TCP（LMS 和 UR10 等），2）串口（UR 10、MCU、ARM 等），
两台电脑之间通信也是采用网线连接用的是 TCP。

## 算法模块

这部分我并不负责，只简单说明需要处理的部分难题。

![影像配准和拼接](http://whudoc.qiniudn.com/2016/2016-07-26_10-33-57.png)

![影像配准和拼接](http://whudoc.qiniudn.com/2016/2016-07-26_10-33-46.png)

![影像匀光匀色](http://whudoc.qiniudn.com/2016/wpp_2016-07-26_10-55-18.png)

![点云配准拼接](http://whudoc.qiniudn.com/2016/wps_2016-07-26_10-50-44.png)

![点云面提取](http://whudoc.qiniudn.com/2016/wps_2016-07-26_10-48-51.png)

## 展示模块

![](http://whudoc.qiniudn.com/2016/2016-07-26_10-32-24.png)

![](http://whudoc.qiniudn.com/2016/2016-07-26_10-32-31.png)

三维展示模块主要用的是 OpenSceneGraph，我也参与了一点（但是并不完善，所以没有纳入总结中），
见 [图片-dvorak4tzx](http://dvorak4tzx.lofter.com/post/1d4021c8_ac12379)。

---

[【下一节：长沙项目总结 3 -- Logger 模块和 Utils 模块】](post-0116-changsha-review-3.html){style="font-size:80%; color: red;" title="post-0116-changsha-review-3.md"}
