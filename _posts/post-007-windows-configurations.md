% Windows 系统配置
% Tang Zhixiong
% 2015-02-20


Windows 系统配置
================

各种软件
--------

* node (npm) + cnpm
* [Ext2 IFS For Windows: Download](http://www.fs-driver.org/download.html)
* IntelliJ, acejmp, vim, [IDEA Intellij 小技巧和插件 - - ITeye 技术网站](http://kidneyball.iteye.com/blog/1814028)
* [Mongoose](http://cesanta.com/mongoose.shtml)
* [Everything Search Engine](http://www.voidtools.com/)
* [7-Zip 官方中文主页](http://sparanoid.com/lab/7z/)
* [WebStorm === EMBRACE](http://www.pc360.net/?p=4645)
* Pandoc
* [Chocolatey Gallery](https://chocolatey.org/) 的安装，管理员身份运行：

    ```shell
    @powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
    ```

    再用它装各种软件：

    ```shell
    choco install git.install
    choco install flashplayerplugin
    choco install googlechrome
    choco install atom 
    ```

Vim 配置
--------

参考 [`_vimrc`](http://www.cnblogs.com/Neoh/articles/1955827.html)

简单的就两行：

```vimrc
:set expandtab ts=4 sw=4 ai
%retab
```

复杂的就多了：

```vimrc
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set expandtab ts=4 sw=4 ai
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,cp936

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

language messages en_US.utf-8

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction
```

编程软件、库
------------

Qt，CMake，Boost，OpenCV，etc。

---

Refs

* [改造你的windows开发环境 - 简书](http://www.jianshu.com/p/23df3e37bd9a?search_token=21e09da524c459887852a4122672f5c265e5ff2fd710ec435781d58a3fba5367)
* [配置豪华的 Windows 开发环境 - 简书](http://www.jianshu.com/p/aa19380828bd?search_token=b7371223ae13e36f283584429869e14cd04e598481430e36fcc9d710c7c4d773)
* [PuTTY Download Page](http://www.putty.nl/download.html)
* ruby: [Ruby for Windows](http://rubyinstaller.org/downloads/)