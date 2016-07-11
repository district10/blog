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

本文姊妹篇：[Debian Configurations | 黛比安系统配置](post-0003-debian-configurations.html)。

我用 Win 10。

Tips

-   **设置系统变量**

    +   <kbd>Win</kbd>；
    +   输入 settings，点击【设置】
    +   输入 path，点击【编辑系统环境变量】
    +   然后就设置咯（注：用户环境变量可能立即生效，系统环境变量要重启）

-   **新建文件夹**

    在【文件资源管理器】依次按下 <kbd>Alt</kbd>，<kbd>H</kbd>，<kbd>N</kbd>。

-   **显示文件后缀**

    在【文件资源管理器】依次按下 <kbd>Alt</kbd>，<kbd>V</kbd>，<kbd>H</kbd>，<kbd>F</kbd>。

-   **取消纪录最近使用文件、常用文件夹**

    在【文件资源管理器】下，主页 -- 选项，然后在隐私 group box 进行设置。

-   **文件发送到**

    创建文件夹快捷方式，然后放到
    `C:\Users\tzx\AppData\Roaming\Microsoft\Windows\SendTo`（
    `C:\Users\tzx\SendTo` 打不开）。

    有文件需要拷贝的时候就鼠标右键，发送到 -- 【你的快捷方式】。

-   **开机启动**

    比如把 `http://gnat.qiniudn.com/neo.exe` 放到
    `C:\Users\tzx\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup`。

开机必备
--------

-   [Everything Search Engine](http://www.voidtools.com/)

    搜索文件的工具。

    我的备份：<http://whudoc.qiniudn.com/2016/Everything-1.3.4.686.x64-Setup.exe> (545 KB)。

-   [7-zip](http://www.7-zip.org/download.html)

    压缩、解压软件。

-   绿色版迅雷。

-   Firefox 浏览器

    插件：

    +   Copy as Markdown，用于拷贝 Markdown 格式的页面链接。

    +   VimFX，火狐浏览器中使用 Vim 快捷键操作，类似 vimium 之类。

    +   Tabkit2，这个在插件中心（addons）下载不了，这里是我的备份：
        <http://whudoc.qiniudn.com/2016/tabkit2@pikachuexe.amateur.hk.xpi>，
        先到 `about:config` 搜索 signature，把需要验证签名设置为 false，然后
        把下载了得 xpi 文件拖到 addons 页面即可安装。

        需要重启浏览器，重启后选择默认的 tree tabs 就好。

        这东西似乎很 bug，所以 addons 里都搜不到，但功能点真心赞啊！从我的情况看，
        似乎只能在一个低版本的 portable firefox 上运行良好。

-   Git for windows

    参考我的另一篇 post：[Git、GitHub 和 Windows#下载 Git for Windows](post-0044-git-github-notes.html#%E4%B8%8B%E8%BD%BD-git-for-windows)。
    （下载链接我贴过来：<http://whudoc.qiniudn.com/Git-2.7.2-64-bit.exe>。）

    安装好了还要配置自己的邮箱和姓名，以及 push 的配置。

    ```bash
    git config --global user.name "TANG ZhiXiong"
    git config --global user.email "dvorak4tzx@qq.com"
    git config --global push.default simple
    ```

    还要设置 SSH，我这种懒人通常都是把原来的 `~/.ssh` 文件夹下文件全部拷过来的……

    最后，再在 %PATH% 里加上 `C:\Program Files\Git\usr\bin`。

    还可以进行简单的配置（`~/.bashrc`）：

    ```
    alias gvim=gvim.bat

    export EDITOR=gvim
    export QiNiuAK=<不能告诉你>
    export QiNiuSK=<不能告诉你>
    ```

    配置了七牛的密钥，顺便把同步工具也配置一下，`git clone git@github.com:district10/qiniu-uploader.git`，
    然后就可以把文件拖到 publish 文件夹，然后 make qiniu，把文件同步到自己的网盘上了。

-   [腾讯TM(Tencent Messenger)-TM官方网站-TM2013下载](http://im.qq.com/tm/2013/)

    绿色无弹窗广告的 QQ。

-   [Vim](http://www.vim.org/download.php)

    一个带有行禁则的 Vim：<http://whudoc.qiniudn.com/2016/gvim74-x64.402.exe> (8 MB)。

    Vim 编辑器。Vim 的配置：

    +   如果你要简单，那就一行：`set expandtab ts=4 sw=4 ai`
    +   稍微复杂点，我自己用的：<https://github.com/district10/blog/blob/master/vimrc.vim>，
        在 `C:\Users\tzx\.vimrc` 中添加 `source d:/tzx/git/blog/vimrc.vim`。
    +   还有很多流行的 Vim 配置，可以到 GitHub 上找，在本文姊妹篇 [Debian
        Configurations | 黛比安系统配置](post-0003-debian-configurations.html) 也
        有讲到。但有些配置太大，启动慢，记得使用 `vim -u NONE` 无配置地快速启动 vim。

-   CMake

    +   下载页面：[Download | CMake](https://cmake.org/download/)，
    +   下载链接：<https://cmake.org/files/v3.6/cmake-3.6.0-win64-x64.msi>。
    +   我的备份：<http://whudoc.qiniudn.com/2016/cmake-3.6.0-win64-x64.msi> (15 MB)。

-   网盘

    +   [微云，全能收藏 无处不在 - 官方网站](http://www.weiyun.com/)

-   [Releases · ShareX/ShareX · GitHub](https://github.com/ShareX/ShareX/releases)

    截图工具。其实不说怎么好，但 windows 的 <kbd>screenshot</kbd> 键居然不自动保存图片，
    这样就工具就显得如此重要了。还有录制 gif 的功能。还有上传功能，但是我基本不用。

    我的备份

    +   安装包：<http://whudoc.qiniudn.com/2016/ShareX-11.0.1-setup.exe> (4.5 MB)。
    +   便携版：<>。

-   我的 small binaries 收藏

    见 GitHub：[statics/winbin at master · whudoc/statics · GitHub](https://github.com/whudoc/statics/tree/master/winbin)。

    克隆：

    +   `git clone https://github.com/whudoc/statics.git`，or
    +   `git clone git@github.com:whudoc/statics.git`

    里面有一些好用的小工具，比如搜索源码用的 `pt`、`ag`，还有生成工具 `make`，
    还有 Windows 软连接制作工具 `junction.exe`（类似 Linux 下的 `ln -s path/to/somewhere link`，不过格式是 `junction link path/to/somewhere`）。
    下面对其中几个有意思的进行简要介绍。

    +   代码搜索工具 ag 和 pt

        pt 比 grep、ack 快，比 ag 更好的处理中文（在 Windows 下 ag 捉急，不知道是否是我设置的原因）。
        比 ag 不足的是没有 `--pager` 选项，不能用 less 一点一点看（直接重定向到 less 的话高亮就没了）。
        但这些工具其实使用起来都一样。随意挑一个吧。Windows 上 pt 很容易下载，
        而且在 CMD 中可以正常使用没有乱码出现，所以推荐 pt。

        ![代码搜索（grepping）效果](http://whudoc.qiniudn.com/ag-fisheye.png)

        原下载链接：[Releases · monochromegane/the_platinum_searcher · GitHub](https://github.com/monochromegane/the_platinum_searcher/releases)，
        我的 ag.exe 是之前用 choco 下载的，不过有人（还是 Sumatra 作者）弄了一个 windows port，也提供下载：
        [The Silver Searcher windows port](http://blog.kowalczyk.info/software/the-silver-searcher-for-windows.html)。

    最后，把 `D:\tzx\git\statics\winbin` 添加到 %PATH%。

-   VS2015

    [MSDN, 我告诉你](http://itellyou.cn/)

    去官网下载 Community 版本。
    然后双击 iso 文件，安装之，如果只装 vc++ 部分，大概要占用系统 12 GB 的容量。
    然后重启。然后启动 Visual Studio 2015，然后登陆自己的 Microsoft 账户（试用
    一段时间后，不登录，是不能继续使用 Community 版本的）。

    然后去 Tools -- Extensions and updates... 下载安装插件，我推荐如下几个（按 popular 排序，大家都说好的，就安装把）：

    +   VsVim，在 VS2015 中使用 Vim 按键绑定。注意
        <kbd>Control</kbd> + <kbd>v</kbd> 变成了
        <kbd>Control</kbd> + <kbd>q</kbd>，其余没什么大的变化。
    +   Productivity Power Tools，主要是我很喜欢那个 vertical tabs 的功能 :smile:

    然后进行简单的设置:

    +   Text Editor -- All Languages -- Tabs，把 Tab 键设置成四个空格（似乎 VS2015 默认如此了，我记得之前是要手工设置的）。

-   [GitHub - getlantern/lantern: Open Internet for everyone. Lantern is a free desktop application that delivers fast, reliable and secure access to the open Internet for users in censored regions. It uses a variety of techniques to stay unblocked, including P2P and domain fronting. Lantern relies on users in uncensored regions acting as access points to the open Internet.](https://github.com/getlantern/lantern)

    翻墙软件（官网可能已经被墙）。

-   [MinGW Distro - nuwen.net](https://nuwen.net/mingw.html)

    里面有 gcc 编译器，以及各种好用的命令行工具。解压到 C 盘根目录就可以。

    然后添加 `C:\MinGW\bin` 到 %PATH%。

    我的备份：<http://whudoc.qiniudn.com/2016/mingw-14.0-without-git.exe> (36.9 MB)。

-   Pandoc

    到 Pandoc 的 GitHub [Release](https://github.com/jgm/pandoc/releases) 页面去下载，或者用我的备份：
    <http://doi-2014.qiniudn.com/pandoc/pandoc-1.17.0.2-windows.msi> (20.3 MB)。双击安装即可。

各种软件库的配置
----------------

其他的一些杂七杂八
------------------

-   VLC 播放器

    我用 VLC 看视频，听歌，总之是一切。你还可以用它来截图（当我更推荐你用 ShareX）。
    iPad 也有客户端，你可以在 VLC 里打开服务器，这样就能在自己的电脑上用浏览器上传视频到 pad 里，
    或者把视频下载下来。

    下载地址：[VideoLAN - VLC：官方网站 - 全平台的自由多媒体解决方案！](http://www.videolan.org/)。

    下载安装后，可以 <kbd>Control</kbd> + <kbd>P</kbd>（工具 -- 首选项）里把【只允许一个实例】取消勾选，
    这样就能同时打开多个音/视频了。

-   Go

    [Downloads - The Go Programming Language](https://golang.org/dl/)

-   [Zeal](https://zealdocs.org/)

    [Docset Generation Guide - Kapeli](https://kapeli.com/docsets)

-   [下载_Skype简体中文版官方网站-清晰的免费网络电话](http://skype.gmw.cn/down/skype-for-computers.html)

    用 Microsoft 账户登录就好（最好注册一个，VS 2015 Community 版本也要登录才能一直免费用）。

-   Qt

    这部分我主要参考了 [GitHub - sandym/qt-patches: Patches to some release versioin of Qt I use](https://github.com/sandym/qt-patches)。

    +   Qt4 + VS2015

        1.  下载我的 build：<http://whudoc.qiniudn.com/2016/qt-4.8.7-vs2015-build1.7z>（108 MB，解压后 951 MB）；
        2.  解压到 `C:\vs2015x64`；
        3.  添加 `C:\vs2015x64\qt-4.8.7\bin` 到 %PATH% 前面（不是后面）；
        4.  然后就可以用 cmake 生成项目，用 vs2015 编译运行了。

-   OpenCV

    [OpenCV | OpenCV](http://opencv.org/)

    OpenCV3 的下载、安装

    +   下载地址：
        <http://sourceforge.net/projects/opencvlibrary/files/opencv-win/3.1.0/opencv-3.1.0.exe/download>，
        或者用我的备份：<http://whudoc.qiniudn.com/2016/opencv-3.1.0.exe> (109 MB)；
    +   解压到 `C:/OpenCV`，然后把下面的 `opencv` 改成 `opencv3`；
    +   设置系统变量：`OpenCV3_DIR` -> `C:\OpenCV\opencv3\build`，这个文件夹下应该有 OpenCVConfig.cmake；
    +   然后把 `%OpenCV3_DIR%\x64\vc14\bin` 添加到 %PATH%。

    最后，设置系统变量：`OpenCV_DIR` -> `%OpenCV3_DIR%`。

    <!--
    OpenCV2 的下载、安装

    +   下载地址：
        <http://tenet.dl.sourceforge.net/project/opencvlibrary/opencv-win/2.4.13/opencv-2.4.13.exe>，
        或者用我的备份：<http://whudoc.qiniudn.com/2016/opencv-2.4.13.exe> (266 MB)；
    +   解压到 `C:/OpenCV`，然后把下面的 `opencv` 改成 `opencv2`；
    +   设置系统变量：`OpenCV2_DIR` -> `C:\OpenCV\opencv2\build`，这个文件夹下应该有 OpenCVConfig.cmake。
    +   然后把 `%OpenCV2_DIR%\x64\vc10\bin` 添加到 %PATH%。
    -->

-   Java8

    从官网下载，需要注册。这是我的备份：<http://whudoc.qiniudn.com/2016/java8.7z> (230 MB)。

    然后把 `C:\Program Files\Java\jdk1.8.0_60\bin` 添加到 %PATH%。

-   ActivePerl

    其实 git bash 里面已经自带了 perl，但还是备份一下 ActivePerl：
    <http://whudoc.qiniudn.com/2016/ActivePerl-5.24.0.2400-MSWin32-x64-300558.exe>
    (19.4 MB)。

-   Python

    Anaconda 备份：
    <http://whudoc.qiniudn.com/2016/Anaconda2-4.0.0-Windows-x86_64.exe> (334 MB)。

    Pycharm 备份：
    <http://whudoc.qiniudn.com/2016/pycharm-community-2016.1.4.exe> (167 MB)。

-   graphics

    yEd

    <http://whudoc.qiniudn.com/2016/yEd-3.15.0.2.zip> (28.3 MB)

    [PlantUML : Download page](http://plantuml.com/download.html)

-   LaTeX

    [Index of /CTAN/systems/texlive/Images/](http://mirrors.ustc.edu.cn/CTAN/systems/texlive/Images/)
