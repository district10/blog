# blog

[![Build Status](https://travis-ci.org/district10/blog.svg?branch=master)](https://travis-ci.org/district10/blog)

Simplest Markdown blog，利用 travis 自动生成 html 和 pdf，并同步到七牛。

  - See <http://tangzx.qiniudn.com>
  - or <http://blog.tangzhixiong.com>

## TODO

* [ ] 优化 CSS
* [ ] 把自己原来的文章慢慢都放到这个 blog 上
* [ ] 安利！
* [ ] [zenorocha/clipboard.js: Modern copy to clipboard. No Flash. Just 2kb](https://github.com/zenorocha/clipboard.js/)
* [ ] [chunksnbits/jquery-quickfit: A quick and dirty approach to fitting text into its surrounding container.](https://github.com/chunksnbits/jquery-quickfit)

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
