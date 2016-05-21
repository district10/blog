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

各种软件
--------

* node (npm) + cnpm
* [Ext2 IFS For Windows: Download](http://www.fs-driver.org/download.html)
* IntelliJ, acejmp, vim
* [Mongoose](http://cesanta.com/mongoose.shtml)
* [Everything Search Engine](http://www.voidtools.com/)
* [7-Zip 官方中文主页](http://sparanoid.com/lab/7z/)
* Pandoc
* [Chocolatey Gallery](https://chocolatey.org/) 的安装，管理员身份运行：

    ```bash
    @powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
    ```

    再用它装各种软件：

    ```bash
    choco install git.install
    choco install flashplayerplugin
    choco install googlechrome
    choco install atom
    ```

    但由于网速问题，这东西我几乎没怎么用过！
    外，atom 编辑器是个坑。

Vim 配置
--------

参考 [`_vimrc`](http://www.cnblogs.com/Neoh/articles/1955827.html)

简单的就两行：

```vimrc
:set expandtab ts=4 sw=4 ai
%retab
```

复杂的就多了：

- `C:\Program Files (x86)\Vim\_vimrc`
- [`%HOME%/.vimrc`](https://github.com/district10/blog/blob/master/vimrc.vim)

## Go

[Downloads - The Go Programming Language](https://golang.org/dl/)

## Zeal

refs and see also

  - [Docset Generation Guide - Kapeli](https://kapeli.com/docsets)
  - [Zeal](https://zealdocs.org/)
