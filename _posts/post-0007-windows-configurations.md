---
title: Windows 系统配置
date: 2015-02-20
keywords:
    - windows
    - configuration
tags:
    - windows
    - configuration
...

Windows 系统配置
================

开机必备
--------

-   [Everything Search Engine](http://www.voidtools.com/)

    搜索文件的工具。

-   [Download](http://www.7-zip.org/download.html)

    解压软件。

-   绿色版迅雷。

-   Firefox 浏览器

    插件：

    +   Copy as Markdown
    +   VimFX
    +   Tabkit2，这个在插件中心（addons）下载不了，这里是我的备份：
        <http://whudoc.qiniudn.com/2016/tabkit2@pikachuexe.amateur.hk.xpi>，
        先到 `about:config` 搜索 signature，把需要验证签名设置为 false，然后
        把下载了得 xpi 文件拖到 addons 页面即可安装。

        需要重启浏览器，重启后选择默认的 tree tabs 就好。

        这东西似乎很 bug，所以 addons 里都搜不到，但功能点真心赞啊！从我的情况看，
        似乎只能在一个低版本的 portable firefox 上运行良好。

-   Git for windows

    参考我的另一篇 post：[Git、GitHub 和 Windows#下载 Git for Windows](post-0044-git-github-notes.html#%E4%B8%8B%E8%BD%BD-git-for-windows)。

    下载链接我贴过来：<http://whudoc.qiniudn.com/Git-2.7.2-64-bit.exe>。安装好了还要配置自己的邮箱和姓名，以及 push 的配置。

    ```bash
    git config --global user.name "TANG ZhiXiong"
    git config --global user.email "dvorak4tzx@qq.com"
    git config --global push.default simple
    ```

    还要设置 SSH，我这种懒人通常都是把原来的 `~.ssh` 文件夹下文件全部拷过来的……

-   [腾讯TM(Tencent Messenger)-TM官方网站-TM2013下载](http://im.qq.com/tm/2013/)

    绿色无弹窗广告的 QQ。

-   [download : vim online](http://www.vim.org/download.php)

    Vim 编辑器。Vim 的配置：

    +   如果你要简单，那就一行：`set expandtab ts=4 sw=4 ai`
    +   稍微复杂点，我自己用的：<https://github.com/district10/blog/blob/master/vimrc.vim>

-   [微云，全能收藏 无处不在 - 官方网站](http://www.weiyun.com/)

    网盘。

-   [Releases · ShareX/ShareX · GitHub](https://github.com/ShareX/ShareX/releases)

    截图工具。

-   代码搜索工具 pt

    [Releases · monochromegane/the_platinum_searcher · GitHub](https://github.com/monochromegane/the_platinum_searcher/releases)

    比 grep、ack 快，比 ag 更好的处理中文（在 Windows 下 ag 捉急，不知道是否是我设置的原因）。
    比 ag 不足的是没有 `--pager` 选项，不能用 less 一点一点看（直接重定向到 less 的话高亮就没了）。

-   [GitHub - getlantern/lantern: Open Internet for everyone. Lantern is a free desktop application that delivers fast, reliable and secure access to the open Internet for users in censored regions. It uses a variety of techniques to stay unblocked, including P2P and domain fronting. Lantern relies on users in uncensored regions acting as access points to the open Internet.](https://github.com/getlantern/lantern)

    翻墙软件（官网可能已经被墙）。

-   [MinGW Distro - nuwen.net](https://nuwen.net/mingw.html)

    里面有 gcc 编译器，以及各种好用的命令行工具。解压到 C 盘根目录就可以。

-   Pandoc

各种软件库的配置
----------------

-   OpenCV2
-   OpenCV3
-   Qt4
-   Boost

其他的一些杂七杂八
------------------

-   Go

    [Downloads - The Go Programming Language](https://golang.org/dl/)

-   [Zeal](https://zealdocs.org/)

    [Docset Generation Guide - Kapeli](https://kapeli.com/docsets)

-   [下载_Skype简体中文版官方网站-清晰的免费网络电话](http://skype.gmw.cn/down/skype-for-computers.html)

    用 Microsoft 账户登录就好（最好注册一个，VS 2015 Community 版本也要登录才能一直免费用）。
