# Blog

[![Build Status](https://travis-ci.org/district10/blog.svg?branch=master)](https://travis-ci.org/district10/blog)

workflow:

```
make
make serve
make watch
```

## Intro / 简介

这是我的博客源码，用 Markdown 写，用 Makefile 管理，用 travis 自动生成 HTML 并
同步到七牛（具体看我的 [`.travis.yml`](./.travis.yml)）。

使用了 git（版本控制，文档历史信息提取）、make（管理输出）、
perl（文本处理、从 git 提取文档历史信息）、pandoc（文档转化）。

## Online / 在线访问

-   <http://blog.tangzhixiong.com>

## Get a Copy / 源码和打包输出

-   源码打包：<https://github.com/district10/blog/archive/master.zip>
-   HTML 输出打包：<https://coding.net/u/dvorak4tzx/p/dvorak4tzx/git/archive/coding-pages>

## Build one / 从 Markdown 源码生成

如果你想自己从 markdown 生成 html，只需要简单几步。

Windows 操作系统：

-   下载安装 git for windows，地址：<http://whudoc.qiniudn.com/Git-2.7.2-64-bit.exe>
    （[安装指南](http://blog.tangzhixiong.com/post-0044-git-github-notes.html#%E4%B8%8B%E8%BD%BD-git-for-windows)）
-   perl 已经包含在 git for windows 里了，不过可能需要手工添加到 %PATH%，到文件夹下找找，看看 CMD 里 `perl -v` 有没有反应
-   安装 make，下载地址：<https://github.com/whudoc/statics/raw/master/winbin/make.exe>，放到 PATH 里即可
-   安装 Pandoc，下载地址：<http://doi-2014.qiniudn.com/pandoc/pandoc-1.17.0.2-windows.msi>（20.4 MB）
-   获取源码，zip 压缩包地址：<https://github.com/district10/blog/archive/master.zip>
-   解压源码 zip 压缩包，进入文件夹下，右键打开 Git Bash，输入 `make`，publish 文件夹下就有了生成的 html 文件

Linux 操作系统（debian 系）：

-   make 和 perl 系统应该已经自带
-   安装 git：`sudo apt-get install git`
-   安装 Pandoc，下载地址（官方源里那个太老）：<http://doi-2014.qiniudn.com/pandoc/pandoc-1.17.0.2-1-amd64.deb>（19.9 MB），
    然后 `sudo dkpg -i pandoc*.deb` 安装它
-   获取源码，zip 压缩包地址：<https://github.com/district10/blog/archive/master.zip>
-   解压源码 zip 压缩包，命令行进入文件夹，`make`，publish 文件夹下就有了生成的 html 文件

## Live mode / 在线预览

```bash
$ java -jar watcher.jar
```

---

## Koans / 吐槽

-   travis 的虚拟机下载国内的七牛云，速度居然有 40M/s！速度平均 20M/s+ 的样子。
-   但是如果装一个 texlive-full，下载 2G 多的文件，还是有点捉急……
-   所以啊，即便能够用 travis 帮我把所有 post 编译出 pdf 版本和 docx 版本，我也只弄过一次。
-   一个是我提供这样的连接，自己的七牛流量就要爆！二是，太不节能。
-   为了节能我现在已经把编译 md-> html 优化到只处理修改了的：见 [`filter.pl`](filter.pl)。
-   但后来我不怎么 filter 了，因为……反正是 travis 帮我编译……

## Editor Configuration / 编辑器设置

-   For Windows
    +   add gvim path to `%PATH%`
    +   set `%EDITOR%` to `gvim`, like [Configure EDITOR](http://gnat.qiniudn.com/dvorak4tzx/editor.jpg)
    +   in your `.bashrc` or `.zshrc`: `export EDITOR="gvim -u ~/git/blog/vimrc.vim"`, be sure to use **export**
    +   `echo "source /path/to/_vimrc/file" > ~/.vimrc`（`%HOME%` on win: `/c/Users/Administrator`）
-   For Linux
    + set `$EDITOR` to `gvim` (`vim file.txt &` 会出错，而我 Makefile 里都是`$(EDITOR $< &)`，所以小心罗。)

## TODO / 要做

-   script to tranlate `vimrc` to `perl` code highlight, etc.
-   把 notes.md 分成多个文本，比如 note{001..999}.md，然后分别生成 html（非 standalone），然后用 ajax 来 load 各个 html 片段，
    这样的好处是可以依旧在一个文本里编辑（反正 vim 编辑 100M+ 的文本都是无压力的），但会自动转化为多个片段，加载起来更快。
    唯一的不好的地方在于，可能会和图片延迟加载冲突。

---

## Plan / 计划

Customized Markdown

```
    - tags, indexes
    - anchoring via                                         `@`{.tzx-anchor #id}
    - tagging/anchoring via                                 `tag`{.tzx-tag}
    - tagging/anchoring via                                 <#>(@tag1 @tag2), <#id>(@tag1 @tag2)
    - including other file via                              <#>(%filename option1=value1) => format: dl{[dd, dt[ ,->dt]]}
    - checking
        + 首字母是中文标点
        + 但行长度过长
    - links
        + [title](#section)
        + [word](%meaning,`[pronunciation]`,url)
```

## New Start / 新的方向？

「Koan | 吐槽」

发现自己在重复造轮子，而且造得不好！Pandoc 有 `--filter` 和 `--file-scope` 的概
念，正好对应我的 [`filter.pl`](filter.pl) 和 `merger.pl`，我……只能说英雄所见略同了…… 这些
Perl 脚本还在用，但计划以后用 Pandoc 的 filter。

「Refs | 参考文档」

-   [Pandoc - Scripting with pandoc](http://pandoc.org/scripting.html)
-   [Pandoc::Filter - process Pandoc abstract syntax tree - metacpan.org](https://metacpan.org/pod/Pandoc::Filter)
-   [jgm/pandocfilters: A python module for writing pandoc filters, with a collection of examples](https://github.com/jgm/pandocfilters)

「New Plan | 新的计划」

-   不再用 Perl 的正则表达式转换 Markdown，而是用 Perl 或者 Haskell 直接修改 Pandoc 的 AST；
-   CSS 也不再大的调整，有了图片的延迟加载，差不多就够用了。用上 jQuery 后感觉自己原来用纯 JavaScript 实在太累太愚蠢。可能用 Less 或者 Sass
-   [Dogfalo/materialize: Materialize, a CSS Framework based on Material Design](https://github.com/Dogfalo/materialize)
