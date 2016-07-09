---
title: 这是怎样一个博客生成器
date: 2015-11-06
keywords:
    - blog
tags:
    - blog
...

这是怎样一个博客生成器
======================

## 哪点与众不同？ {#special}

本博客生成器用的是 Makefile、Bash 和 Pandoc，还有一点点 CSS 和 JavaScript，
没有用其他工具和语言，不用担心自己的博客生成器更新、
或者自己换了一台电脑或者操作系统就不能码字^[就是因为 Hexo3 出来后我原来的博客死了，我才想到得自己弄这个初级而原始的工具。]。

当然其它的博客工具通常都很酷炫，如果你要的是那种，可以用 [Hexo]、[Jekyll]。
本博客生成器比他们简单得多，而且不是 responsive design，
在手机上或许惨不忍睹[^css]。但好处是兼容性好、稳定、也不太难看。字体的选择和配色我也是拼了老命改了很久[^font]，
不然怎么能像现在一样动人。

[^css]: CSS 都是我手写，以及各种从网站扣。没有用任何 CSS 库，当然做不到响应式（不过我也不 indent to）。
[^font]: 看过《西文字体 1》和《西文字体 2》，但是你想用的字体网页里又不一定能显示，what a pity。

建议快速看一下博客的特性，再到 [我要来一个](#我要来一个) 章节看如何在 Windows/Linux
上安装使用，备份在 GitHub，托管到七牛云盘。

[Hexo]: https://hexo.io/zh-cn/index.html "快速、简洁且高效的博客框架"
[Jekyll]: http://jekyllcn.com/ "Jekyll • 简单静态博客网站生成器"

## 支持的特性

### 增强的 Mardown

强调

:   * **加粗**、*斜体*，或者***一起用***
    * ~~2^^10^^ = 2014~~ ==> 2^^10^^ = 1024, H~2~O 和 $H_2O$ 都是生命之源[^water]
    * 三种连字符：1 - 1，1 -- 8，1 --- one（hyphen, en-dash，em-dash）
    * <span style="font-variant:small-caps;">Small caps</span>
    * <kbd>c-x</kbd> 在 Emacs 里指的是 Control-X

    ```markdown
    强调

    :   * **加粗**、*斜体*，或者***一起用***
        * ~~2^^10^^ = 2014~~ ==> 2^^10^^ = 1024, H~2~O 和 $H_2O$ 都是生命之源[^water]
        * 三种连字符：1 - 1，1 -- 8，1 --- one（hyphen, en-dash，em-dash）
        * <span style="font-variant:small-caps;">Small caps</span>
        * <kbd>c-x</kbd> 在 Emacs 里指的是 Control-X

    [^water]: 看上去不一样，其实都是“水”。
    ```

[^water]: 看上去不一样，其实都是“水”。

列表

:   有序列表

    1. Stay hungry
    2. Stay foolish

    无序列表

    * All work and no play
    * makes Jacky a dull boy

    一起用

    1. one
    2. two
        * two-one
        * two-two
    3. three
        1. three-one
        2. three-two

表格

:   这部分的 CSS 我还没有调好，只是勉强能用。

    | Right | Left | Default | Center |
    |------:|:-----|---------|:------:|
    |   12  |  12  |    12   |    12  |
    |  123  |  123 |   123   |   123  |
    |    1  |    1 |     1   |     1  |

引用

:   下面这段来自[*Terminator 2（终结者）*](http://www.imdb.com/character/ch0000933/quotes)

    > The future has not been written.
    > There is no fate but what we make for ourselves.
    > I wish I could believe that. My name is John Connor,
    > they tried to murder me before I was born,
    > when I was 13 they tried again. Machines from the future.
    > Terminators...

章节

:   header 1--6

    # Header 1
    ## Header 2
    ### Header 3
    #### Header 4
    ##### Header 5
    ###### Header 6


Markdown 中使用 HTML

:   下面是一个 `<div style="background-color=violet">`{.html} 的 HTML 标记：

    <div style="background-color:violet">
    <p style="background-color:black;color:white;margin:10px;">
    一个“黑纸白字”的段落</p>
    <p>
    你可以用 HTML 标记来<b>加粗</b>、<i>斜体</i>或者改变文字的
    <font style="color:red">颜色</font>、
    <font style="font-size:20px">字号</font>、
    <font style="font-family:Impact,Georgia,Serif;">font</font> family
    还可使用 Markdown，如下：
    </p>

    <div markdown="1" style="background-color:yellow;margin:10px;">
    **注**：这些文字在一个 `<div markdown="1" style="background-color:yellow;margin:10px;">`{.html} 中用 Markdown 写成

    可以 **加粗** 也可以 *斜体*

    甚至可以使用 Pandoc Markdown 的上下标（以及列表）：

    * ~~2^^10^^ = 2014~~
    * 2^^10^^ = 1024
    * H~2~O 是生命之源

    | Key | Value | Notes |
    | :------: | -------: | -------: |
    | Foo | *fool* | 第一列居中 |
    | **Bar** | barbaric | 第二列右对齐 |
    | Cup | cap cup c u ***dummy*** | 第三列左对齐 |

    </div>
    </div>

页内引用

:   点我 [回到“与众不同”小节](#special)（这是定制的 tag）

    点我 [回到“支持的特性”小节](#支持的特性)（这是自动生成的 tag），具体看 [源码](#ghraw)。

列表自动编号

:   #. one
    #. two

     9)  Ninth
    10)  Tenth
    11)  Eleventh
           i. subone
          ii. subtwo
         iii. subthree

        #. one
        #. two

         9)  Ninth
        10)  Tenth
        11)  Eleventh
               i. subone
              ii. subtwo
             iii. subthree

上面列举特性用的都是“名词解释”这一特性，“名词解释”的基本写法是：

```markdown
Term 1

:   Definition 1

Term 2 with *inline markup*

:   Definition 2

        { some code, part of Definition 2 }

        Third paragraph of definition 2.

(@)  My first example will be numbered (1).
(@)  My second example will be numbered (2).

Explanation of examples.

(@逗你玩)  My third example will be numbered (3).
Numbered examples can be labeled and referred to elsewhere in the document:

(@)  This is a good example.

As (@逗你玩) illustrates, ...
```

写出来就是：

Term 1

:   Definition 1

Term 2 with *inline markup*

:   Definition 2

        { some code, part of Definition 2 }

        Third paragraph of definition 2.

(@)  My first example will be numbered (1).
(@)  My second example will be numbered (2).

Explanation of examples.

(@逗你玩)  My third example will be numbered (3).
Numbered examples can be labeled and referred to elsewhere in the document:

(@)  This is a good example.

As (@逗你玩) illustrates, ...

-------------------------------------------------------------
 Centered   Default           Right Left
  Header    Aligned         Aligned Aligned
----------- ------- --------------- -------------------------
   First    row                12.0 Example of a row that
                                    spans multiple lines.

  Second    row                 5.0 Here's another one. Note
                                    the blank line between
                                    rows.
-------------------------------------------------------------

Table: Here's the caption. It, too, may span
multiple lines.

```markdown
-------------------------------------------------------------
 Centered   Default           Right Left
  Header    Aligned         Aligned Aligned
----------- ------- --------------- -------------------------
   First    row                12.0 Example of a row that
                                    spans multiple lines.

  Second    row                 5.0 Here's another one. Note
                                    the blank line between
                                    rows.
-------------------------------------------------------------

Table: Here's the caption. It, too, may span
multiple lines.
```

四种链接的方式：

[one][my label 1], and [two][my label 2] and [three][my label 3] and [four][my label 4]

（代码的最大宽度超过了 80 chars，就超了边界，这个我觉得不是本博客生成器的 bug。Keep the rule!）

[my label 1]: /foo/bar.html  "My title, optional"
[my label 2]: /foo
[my label 3]: http://fsf.org (The free software foundation)
[my label 4]: /bar#special  'A title in single quotes'

```markdown
[one][my label 1], and [two][my label 2] and [three][my label 3] and [four][my label 4]

[my label 1]: /foo/bar.html  "My title, optional"
[my label 2]: /foo
[my label 3]: http://fsf.org (The free software foundation)
[my label 4]: /bar#special  'A title in single quotes'
```

[my website][]  is good, even [my website] is good, even [this].

Hash Tag[^hashtag]

[^hashtag]: 其实在 weibo/twitter 上才叫 hash tag，这里或许应该叫 section ref link。

* See [above]
* See [table](#table)
* See [codetag](#codetag)

[my website]: /shit
[good]: /bar/baz <good>
[this]: /baz
[above]: #good

```markdown
[my website][]  is good, even [my website] is good, even [this].

Hash Tag^[其实在 weibo/twitter 上才叫 hash tag，这里或许应该叫 section ref link。]

* See [above]
* See [table](#table)
* See [codetag](#codetag)

[my website]: /shit
[good]: /bar/baz <good>
[this]: /baz
[above]: #good
```

段落内的图片，caption 不显示：![inline-pic-without-showing-this-text]

单独一段的图片，显示 caption：

![standalone-pic-small-one]

当然，也可以不显示：

![][standalone-pic-big-one]

[inline-pic-without-showing-this-text]: http://gnat-tang-shared-image.qiniudn.com/emoji/11.gif
[standalone-pic-small-one]: http://gnat.qiniudn.com/dexter.jpg
[standalone-pic-big-one]: http://gnat.qiniudn.com/jodie-foster-math.png "本来想用 Gatsby 挥拳打 Tom 的图片"

```markdown
段落内的图片，caption 不显示： ![inline-pic-without-showing-this-text]

单独一段的图片，显示 caption：

![standalone-pic-small-one]

当然，也可以不显示：

![][standalone-pic-big-one]

[inline-pic-without-showing-this-text]: http://gnat-tang-shared-image.qiniudn.com/emoji/11.gif
[standalone-pic-small-one]: http://gnat.qiniudn.com/dexter.jpg
[standalone-pic-big-one]: http://gnat.qiniudn.com/jodie-foster-math.png "本来想用 Gatsby 挥拳打 Tom 的图片"
```

### 代码高亮

行内高亮特别赞。比如一点 Bash 脚本：`echo -e "hello\nworld" | sort`{.bash}，
或者一点 HTML：`<h1 id="hello-pandoc">HTML code</h1>`{.html}。

还有 C++

```c++
void Twin::flipLeftRight()
{
    if ( !valid ) { return; }
    oxo();
    cv::flip( m[src()], m[dst()], 1 );
    log += "-flipLeftRight";
}
```

可以有行号：

~~~~ {#mycode .python .numberLines startFrom="100"}
def widthHeightDividedBy(image, divisor):
    """Return an image's dimensions, divided by a value."""
    h, w = image.shape[:2]
    return (w/divisor, h/divisor)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

看 [这段代码](#mycode) 高亮得多好啊！

### 数学公式

不管用了多少年的 M$ Word，总有一天写论文你要用 $\LaTeX$，那就从 MathJax 开始练习吧。

$$
        \begin{matrix}
        1 & x & x^2 \\
        1 & y & y^2 \\
        1 & z & z^2 \\
        \end{matrix}
$$

$$   f(n) =
\begin{cases}
n/2,  & \text{if $n$ is even} \\
3n+1, & \text{if $n$ is odd}
\end{cases} $$

访问 [MathJax](http://meta.math.stackexchange.com/questions/5020/mathjax-basic-tutorial-and-quick-reference) 参考更多使用方法。

如果你要手工给 HTML 添加 MathJax 功能，需要在页面中加入

```html
<script type="text/javascript"
         src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML">
</script>
```

## 我要来一个

因为我的博客生成器还在不断完善中，这部分先隐藏了。详见 [district10/blog](https://github.com/district10/blog/)。

<!--
下面介绍如何

1. 在 Windows/Linux 上安装使用，
2. 备份到 GitHub，
3. 托管到七牛云盘。

首先（1），Windows 上需要安装 Git for Windows，可以参考我以前写的笔记：[github-guide/配置-Windows.md at master · whudoc/github-guide](https://github.com/whudoc/github-guide/blob/master/%E9%85%8D%E7%BD%AE-Windows.md)。
还需要 Pandoc，[下载](http://gnat.qiniudn.com/pandoc-1.13.2-windows.msi) 后一步步点击就可以。

Linux 上安装 git 和 pandoc 都太容易，用 `sudo apt-get install git pandoc`{.bash} 就可以。

然后可以先下载 [我的博客](https://github.com/district10/blog/archive/master.zip)，
解压后进入文件夹，右键打开 Git Bash，输入 `make`{.bash} 完成编译，不出意外的话会有一个 `public` 文件夹生成。
打开里面的 `index.html`，是不是和你现在正看的网页一模一样？就这么简单。

本博客生成器的核心是调用 pandoc 来把用 markdown 写的博客生成 HTML 页面，
如果想了解如何调用，你得仔细看看
[Makefile](https://github.com/district10/blog/blob/master/Makefile)^[几十行的 Makefile 我写了好久，好久。一边学一遍写。]。
博客下的文件夹有

<small>
1. `_koans`：呓语，类似微博吐槽。
2. `_notes`：笔记，类似个人维基。
3. `_parts`：页面的 footer 和主页的 header。
4. `_posts`：博客主体，一个 post 就是一篇博客。
5. `_static`：CSS 和一些单独的页面。
</small>

其次（2），fork 我的 repo，修改如下几处：

1. [`_parts/footer.html`](https://github.com/district10/blog/blob/master/_parts/footer.html) 里的主页名称和三个变量

    ```javascript
    mdPath = 'https://github.com/district10/blog/blob/master';
    rawPath = 'https://raw.githubusercontent.com/district10/blog/master';
    basePath = 'https://github.com/district10/blog';
    ```

2. [`_parts/header.html`](https://github.com/district10/blog/blob/master/_parts/header.html)，这是主页的 banner，我想你不愿意用我的。
3. `_posts` 文件夹里写自己的博客，写好后到 Makefile 里加上

    ```makefile
    HTML = \
    $(POST_000N_OUT) \                                        # 这是你新加的
    $(POST_0002_OUT) \

    # posts
    POST_000N_INS = $(PIDIR)/post-00N-your-post-title.md      # 这是你新加的
    POST_000N_OUT = $(PODIR)/post-00N-your-post-title.html    # 这是你新加的
    POST_0002_INS = $(PIDIR)/post-002-how-to-make-this-blog.md
    POST_0002_OUT = $(PODIR)/post-002-how-to-make-this-blog.html

    # posts
    $(POST_000N_OUT): $(POST_000N_INS)                        # 这是你新加的
        $(PANDOC_NORMAL) $^ -o $@
    $(POST_0002_OUT): $(POST_0002_INS)
        $(PANDOC_NORMAL) $^ -o $@
    ```

4. 似乎没有其它了。

最后（3），上传到七牛。先到 [qrsync 命令行同步工具 | 七牛云存储](http://developer.qiniu.com/docs/v6/tools/qrsync.html)
下载命令行同步工具，下载解压后放到系统变量 `%PATH%` 里。再找个安全的位置，新建一个文件 `conf.json`：

```json
{
    "src":          "publish 文件夹的绝对路径",
    "dest":         "qiniu:access_key=<AccessKey>&secret_key=<SecretKey>&bucket=<Bucket>",
    "debug_level":  1
}
```
</small>

其中的 `<AccessKey>`、`<SecretKey>` 从七牛网上拿到，如下图：

![从七牛获取 AK、SK](http://gnat.qiniudn.com/misc/qiniuconf.jpg)

注意妥善保存不要泄露。

`<Bucket>` 是你的“空间”名，记得弄个好记的名字：

![我不保证你能自定义简短的 Bucket Name](http://gnat.qiniudn.com/misc/qiniubucket.jpg)

然后打开 Git Bash 输入 `qsync conf.json`{.bash} 就可以把生成的博客传到七牛云盘，就可以访问了。

![Qiniu Sync，快如闪电](http://gnat.qiniudn.com/misc/qiniusync.jpg)

最后，<span style="font-variant:small-caps;">bon appetite</span>～
-->

致谢
----

感谢我喜欢的一些网站如 [简书 - 交流故事，沟通想法](http://www.jianshu.com/)，
[LOFTER（乐乎） - 每个人的理想国](http://www.lofter.com/)，我从上面扣了一些 CSS，
感谢 [七牛云存储 - 移动时代的云存储服务商](http://www.qiniu.com/)，感谢
[Pandoc](http://pandoc.org/README.html)，感谢 GNU Make 以及 Git，感谢 GitHub、
MathJax。我们这个时代真是太牛逼了，开源社区有这么多好用的工具。

## 其它

Pandoc 的引用功能这里没有介绍。本博客支持用 bib 文件（可以从 Mendeley 导出）引用参考文献。

---

Refs

#. [Pandoc Markdown Official Site](http://johnmacfarlane.net/pandoc/demo/example9/pandocs-markdown.html)
#. [The pandoc-siteproc package](http://hackage.haskell.org/package/pandoc-citeproc)
#. [Art of Problem Solving - LaTeX: Symbols](http://www.artofproblemsolving.com/wiki/index.php/LaTeX:Symbols)
#. [Art of Problem Solving - LaTeX: Commands](http://www.artofproblemsolving.com/wiki/index.php/LaTeX:Commands)
#. 我以前的博客（已经下线）
