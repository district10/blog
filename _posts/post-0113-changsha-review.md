---
title: 长沙项目总结
date: 2016-07-22
keywords:
tags:
...

长沙项目总结
============

[CVRS 参加第二届杭州机器人西湖论坛 - 公告 - 武汉大学计算机视觉与遥感实验室（CVRS Lab）](http://cvrs.whu.edu.cn/index.php?m=content&c=index&a=show&catid=99&id=50)

>   2016 年 5 月 22 日，由武汉大学计算机视觉与遥感实验室（WHU-CVRS Lab）姚剑教
>   授负责研制的《桥梁智能检测机器人系统》，协同合作单位 - 湖南桥康智能科技有限
>   公司团队参加第二届杭州机器人西湖论坛，参与了大会组织的项目路演，从最初的
>   100 多个项目中筛选出 10 个进入路演决赛，最后取得了第三名的好成绩。

BirX 桥梁检测机器人项目是研究生以来自己参与的第一个项目（2015-4 ~ 2015-9）^[实际上那时候我本科还没
有毕业。也因为这个项目我没有参加毕业典礼（所以错过雷军在毕业典礼上的演讲）。]。
这个【项目总结】只针对自己参与的部分，主要是对各个传感器模块、日志模块、通信模块和
系统架构进行框架和代码上的总结分析。（代码不方便公开，所以这里的贴的是精简和调整过的示例代码片段。）

因为篇幅较大，所以计划分成如下六个主题分别讲述：

-   [【1】](post-0114-changsha-review-1.html){title=post-0114-changsha-review-1.md}. 硬件系统
      ~ 简介我们的桥梁裂缝检测车以及上面的传感器。
-   [【2】](post-0115-changsha-review-2.html){title=post-0115-changsha-review-2.md}. 系统架构
      ~ 简介高性能计算机和工控机的各自职责和各传感器；
-   [【3】](post-0116-changsha-review-3.html){title=post-0116-changsha-review-3.md}. Logger（日志）模块和 Utils 模块
      ~ 这是整个软件系统通用的部分；
-   [【4】](post-0117-changsha-review-4.html){title=post-0117-changsha-review-4.md}. 传感器模块选讲（LMS 和 IMU 和 UR）
      ~ 简介如何写一个传感器代码，为算法模块提供接口；
-   [【5】](post-0118-changsha-review-5.html){title=post-0118-changsha-review-5.md}. 通信模块：Wrappers 和 Moderator
      ~ 简介跨电脑 IPC，进行函数调用；
-   [【6】](post-0119-changsha-review-6.html){title=post-0119-changsha-review-6.md}. 总结
      ~ 收获与不足
