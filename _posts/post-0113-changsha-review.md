---
title: 长沙项目总结
date: 2016-07-22
keywords:
tags:
...

长沙项目总结
============

长沙项目有关桥梁裂缝检测，自己是在 2015-4 到 2015-9 月参与，其间一直在长沙写代码，调式系统。
自己主要负责各个传感器代码的撰写、系统框架的搭建，以及后期三维模型的展示。

系统源码用 [CMake](post-0100-cmake-templates.html) 组织，用到了 Boost、OpenCV2、Qt4、OpenSceneGraph 等
开源库，以及一些传感器生产商提供的头文件和 lib 文件。

## 各传感器模块

我写了所有的传感器模块，包括 Arm（大机械臂）模块、Imu（惯性导航）模块、Laser（激光传感器）模块、
LMS（激光测距仪）模块、MCU（微控制器）模块、UR（UR 10 机械臂）模块。

### LMS

我曾在 [LMS 数据量](post-0056-lms-chunk.html) 提到过 LMS，它是 SICK（德国西克） 公司生产的 Laser Measurement Sensor（激光测距仪）。
在长沙第一个写好的模块便是 LMS 模块。


## Utils 模块

因为涉及很多传感器数据的处理，所以专门写了一个 Utils 模块来处理字节。



## Wrappers 模块

参考 [封装说明](post-0059-exe-wrapper.html)。

