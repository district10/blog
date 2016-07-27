---
title: 长沙项目总结 6
date: 2016-07-27
keywords:
tags:
...

长沙项目总结 6 -- 总结：收获与不足
==================================

[【回到目录】](post-0113-changsha-review.html){style="font-size:80%; color: red;" title="post-0113-changsha-review.md"}

一条条说吧。

收获：

-   从大三我就在尝试使用 Qt（做作业的时候用过一两次），但经过这个项目，Qt 才算真正入了门；
-   CMake 原本也是略知一二；但拿到别人的 CMake 工程，跑起来容易；但自己用 CMake 来组织
    就不简单了，经过这一番项目磨砺，自己对 CMake 和 C++ 的编译链接也有了更多的了解；
-   做了一个大项目，自己的代码量是最大的，负责了几乎所有的传感器，也学到一些相关
    硬件知识、通信知识；
-   认识了长沙团队出色的企业家（科学家）、工程师，认识到知识真的是第一生产力；

不足：

-   基础不牢，写代码的过程中各种磕磕绊绊，比如在类中 static 成员的声明、定义、初始化上，
    就碰到了不少麻烦；
-   基础不牢，没有合理使用类的继承，导致重复代码出现得很多；（但也不能说全怪自己基础不扎实，
    因为项目推进过程中真的很难停下来重构，真的像是给高速上开着的车换轮胎）
-   基础不牢，friend 函数的使用可以大幅避免 public 成员的出现，却没有使用；
-   过度工程，比如设置了过多的标志位，为了程序中没有 magic number，使用了太多的宏定义；
-   花样编码，比如大量使用宏来拼接函数（但这有好有不好，也不算错，只是日后让别人维护起来会有难度）
-   在长沙吃胖了==

TODO：

-   具体分析一些代码，哪里有问题，应该怎么改

---

参考链接：

-   [district10/changsha: 长沙桥康项目组文档](https://github.com/district10/changsha)
-   跨电脑函数调用：[district10/CrossOS: Cross OS Communication](https://github.com/district10/CrossOS)
-   [桥梁模型贴纹理文档](http://tangzx.qiniudn.com/post-0025-doc-bridge-texture.html)
-   [CVRS 参加第二届杭州机器人西湖论坛 - 公告 - 武汉大学计算机视觉与遥感实验室（CVRS Lab）](http://cvrs.whu.edu.cn/index.php?m=content&c=index&a=show&catid=99&id=50)
-   自己之前画的一些架构图，等
    +   架构图：<https://www.processon.com/view/link/56ea64a6e4b010c6fe7d1ead>
    +   系统初始化：<https://www.processon.com/view/link/56ea640be4b00ac2e7a17fb2>
    +   TCP 连接的建立：<https://www.processon.com/view/link/56ea673be4b00ac2e7a1c344>
    +   Wrappers 和 Moderator 的作用：<https://www.processon.com/view/link/56ea6c21e4b010c6fe7db713>
    +   UR 的姿态控制和状态读取：<https://www.processon.com/view/link/56ee186de4b0881f9ac2e009>
    +   UR 状态数据的解析：<https://www.processon.com/view/link/57986275e4b0636f3aa3bf2d>
    +   UR 姿态控制：<https://www.processon.com/view/link/56ee1abfe4b0881f9ac2ea0a>
