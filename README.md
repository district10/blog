# blog

Simplest Markdown blog

See <http://tangzx.qiniudn.com>

or <http://blog.tangzhixiong.com>

## TODO

* [ ] 优化 CSS
* [ ] 把自己原来的文章慢慢都放到这个 blog 上
* [ ] 安利！

## Warning

Only Personal Usage。文档不全，谨慎 fork。

## Configure Editor

For Windows

* add gvim path to `%PATH%`
* set `%EDITOR%` to `gvim`, like [Configure EDITOR](http://gnat.qiniudn.com/dvorak4tzx/editor.jpg)

For Linux

* set `$EDITOR` to `vim`

## Deps

1. ansi color converter
2. git
3. watch
4. makefile
5. shell

## Usage

just `make`

## Workflow

0. `/usr/local/bin/watch -i 300ms -q make` (not work on windows)
1. write md file & save
2. browser auto refresh
3. that's it

## Utils

Compress images

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
