---
title: C++ GUI Programming with Qt4 | C++ GUI Qt4 编程（第二版）
date: 2015-11-23
key-words:
tags:
    - qt
    - gui
    - programming
...

C++ GUI Qt4 编程
================

笔记部分移到了 [Notes: lang/qt.html](http://tangzx.qiniudn.com/notes/lang/qt.html)。

这个没啥好说的，因为只要写界面，我都用 Qt，在 Windows 上写好了再到 Ubuntu 测试一遍，
通常都不会有问题。

除了 QProcess 在 Windows 上不太能用，其他都还 Okay（我怀疑是程序运行的时候没有拿到合适的环境变量）。
不过我一般没有调其他 executable。这里就不求甚解了。

不过，我计划写一个 pdf 转 png 的界面程序，主要用来做笔记。实现：

-   打开 pdf，生成图片并加载
-   可以在图层上笔记，然后保存成一个文本
-   下次还能打开显示

最好再提供一个在线的查看器，加载自己 pdf 图片和笔记图层。
用来做 presentation 也是挺好的。

P.S. PDF 转图片我找了很多资料。大家一般用 xpdf，或者 poppler。
但我感觉这东西不好配置。于是找到了 binary：[用 xpdf 处理 PDF · Issue #10 · district10/blog](https://github.com/district10/blog/issues/10)。

效果十分好！dpi 和灰度级可以调，所以生成的图片可以很小。我试了下大概 200 KB 一页的样子。

用 binary 的话……你可以让用户自己去下载，也不用担心协议的问题了。

P.P.S. 看到有个人做了一个截图软件，叼到没朋友：[Snipaste - 开发了三年的截图工具，但不只是截图 - V2EX](http://www.v2ex.com/t/295433)。

![](http://ww2.sinaimg.cn/large/840a8430jw1f68mbo23png20qv0higz2.jpg)
