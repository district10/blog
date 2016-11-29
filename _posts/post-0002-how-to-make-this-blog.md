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

本文介绍了你正在访问的网页是如何生成

## 哪点与众不同？ {#special}

本博客生成器用的是 Makefile、Perl 和 Pandoc，还有一点点 CSS 和 JavaScript，
没有用其他工具和语言，不用担心自己的博客生成器更新、
或者自己换了一台电脑或者操作系统就不能码字^[就是因为 Hexo3 出来后我原来的博客死了，我才想到得自己弄这个初级而原始的工具。]。
安装起来很方便，因为 1）如果你用 Windows 操作系统还使用 Git，perl 就已经包含在 git for windows 里了，额外你只要安装
Pandoc；2）如果你使用 Linux 操作系统，只要安装 Pandoc（官方源里的太旧）。如何生成这个“网站”，具体参考
[district10/blog#Build one / 从 Markdown 源码生成](https://github.com/district10/blog#build-one--从-Markdown-源码生成)。

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

---

<div class="tzx-drawer" shy>
Notes

:   <div class="tzx-drawer" shy>
    [Emojis](https://github.com/jgm/pandoc/blob/09b4f294bf4584f0010abc331b7e44bb26189865/src/Text/Pandoc/Emoji.hs)

    :   :+1:, :-1:, :100:, :1234:, :8ball:, :a:, :ab:, :abc:, :abcd:, :accept:,
        :aerial_tramway:, :airplane:, :alarm_clock:, :alien:, :ambulance:,
        :anchor:, :angel:, :anger:, :angry:, :anguished:, :ant:, :apple:,
        :aquarius:, :aries:, :arrow_backward:, :arrow_double_down:,
        :arrow_double_up:, :arrow_down:, :arrow_down_small:, :arrow_forward:,
        :arrow_heading_down:, :arrow_heading_up:, :arrow_left:, :arrow_lower_left:,
        :arrow_lower_right:, :arrow_right:, :arrow_right_hook:, :arrow_up:,
        :arrow_up_down:, :arrow_up_small:, :arrow_upper_left:, :arrow_upper_right:,
        :arrows_clockwise:, :arrows_counterclockwise:, :art:, :articulated_lorry:,
        :astonished:, :athletic_shoe:, :atm:, :b:, :baby:, :baby_bottle:,
        :baby_chick:, :baby_symbol:, :back:, :baggage_claim:, :balloon:,
        :ballot_box_with_check:, :bamboo:, :banana:, :bangbang:, :bank:,
        :bar_chart:, :barber:, :baseball:, :basketball:, :bath:, :bathtub:,
        :battery:, :bear:, :bee:, :beer:, :beers:, :beetle:, :beginner:, :bell:,
        :bento:, :bicyclist:, :bike:, :bikini:, :bird:, :birthday:, :black_circle:,
        :black_joker:, :black_large_square:, :black_medium_small_square:,
        :black_medium_square:, :black_nib:, :black_small_square:,
        :black_square_button:, :blossom:, :blowfish:, :blue_book:, :blue_car:,
        :blue_heart:, :blush:, :boar:, :boat:, :bomb:, :book:, :bookmark:,
        :bookmark_tabs:, :books:, :boom:, :boot:, :bouquet:, :bow:, :bowling:,
        :boy:, :bread:, :bride_with_veil:, :bridge_at_night:, :briefcase:,
        :broken_heart:, :bug:, :bulb:, :bullettrain_front:, :bullettrain_side:,
        :bus:, :busstop:, :bust_in_silhouette:, :busts_in_silhouette:, :cactus:,
        :cake:, :calendar:, :calling:, :camel:, :camera:, :cancer:, :candy:,
        :capital_abcd:, :capricorn:, :car:, :card_index:, :carousel_horse:, :cat:,
        :cat2:, :cd:, :chart:, :chart_with_downwards_trend:,
        :chart_with_upwards_trend:, :checkered_flag:, :cherries:, :cherry_blossom:,
        :chestnut:, :chicken:, :children_crossing:, :chocolate_bar:,
        :christmas_tree:, :church:, :cinema:, :circus_tent:, :city_sunrise:,
        :city_sunset:, :cl:, :clap:, :clapper:, :clipboard:, :clock1:, :clock10:,
        :clock1030:, :clock11:, :clock1130:, :clock12:, :clock1230:, :clock130:,
        :clock2:, :clock230:, :clock3:, :clock330:, :clock4:, :clock430:, :clock5:,
        :clock530:, :clock6:, :clock630:, :clock7:, :clock730:, :clock8:,
        :clock830:, :clock9:, :clock930:, :closed_book:, :closed_lock_with_key:,
        :closed_umbrella:, :cloud:, :clubs:, :cn:, :cocktail:, :coffee:,
        :cold_sweat:, :collision:, :computer:, :confetti_ball:, :confounded:,
        :confused:, :congratulations:, :construction:, :construction_worker:,
        :convenience_store:, :cookie:, :cool:, :cop:, :copyright:, :corn:,
        :couple:, :couple_with_heart:, :couplekiss:, :cow:, :cow2:, :credit_card:,
        :crescent_moon:, :crocodile:, :crossed_flags:, :crown:, :cry:,
        :crying_cat_face:, :crystal_ball:, :cupid:, :curly_loop:,
        :currency_exchange:, :curry:, :custard:, :customs:, :cyclone:, :dancer:,
        :dancers:, :dango:, :dart:, :dash:, :date:, :de:, :deciduous_tree:,
        :department_store:, :diamond_shape_with_a_dot_inside:, :diamonds:,
        :disappointed:, :disappointed_relieved:, :dizzy:, :dizzy_face:,
        :do_not_litter:, :dog:, :dog2:, :dollar:, :dolls:, :dolphin:, :door:,
        :doughnut:, :dragon:, :dragon_face:, :dress:, :dromedary_camel:, :droplet:,
        :dvd:, :e-mail:, :ear:, :ear_of_rice:, :earth_africa:, :earth_americas:,
        :earth_asia:, :egg:, :eggplant:, :eight:, :eight_pointed_black_star:,
        :eight_spoked_asterisk:, :electric_plug:, :elephant:, :email:, :end:,
        :envelope:, :envelope_with_arrow:, :es:, :euro:, :european_castle:,
        :european_post_office:, :evergreen_tree:, :exclamation:, :expressionless:,
        :eyeglasses:, :eyes:, :facepunch:, :factory:, :fallen_leaf:, :family:,
        :fast_forward:, :fax:, :fearful:, :feet:, :ferris_wheel:, :file_folder:,
        :fire:, :fire_engine:, :fireworks:, :first_quarter_moon:,
        :first_quarter_moon_with_face:, :fish:, :fish_cake:,
        :fishing_pole_and_fish:, :fist:, :five:, :flags:, :flashlight:, :flipper:,
        :floppy_disk:, :flower_playing_cards:, :flushed:, :foggy:, :football:,
        :footprints:, :fork_and_knife:, :fountain:, :four:, :four_leaf_clover:,
        :fr:, :free:, :fried_shrimp:, :fries:, :frog:, :frowning:, :fuelpump:,
        :full_moon:, :full_moon_with_face:, :game_die:, :gb:, :gem:, :gemini:,
        :ghost:, :gift:, :gift_heart:, :girl:, :globe_with_meridians:, :goat:,
        :golf:, :grapes:, :green_apple:, :green_book:, :green_heart:,
        :grey_exclamation:, :grey_question:, :grimacing:, :grin:, :grinning:,
        :guardsman:, :guitar:, :gun:, :haircut:, :hamburger:, :hammer:, :hamster:,
        :hand:, :handbag:, :hankey:, :hash:, :hatched_chick:, :hatching_chick:,
        :headphones:, :hear_no_evil:, :heart:, :heart_decoration:, :heart_eyes:,
        :heart_eyes_cat:, :heartbeat:, :heartpulse:, :hearts:, :heavy_check_mark:,
        :heavy_division_sign:, :heavy_dollar_sign:, :heavy_exclamation_mark:,
        :heavy_minus_sign:, :heavy_multiplication_x:, :heavy_plus_sign:,
        :helicopter:, :herb:, :hibiscus:, :high_brightness:, :high_heel:, :hocho:,
        :honey_pot:, :honeybee:, :horse:, :horse_racing:, :hospital:, :hotel:,
        :hotsprings:, :hourglass:, :hourglass_flowing_sand:, :house:,
        :house_with_garden:, :hushed:, :ice_cream:, :icecream:, :id:,
        :ideograph_advantage:, :imp:, :inbox_tray:, :incoming_envelope:,
        :information_desk_person:, :information_source:, :innocent:, :interrobang:,
        :iphone:, :it:, :izakaya_lantern:, :jack_o_lantern:, :japan:,
        :japanese_castle:, :japanese_goblin:, :japanese_ogre:, :jeans:, :joy:,
        :joy_cat:, :jp:, :key:, :keycap_ten:, :kimono:, :kiss:, :kissing:,
        :kissing_cat:, :kissing_closed_eyes:, :kissing_heart:,
        :kissing_smiling_eyes:, :knife:, :koala:, :koko:, :kr:, :lantern:,
        :large_blue_circle:, :large_blue_diamond:, :large_orange_diamond:,
        :last_quarter_moon:, :last_quarter_moon_with_face:, :laughing:, :leaves:,
        :ledger:, :left_luggage:, :left_right_arrow:, :leftwards_arrow_with_hook:,
        :lemon:, :leo:, :leopard:, :libra:, :light_rail:, :link:, :lips:,
        :lipstick:, :lock:, :lock_with_ink_pen:, :lollipop:, :loop:, :loud_sound:,
        :loudspeaker:, :love_hotel:, :love_letter:, :low_brightness:, :m:, :mag:,
        :mag_right:, :mahjong:, :mailbox:, :mailbox_closed:, :mailbox_with_mail:,
        :mailbox_with_no_mail:, :man:, :man_with_gua_pi_mao:, :man_with_turban:,
        :mans_shoe:, :maple_leaf:, :mask:, :massage:, :meat_on_bone:, :mega:,
        :melon:, :memo:, :mens:, :metro:, :microphone:, :microscope:, :milky_way:,
        :minibus:, :minidisc:, :mobile_phone_off:, :money_with_wings:, :moneybag:,
        :monkey:, :monkey_face:, :monorail:, :moon:, :mortar_board:, :mount_fuji:,
        :mountain_bicyclist:, :mountain_cableway:, :mountain_railway:, :mouse:,
        :mouse2:, :movie_camera:, :moyai:, :muscle:, :mushroom:,
        :musical_keyboard:, :musical_note:, :musical_score:, :mute:, :nail_care:,
        :name_badge:, :necktie:, :negative_squared_cross_mark:, :neutral_face:,
        :new:, :new_moon:, :new_moon_with_face:, :newspaper:, :ng:,
        :night_with_stars:, :nine:, :no_bell:, :no_bicycles:, :no_entry:,
        :no_entry_sign:, :no_good:, :no_mobile_phones:, :no_mouth:,
        :no_pedestrians:, :no_smoking:, :non-potable_water:, :nose:, :notebook:,
        :notebook_with_decorative_cover:, :notes:, :nut_and_bolt:, :o:, :o2:,
        :ocean:, :octopus:, :oden:, :office:, :ok:, :ok_hand:, :ok_woman:,
        :older_man:, :older_woman:, :on:, :oncoming_automobile:, :oncoming_bus:,
        :oncoming_police_car:, :oncoming_taxi:, :one:, :open_book:,
        :open_file_folder:, :open_hands:, :open_mouth:, :ophiuchus:, :orange_book:,
        :outbox_tray:, :ox:, :package:, :page_facing_up:, :page_with_curl:,
        :pager:, :palm_tree:, :panda_face:, :paperclip:, :parking:,
        :part_alternation_mark:, :partly_sunny:, :passport_control:, :paw_prints:,
        :peach:, :pear:, :pencil:, :pencil2:, :penguin:, :pensive:,
        :performing_arts:, :persevere:, :person_frowning:,
        :person_with_blond_hair:, :person_with_pouting_face:, :phone:, :pig:,
        :pig2:, :pig_nose:, :pill:, :pineapple:, :pisces:, :pizza:, :point_down:,
        :point_left:, :point_right:, :point_up:, :point_up_2:, :police_car:,
        :poodle:, :poop:, :post_office:, :postal_horn:, :postbox:, :potable_water:,
        :pouch:, :poultry_leg:, :pound:, :pouting_cat:, :pray:, :princess:,
        :punch:, :purple_heart:, :purse:, :pushpin:, :put_litter_in_its_place:,
        :question:, :rabbit:, :rabbit2:, :racehorse:, :radio:, :radio_button:,
        :rage:, :railway_car:, :rainbow:, :raised_hand:, :raised_hands:,
        :raising_hand:, :ram:, :ramen:, :rat:, :recycle:, :red_car:, :red_circle:,
        :registered:, :relaxed:, :relieved:, :repeat:, :repeat_one:, :restroom:,
        :revolving_hearts:, :rewind:, :ribbon:, :rice:, :rice_ball:,
        :rice_cracker:, :rice_scene:, :ring:, :rocket:, :roller_coaster:,
        :rooster:, :rose:, :rotating_light:, :round_pushpin:, :rowboat:, :ru:,
        :rugby_football:, :runner:, :running:, :running_shirt_with_sash:, :sa:,
        :sagittarius:, :sailboat:, :sake:, :sandal:, :santa:, :satellite:,
        :satisfied:, :saxophone:, :school:, :school_satchel:, :scissors:,
        :scorpius:, :scream:, :scream_cat:, :scroll:, :seat:, :secret:,
        :see_no_evil:, :seedling:, :seven:, :shaved_ice:, :sheep:, :shell:, :ship:,
        :shirt:, :shit:, :shoe:, :shower:, :signal_strength:, :six:,
        :six_pointed_star:, :ski:, :skull:, :sleeping:, :sleepy:, :slot_machine:,
        :small_blue_diamond:, :small_orange_diamond:, :small_red_triangle:,
        :small_red_triangle_down:, :smile:, :smile_cat:, :smiley:, :smiley_cat:,
        :smiling_imp:, :smirk:, :smirk_cat:, :smoking:, :snail:, :snake:,
        :snowboarder:, :snowflake:, :snowman:, :sob:, :soccer:, :soon:, :sos:,
        :sound:, :space_invader:, :spades:, :spaghetti:, :sparkle:, :sparkler:,
        :sparkles:, :sparkling_heart:, :speak_no_evil:, :speaker:,
        :speech_balloon:, :speedboat:, :star:, :star2:, :stars:, :station:,
        :statue_of_liberty:, :steam_locomotive:, :stew:, :straight_ruler:,
        :strawberry:, :stuck_out_tongue:, :stuck_out_tongue_closed_eyes:,
        :stuck_out_tongue_winking_eye:, :sun_with_face:, :sunflower:, :sunglasses:,
        :sunny:, :sunrise:, :sunrise_over_mountains:, :surfer:, :sushi:,
        :suspension_railway:, :sweat:, :sweat_drops:, :sweat_smile:,
        :sweet_potato:, :swimmer:, :symbols:, :syringe:, :tada:, :tanabata_tree:,
        :tangerine:, :taurus:, :taxi:, :tea:, :telephone:, :telephone_receiver:,
        :telescope:, :tennis:, :tent:, :thought_balloon:, :three:, :thumbsdown:,
        :thumbsup:, :ticket:, :tiger:, :tiger2:, :tired_face:, :tm:, :toilet:,
        :tokyo_tower:, :tomato:, :tongue:, :top:, :tophat:, :tractor:,
        :traffic_light:, :train:, :train2:, :tram:, :triangular_flag_on_post:,
        :triangular_ruler:, :trident:, :triumph:, :trolleybus:, :trophy:,
        :tropical_drink:, :tropical_fish:, :truck:, :trumpet:, :tshirt:, :tulip:,
        :turtle:, :tv:, :twisted_rightwards_arrows:, :two:, :two_hearts:,
        :two_men_holding_hands:, :two_women_holding_hands:, :u5272:, :u5408:,
        :u55b6:, :u6307:, :u6708:, :u6709:, :u6e80:, :u7121:, :u7533:, :u7981:,
        :u7a7a:, :uk:, :umbrella:, :unamused:, :underage:, :unlock:, :up:, :us:,
        :v:, :vertical_traffic_light:, :vhs:, :vibration_mode:, :video_camera:,
        :video_game:, :violin:, :virgo:, :volcano:, :vs:, :walking:,
        :waning_crescent_moon:, :waning_gibbous_moon:, :warning:, :watch:,
        :water_buffalo:, :watermelon:, :wave:, :wavy_dash:, :waxing_crescent_moon:,
        :waxing_gibbous_moon:, :wc:, :weary:, :wedding:, :whale:, :whale2:,
        :wheelchair:, :white_check_mark:, :white_circle:, :white_flower:,
        :white_large_square:, :white_medium_small_square:, :white_medium_square:,
        :white_small_square:, :white_square_button:, :wind_chime:, :wine_glass:,
        :wink:, :wolf:, :woman:, :womans_clothes:, :womans_hat:, :womens:,
        :worried:, :wrench:, :x:, :yellow_heart:, :yen:, :yum:, :zap:, :zero:,
        :zzz:
    </div>

    <div class="tzx-drawer" shy>
    [line_blocks](#extension-line_blocks)

    :   | The limerick packs laughs anatomical
        | In space that is quite economical.
        |    But the good ones I've seen
        |    So seldom are clean
        | And the clean ones so seldom are comical

        | 200 Main St.
        | Berkeley, CA 94718

    </div>

    <div class="tzx-drawer" shy>
    `#extension-simple_tables`, `#extension-multiline_tables`, `#extension-grid_tables`, `#extension-pipe_tables`

    :   Tables

          Right     Left     Center     Default
        -------     ------ ----------   -------
             12     12        12            12
            123     123       123          123
              1     1          1             1

        Table:  Demonstration of simple table syntax.

        -------     ------ ----------   -------
             12     12        12             12
            123     123       123           123
              1     1          1              1
        -------     ------ ----------   -------

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

        ----------- ------- --------------- -------------------------
           First    row                12.0 Example of a row that
                                            spans multiple lines.

          Second    row                 5.0 Here's another one. Note
                                            the blank line between
                                            rows.
        ----------- ------- --------------- -------------------------

        : Here's a multiline table without headers.

        : Sample grid table.

        +---------------+---------------+--------------------+
        | Fruit         | Price         | Advantages         |
        +===============+===============+====================+
        | Bananas       | $1.34         | - built-in wrapper |
        |               |               | - bright color     |
        +---------------+---------------+--------------------+
        | Oranges       | $2.10         | - cures scurvy     |
        |               |               | - tasty            |
        +---------------+---------------+--------------------+

        | Right | Left | Default | Center |
        |------:|:-----|---------|:------:|
        |   12  |  12  |    12   |    12  |
        |  123  |  123 |   123   |   123  |
        |    1  |    1 |     1   |     1  |

          : Demonstration of pipe table syntax.

        fruit| price
        -----|-----:
        apple|2.05
        pear|1.37
        orange|3.09

        | One | Two   |
        |-----+-------|
        | my  | table |
        | is  | nice  |


        -------- -------- --------
        ![][001] ![][002] ![][003]
        ![][004] ![][005] ![][006]
        ![][007] ![][008] ![009]
        -------- -------- --------

    </div>

    <div class="tzx-drawer" shy>
    LaTeX

    :   tabular

        \begin{tabular}{|l|l|}\hline
        Age & Frequency \\ \hline
        18--25  & 15 \\
        26--35  & 33 \\
        36--45  & 22 \\ \hline
        \end{tabular}

        `#latex-macros`

        :   ```latex
            \newcommand{\tuple}[1]{\langle #1 \rangle}

            $\tuple{a, b, c}$
            ```

            $\tuple{a, b, c}$

        `#custom-writers`
    </div>

[001]: http://gnat-tang-shared-image.qiniudn.com/big-fish/11.png?imageView/2/w/200
[002]: http://gnat-tang-shared-image.qiniudn.com/big-fish/12.png?imageView/2/w/200
[003]: http://gnat-tang-shared-image.qiniudn.com/big-fish/13.png?imageView/2/w/200
[004]: http://gnat-tang-shared-image.qiniudn.com/big-fish/14.png?imageView/2/w/200
[005]: http://gnat-tang-shared-image.qiniudn.com/big-fish/15.png?imageView/2/w/200
[006]: http://gnat-tang-shared-image.qiniudn.com/big-fish/21.png?imageView/2/w/200
[007]: http://gnat-tang-shared-image.qiniudn.com/big-fish/22.png?imageView/2/w/200 {width=160}
[008]: http://gnat-tang-shared-image.qiniudn.com/big-fish/31.png?imageView/2/w/200 {width=160}
[009]: http://gnat-tang-shared-image.qiniudn.com/big-fish/32.png?imageView/2/w/200 {width=160 title="title is tooltip."}

</div>

\newcommand{\tuple}[1]{\langle #1 \rangle}
