# blog

[![Build Status](https://travis-ci.org/district10/blog.svg?branch=master)](https://travis-ci.org/district10/blog)

## intro

`zh`: 博客源码托管在 GitHub，用 Markdown 写，用 Makefile 管理，用 travis

  - 帮我把源码同步到 [Coding: dvorak4tzx/dvorak4tzx.git master 分支](https://coding.net/u/dvorak4tzx/p/dvorak4tzx/git)；
  - 帮我把网站同步到 [Coding: dvorak4tzx/dvorak4tzx.git coding-pages 分支](http://dvorak4tzx.coding.me/)；
  - 帮我把生成的网页同步到 [七牛云存储](https://portal.qiniu.com/signup?code=3ld4krtl7yzbm)。

`en`: github -----> markdown ---pandoc---> html ---travis----> coding.net/qiniu.com

## visit the site

  - <http://tangzx.qiniudn.com> (hosted on「七牛 CDN | Qiniu CDN」) or
    <http://blog.tangzhixiong.com> (仅重定向 | redirection only)
  - or <http://dvorak4tzx.coding.me/> (hosted on「Coding Pages」)

## get a copy

  - Markdown
      + Coding, master branch:
        <https://coding.net/u/dvorak4tzx/p/dvorak4tzx/git/archive/master>
      + GitHub, master branch:
        <https://github.com/district10/blog/archive/master.zip>
  - html zip archive:
    <https://coding.net/u/dvorak4tzx/p/dvorak4tzx/git/archive/coding-pages>

##「吐槽 | Koans」

  - travis 的虚拟机下载国内的七牛云，速度居然有 40M/s！速度平均 20M/s+ 的样子。
  - 但是如果装一个 texlive-full，下载 2G 多的文件，还是有点捉急……
  - 所以啊，即便能够用 travis 帮我把所有 post 编译出 pdf 版本和 docx 版本，我也只弄过一次。
  - 一个是我提供这样的连接，自己的七牛流量就要爆！二是，太不节能。
  - 为了节能我现在已经把编译 md-> html 优化到只处理修改了的：见 [`filter.pl`](filter.pl)。

## Warning

  - 文档不全，谨慎 fork。
  - 等一切都 set 了，再写文档再安利

## Editor Configuration

  - For Windows
      + add gvim path to `%PATH%`
      + set `%EDITOR%` to `gvim`, like [Configure EDITOR](http://gnat.qiniudn.com/dvorak4tzx/editor.jpg)
  - For Linux
      - set `$EDITOR` to `vim`

## Deps

  - compile locally
      + git
      + make (Makefile)
      + shell (Bash)
      + pandoc (>= 1.16)
      + perl
      + district10/aha
  - via travis
      + no deps

## Usage

  - just `make`

## Workflow

  - edit file
  - `make`
  - `make qn`「同步到七牛云 | sync to qiniu」
  - `make gh`「同步到 GitHub | push to github」 --> 「travis 代为编译 | trigger building on trivis」

## TODO

  - script to tranlate `vimrc` to `perl` code highlight, etc.

---

## Customized Markdown

```
    - tags, indexes
    - anchoring via                                         `@`{.tzx-anchor #id}
    - tagging/anchoring via                                 `tag`{.tzx-tag}
    - tagging/anchoring via                                 <#>(@tag1 @tag2), <#id>(@tag1 @tag2)
    - including other file via                              <#>(%filename option1=value1) => format: dl{[dd, dt[ ,->dt]]}
    - checking
        + 首字母是中文标点
        + 但行长度过长
```
