# blog

[![Build Status](https://travis-ci.org/district10/blog.svg?branch=master)](https://travis-ci.org/district10/blog)

- See <http://tangzx.qiniudn.com>（托管在「七牛 CDN」）or <http://blog.tangzhixiong.com>（仅重定向）
- or <http://dvorak4tzx.coding.me/>（托管在「Coding Pages」）

下载

- 源码
      + Coding, master: <https://coding.net/u/dvorak4tzx/p/dvorak4tzx/git/archive/master>
      + GitHub, master: <https://github.com/district10/blog/archive/master.zip>
- 网页：<https://coding.net/u/dvorak4tzx/p/dvorak4tzx/git/archive/coding-pages>（国内访问更快）

博客用 Markdown 写，用 travis 自动帮我把源码同步到 coding，
并把网页放到 [coding pages](https://coding.net/u/dvorak4tzx/p/dvorak4tzx/git)
和 [七牛云盘](https://portal.qiniu.com/signup?code=3ld4krtl7yzbm)。

吐槽：

  - travis 的虚拟机下载国内的七牛云，速度居然有 40M/s！速度平均 20M/s+ 的样子。
  - 但是如果装一个 texlive-full，下载 2G 多的文件，还是有点捉急……
  - 所以啊，即便能够用 travis 帮我把所有 post 编译出 pdf 版本和 docx 版本，我也只弄过一次。
  - 一个是我提供这样的连接，自己的七牛流量就要爆！二是，太不节能。
  - 为了节能我现在已经把编译 md-> html 优化到只处理修改了的：见 [`filter.pl`](filter.pl)。

## TODO

- [ ] 优化 CSS
- [ ] 把自己原来的文章慢慢都放到这个 blog 上
- [ ] ~~安利！~~
- [ ] [zenorocha/clipboard.js: Modern copy to clipboard. No Flash. Just
      2kb](https://github.com/zenorocha/clipboard.js/)
- [ ] [chunksnbits/jquery-quickfit: A quick and dirty approach to fitting text
      into its surrounding container.](https://github.com/chunksnbits/jquery-quickfit)

## Warning

文档不全，谨慎 fork。

## Editor Configuration

For Windows

* add gvim path to `%PATH%`
* set `%EDITOR%` to `gvim`, like [Configure EDITOR](http://gnat.qiniudn.com/dvorak4tzx/editor.jpg)

For Linux

* set `$EDITOR` to `vim`

## Deps

* git
* make (Makefile)
* shell (Bash)
* pandoc (>= 1.16)

Optionals

* tj/watch

## Usage

just `make`

## Workflow

workflow 1

0. `/usr/local/bin/watch -i 300ms -q make` (not work on windows)
1. write md file & save
2. browser auto refresh
3. that's it

workflow 2

* edit file
* `make`
* `make qn`（同步到七牛云）
* `make gh`（同步到 GitHub）

## Utils

compress images

```bash
#!/bin/bash

lossy() {
convert -strip \
    -interlace Plane \
    -gaussian-blur 0.05 \
    -filter Lanczos -quality 85% \
    $1 $2
}

for i in *.JPG; do
    lossy $i ${i/.JPG/.lossy.jpg}
done
```

searching

* ag
* pt (better, can search chinese, and easier to get the binary)

Notes

```yml
  - sudo apt-get install texlive-full
  - sudo apt-get install ttf-wqy-zenhei
```
