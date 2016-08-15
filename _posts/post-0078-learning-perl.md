---
title: Learning Perl
date: 2015-12-17
key-words:
tags:
    - perl
    - code
    - reading
...

Learning Perl
=============

笔记部分移到了 [Notes: lang/perl.html](http://tangzx.qiniudn.com/notes/lang/perl.html)。

我写过一些 Perl 脚本，用来处理本站的 Markdown 源码。主要实现了三个功能：

1.  从 git 的历史信息里提取一篇 post 源码的修改状况，并添加到页面。

    如果你看过 html 源码，应该可以看到：

    ```javascript
    var tzxFilename = "_posts/post-0111-qt4-vs2015.md";
    var tzxChanges = [
        {
            hash: "c5d8b2116006abe088c7340ce63017b120e822d5",
            datetime: "1469954954",
            insertions: 0,
            deletions: 2
        },
        ...
    ];
    ```

    这都是从版本控制信息里提取出来的。

    原来我提供产看某一历史版本的源码查看功能。不过被我去掉了。因为……好像没人会看。
    放在主页上的按钮好傻。

2.  给页面添加折叠功能。

    <div class="tzx-drawer" shy>
    【点我打开折叠】

    :   blah blah blah……

        这就是被折叠掉的内容。

        不过在博客这边用得少点。在笔记那边用的更多。

        <div class="tzx-drawer" shy>
        【当然可以嵌套】

        :   点击事件的 event propagation 曾折腾了我挺久。以及选中文字复制的时候，
            如果禁用折叠盒的打开/关闭的切换，也是挺麻烦。
        </div>
    </div>

3.  给 Markdown 添加 include 其他文件的功能。

    这样引入一个很长的代码，我就不用全部 copy 过来了！
    而且便于管理。

    基于这个我计划做一个 snippets 查看工具，这样就能把自己的一些代码片段保存起来，
    方便地各种 include 到笔记。方便复习和再记忆。

几乎所有的 perl 脚本都放在：[district10/blog-utils: Utils to process my blog posts.](https://github.com/district10/blog-utils)。
那里也有一点介绍。

---

最后，我最爱的 include 功能的代码，并不长（写得时候还是出了不少 bug，各种坎坷），贴在这里：

```perl
#!/usr/bin/perl

use 5.010;
use strict;

sub inList {
    my $needle = shift;
    my @haystack = @_;
    foreach my $hay (@haystack) {
        if ( $needle eq $hay ) {
            return 1;
        }
    }
    return 0;
}

sub unfold {
    my($PADDING)  = shift @_;
    my($PREFIX)   = shift @_;
    my($FILENAME) = shift @_;

    if (&inList($FILENAME, @_) == 1) {
        return;
    }
    unshift(@_, $FILENAME);

    open my $INPUT, '<', $FILENAME;
    while(<$INPUT>) {
        #   padding         prefix   filename
        if (/^(\s*)\@include <-(.*)=(.*)=/) {
            &unfold(
                     $PADDING . $1,
                     $PREFIX . $2,
                     $3, @_ );
        } else {
            print $PADDING . $PREFIX . $_;
        }
    }
}

&unfold("", "", $ARGV[0]);
```

我的使用中，路径从 repo 的根目录算起。使用方法是在 Markdown 里加上

```
@include <-=path/to/file=
```

-   可以多次 include，只要不出现环（发现循环引入，就不 include 后来的那个）
-   `@` 符号前面的空格，会 pad 到每一行（这样才能适当地缩进。）
-   `-=` 中间可以插入一些字符

具体看源码吧。都是我自己用，也不想写太多的说明。
