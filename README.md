# Blog

[![Build Status](https://travis-ci.org/district10/blog.svg?branch=master)](https://travis-ci.org/district10/blog)

七牛 CDN 和 coding.net 似乎都是 CDN，所以总是难以快速的地更新，
travis 给整个博客弄了一个打包：<https://coding.net/u/dvorak4tzx/p/dvorak4tzx/git/archive/coding-pages>。

## New Start

「Koan | 吐槽」

发现自己在重复造轮子，而且造得不好！Pandoc 有 `--filter` 和 `--file-scope` 的概
念，正好对应我的 [`filter.pl`](filter.pl) 和 `merger.pl`，我……只能说英雄所见略同了…… 这些
Perl 脚本还在用，但计划以后用 Pandoc 的 filter。

「Refs | 参考文档」

  - [Pandoc - Scripting with pandoc](http://pandoc.org/scripting.html)
  - [Pandoc::Filter - process Pandoc abstract syntax tree - metacpan.org](https://metacpan.org/pod/Pandoc::Filter)
  - [jgm/pandocfilters: A python module for writing pandoc filters, with a collection of examples](https://github.com/jgm/pandocfilters)

「New Plan | 新的计划」

  - 不再用 Perl 的正则表达式转换 Markdown，而是用 Perl 或者 Haskell 直接修改 Pandoc 的 AST；
  - CSS 也不再大的调整，有了图片的延迟加载，差不多就够用了。用上 jQuery 后感觉自己原来用纯 JavaScript 实在太累太愚蠢。可能用 Less 或者 Sass
  - [Dogfalo/materialize: Materialize, a CSS Framework based on Material Design](https://github.com/Dogfalo/materialize)

---

## Intro

`zh`: 博客源码托管在 GitHub，用 Markdown 写，用 Makefile 管理，用 travis

  - 帮我把源码同步到 [Coding: dvorak4tzx/dvorak4tzx.git master 分支](https://coding.net/u/dvorak4tzx/p/dvorak4tzx/git)；
  - 帮我把网站同步到 [Coding: dvorak4tzx/dvorak4tzx.git coding-pages 分支](http://dvorak4tzx.coding.me/)；
  - 帮我把生成的网页同步到 [七牛云存储](https://portal.qiniu.com/signup?code=3ld4krtl7yzbm)。

`en`: 「github」 -----> **markdown** ---pandoc---> **html** ---travis----> 「coding.net/qiniu.com」

## Visit the Site

  - <http://tangzx.qiniudn.com> (hosted on「七牛 CDN | Qiniu CDN」) or
    <http://blog.tangzhixiong.com> (仅重定向 | redirection only)
  - or <http://dvorak4tzx.coding.me/> (hosted on「Coding Pages」)

## Get a Copy

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
  - 但后来我不怎么 filter 了，因为……反正是 travis 帮我编译……

## Warning

  - 文档不全，谨慎 fork。
  - 等一切都 set 了，再写文档再安利

## Editor Configuration

  - For Windows
      + add gvim path to `%PATH%`
      + set `%EDITOR%` to `gvim`, like [Configure EDITOR](http://gnat.qiniudn.com/dvorak4tzx/editor.jpg)
      + in your `.bashrc` or `.zshrc`: `export EDITOR="gvim -u ~/git/blog/vimrc.vim"`, be sure to use **export**
      + echo "source /path/to/_vimrc/file > ~/.vimrc", `%HOME%` on win: `/c/Users/Administrator`
  - For Linux
      - set `$EDITOR` to `gvim` (`vim file.txt &` 会出错，而我 Makefile 里都是
        `$(EDITOR $< &)`，所以小心罗。)

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
  - 把 notes.md 分成多个文本，比如 note{001..999}.md，然后分别生成 html（非 standalone），然后用 ajax 来 load 各个 html 片段，
    这样的好处是可以依旧在一个文本里编辑（反正 vim 编辑 100M+ 的文本都是无压力的），但会自动转化为多个片段，加载起来更快。
    唯一的不好的地方在于，可能会和图片延迟加载冲突。

---

## Plan

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
