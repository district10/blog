---
title: Koans | 呓语
date: 2015-12-25
---

Koans | 呓语
============

## `1494849129`{.tzx-timestamp} 毕设论文终于定稿了

Orz。效果：[tmorpher](tmorpher)。

## `1491962574`{.tzx-timestamp} TexStudio 让我想死……

一大早跑到机房写毕设。结果电脑卡死了（该死的 coding.net），
我就强制断电了。开机发现，写得东西一点都没有保存！！！！

感受不爱……Orz。蛋疼的 TexStudio 居然主界面上没有 Save All，
只有 Save。不爽。

有 auto save，现在我设置了两分钟自动保存全部。

一些 TexStudio 笔记：

-   c-t：切换 comment
-   m-p：preview（保存和编辑了会自动更新）
-   m-ENTER：close 最近的 environment
-   c-m-r：添加 ref
-   c-s-m：`$ ... $`
-   m-s-m：`\[ ... \]`

最后，多翻翻菜单栏。多翻翻文档：LaTeX2e unofficial reference manual (October 2015)。

## `1491793495`{.tzx-timestamp} 翻译了一份代码：SVD 分解

从 Python 翻译到 JavaScript，repo：<https://github.com/district10/svd.js>，
link：<http://tangzhixiong.com/svd.js/>。

```
Pure JavaScript SVD algorithm.
Input: 2-D list (m by n) with m >= n
Output: U,W V so that A = U*W*VT

-   Translated from python code by TANG ZhiXiong
-   GitHub: https://github.com/district10/svd.js
-   Origin: http://stitchpanorama.sourceforge.net/Python/svd.py
-   FYI: http://stackoverflow.com/questions/960060/singular-value-decomposition-svd-in-php

Usage:
       var a = [
           [22.,10., 2.,  3., 7.],
           [14., 7.,10.,  0., 8.],
           [-1.,13.,-1.,-11., 3.],
           [-3.,-2.,13., -2., 4.],
           [ 9., 8., 1., -2., 4.],
           [ 9., 1.,-7.,  5.,-1.],
           [ 2.,-6., 6.,  5., 1.],
           [ 4., 5., 0., -2., 2.]
       ];
       var ret = svd(a);
       var u, w, v;
       if (ret) {
           u = ret[0];
           w = ret[1];
           v = ret[2];
           _print(a);
           _print(_mult(_mult(u,_diag(w)), _trans(v)));
       }

a:
22.0000, 10.0000, 2.0000, 3.0000, 7.0000
14.0000, 7.0000, 10.0000, 0.0000, 8.0000
-1.0000, 13.0000, -1.0000, -11.0000, 3.0000
-3.0000, -2.0000, 13.0000, -2.0000, 4.0000
9.0000, 8.0000, 1.0000, -2.0000, 4.0000
9.0000, 1.0000, -7.0000, 5.0000, -1.0000
2.0000, -6.0000, 6.0000, 5.0000, 1.0000
4.0000, 5.0000, 0.0000, -2.0000, 2.0000

u:
-0.7616, 0.0379, 0.0327, 0.3223, -0.3461
-0.4178, 0.4459, 0.2221, -0.0775, 0.3770
0.3154, 0.6640, -0.1874, 0.5128, -0.3666
0.1410, 0.5085, 0.3697, -0.5751, -0.1564
-0.2147, 0.2456, -0.1733, 0.0158, 0.4192
-0.2003, 0.0883, -0.7572, -0.5142, -0.2866
-0.1881, -0.0804, 0.3925, -0.1779, -0.4591
-0.0667, 0.1605, -0.1426, 0.0095, 0.3325

w:
35.8239
22.5059
12.8341
8.7674
0.7442

v:
-0.7738, 0.3720, -0.4094, 0.2754, 0.1390
-0.4619, -0.1952, 0.2317, -0.2966, -0.7790
-0.1790, -0.2500, 0.6207, 0.7167, 0.0805
-0.2581, -0.8447, -0.2718, -0.1625, 0.3457
-0.2986, 0.2177, 0.5653, -0.5441, 0.4978

u*w*vt:
22.0000, 11.8959, 6.9361, 5.6570, 6.9047
14.0000, 5.5994, 1.4751, -5.1813, 8.7755
-1.0000, -9.8144, -4.0513, -15.7103, -4.0624
-3.0000, -1.8820, -4.4440, -11.4825, 6.3507
9.0000, 1.6742, -1.2616, -1.9949, 2.3226
9.0000, 2.1794, -8.4919, 3.4745, -0.5710
2.0000, 5.3613, 3.6399, 2.0334, 5.1442
4.0000, -0.2417, -1.5314, -1.8642, 0.5440
```

不过，好像精度不咋地。

## `1488724432`{.tzx-timestamp} NexT 博客风格

Hexo 的这个博客风格，第一次看上去还可以，再看几眼就十分反感。
尤其那个讨厌动态呈现出来的侧边栏。

之前还吐槽过这个风格的翻页：

```
## `1461148072`{.tzx-timestamp} 个人博客真的需要分页吗？

当然最主要的入口 index.html 自动加载几篇文章，分页一下，是可以理解的。但 Archive 里，还分页，
就不可原谅了，比如 <http://artwalk.github.io/archives/page/2/>，这居然分了 22 页！
```

## `1485604404`{.tzx-timestamp} 从一张图片里重建头发

[Democratizing Human Digitization | Hao Li | TEDxHollywood - YouTube](https://www.youtube.com/watch?v=RBytZiKSiSU),
12:21 秒处:

[![](http://imglf2.nosdn.127.net/img/cXkrRlR2ZnlJNE41Q01LVjlnQ0NUb1hwakYxaURCVGM5VkpLSzl0QlNtTjk2eE9INzVPSFFRPT0.png?imageView&thumbnail=1680x0&quality=96&stripmeta=0&type=jpg)](http://dvorak4tzx.lofter.com/post/1d4021c8_df83a62)

See [Hao Li - about me](http://www.hao-li.com/Hao_Li/Hao_Li_-_about_me.html).

## `1485369170`{.tzx-timestamp} 在家和在学校的区别

在学校洗热水脚, 在家洗冷水脚.

因为在学校太冷...

在家太热...

## `1484395852`{.tzx-timestamp} 从今天开始在中文里使用英文标点

`我觉得，这很不错` 以后要写成 `我觉得, 这很不错`。

主要考虑的在是没有正确处理 east asian line breaks 的写作系统，
这样的写法有一定的兼容性。比如：

```
中文啊，
是中文
```

在普通的 markdown 环境下会被渲染为

```
中文啊， 是中文
```

（有一个多余的空格）

如果用英文标点，则可以巧妙地避免这个问题：

```
中文啊,
是中文
```

则会被渲染为

```
中文啊, 是中文
```

（正好有一个空格）

## `1483710437`{.tzx-timestamp} 脑残的键盘布局设计

比如 Vim，left/down/up/right 分别是 h/j/k/l。
我觉得应该弄成 j/k/l/; 要好得多。
和 WASD 应该换成 ESDF 同理。

## `1483100569`{.tzx-timestamp} Java 的 RegEx 的 group count

```java
Matcher m = p.matcher(s);
if (m.find()) {
    int count = m.groupCount();
    for (int i = 0; i < count; i++) {
        System.out.println(m.group(i));
    }
}
```

这样不能打印出所有的 group，因为 `group[0]` 是 whole match（也就是你的 s）……

我不能说这样设计有什么不好，相反地，我惊讶于程序设计中下标从 0 开始的巧妙。

但这代码不和预期……实在有点出乎我的意料。

## `1482975817`{.tzx-timestamp} 规范的重要性

由于改版后转发功能太流行，豆瓣的广播已经不能用了。
（看看人家 Bilibili 和 v2ex 在这个方面规范得多好！）#豆瓣药丸#

## `1482930434`{.tzx-timestamp} qshell 实在不好用

命令行下上传文件到自己的七牛，都是用了 qrsync，
但是官方已经不支持这个工具，改推 qshell。

但 qshell 实在太复杂，太难用。
而且特么的，用了以后会在当前目录产生一个 `.qshell` 文件夹。
这是不可饶恕的错误。

你到我家目录或者 /tmp 下面随便存 cache 我真的一点都不介意，
你在我当前目录下乱搞那就大大的不行！

于是，继续用 qrsync 吧。反正还能用。

外槽一个：七牛的 bucket 文件搜索我就没成功过。刚才试了 qshell 的
搜索，也是失败。这产品也真是屎一样。

但我现在找不到更好的屎……（估计找到了也懒得迁移。）

## `1482930233`{.tzx-timestamp} 人不美声不甜

歌舞青春里的 Vanessa Hudgens 声音也太难听了……

听着我难受。

还是我 Zard 甜 ==。

## `1482838643`{.tzx-timestamp} Windows 唯一让我不满的

就是 Emacs 不能正常地跑起来。我决定重新 GET Emacs，
这次不搞花样，坚决不定制。只使用默认的配置。
一个插件都不装，最好一行配置都不写。

张五常说得好：学习要从假设大师是对开始。

Emacs 默认的，就是我要掌握的！而且，我不用 evil-mode！

吐槽：emacs 25 在 Win10 上不能很好的跑起来（看文档的时候会卡），emacs 24 没有这个问题。
所以啊，特么不要总想着尝鲜。

## `1482721289`{.tzx-timestamp} chsh 到 zsh

试了很多遍，居然都无效。百思不得其解。

我又不想把 `bash` alias 到 `zsh` 或者直接用 ln，或者直接覆盖二进制。
最后我决定在 rc 文件里面进行判断：

“如果我现在 bash，则跳转到 zsh。”

第一件事：如何知道我是在 bash 还是 zsh？

[linux - How to tell which unix shell I am using? - Stack Overflow](http://stackoverflow.com/questions/3349370/how-to-tell-which-unix-shell-i-am-using)

```
echo $0
```

添加到 `.bashrc` 的时候惊觉：

>   我都用到 `.bashrc` 了……我肯定在用 bash 啊！

于是在里面直接添加 `zsh`，问题解决。

唯一的麻烦是推出的时候要先推出 zsh 这一层，再退出 bash 这一层。

## `1482652433`{.tzx-timestamp} 音量混合器开机就重置

我已经被 Windows 时不时的错误声音打败了，
比如移动光标到文末，哪怕只多移动一次，
系统也要发出蛋疼的提示音。

可以在【音量混合器】把系统声音调低。我之前就这么做。

但这种蛋疼的设置每次开机都要再来一遍，因为它又重置了！

发现一个不错的解决方案：把 Windows 的声音方案设置为【无声】。

看我的截图：[Window 声音设置。-dvorak4tzx](http://dvorak4tzx.lofter.com/post/1d4021c8_d6bd2cb)

## `1482552122`{.tzx-timestamp} 裸贷

在豆瓣上看人说裸贷人信息被曝光，实在不懂为啥这都有人关注。

曝光就曝光啊……这事儿还少吗？

结果……我还是太年轻，这个“裸贷”的“裸”不是“裸婚”、“裸考”的“裸”（没有准备、没有资本），
是“裸体”的“裸”（没有穿衣服）。我以为是打白条啥的，之前想的是人傻钱多
连人家抵押都不看就给人借钱，现在要不回来钱了。

我还是太年轻。

## `1482310134`{.tzx-timestamp} Markdown 的注释

写代码你可以注释，不需要处理的代码就 comment out。
写 Markdown 呢？一篇文章写出来，总是有点草稿的，每次都忍痛割爱删掉，可能下次还要再敲一遍。
所以我一般都写到某个特定的 class 的 div 里，再用 CSS 把它们隐藏。

可惜这种方法既不优雅也不通用。
机智如我如果一下就 bing 到了：[syntax - Comments in Markdown - Stack Overflow](http://stackoverflow.com/questions/4823468/comments-in-markdown)。

你可以用下面这些：

```
[comment]: <> (This is a comment, it will not be included)
[comment]: <> (in  the output file unless you use it in)
[comment]: <> (a reference style link.)
[//]: <> (This is also a comment.)
[//]: # (This may be the most platform independent comment)
```

>   `[//]: # "Comment"` and `[//]: # (Comment)` seem to work on a wider variety of implementations, because `#`
>   is a valid relative URI. GitHub, for example, rejects `<>`, and the entire line becomes visible.
>   It's also worth noting that link labels often need to be separated from other content by a blank line.
>   – [Zenexer](http://stackoverflow.com/users/1188377/zenexer) Mar 5 '14 at 0:17

真是机智！我突然想到以前在简书我用过这个 trick
^[用 `[url]: file://...` 来获得一个高亮了的，但不能点击的链接，比如这篇：[WhuRS 实习报告（Draft by TZX） - 简书](http://www.jianshu.com/p/ae6f53cd27e3)。]
。

我决定以后用：

```
[^_^]:
    commentted-out contents
    should be shift to right by four spaces (`>>`).
```

亲测可用（Pandoc、GitHub、简书、作业部落）。十分完美，除了这个 warning：

```
pandoc: Duplicate note reference `^' "source" (line 85, column 1)
```

如果你想测试一下你的 Markdown 能不能这么用，这是一点测试的文字：

```
a

[^_^]:
    b

    c

d

e
```

a

[^_^]:
    b

    c

d

e

显示的 a d e 应当间隔一样长。

（在 v2ex 上发了一个帖子：[Markdown 要注释还要萌 - V2EX](https://www.v2ex.com/t/329205#reply0)。）

[^_^]:
    就是这么赞。

## `1482126583`{.tzx-timestamp} 人有两种怂

第一种是看到老人倒在地上你不敢扶；

第二种是这老不死的要讹你，你不敢当场一脚踹死他。

## `1482124652`{.tzx-timestamp} 用品味来排斥人最便宜最有效

这当然是不对的。因为品味撑死算一种选择，选择 is cheap。

这让我想到知乎上高天的一段话：

>   为什么现代“城府深”的女人被骂心机的多？原因前面说了，她们城府并不深啊！
>   【只是喜欢面前装无辜，背后捅刀子而已。这是个选择，而不是能力。】
>   而且现代所谓“城府深”的女人，大多最终目的就是争个男朋友，或者备胎，
>   或者“白富美”的称号，就这个浅显的目的，也未免太让人看不上眼了。
>
>   最后，这绝不是一篇黑现代女人只会抢男人，大事都是男人去做的答案。
>   只是想说明现在很多被说“有城府”的女人，真心谈不上“有城府”，最多算是个“脸皮厚”。

但是用品味来排斥人简直不能更有效，屡试不爽。为啥？
不是因为世上蠢蛋太多，而是因为蠢到无法“反射”的人类，太多。

哦，我想吐槽豆瓣上的一个人，最后发现根本不需要
码字三百来打败他，只需要：

>    你特么居然给《小时代4：灵魂尽头 (2015)》打了 10 分？！（豆瓣网友也只给了 4.6 分。）

作为一个具有“反射”能力的码农，我当然知道这句话只是用来打嘴仗的，
根本不是正当打击手段。

（与邻为善，我现在也不打嘴仗。）

## `1482085335`{.tzx-timestamp} UTF-8 BOM

原来 notepad++ 的 utf-8 有无 bom 的区分是“UTF-8”和“UTF-8 without BOM”，
现在是“UTF-8 BOM”和“UTF-8”。

之前的说法好像暗示了没有 BOM 是什么损失似的。
实际上，没 BOM 是好，有 BOM 是罪。

所以这条不是吐槽不是 koan，只是一个令人欣喜的小发现。

## `1482084858`{.tzx-timestamp} Mendeley 的 citation key 怎么找不到？

开始我以为是有些字段没有设定，所以不能导出 BibTeX。
不过刚才发现其实不是的，只要你右键对着它，“Copy as” -- “BibTeX Entry”，
这个字段就有了。

（你可能需要点一下另一个文献，然后再重新选中这个，视图才会更新。）

Mendeley 大法好！
BibTeX 大法好！
Pandoc（markdown 直接转到 docx，然后拷贝到开题报告）大法好！

## `1481992780`{.tzx-timestamp} 特地去查了一下《人类清除计划》

发现评价不高。所以我还是不看了。有感于：

-   [如何看待民生银行性骚扰事件？ - 知乎](https://www.zhihu.com/question/53381416)

-   今天在图书馆碰到的一个死老头子

    :   这个老头没有带卡，然后硬闯，被保安拦住。声称自己是职工，还威胁保安说你拦我我让你饭碗不保。
        态度太嚣张。我想打他。

        他旁边还有个死老太婆，似乎要为自己老公的英勇点赞。呵呵呵。

## `1481627484`{.tzx-timestamp} 四件事让人感到蛋疼

有感于今天把 PR（Public Relations）当成了 PR（Pull Request）/PR（Personnel Resources）。

这四件事层层递进，一个比一个（令人）蛋疼：

1.  有个开源项目死了；（前途未卜）
2.  有人提出 request to take over 这个项目；（壮士接盘）
3.  原作者没有回应；（Who the fuck are u？/你算老几？）
4.  项目好像又活了……（I don't mean you，I mean all of you。Are bullshit。）

（Request 这个词真有意思。）

## `1481215505`{.tzx-timestamp} 七牛流量要爆……

收到邮件说 11 月份的账单居然有 13.38 元……之前一般都在免费额度内，
或者只是超了一点，大概两三块钱的样子。这次居然流量费有十几块，Orz。

我以为是有人在下载我的什么大文件，比如我编译的 qt 二进制，那些东西
我一般放在 whudoc 这个 bucket。但查了日志，不是的。

![这个趋势不太妙……我是该哭还是笑……](http://whudoc.qiniudn.com/2016/2016-12-09_00-41-52.png)

![流量都是 tangzx 的，也就是我的博客](http://whudoc.qiniudn.com/2016/2016-12-09_00-44-07.png)

好吧，如果可以。如果你还不是七牛用户，可以用我的注册链接，
互利：<https://portal.qiniu.com/signup?code=3ld4krtl7yzbm>。

鉴于我的图片都放在了 whudoc 这个 bucket，我就不知道为啥博客流量这么大了……

![我的文件一般都放在 whudoc](http://whudoc.qiniudn.com/2016/2016-12-09_00-59-28.png)

谢谢。

（显然不是广告，因为我是个有原则的人，从来不硬广。你知道我最喜欢这篇文章了：
[《生活方式》](#%E8%9F%B9%E7%85%B2%E9%A5%AD%E5%91%B5%E5%91%B5%E8%9F%B9%E7%85%B2%E9%A5%AD)（页内链接）。）

刚才翻了日志，有如下发现：

```
12 月 2 号，有人 curl 我的 about 页面 4000 多次：
127.0.0.1 - 12 [02/Dec/2016:19:11:46 +0800] "GET http://tangzx.qiniudn.com/about.html HTTP/1.1" 200 717 "-" "curl/7.19.7%20(x86_64-redhat-linux-gnu)%20libcurl/7.49.0%20OpenSSL/1.0.1e%20zlib/1.2.3%20libidn/1.18"

然后是各种搜索引擎，比如 yandex，google，bing，mozilla，yahoo（大约 1/5 是搜索引擎贡献的）：
93.158.152.68 - 53 [03/Dec/2016:12:22:39 +0800] "GET http://tangzx.qiniudn.com/baidu_verify_spDIlkgEJR.html HTTP/1.1" 200 712 "-" "Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)"
203.208.60.208 - 5 [03/Dec/2016:16:50:41 +0800] "GET http://tangzx.qiniudn.com/robots.txt HTTP/1.1" 200 715 "-" "Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)"
40.77.167.71 - 86 [03/Dec/2016:14:22:02 +0800] "GET http://tangzx.qiniudn.com/notes/highlight.css HTTP/1.1" 200 1300 "-" "Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11A465 Safari/9537.53 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)"
68.180.228.121 - 9 [07/Dec/2016:13:17:22 +0800] "GET http://tangzx.qiniudn.com/robots.txt HTTP/1.1" 200 668 "-" "Mozilla/5.0 (compatible; Yahoo! Slurp; http://help.yahoo.com/help/us/ysearch/slurp)"
216.244.66.247 - 0 [07/Dec/2016:07:43:48 +0800] "GET http://tangzx.qiniudn.com/robots.txt HTTP/1.1" 200 664 "-" "Mozilla/5.0 (compatible; DotBot/1.1; http://www.opensiteexplorer.org/dotbot, help@moz.com)"
```

IP 地址: 89.7.71.69 西班牙，这人特么只 GET 我的 js 文件……不要用我的流量啊混蛋！

~~`1483190502`，12 月份的流量费有 22 块……我觉得这样我简直要消费不起了（这钱可以用来买 VPN 的），所以把我流量最大的
bucket 关闭了公开访问。~~计划写一个工具，用 Java 把自己的博客上的所有 `<a>` 和 `<img>` 的相关 bucket 的链接全部换成
定期失效的 url。参考：[下载凭证](http://developer.qiniu.com/article/developer/security/download-token.html)。

链接不能失效。不能辜负组织的信任……

## `1481169117`{.tzx-timestamp} Markdown 语法的错

最近成了 Java 脑残粉，还写了好几个工具自己用。甚至我想把自己转换 Markdown 的工具从
pandoc 换成 Java 的……看了一下 GitHub 上有这个：[sirthias/pegdown: A pure-Java Markdown processor based on a parboiled PEG parser supporting a number of extensions](https://github.com/sirthias/pegdown)。

不错不错。当然我暂时不会换掉 pandoc，因为不想改自己的 workflow。
但作为一个文本处理的 Java 源码，似乎很值得看看。

它的文档里有这么几句：

```
Note: pegdown differs from the original Markdown in that
it ignores in-word emphasis as in

> my_cool_file.txt
> 2*3*4=5

Currently this "extension" cannot be switched off.
```

我觉得这是 Markdown 设计的失误。

## `1481075605`{.tzx-timestamp} 都是成都的错

我的使用经历中，`cd` 有 30% 的可能性会打成“成都”。
如果只算刚切换到命令行环境输入“cd”，这个比例可能
会有 80%。

现在对成都产生了厌烦情绪。这锅只得成都背……

## `1480917771`{.tzx-timestamp} 你没错，真的是它蠢，而不是你蠢……

昨天调 XML 输出的 encoding 弄了好久，把 xmlSerializer 换成
javax 的 transformer 才好。可惜不过缩进失效了……

查了，加了这句：

```java
transformer.setOutputProperty(OutputKeys.INDENT, "yes");
```

不过没用。

刚又查了一下，翻到 [Java: How to Indent XML Generated by Transformer - Stack Overflow](http://stackoverflow.com/questions/1384802/java-how-to-indent-xml-generated-by-transformer)，才发现还要加上：

```java
transformer.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", "2");
```

因为即使 INDENT 设置为 yes，它默认的 indent 量是 0……等于没有 indent……

有人回复说：

>   Seems silly to me that the default indentation is 0, but in addition to
>   `INDENT=yes` I also had to add this:
>   `t.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", "2");`

简直了。这是 API 设计的败笔。你干脆别提供 `INDENT=yes` 这个选项啊！
告诉大家要想 indent 就自己设置 amount，不想 indent 就用 0。这不就得了！

## `1480234274`{.tzx-timestamp} 这个胸。。。。。。Orz

从好看的角度看，我觉得《冰与火之歌》里面最赞的是 Ygritte，然后是 Shae，然后是 Yara Greyjoy（Theon 的妹妹）。
我的印象中她（Yara）是这样的：

![](http://whudoc.qiniudn.com/2016/snipaste20161127_161352.png)

不过刚在 [wikia](http://gameofthrones.wikia.com/wiki/Yara_Greyjoy) 上看到的是这样……：

![](http://whudoc.qiniudn.com/2016/Game_of_thrones_6x5_yara_promo.jpg)

## `1480131571`{.tzx-timestamp} 英文博客

每当看到 x 国人的 x 语博客我都是抓狂的……因为不认得。
每当看到用英文写博客的 x 国人，我就很感动。。。。。。

以后我也要用英文写博客。计划，以后的博客，总是中文一段英文一段。
对着写。

## `1480054483`{.tzx-timestamp} 该死的百度云盘

《风月俏佳人》已经不能看了。提示我里面有少儿不宜的内容……（逗我？！）

感觉东西放在上面，太太太不靠谱了。

关键还有，明明没有上传完，就显示成功，然后发现之前传得几个视频都只能看一半。
害我辛辛苦苦从 Youtube 搬运过来，居然只有一半。

## `1480034795`{.tzx-timestamp} 互联网公司校招第二春

最近百度和搜狗都开始新招人了……之前刷得太多了么。。。。。。

这在两个公司的笔试我都没参见……

>   **2017搜狗校招持续进行，快把简历砸过来！！**
>
>   冬天来了，你是否还躺在被窝？
>
>   是否有一身本领，却无人诉说！
>
>   是否着急还没拿到 Offer？
>
>
>   虽然校招已经结束，但我们对你的渴望还在继续！
>
>   为吸引广大有志之士，搜狗开通简历大投递，只要你优秀，只要你想来，搜狗随
>   时欢迎你！
>
>   我知道你受够了等待，等待校招漫长的安排，这一次，无需徘徊，最快的速度给
>   你想要的安排！
>
>   职位招募：
>
>   机器学习研究员、自然语言处理研究员、推荐系统研究员、图像处理研究员、语音识别研究员、
>
>   C++开发工程师、java开发工程师、前端开发工程师、Android开发工程师、测试开发工程师、
>
>   产品经理等。职位详情请查看附件。

只要你优秀，哈哈哈。

## `1479693578`{.tzx-timestamp} 百度网盘

百度网盘的英文是“NetDisk”。但是安装后我 <kbd>WIN</kbd> + <kbd>S</kbd> 搜，
中文或是英文，都搜不到。

客户端其实是“百度云管家”，但是也搜不到。只能到目录下去运行……
`D:\ProgramFiles\BaiduYunGuanjia\baiduyunguanjia.exe`，好的，现在把他固定到任务栏。

Asshole。

## `1478520654`{.tzx-timestamp} 豆瓣你是傻（缺）么？

给我发了个豆油：

>   **抱歉，你发表的内容已被移除**
>
>   非常遗憾，你发表的对 第二版出版需要您的支持！
>   <https://book.douban.com/review/6310228/> 的回复 因为含有违反相关法律法规或管
>   理规定的内容已被移除，系统已将原文发往你的登录邮箱。
>   谢谢你的理解与支持。
>
>   —— 系统邮件中心

我去我的邮箱看了，是我 4 月 2 号的回复，原文是：

>   已经出版了。在网站上可以免费看：<http://eloquentjavascript.net/>

这个免费看，是原作者自己搭建的主页，自己提供的免费看啊！
豆瓣你是傻么？

## `1478224792`{.tzx-timestamp} 少了 magic number

才反应过前天面试的时候哪儿出问题了……

我少加了一个标志位……

如果没有这个标志位，随意一个文件就能 init，于是就傻逼了。

shi……t。这么重要的一点。

不过那个 VS 也是蛋疼，我还是用自己的账户登录的（Community 版本已经试用完毕，登陆了才能用）。
用 print 也能 bug。

## `1477579730`{.tzx-timestamp} IntelliJ IDEA 的不足之处

说不足不是因为它不好。相反，IJ 好到我要给三十二个赞。最近（学）写 Java，帮了我大忙。

但有一点，默认字体的字体不够等宽：

![](http://whudoc.qiniudn.com/2016/idea64_2016-10-27_22-51-35.png)

## `1477129561`{.tzx-timestamp} 骚扰电话神烦

饱醉豚有段时间一直在推广一个邮箱，向使用这个邮箱的人发邮件，必须支付一笔费用，
比如 10 块钱。不然你不能给他发邮件。

我觉得好棒，同时想知道有没有这样的电话。想要给我打电话，也得支付 10 块钱（我才
不管这钱交给谁，但特么给我打电话，必须先付十块钱）。

当然，也不一定要收钱，答对问题也可以，比如在
5 秒内写出 sin 函数的不定积分，
50 秒内写一个 binary search，
或者 500 秒敲出 1000 个单词。

`1477205673`{.tzx-timestamp} 我现在想把智联招聘的总部炸了。

<div class="tzx-hide">
## `1473258014`{.tzx-timestamp} 人和人的价值观差异真的可以很大

我和 [V2EX › zhongkaixin](https://www.v2ex.com/member/zhongkaixin) 大概是截然不同的。

比如在这个节点下他的留言：

[我想问问做技术的各位们，有没有转业的想法。 - V2EX](https://www.v2ex.com/t/304565#reply17)

>   每月那几 K 、十几 K 的工资根本不足以弥补缺少给人交流带来的损失：
>
>   1 、心理状态不好的眼前损失。
>   2 、导致性格变得越来越内向、木讷的长久损失。
>
>   ---
>
>   @xzg1993 对于大部分人来说，都会受不了每天对着电脑思考程序， 8 小时对着电脑
>   已经够损了，还要用抽象的程序语言跟电脑说话，久而久之，变内向是肯定的。
>
>   你感觉到致命还不可怕，可怕的是你干了 10 年，已经习惯了每天对着电脑写代码。
>   忽然让你对着活人特别是 N 个活人的时候，你开始手足无措语无伦次，这才是最可怕的。
>
>   ---
>
>   @sherlocktheplant “享受孤独”？很鸡汤的词汇。
>
>   @GhostEX 在这个行业呆上 10 年 8 年，要么混成领导，要么就走技术方向就是我说
>   的这种状态。毕竟领导的位置是少数，再说领导不通过一些手段宫斗之类的是上不去
>   的，位子好多人盯着呢、
>
>   ---
>
>   另外，别被 V2EX 上的高富帅程序员迷乱了自己的眼睛，他们要么在北上广买房要么
>   肉翻到美国欧洲，当新闻联播看看就行。现实还是要面对的。

还有这个：

[微信要出应用号， APP 以后真的用不上了吗？？ - V2EX](https://www.v2ex.com/t/304233?p=2)

>   @codefalling 微信可不是输入法，只要用户体验好就行。你可以不用微信，但你的朋
>   友你的圈子都用微信，你宁愿扔了自己的生活圈子也不愿意扔那个几千块的手机？
>
>   ---
>
>   @murmur 第三方输入法可以没有，微信不可没有，当然对于那些铁杆果粉，可以不顾一切的选择苹果。但对于普通人，没微信的苹果他们不会选择。

除了价值观的差异，我不评价其他。
</div>

## `1472516374`{.tzx-timestamp} 关闭 ShareX 的更新

See [Avoid annoying "new version" window on startup · Issue #527 · ShareX/ShareX](https://github.com/ShareX/ShareX/issues/527)。

吵起来了 ==。

我加了一句：

>   Annoyed too. Go `Application Settings...` -- `Advanced`, and switch `Application/AutoCheckUpdate` to false.

## `1472387723`{.tzx-timestamp} 人在两种情况下，是最乐于助人的

一是当你“有余力”的时候。

二是当你“求解脱”的时候。

有感于 [长大以后，你悟出过哪些不一样的道理？ - 张斯托洛夫斯基的回答 - 知乎](https://www.zhihu.com/question/29064753/answer/52196916)：

>   其实“性格好”“讲道理”往往是身体健康精力充沛的人才有资格表现的品质。
>
>   和人一起爬山，有人两步就嚷嚷累，不一定是他毫不在意出游的气氛，可能是他身体
>   弱容易觉得累。这时有人接过他的包就扛在自己肩上，固然是这人慷慨相助，但也是
>   他体力充沛，以至于不觉得帮人拿个包有什么了不起的。
>
>   我以前觉得只要努力，就可以意识集中，可以提高工作效率，可以温柔地对待任何自
>   己想要温柔对待的人。但在身体状况不好的时候我发现，控制情绪的难易程度和身体
>   状况是息息相关的，意志力能解决的问题比我想象中的少得多。人们眼中的奇葩可能
>   很想成为让人们喜欢的人，只是没有办法。
>
>   身心健康，身在心前。正在经受身体痛苦的人很难保持内心不扭曲。

## `1472097056`{.tzx-timestamp} Brain Fart...

A:

>   Great explanation, but why is your function called fibo? That's not
>   Fibonacci; it's f(n) = Binomial(n+1,2)

B:

>   Total **brain fart**. I got upvoted 20 times and nobody pointed that out!

see [algorithm - What is tail recursion? - Stack Overflow](http://stackoverflow.com/questions/33923/what-is-tail-recursion).

## `1471263637`{.tzx-timestamp} Vim 的一点蠢

Vim 是我的大爱，但也不得不批评一下 Vim 的蠢。

打开搜索的 ignore case，会方便很多（不管对哪个文字处理软件而言都一样）。

但如果我打了大写字母，那就严格搜索啊！

我都手动打了大写字母，还不能明白我的意图么？

我记得 Emacs 是有这个贴心的功能的。可是 Emacs 平台一致性不够好，
而我 Windows 和 Linux 几乎是轮着用。

我喜欢一致的体验。

`1490949112`{.tzx-timestamp}：其实 Vim 的 smartindent 就是干这个的……

<div class="tzx-hide">
## `1470067454`{.tzx-timestamp} 爱可可老师分享了我的 post……

[《用 CvANN_MLP 进行路牌判别》by 唐志雄 来自爱可可-爱生活 - 微博](http://weibo.com/1402400261/E1xsWvZ47)

这么叼，已被吓尿==
</div>

## `1469932751`{.tzx-timestamp} 为什么这么多手环产品，却没有脚环？

我没有手环。但我看陈姑娘的小米手环似乎不错，还可以记录自己的睡眠（其实我是想炫耀自己睡眠质量高）。

手环戴在手上很麻烦，尤其是我有手表的情况下（有些人可能会戴佛珠，镯子，等等，总之手上已经没地方给手环用了）。
为什么没有“脚环”呢？

或许是脚环总让人觉得这是镣铐，感觉不自在。但我更相信，手环比脚环最大的优势是：

**别人一眼就看得到你的手环。**

这样一来使用者感到自己特有面儿（really？），手环自己也无形获得了一条推广渠道。
是啊，戴脚上存在感太低啦！

## `1469762846`{.tzx-timestamp} 一个妈妈和一个孩子

最近一直在图书馆，连续两三天看到一个妈妈在教（叫）一个孩子做题。
我想她是失去了耐心，一直在说（大意）“你这样磨磨蹭蹭，啥都做不好。快认真看，不要
偷懒。”，而孩子则一直嘟嘟囔着。

“我给你讲，越耽误时间，越慢，越不想写。我给你讲，不想写你也要给我写完呢。不如好好写。”

连我的奶奶都知道“打啊骂啊说啊有什么用？要鼓励，小孩子才愿意学好。”，这才是大智慧！

## `1469506094`{.tzx-timestamp} 思维导图毁一生

高中的时候经常画这玩意，我不能说它没用，只不过，太浪费时间
（我只能说《思维导图》这本书（特么还是在 99 读书人买的……）我看了之后，还送给我朋友了，现在想想那时坑人家）。

刚才 jinge 发来一个 repo 的链接：[TeamStuQ/skill-map: StuQ 技能图谱](https://github.com/TeamStuQ/skill-map)，
这货的网页上的内容少得可怜，思维导图要点七八下才能看到“叶子节点”，关键是叶子结点啥都没有！

这可真是图谱啊！

## `1469504976`{.tzx-timestamp} satoren 竟然 star 了我的 repo！

satoren 是 kaguya 的作者：[satoren/kaguya: C++ binding to Lua](https://github.com/satoren/kaguya)。

我还给它打包了一个 standalone 版本：[4ker/kaguya at standalone](https://github.com/4ker/kaguya/tree/standalone)。

他居然 star 了我的 cmake-templates~

## `1469146812`{.tzx-timestamp} 真心不想混 SegmentFault 了

主要原因如下：

-   大多数问题都问得很不专业，让人不想回答或者无法回答
-   有些人问了问题就走了……
-   喜欢用“大神”之类的字眼，让人心里不舒服

那，为什么不用 StackOverflow 呢？

因为网速捉急，访问起来满得要死。

## `1468722074`{.tzx-timestamp} 发现 git 的 bug 一枚

```bash
$ git checkout --orphan gh-pages
Switched to a new branch 'gh-pages'

$ ls
CMakeLists.txt  Configs.h.in  include/  main.cpp  Makefile  README.md

$ rm -rf        Configs.h.in  include/  main.cpp  Makefile  README.md

$ git status
On branch gh-pages

Initial commit

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)

        new file:   .gitignore
        new file:   CMakeLists.txt
        new file:   Configs.h.in
        new file:   Makefile
        new file:   README.md
        new file:   include/rapidjson.zip
        new file:   main.cpp

Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

        deleted:    Configs.h.in
        deleted:    Makefile
        deleted:    README.md
        deleted:    include/rapidjson.zip
        deleted:    main.cpp


$ echo "TODO: use jQuery to grab contents." > index.html
$ git add -A
$ git status
On branch gh-pages

Initial commit

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)

        new file:   .gitignore
        new file:   CMakeLists.txt
        new file:   index.html
```

发现了么？

checkout 到一个新的 branch，要 commit 一次，才会摆脱原来 working directory 对
git branch 的影响。

## `1468513172`{.tzx-timestamp} 被玷污的 Vim 剪切板

有些 Vim 配置会自做主张地把 GUI 的寄存器和 vim 内部的寄存器混淆，
真是让人厌烦。

这样一来，你发现 `"+p` 没用了，然后又发现 `p` 的时候居然两者会混淆。
这种感觉，就像是一台

## `1468392423`{.tzx-timestamp} GitHub 的新字体

GitHub 全站似乎换了字体。感觉整体变细了。

我有一种不好的预感。

你知道很多人都把小当成精细，当成美。

就跟 sb OS X 系统一样，retina 的显示器，字体弄那么小，
还以此为“美”，无语。

## `1467819252`{.tzx-timestamp} 真是无力吐槽一份代码

C++ 11 的 auto 类型被滥用的一个典型大概长这样：

```cpp
auto sum( int a, int b )
{
    return a+b;
}
```

想骂娘了我！auto 可以用在替换 `vector<T>::iterator` 这类很长的类型，
这你明明就定死了是 int，还特么要用 `auto`，关键是还多一个字母！

尤其是这是一个小程序，完全没有必要用 C++11（每用一个高标准，可以一次性把代码跑
起来的人就少了好多，这就跟一个小工程，要用很多大库（的一小部分功能）一样（愚蠢
！）！）。

## `1465996784`{.tzx-timestamp} 愚蠢的迅雷

如果你新建任务的时候，剪切板里有大量的链接，迅雷会卡死。
因为它正在尝试导入这些潜在下载任务。

才 80000 个链接就卡死了？！我只是想下载 flickr 的一个数据集而已……

## `1465548990`{.tzx-timestamp} Kindle 新版本横屏阅读

在设置字体的地方设置。Kindle 现在很赞，可以自动切白边的。

看 slides 的时候横屏很赞，而且把页边距调大点，就不会一张 slide 分成两页了。

## `1465376207`{.tzx-timestamp} 大赞 jgm

好热心，好厉害。

[Install pandoc without root access · Issue #2943 · jgm/pandoc](https://github.com/jgm/pandoc/issues/2943)

[pandoc to s5 slides isn't working. · Issue #2958 · jgm/pandoc](https://github.com/jgm/pandoc/issues/2958)

……

## `1465357307`{.tzx-timestamp} Precision 和 Recall

比如这里有 30 个人，其中 15 个是傻逼。然后让你来说谁是傻逼，你说“全是傻逼！”

于是，你的 precision 是 15/30 = 0.5，因为你口中的傻逼每两个有一个是真傻逼。
你的 recall 是 15/15 = 1，意思是你把 100% 的傻逼都挑选出来了
（当然这不是你眼神好，这主要是因为：傻逼毕竟太多了！）。

再说说这两个名词。
Precision 评价的是你说话到底靠不靠谱，“猜几下能中”。
Recall 评价的是你说话的全面性，“能猜出几成”，这个 recall 就有点 retrive 的感觉，
这样“召回”就好理解一点了。

不要说我言语粗俗，我只是在解释机器学习里的两个概念，而已。

refs and see also

  - [Precision and recall - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Precision_and_recall)

## `1465217428`{.tzx-timestamp} WTFPL 是一个不负责任的协议

在 [Please change license from WTFPL (e.g. to GPL) · Issue #474 · dimitri/el-get](https://github.com/dimitri/el-get/issues/474)，
大家讨论了 WTFPL 这个协议到底是不是蛋疼。结论是这协议和 MIT 协议差不多，但是用语不“文明”。

不过我个人倒是觉得这个协议有免责的作用。比如你的代码里用到了一些 GPL 协议的第三方源码，
你无视 GPL，加个 WTFPL。这当然是不应该的。但别人说你的时候你可以理直气壮地说：
“我特么才不管这么多呢！”，看，这就是这个协议的最大作用：让你成为一个随（bao）和（zao）的人。

## `1465033380`{.tzx-timestamp} 感动中国的脚本

Linux 桌面系统的一个很好的 feature 是，你可以按住 alt 然后拖动窗口，
但 windows 上没有提供如此有用的功能，然后我随手一搜……（没报希望的），
有人已经给出解决方案啦：[Get the Linux Alt+Window Drag Functionality in
Windows](http://www.howtogeek.com/howto/windows-vista/get-the-linux-altwindow-drag-functionality-in-windows/)。

用的是 AutoHotkey，代码不多，亲测可用。

## `1464942467`{.tzx-timestamp} 想法太多，能力太弱

都实现不了啊！还得多读书，多实践。

## `1464024935`{.tzx-timestamp} 这人英语一定捉急

|   「你这个奇葩」这句话应该怎么翻译？
|   记得《失恋33天》的字幕里，对王小贱的介绍用到“他是一朵奇葩”，这句话，翻译是“He is a legend...”
|
|   请问有没有更好的翻译了？求更地道点的。

>   You are unbelievable.《生活大爆炸》第六季第 4 集，Penny 玩游戏时候是这么说
>   Sheldon 的。

点评：这人的英语一定捉急。

refs and see also

  - [「你这个奇葩」这句话应该怎么翻译？ - 失恋33天（电影） - 知乎](https://www.zhihu.com/question/19949833)

## `1462954696`{.tzx-timestamp} tab kit

works tirrible.

## `1462937814`{.tzx-timestamp} 我终于有 contributions 不是提交 issue 了……

[可以在 Windows&Linux 上运行 by district10 · Pull Request #1 · yhlleo/FindFilesWithinFolder](https://github.com/yhlleo/FindFilesWithinFolder/pull/1#event-656632881)。

## `1462353914`{.tzx-timestamp} Adobe Flash Player

安装要联网，很糟糕，因为我网速拙计。

如果安装失败，exe 文件会被自动删除。
于是我要用我糟糕的网速再下载一次……

开始我以为 FireFox 除了 bug：不能打开文件，也不能跳转到文件夹。
后来发现，是因为文件已经没有了。

Adobe 你真狠。

## `1461899632`{.tzx-timestamp} 现代化面试

就是不管你怎么准备，都没有用……你行你就行，不行就特么不行啊……哈哈哈。

这就是智商测试了……（话说智商测试还不一定比这更“智商”……）

那个什么洗牌，是不是可以随机到一个很大（稀疏）的空间，然后去掉空格？

>   在 C++ STL 中，很多部分 (目前包括 set, multiset, map, multimap) 应用了红黑树的
>   变体 (SGI STL 中的红黑树有一些变化，这些修改提供了更好的性能，以及对 set 操作的
>   支持)。

所有的面试经验总结到一点，就是：突击准备没有用，还要靠一天天的努力，才行。

## `1461555046`{.tzx-timestamp} 腾讯学生认证居然这么快

>   您的学生信息已经提交。腾讯云将在 1-2 天内完成认证审核，审核结果将以短信、邮
>   件及站内信的方式通知您。

结果没等两分钟……就认证好了。这速度吓死我了。

>   恭喜，您已完成腾讯云学生认证，成功获得学生特权扶持（代金券将在您毕业或暂停
>   使用云服务器超过 90 天后停止发放）：

话说腾讯送给我好多代金券，都过期了。（我对这种促销一点都不感冒。）

BTW，入坑深度学习了。发现忘了从实验室带计算器过来是一个大的错误！

## `1461492888`{.tzx-timestamp} 除了程序员真是没人那么在意字体和排版

当然有些人做界面的，比如写网页，必须美观好看，所以要知道基本的字体知识。他们是不得已而为之。
但更多人，纯粹是处于对美的追求，去解字体，了解排版。我们程序员是最棒的哈哈哈。

我还看了《西文字体》和《西文字体 2》呢。好多人一点不在意自己的文字显示出来的效果，真是感受不爱。

一定要看，一定要看：[Chinese Copywriting Guidelines · Sparanoid](http://sparanoid.com/note/chinese-copywriting-guidelines/)！！！

## `1461491381`{.tzx-timestamp} 你们都认识……

看到《手机》的剧照，然后看到金龟子（刘纯燕），然后看到她老公王宁，然后看到王宁的搭档李修平。
这两是新闻联播不知道干了多少年的播音主持。然后看到李修平的老公，是张春贤……

你们咋都认识呢……

## `1461467296`{.tzx-timestamp} 一本正经的装逼

能不能不要一脸真诚的装逼？！真是堪比某哥。
有人在的时候说话的表情和声调都要提高是个百分点，呵呵哒。

<div class="tzx-hide">
## `1461411664`{.tzx-timestamp} 不置可否

>   不行，你拒绝我就直接说“我不想聊”，要不你就说改天啊。
>   能不能和你好好的沟通啊！
>
>   反正就是没空
>
>   总是会有空的啊！
>
>   那得等我拿到了实习offer才有
>   我是在为offer努力啊
>   我忙的时候连女神都懒得理，怎么会理你

我讨厌不置可否的她。这就跟 Offer 不下来，你持续备胎中，一样。
Fuck。每个人的精力都是有限的，洗洗睡把。

我最讨厌不置可否的人了。

![](http://gnat-tang-shared-image.qiniudn.com/big-fish/43.png)

>   Bing 是那种虽然不常用但还是不希望它死掉的搜索引擎。
>
>   备胎？

(Bing 不比 Google 差很多的！完虐百度还是可以的。)
</div>

## `1461285638`{.tzx-timestamp} 你懂我意思？

在别人没说清楚就问这句话的时候，我毫不犹豫的“不懂”。
哈哈哈，我不懂，你解释清楚点！

-   “*&……%你知道把！”“我不知道。”
-   “*&……%你懂我意思把？”“我不懂。”
-   “*&……%听明白没？”“没有。”

<div class="tzx-hide">
## `1461222084`{.tzx-timestamp} Windows 上我不会编程

关键是 Linux 上……你也不会啊哈哈哈……逃）
</div>

## `1461219647`{.tzx-timestamp} 与时俱进

豆瓣上有人说“啊啊啊，[emacs 的主页](http://www.gnu.org/software/emacs/) 竟然更新了，是要焕发第二春了吗”，去看了一下，不得不感慨
“主页终于从 20 世纪走向了 21 世纪……”。难得保守的 RMS 为首的 GNU 一派居然会给 Emacs 主页换一个如此潮的风格。

下午又在看 [cppreference.com](http://en.cppreference.com/w/)，也有一些有意思的更新：

01. 有了中文页面（是我自己今天才发现？）；
02. 有了 Possible implementation，可以了解实现的细节，还可以以此学习 C++ 模板。
03. 示例代码可以用 GCC 和 Clang 编译，支持 C++11, C++14, C++17

比 [cplusplus.com - The C++ Resources Network](http://www.cplusplus.com/) 好多了！

## `1461152684`{.tzx-timestamp} 处女座性格和技能百分比

说自己是处女座性格的……都不是处女座。像我这样真正的处女座才不相信星座呢！

技能百分比，是一个很无聊的展示，本来这就是 BootStrap 上一个 input 而已，
有人用来表述自己对某一领域（主要是编程语言）的掌握状况，但是……这是说
你自己有 100% 的技能，其中 80% 是 C，20% 是 Python？这样表示没什么太大的问题，
在编程上自己的 C 技能大概是 Python 的 4 倍，而且不会其他语言。
但你各各都是 50%+……这算什么鬼？

C、C++ 这些语言……不好说自己掌握了百分之多少。除非，你说的是语法只掌握了 50%……

外，我现在很能理解那天面试官跟我说我的博客加载太慢。真心是加载慢的页面谁都没心情看！

## `1461150084`{.tzx-timestamp} 再想想一面的面试官的问题

关于 QtCreator，他问我 QtCreator 是不是不好用。注意，他说的是不好用……

但实际上，比起 Visual Studio，我更喜欢 QtCreator。下面对比一下两者的不同。

01. VS 不跨平台，如果不安装（盗版）的番茄助手，连代码提示都要被 QtCreator 玩虐；
02. QtCreator 可以方便地在 cpp 和 h 文件之前跳转（「切换头文件/源文件」），但 VS 不行，她只有「Go to Header File」；
03. QtCreator 的文件列表默认是竖起来的，而 VS 是横着的（类似浏览器），我喜欢竖起来的（可以放更多的文件，可以排序）；
04. QtCrteator 自带 Vim 模式（FakeVim），VS 需要额外安装（VsVim），而且 FakeVim 可以使用 C-v，VsVim 只能用 C-q；
05. QtCreator 启动快；
06. VS 的调试更好用，QtCreator 要自己设置调试器（反正我是没有设置过）；
07. QtCreator 打开的时候，头文件里开头大段大段的 License 注释，会被自动折叠，这个我特别喜欢；

总之我是不赞同面试官觉得 QtCreator 很糟糕的。平时我新建工程写一点代码，都倾向于用 QtCreator 来。
写好了我再写一个 CMakeLists.txt，然后生成 VS 工程，再继续（VS 的代码补全和 debug 功能确实好一点）。

## `1461148072`{.tzx-timestamp} 个人博客真的需要分页吗？

当然最主要的入口 index.html 自动加载几篇文章，分页一下，是可以理解的。但 Archive 里，还分页，
就不可原谅了，比如 <http://artwalk.github.io/archives/page/2/>，这居然分了 22 页！

个人的东西，尤其是 blog，就应该一目了然嘛！一页加载完最好。

当然像我的 [notes.html](notes.html) 那样，确实是有点极端了。

<div class="tzx-hide">
## `1461136968`{.tzx-timestamp} 今年研究生复试

口语听力给分真心高！

现在考研的规则里有太多莫名奇妙的东西：

- 优秀夏令营员，总分达到国家线，单科或总分未达院线者，调剂至测绘工程专业，免复试。

</div>

## `1461134234`{.tzx-timestamp} 骚扰电话和骚扰短信

自己用的非智能机，每当接到骚扰电话和短信，就不得不羡慕一下智能机同学，
他们可以屏蔽一些垃圾短信、垃圾电话、垃圾用户。

但这并不能解决问题，董小姐刚才也接了一个莫名其妙的电话。

在这种情况下，我觉得自己有两种选择：

01. 不再使用手机，以后请邮箱联系（当然我要过滤的^[或者用 GitHub 也可以。]）；
02. 使用手机，但是需要认证，给我打电话，必须回答几个问题（我想我可能需要一个助手），诸如：
    - 我的爸爸妈妈叫什么？
    - `scanf()`{.cpp} 的返回值是什么？

总之，我很烦这些无聊的玩意儿。必须得过滤，必须得过滤！

## `1461128123`{.tzx-timestamp} 027 是哪里的区号？

想了好久。肯定不是新疆，这显然是什么直辖市区号啊！
上海？不是，上海是 021；
北京？不是，北京是 010；
重庆？不是，重庆是 023；
杭州？不是，浙江应该是 05 开头的，0573 什么的；
那特么是哪儿啊？！深圳？

然后一查。027 是武汉的区号啊！武汉……今天脑子一定是被驴踢了，不然就是被门夹了。

## `1461126797`{.tzx-timestamp} 不在 QQ 里

那天说到 V，她说自己还不够优秀。
我找了好久没有找到这句话。想了想，可能这段对话不在 QQ 里。
我们是在路上聊天的时候说到的把。

然后就看到了 V 跟她说她很棒。但她说她不够棒。

恩，不够棒。

我也不够棒，但我不哭<span class="tzx-hide">（实际上我对很多东西都无感……）</span>。

## `1460942787`{.tzx-timestamp} 404 公益

我是完全反对的。本来想自己说说为什么，但看了下知乎，这个答案深得我心：

[404 公益靠谱吗？ - 孙召忠的回答 - 知乎](https://www.zhihu.com/question/20764445/answer/88604515)

:   无论初衷是多么美好，都无法掩盖这个主意的二。

    我从没听说谁家孩子是通过404页面找回的，我更喜欢干干净净的404，不要让浏览者
    心情那么沉重，而且是**毫无意义、毫无价值**的沉重。

    我在腾讯网不管从哪儿点到一个死链接，突然蹦出一个画面，是一个丢失的孩子的照
    片，这些孩子的身世是可怜不假，但这种可怜的孩子千千万万，如果要听悲情故事，
    24小时不停的讲都讲不完。但我不是为了可怜别人而活着，我有自己的生活，我要开
    心的生活我**不想活在负面情绪中**。

    看这些丢失的孩子的介绍，相当比例是有智力障碍的，而且有很多已经失踪很长时间
    了。虽然我们不愿意承认，但也不得不承认，这些404的孩子有很多已经不在人世了。
    你说你本来想消遣娱乐点到死链接弹出一个孩子的遗像（很可能），你说瘆人不瘆人
    ？

    再举一个相同性质的反面例子：腾讯新闻的天津站现在成了专业寻人了，头条长期固
    定为《紧急！谁家大爷又走丢了》。一个一千五百万人口的超大城市，哪天也得有几
    个走丢的老人，但你天天这么搞我还用看新闻吗？老人再可怜、家人再令人同情也不
    能天天搞啊，说到底我安装app是为了看新闻不是为了找老人啊。

<div class="tzx-hide">
## `1460877082`{.tzx-timestamp} 真爱

是不求回报的。但即便真爱，也都希望有 feedback。

现实的人无真爱。

只有你妈对你是真爱。

但我是理想青年。
</div>

## `1460810473`{.tzx-timestamp} 面试官说我博客加载慢

我说去掉了 Google Fonts，还是慢，我也无能为力，GitHub Pages 就这样。
然后我把整个主页换成了这：

```html
<!doctype html>
<html>
<head>
<title>Don't Forget to Feel BAD</title>
<style>
* { font-size: 36px; }
</style>
</head>
<body>
<p>&#36825;&#26159;&#21776;&#24535;&#38596;&#30340;&#20027;&#39029;</p>

<ul><li>GitHub: <a href="http://github.com/district10">district10</a></li>
    <li>Blog: <a href="http://tangzx.qiniudn.com">blog.tangzhixiong.com</a></li></ul>
</body>
</html>
```

这下，快了！See [Don't Forget to Feel BAD](http://tangzhixiong.com/).

## `1460806554`{.tzx-timestamp} 小璇璇的电脑

坏了。她说中午合起来，后来再打开就黑屏。重启，就进不了系统了。“OX S 系统真烂
啊！”(*.sic*^[她的博客里有次写了 OX S 系统，而不是 OS X。])，我说。然后我们去苹
果的专卖店。小哥还算专业（高级技师什么的），看了下，然后说找不到工具可以拆机看。
到了汉庭的 24 楼，他们也没法解决。然后机子就放在那儿了。

她最近在做一个我们院的院士专访小短片，本来都要完工，然后出这事……数据都在里面。

好在素材还在 U 盘里。她说可以借康老师的 Mac，我说可以借金戈的。她还要装一个软件。

“不是盗版的把？！”

“就是……谁有钱买那么贵的软件啊。

“如果我是金戈，就不借给你。”

“我可以装正版，然后试用啊！反正就用一天。好机智。”

于是我们去借了金戈的 Mac，然后她要熬夜剪片子了。Good luck。

`1462677829`{.tzx-timestamp}，后来她找了一个新闻的学妹帮忙，看效果：
[武汉大学 遥感院 龚健雅院士宣传短片_趣味科普人文_科技_bilibili_哔哩哔哩弹幕视频网](http://www.bilibili.com/video/av4435395/)。

## `1460806262`{.tzx-timestamp} 还是关于面试

小白鼠那个最多死一只啊哈哈哈……二了==

楼梯那题递归的时候不能中间随意切割……

我笔试居然还算高的（41 分）！！！我那些安卓题都是瞎猜的唉（就当英语单词认了）。
直接让我去和 HR 聊……好激动。

HR 问了我哪里人，有没有女朋友。后来想想这好像确实很重要。（不过没有问我有没有喜欢的人，这让我很忧伤。）

## `1460713116`{.tzx-timestamp} 关于面试

关于 Mutex 那个……好像应该在使用的时候上锁，而不是锁在单例模式函数的内部……
一时疏忽==

外，考官不是 Emacs 粉把，我黑了一下下  Emacs（当年我也有 dotfiles，也有自己的 dot emacs 配置的）。

还问我代码大概写了多少行，我说不知道。“不好算。”“估计一个。”
“额，最近的一个工程，一个人在写，大概有 8 个模块，几乎都是自己写的。每个模块下面比如说有 5 个文件，`.h`，`.cpp`
什么的，平均下来比如一个文件 1000 行，这样算的话，这个工程我写了 8 万行代码。”

后来我去数了一下：

```tzx-bigquote
Administrator@lennovo-PC MINGW64 /d/tzx/btSystem/src (master)  # 这个文件夹是源码
$ cat **/* | wc -l
cat: QtPropertyBrowser/images: Is a directory
67741

Administrator@lennovo-PC MINGW64 /d/tzx/btSystem/demo (master) # demo，就有 main.cpp 所以行数很少
$ cat **/* | wc -l
614
```

看来我估计得高了。平均一个 `.h`，`.pp` 应该不到 1000 行。其实只有少数几个模块有 1000 行的代码亮。

哦，刚才统计多了，`src` 下面有个文件夹本来应该放到 `3rdParty` 但我没有，多引入了 2 万行代码的样子。

```tzx-bigquote
Administrator@lennovo-PC MINGW64 /d/tzx/btSystem/src/QtPropertyBrowser (master)
$ cat * | wc -l
cat: images: Is a directory
18424
```

这么说，这个工程我大概自己写的有 3 到 4 万行。不过这只是一个项目哈哈。
在长沙也写了很多，规模估计差不多，但那个涉及太多何人沟通代码，接口的东西，不好说
哪些是自己写的，哪些是一起写/改的。

可能我的笔记要多得多把……这个确实有 8 万行。而且还有一些原来散落在简书、作业部落，GitHub 的笔记没有整理好
加进来。目测笔记 10 万行，还是有的。

```tzx-bigquote
Administrator@lennovo-PC MINGW64 /d/tzx/git/blog (master)
$ cat _posts/* | wc -l
54942

Administrator@lennovo-PC MINGW64 /d/tzx/git/blog (master)
$ cat _pages/* | wc -l
30202
```

`1460780624`{.tzx-timestamp}, 下午还要面试，看了下之前的代码。发现昨天面试的时
候，好像把 Bigendian 说反了。Bigendian 里地址 0 就是高位：

```cpp
quint16 parse2BytesToUInt16( const QByteArray &ba, quint16 cursor, bool doit /* = true */ )
{
    if ( cursor + 1 >= ba.length() ) {
        Logger::log( BCD::META::META, "Error parse 2 bytes to Uint16" );
        return 0;
    }

    if ( !doit ) {
        return 0;
    }

    quint16 num = 0;
    num  = (quint16)(ba.at(cursor + 0)) << 8; // MSB first
    num |= (quint8)ba.at(cursor + 1);
    return num;
}
```

The UTF-8 representation of the BOM is the byte sequence `0xEF,0xBB,0xBF`.

话说面试的时候自己说的是“记不太清楚，好像是 `FE FF`”，看了一下自己的笔记，来自：

> Byte Order Mark 在 UTF-16 Big Endian 是 “FE FF”，Little Endian 是 “FF FE”。
> 其中Mac 系統主要是 Big Endian, PC 系統則是使用 Little Endian。
>
> UTF-8 由於本身特性，不管 Big Endian 或 Little Endian，其 BOM 一律為 “EF BB
> BF”。

我果然记忆力捉急哈哈。


## `1460610950`{.tzx-timestamp} 中文操作系统

以前我是绝对拒绝使用中文操作系统的，后来用得多了感觉都一样。后来我装 Linux 都直
接装中文版本，因为可以略去装中文输入法的麻烦（我对使用哪种输入法并没有特殊的偏
爱，只要是个拼音输入法都行）。但有一点，中文操作系统被完虐。那就是中文，不好打
！中文输入法再好，切换输入法都很让人不爽，这种不爽在 Windows 上更加严峻。

想打开画图板？到 `Start` 输入“Paint”是没用的，那个只能在英文系统用。你必须得切
换输入法（Win 8 还好，<kbd>Win</kbd> + <kbd>Space</kbd> 就好，Win 7 以下要麻烦
点，Shift+Alt/Control 没那么好用），然后用中文输入法输入“画图”。

慢好多。

浏览器里搜中文也是，我真希望可以用拼音来搜索中文，但似乎还没有浏览器支持这个。

（这是一个不错的 idea，可以去实现它，然后 big hit~）

## `1460598168`{.tzx-timestamp} LaTex?

这样的拼写，让我对你没信心。

## `1460509545`{.tzx-timestamp} VS 的搜索

如果一个变量不存在（不小心敲错），搜索会卡死……卡死！简直比 `make -j` 还丧心病狂。

## `1460442429`{.tzx-timestamp} 杂七杂八的碍事玩意儿

以前我也喜欢写一个小程序，就要在开头写上自己的名字和邮箱，后来越来越厌烦这些。
尤其看到别人的代码，文件头加了 LICENSE，大段大段的。觉得难受。

或许在文件头写上使用说明，这就够了。

## `1460378216`{.tzx-timestamp} 又是我自己……

每次看到一个特别美好的东西就要去评论一下，然后发现已经有人占坑了，然后又发现原来那人就是自己……
我说的是 [Sia 的相册](http://www.xiami.com/artist/pic-detail/pid/1292836?spm=0.0.0.0.uG1QQx)。

## `1460260515`{.tzx-timestamp} MV 之王

<div class="tzx-fright">
![](http://img.xiami.net/images/artistlogo/19/14585418898819_2.jpg)
</div>

MV 拍得很赞的，有 Katy Perry 的《The One That Get Away》，
MIKA 的《Good Guys》，以及 Sia 的所有 MV~

每个 MV 都讲了一个好故事。下面是我喜欢的一些：

  - [David Guetta & Sia - Titanium](http://v.yinyuetai.com/video/396254)
  - [Hello Saferide & Firefox Ak - Long Lost Penpal](http://v.yinyuetai.com/video/330827)
  - [Katy Perry - The One That Got Away](http://v.yinyuetai.com/video/2364274)
  - [Mika - Good Guys](http://v.yinyuetai.com/video/2297310)
  - [Sia - Alive](http://v.yinyuetai.com/video/2412186)
  - [Sia - Big Girls Cry](http://v.yinyuetai.com/video/2267127)
  - [Sia - California Dreamin](http://v.yinyuetai.com/video/2408487)
  - [Sia - Cheap Thrills](http://v.yinyuetai.com/video/2527677)
  - [Sia - Elastic Heart](http://v.yinyuetai.com/video/2276987)
  - [Sia - You've Changed](http://v.yinyuetai.com/video/142070)

refs and see also

  - [【MV】Sia -Big Girls Cry 背后的故事 幕后访谈 中英字幕 (SiaFurler汉化组)-高清MV在线播放-音悦Tai-口袋·FAN-看好音乐](http://v.yinyuetai.com/video/h5/2332671)

<div class="tzx-hide">
## `1460188539`{.tzx-timestamp} 无耻新闻从业人员

最无耻的就是新闻从业人员（以及相关程序员和产品经理）。整天 傻 b 一样推送各种无
聊的东西。尤其是 QQ：啊，哪个地方车祸了；啊，哪个女乘客被强奸抢劫了，啊，快递员
被自杀的人砸死了。三天两头都是这些破玩意儿。

为什么腾讯不允许用户选择关闭右下角QQ新闻弹窗？
  ~ 因为腾讯是个丑流氓。妈的智障！

百度，新浪都做不出这么恶心的新闻网站：[大楚资讯_湖北新闻_武汉新闻_腾讯大楚网](http://hb.qq.com/news/?qq=0&pt_src=3&ADUIN=1648926645&ADSESSION=1459481597&ADTAG=CLIENT.QQ.5455_.0&ADPUBNO=26550)

<https://www.douban.com/photos/photo/2332741288/>

:   “哎！这么可爱的孩子啊！真的是被害那凶手怎么下得了手”，baozuitun 的那个“可爱
    动物保护”的说法真是太对了。

    季羡林说常识是这个时代确实的东西，我看最缺失的是节操。

see also

  - [为什么腾讯 QQ 的新闻弹窗大多数人不反感？ - 腾讯 QQ - 知乎](https://www.zhihu.com/question/19576639)
  - [QQ轻聊版官方网站](http://im.qq.com/lightqq/)
  - [为什么腾讯不允许用户选择关闭右下角QQ新闻弹窗？ - 腾讯 QQ - 知乎](http://www.zhihu.com/question/39913761)
</div>

## `1460015071`{.tzx-timestamp} 皮蛋瘦肉粥……

那天早上不知道吃什么好，于是点了这尝尝鲜，被彻底打败了……
真的是咽不下去……好强烈的猩味，就像一池塘水，
很久没下雨，水藻长了很多那样（或许水面上还有翻着肚皮的死鱼）。
赶紧点了一份热干面压压这一肚子的郁闷气。

好厌烦粥里有肉！这粥的杀伤力比肉粽强烈多了。再也不尝鲜了。

刚才在豆瓣看到“皮蛋粥是很销魂的食物。当你想减肥又觉得嘴里实在没滋味，选它就没错
了。皮蛋的香和劲道，青菜的清爽，再来点鸡脯肉加小咸菜很到位。”，吐个槽。

<div class="tzx-hide">
## `1459853425`{.tzx-timestamp} 投简历

没有提交上！！！然后内推都过了！我猜发现自己什么都没投……
我才不觉得是自己蠢，因为小璇璇同学也是提交了好久没有成功。
我现在感觉，阿里前端，有点水。
而且在页面编辑简历的时候也让我各种不爽，尤其是编辑自己的学校，本来直接用输入框让我敲“武汉大学”最快，
却偏要我点击几次按钮，找半天，“中国大陆”->“湖北”->“武汉”->“武汉大学”。这体验连 12306 都不如。
</div>

## `1459563448`{.tzx-timestamp} 淘金时代

现在的社会充满了创业，满是淘金热。然而好像买牛仔裤比淘金本身要赚钱，于是
创业培训公司和制造生产力工具的公司，越来越多了。这不是一件好事。

## `1459431420`{.tzx-timestamp} QWERTY 键盘简直是个笑话

有时候专门看看有些单词怎么在 QWERTY 上敲出来，然后发现真是无比的蛋疼啊哈哈。
你们怎么能忍……

## `1459423291`{.tzx-timestamp} 学到的才是真功夫

中午弄了一会儿没搞定 `.tzx-drawer` 这个课 toggle 隐藏的功能，后来
瞟了一下自己的 jQuery 笔记。看到 event propagation 那段 `return <propagate?>;`，
一下子就明白了……

## `1459421045`{.tzx-timestamp} Notes 越来越大了！

```tzx-bigquote
# compile notes
real    0m4.771s
user    0m0.015s
sys     0m0.015s

# compile koans
real    0m1.033s
user    0m0.000s
sys     0m0.031s
```

## `1459398411`{.tzx-timestamp} 代码高亮风格

很多人都喜欢 sublime 那种黑黑背景的。我喜欢 VS 和 GitHub，最喜欢的是 Pygments 风格。
Wikipedia 也是如此。明显比别的风格好看很多好不好！

## `1459244417`{.tzx-timestamp} 关于 travis-ci 的 build

刚才看到自己的 travis-ci 的一个 build 有一个多小时了！！！吓我一跳。后来发现原来是
网掉了，网页上那个是本地的计时器显示的时间。实际上五分钟就编译好了。

那个 spinner 其实也只是一个 spinner，
而已。

## `1459241516`{.tzx-timestamp} 发现 iPad 的一个 bug

当你锁住 orientation 的时候，有些程序就不能通过向上滑出来关闭（貌似这些程序本身只能适应一种方向）。
更好的方式应该是：不管程序是只能 landscape 还是只能 portrait，iOS 都能关闭他们。

## `1459071915`{.tzx-timestamp} 程序员的标记法真是赞赞的

我的 TODO 里写了这么一个：

:   including other file via: `<#>(%filename option1=value1)` => `format: dl{[dd, dt[ ,->dt]]}`

你能理解我说的啥意思吗？

## `1459056262`{.tzx-timestamp} TDD 真是太牛逼了

TDD 的世界观就跟概率论的世界观很
接近：*我不管你是什么。只要你感觉上像是个什么，我就认为你是什么。*

大多数的 OJ 都是用 test 来判断你的程序对不对。代码怎么写无所谓，通过了才算数。

在类型系统里，duck type 这个说法的来源也和这个观点不谋而合：

> If it walks like a duck, and quacks like a duck, then it is a duck.

## `1459045740`{.tzx-timestamp} 模型转化

KMZ 格式怎么降采样？不知道！模型太大加载太慢，神烦。
想转化成别的格式再降采样再转回，请问往哪个格式转？
[FME](post-0091-gis-misc.html#fme-%E6%98%AF%E4%BB%80%E4%B9%88) 也不会用，这个号称能处理几百种格式的转化工具，
不好用。

## `1458995382`{.tzx-timestamp} pandoc 对中文的支持

~~之前去提了一个 [issue](https://github.com/jgm/pandoc/issues/2586)，不过刚发现只能正确处理
简体中文，繁体的不行……~~

是我自己昨天的改残了 Makefile，感觉写得还挺 hack 的，在自己电脑上测试可以。但是在 Windows 就是不行……：

```makefile
+EAST_ASIAN_LINE_BREAKS=$(\
        echo '' | pandoc -f markdown+east_asian_line_breaks 2&>/dev/null && \
        echo -n '+east_asian_line_breaks' || echo -n ''\
        )
PANDOC_OPTIONS = -S -s --ascii \
    -c main.css \
    -A footer.html \
    --highlight-style pygments \
    -f markdown$(+EAST_ASIAN_LINE_BREAKS)
```

昨天晚上真的可以？还是我的幻觉？一定是幻觉因为昨天晚上 travis 编译也是没有通过
的……：[Build #47 - district10/blog - Travis CI](https://travis-ci.org/district10/blog/builds/118537331)。

## `1458898446`{.tzx-timestamp} Perl 的 `.gitignore`

GitHub 上默认提供的 perl 项目的 ignore 文件居然默认 ignore 掉 Makefile……
昨天回寝室 pull 代码就感觉哪里不对，但我没有发现……于是又加了一个 Makefile。

早上过来，又 pull，又感觉哪里有点不对……但我还是没有发现……于是我就又手写了一个……
中午吃饭完 push 了到 GitHub 上一看，没！有！Makefile！这才到 `.gitignore` 文件下
看了一下，原来 `/Makefile` 之类的好几个，都默认 ignore！

Dafuq.

## `1458787895`{.tzx-timestamp} 字体测试

为毛这些米国人喜欢用法语的那个：

```tzx-plain
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin mollis dolor
vitae tristique eleifend. Quisque non ipsum sit amet velit malesuada
consectetur. Praesent vel facilisis leo. Sed facilisis varius orci, ut aliquam
lorem malesuada in. Morbi nec purus at nisi fringilla varius non ut dui.
Pellentesque bibendum sapien velit. Nulla purus justo, congue eget enim a,
elementum sollicitudin eros. Cras porta augue ligula, vel adipiscing odio
ullamcorper eu. In tincidunt nisi sit amet tincidunt tincidunt. Maecenas
elementum neque eget dolor egestas fringilla.
```

在我学会法语之前可能是不会理解的。

## `1458780839`{.tzx-timestamp} 居然是七牛！

昨晚回去之前 push 了一下，到寝室发现 travis 编译失败了……早上过来一看：

```tzx-plain
The command "wget
http://devtools.qiniu.com/qiniu-devtools-linux_amd64-current.tar.gz" failed and
exited with 8 during .
```

What the f**k...

<!--
## `1458744557`{.tzx-timestamp} 还是火狐赞！

<http://whudoc.qiniudn.com/2016/tab_kit_2nd_edition-0.12.3-fx.xpi>

![使用前](http://whudoc.qiniudn.com/2016/tab-before.png)

![使用后](http://whudoc.qiniudn.com/2016/tab-after.png)
-->

## `1458738269`{.tzx-timestamp} travis 死了？

为什么不理我的 push？补：偶尔这样，我原谅你了！

## `1458698895`{.tzx-timestamp} travis 你不要吓我

昨天在 GitHub 上 grant 了 `travis.com`，唉？！我不是 grant 过吗？！
吓我一跳，还以为是钓鱼网站。早上发现原来 <travis.org> 是那个很 popular 的，
<travis.com> 也是他们一家的，可适用于 private repo。

## `1458655653`{.tzx-timestamp} 环！

弄 travis，希望它能修改我的 repo，所以设置了 GitHub Token，然后用
travis 的命令行工具（一个 gem）加密，然后加到 `.travis` 里，然后发现……
travis 进入了死循环。因为一个 build 会产生下一个 build……于是停不下来了！

我现在是焦头烂额。尤其对网速很不满。

## `1458632598`{.tzx-timestamp} 去中心化不适合人类的大脑

至少不适合我的大脑。如果不把所有东西都放到一个地方，我就真是什么都找不到！
现在把自己的笔记等等全都放到 [district10/blog](http://github.com/district10/blog)，
感觉各种方便。自己找不到的东西，先自己搜搜，搜到了再加到这里就可以了。
而且现在都不用自己装 `pandoc`{.bash} 了，github 和 travis 会自动帮我转文档。
赞赞赞！

## `1458563023`{.tzx-timestamp} GitHub 上的博客自动同步到自己的七牛

其实很简单。刚才我就弄好了。参见：[district10/hacking-travis: 原谅我 hack 用得随意……](https://github.com/district10/hacking-travis)。

以后我可以不自己搭建 `pandoc` 的编译环境了。

好了！现在是自己随便在哪儿写，只有同步到 GitHub 就会触发 travis 帮我编译，而且只处理我修改了的 markdown 文件~

## `1458298773`{.tzx-timestamp} 豆瓣FM 推荐的老歌

真的好老……最近在听豆瓣FM（我重新注册了一个帐号，用弱密码，专门用来听歌），
推荐的歌给人一种上个世纪的感觉。有

- Dont't Push Me
- Don't Stop the Music
- Firework
- 艾薇儿的各种歌

TODO，听到就更新到这里。

不过确实挺好听的。

## `1458279976`{.tzx-timestamp} 恶性循环

浏览器的恶性循环是用得人少，挣不到钱。然后只能用广告。
于是一打开浏览器就看到京东，37 游戏，淘宝的书签。
这样只能让我放弃这个浏览器了。这次我说的是原本挺喜欢的
Opera 浏览器。中文版的火狐也有这个问题。

## `1458196052`{.tzx-timestamp} 豆瓣FM 就是比虾米电台靠谱

即便豆瓣被指说不重视移动端，但它的 APP 也更赏心悦目。
推荐的歌曲也更深得我心。

倒不是说豆瓣的推荐技术好点，而是……感觉虾米在拿我做实验，提高自己的推荐效果……
但我喜欢好听的。而不是帮你筛选！

## `1458187263`{.tzx-timestamp} 好痒好痒

感觉自己需要一个把 GitHub 上一整个 repo，转化成一个单页 HMTL 的工具。这样
就能快乐地在 pad 上看代码了。计划用 C++，把所有的 directory listing 出来，
索引好，然后生成一个 markdown 文件，然后用 pandoc 转换（当然也可以用 marked），
再加上一点 CSS。就 okay 拉。

一定要搞起来。

coding.net 的 CodeInsight 就不错：
[CodeInsight](https://coding.net/help/doc/codeinsight/getting-started.html)。

Refs

:   #. [ack2/squash at dev · petdance/ack2](https://github.com/petdance/ack2/blob/dev/squash)
    #. [Perl-Tidy-20160302 - indent and reformat perl scripts - metacpan.org](https://metacpan.org/release/Perl-Tidy)
    #. [ack2/squash at dev · petdance/ack2](https://github.com/petdance/ack2/blob/dev/squash)
    #. [ack2/DEVELOPERS.md at dev · petdance/ack2](https://github.com/petdance/ack2/blob/dev/DEVELOPERS.md)
    #. [ack2/DESIGN.md at dev · petdance/ack2](https://github.com/petdance/ack2/blob/dev/DESIGN.md)
    #. [lib/File/Slurp.pm - metacpan.org](https://metacpan.org/source/URI/File-Slurp-9999.19/lib/File/Slurp.pm)
    #. [File-Find-Rule-0.34 - Alternative interface to File::Find - metacpan.org](https://metacpan.org/release/File-Find-Rule)
    #. [examples/try_me.pl - metacpan.org](https://metacpan.org/source/GARU/Data-Printer-0.38/examples/try_me.pl)
    #. [README.md - metacpan.org](https://metacpan.org/source/LASTMAC/HTML-MyHTML-0.25/README.md)
    #. [Browse ROBIN/PadWalker-2.2/ - metacpan.org](https://metacpan.org/source/ROBIN/PadWalker-2.2)

repo 文档里的链接可能还要 fix，是不是用 perl 更好？

## `1458118399`{.tzx-timestamp} Dash 真是业界良心

入手一个 iPad mini2，随手买了一个 Dash（因为 Zeal 只有 Windows 和 Linux 版本），
感觉真是太赞了！

链接：[Dash API Docs on the App Store](https://itunes.apple.com/us/app/dash-api-docs/id935284832?ls=1&mt=8)

每次都到网站去搜文档太累了。自己赞的 html 格式的文档搜索起来也比较麻烦。还是这
东西好。

## `1457919802`{.tzx-timestamp} 原来这是我提的……

我喜欢的 [中文文案排版指北
](https://github.com/sparanoid/chinese-copywriting-guidelines) 里有句：`例外：
「豆瓣FM」等產品名詞，按照官方所定義的格式書寫。`，唉，我正想说这个来着啊！

然后发现这特么是我提得 issue 啊……：[关于中英文混排（特殊情况） · Issue #6 ·
sparanoid/chinese-copywriting-guidelines](https://github.com/sparanoid/chinese-copywriting-guidelines/issues/6)

我还真是热心观众一枚。

## `1457712897`{.tzx-timestamp} Big Git Repo

```tzx-plain
2.5M    ./_statics
12K ./private
4.0K    ./blagee
1.8M    ./_posts
12M ./.git
816K    ./_pages
7.6M    ./publish
4.0K    ./gists
3.4M    ./_miscs
28M .
```

## `1457701284`{.tzx-timestamp} Dafuq

The first Continental Congress was held in ____________ in September 1774.

A. Chicago
B. Boston
C. New York
D. Philadelphia

... what the fuck...

## `1457620226`{.tzx-timestamp} 强迫症患者

每次拿到别人的代码我都要花点时间改成自己能看的状态。大家写代码的时候也太不注意
了！格式根本不 consistant。我弄了一些 vim 脚本（键盘宏）来处理基本的，但是感觉
这样效率不高。我应该准备一套 vim 的宏放到寄存器，还准备一些 perl 脚本转本来批处
理。

这个一定要 GET 起来！Scratch your own itchy。

## `1457617233`{.tzx-timestamp} 虾米猜

简直是瞎猜！推荐的歌我几乎都不喜欢。平井坚唱得跟屎一样，七緒香更是不能听。

<!--
## `1457442269`{.tzx-timestamp} 搞定时间戳！

咋那么难！（2016/03/08, 21:05）
-->

## `1457153290`{.tzx-timestamp} Colm Wilkinson

在看电影版的 Les Miserable，听到主角 Bishop 的声音就觉得特别熟，一看脸就觉得像
10 周年音乐会版的 Jean Valjean。一查还果然是。他叫 [Colm Wilkinson](https://en.wikipedia.org/wiki/Colm_Wilkinson)：

> In 1995, Wilkinson played Jean Valjean in the 10th Anniversary Concert of Les
> Misérables at the Royal Albert Hall.

唱得真心好到爆。

## `1456885511`{.tzx-timestamp} jQuery is Bad?

一直避免用 jQuery，因为它很大（30KB），但好像如果不用，自己写各种东西都特别麻烦！
要死。我还是用 jQuery 把！

## `1456570785`{.tzx-timestamp} Plan of Faking an Accent

- Frensh: [How to Fake a Convincing French Accent: 9 Steps](http://www.wikihow.com/Fake-a-Convincing-French-Accent)
- Indian
    + [Indian English accent imitation - 100% laugh—在线播放—优酷网，视频高清在线观看](http://v.youku.com/v_show/id_XMTU3NDkxODMy.html)
    + [Indian English - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Indian_English)


## `1456567586`{.tzx-timestamp} 补上昨天在 QQ 空间里没有发的 Errata

发在 QQ 空间里好像有点秀逗，所以删掉了，发在这里把。

#. brands &rarr; brans，也有点像 brains；
#. chores &rarr; chors；
#. dark &rarr; duck；
#. evening &rarr; evilly；
#. law &rarr; naul；
#. line &rarr; nan；
#. look-alike 念成了 looka-like；
#. observe &rarr; ehbze-ve；
#. realize 念成了 real lize；
#. sip &rarr; sick；
#. “lull the boy to open the door”，`to` 不是介词；

## `1456557956`{.tzx-timestamp} const 2 volatile

除了这个错误的 cast，还有不知名的问题存在。现在是可以编译 release，
但是 debug 不可以……What the fuck，why？！

## `1456147029`{.tzx-timestamp} 悲惨世界还真是牛逼

简直天籁之音。

沙威（Javert）死那段好带感。

Quotes: from [一个完人——致沙威 (悲惨世界 影评)](http://movie.douban.com/review/4614648/)

:   > 其实，沙威有沙威的追求，他认为一个人要是犯了罪，一辈子都是罪犯，不会改变。
    > 他的追求就是把他眼中的那些罪犯——游民无赖，小偷，杀人犯，妓女之流全都送进
    > 监狱，送上断头台，永世不得翻身。这样社会就安定和谐了。他对冉阿让长达十年
    > 不依不饶的追捕，说穿了也是忠于职守而非私人恩怨。这种信念十分狭隘，也许和
    > 他自己的遭遇有关，2000版电影中沙威说自己出身于一个狩猎之家，父亲被无赖诈
    > 骗失去了家产，他一气之下加入警队抓住了诈骗犯，看着仇人死在监狱里；小说里
    > 则交代沙威是苦役犯的儿子，出于对自己家世的憎恶而当了警察。两种说法似乎都
    > 能解释沙威性格的养成，尤其是后一种说法，在现实中也是历历可寻。希特勒的父
    > 亲由于是私生子而遭人歧视，而其不负责任的祖父很有可能是犹太人，历史学家认
    > 为希特勒的极端反犹思想很可能也是来源于其对自己身世的厌恶。

## `1456125277`{.tzx-timestamp} Vim 也凌乱

通常而言，Vim 没有什么可凌乱的。因为它不像 Emacs 那样需要过多的定制。
但是 Qt Creator 里的 FakeVim 不能用 `Control+V`，VS 里的 VsVim 可以……
（和 Win 上的 gVim 一样，Visual Mode 用 `Control+q`）。好凌乱。

## `1456065846`{.tzx-timestamp} 粉丝的情怀

不可估量。我是说 Izumi Sakai 出了新专辑：ZARD Forever Best~25th Anniversary~

大家都要买买卖。

## `1456023789`{.tzx-timestamp} 后来问了老师

……一眼就发现了问题……

在 VS 里，Project 的属性 `Active(Debug)` 下面不能同时有 debug 和 release！！
链接错了 lib 文件，还是能编译通过，但是不能运行！！

## `1455991475`{.tzx-timestamp} 已经不能快乐地编程了

来学校后不知怎地程序就编译不过，然后我找啊找。
终于（在几天后）找到了编译失败的原因。
如此扯淡，我简直不能相信自己的眼睛。

下面这段是错的：

```cmake
add_executable( ${PROJECT_NAME} ${SRCS_FILES} ${HDRS_FILES} )
target_link_libraries( ${PROJECT_NAME}
                       ${OpenSceneGraph_LIBS_Release}
                       ${OpenSceneGraph_LIBS_Debug}
)
```

而这段，是对的：

```cmake
add_executable( ${PROJECT_NAME} ${SRCS_FILES} ${HDRS_FILES} )
target_link_libraries( ${PROJECT_NAME}
                       ${OpenSceneGraph_LIBS_Debug}
                       ${OpenSceneGraph_LIBS_Release}
)
```

谁能告诉我，为！什！么！

debug 和 release 不适用后缀“d”来区分吗？
比如
`C:\Program Files\OpenSceneGraph\lib\osg.lib` *v.s.*
`C:\Program Files\OpenSceneGraph\lib\osgd.lib`。

在 CMakeLists 里我都设置了！

```cmake
set(CMAKE_DEBUG_POSTFIX "d")
```

我已经不能用“呵呵”来形容我现在的感受了。

我觉得是我电脑（很有可能是 VS）出问题了，怎么会这么扯。浪费我的感情。

## `1455989545`{.tzx-timestamp} 大家都蠢

接上一条。

解决方案其实可以是全部头文件源文件放到一起。
这样的不好之处在每次都要重新编译整个工程。
然而，VS 其实特别蠢，我看它每次都自作多情地编译工程的各个模块。
哪怕：

1. 我没有改那个模块的源码；
2. 我没有改工程的 CMakeLists；

话说我还犯了几次类似 [c++ - CMake cannot determine linker language for target -
Stack Overflow](http://stackoverflow.com/questions/16655705/cmake-cannot-determine-linker-language-for-target)
的错误（只有头文件还想编译 exe 或者 lib……），真是无可救药。

## `1455986511`{.tzx-timestamp} 你知道我在这耗了多久？

```cpp
osgUtil::LineSegmentIntersector::Intersections::iterator hiter;
for ( hiter = intersections.begin(); hiter != intersections.end(); ++hiter ) {
    osg::Vec3 tc;
    osg::Texture *texture = hiter->getTextureLookUp( tc );
    if ( NULL != texture ) {
        if ( NULL != _myViewer ) {
            if ( _myViewer->inChangeMode() ) {
                QString path = _myViewer->getCurImagePath();
                osg::Image *nextImage = osgDB::readImageFile( qPrintable(path) );
                if ( nextImage && nextImage->valid() ) {
                    texture->setImage( 0, nextImage );
                }
            } else if ( _myViewer->inBindMode() ) {
                // 2D load/switch to image file
                QString path = _myViewer->getBtGui()->getModelBridge()->face2img[texture];
                // 上一句总是出错！！！
                qDebug() << "switching to" << path;
            }
        }
    }
}
```

当然，计算机是不会逗你的。肯定是自己弄错了。

* 首先，`_myViewer` 是没问题的。在 `.h` 文件里加了 `class btViewer`，在 `.cpp` 引入了头文件。
* `getBtGui` 函数也是有的。可是他的返回值没有定义，于是加上 `btMainWindow.h`。
* `getModelBridge` 函数有了，但是它的返回值没有，于是，加上 `ModelBridge.h`。
* 现在都有了，编译还是出错，因为没有在 CMakeLists.txt 里加上 `taget_link_libraries`。
* 然后，终于好了！

好，反思一下。我蠢在哪？

1. 头文件里用的是声明：`class <class-name>`，源文件里才引入 `<class-name>` 的定义。
   这导致了我的函数可以有，返回值却不可以有。
2. CMakeLists 里不加依赖，这是不可原谅的错误。
3. 居然以前没有发现在头文件里 `class <class-name>` 的 pitfall：代码没有真正加进
   来。可以会在链接时期出问题。

<!--
## `1455907067`{.tzx-timestamp} 暴力？

> 如果你能破解 md5sum 的话， 我会感到很荣幸和你聊聊：
> `ff8fb48d51329ad82a306fa309b97e3a`（将 QQ 号写入文件、 不带换行符的文件的
> md5sum）。

关键是 QQ 号就那么几种啊……10^9 一个个试。不过……好想量有点大唉……
-->

## `1455906520`{.tzx-timestamp} 在学校的蛋疼生活

一天只吃一顿饭，一次吃饱管一天。现在放个屁都是黄焖鸡的味道。
Shit。

## `1455900836`{.tzx-timestamp} 今日大凶，不宜编程

`osgDB::readImageFile` 有问题，不明原因的 link 错误：

0. 改 CMakeLists，没用。
1. 手工加上 external links，没用。
2. 其他的一个工程，一样的 CMakeLists，一样的代码，可以。
3. debug 发现是 C++ bad allocation，难道是图片太大太多？
4. 然而第一张图片加载就死了，所以不是太多。
5. 分辨率 512 x 4096，用 ImageMagick 改小，还是不行。
6. 我要死了。

那就看看其他模块有什么需要做的。突然发现 json 读写模块死了……
为什么？我什么都没有改。文件读入路径写死。还是有问题。
看来 rapadjson 今天也工作不正常。我已经不知道该怎么弄了。

shit。

## `1455741001`{.tzx-timestamp} 爱死 GitHub 了！

`Copy as Markdown` 很赞，但我想要 org-mode 格式的链接，GitHub 上有了：
[kuanyui/copy-as-org-mode: Copy Link, Image and Table in Page as
Org-mode Format!](https://github.com/kuanyui/copy-as-org-mode)

不要太赞。

## `1455730598`{.tzx-timestamp} 启动 Emacs

简直要用半个小时！！！emacs server 也太慢了！害得我现在不敢关闭虚拟机。

`M-x start-server` `emacs --daemon`


`emacs --debug-init`

在启动过程中 `pgrep emacs` 会有两个结果，等启动完成，就只有一个了。Why？

不过启动后，就特别牛逼特别赞了。尤其是刚才用的 `org-sort-entries` 按照字母排序不要太赞！

## `1455603432`{.tzx-timestamp}: Git 你也坑我？！

`git checkout --orphan <new-branch-name>`{.bash} 会把当前的工作直接清空……
等你 checkout 回来就发现自己到了知识的荒原。居然不提醒！！！

如果是 checkout，确实提醒了：

<small>
```plain
error: Your local changes to the following files would be overwritten by checkout:
    README.md
Please, commit your changes or stash them before you can switch branches.
Aborting
```
</small>

## `1454919178`{.tzx-timestamp} 人生何处不相逢

看到一个很厉害的人，然后发现……他是 pangu-spacing 的作者。
额……额……额……他是个处女座，忍不了这些非处女座的恶习。所以写了 pangu-spacing。

## `1454914559`{.tzx-timestamp} 变态的塔塔酱

这是在简书看到最早人之一，不过……我忘了他那时候的网名……^[想起来了，那时候他叫 LostAbaddon。]
这篇 [随笔：DOC VS ORG - 简书](http://www.jianshu.com/p/360352dd05f2)
我很早前就看过，不过再看一遍，还是被他打败了：

> Emacs为ORG带来了极大的便利，因为Emacs可以自定义各种快捷键，而这就使得ORG的编
> 写非常愉悦，你只要记住一大堆快捷键就好了。
>
> 相比来说，Word编写DOC的过程不算很愉快，你得是不是将手从键盘上移开来操作鼠标，
> 以完成各种操作——除非，你和我一样，给几乎所有功能都设置了快捷键，然后背下这不
> 过百来个快捷键就好了。
>
> 但这个争论中最蛋疼的是有人说LaTeX有快捷键MathType没有，然后我就把上百个快捷键
> 背给他看了……真到了要用快捷键才爽的程度的话，变态如我是不介意多背几百个快捷键
> 的。
>
> 需要IDE的弊端，就是万一没有IDE，你就抓瞎了。所以，ORG哪都能写，然后只要你和你
> 的小伙伴们想像力足够，写出来的ORG一看就知道长啥样，大家哇哈哈哈笑开去。
>
> 就如开头所说，当你用一样东西的时候，你不是用这项东西的技术，而是用这项东西带
> 来的整体体验——甚至可以说是整个生态给你带来的体验。

## `1454770092`{.tzx-timestamp} 手机是个大傻逼

+ 动不动就要更新；屁新东西都没有，又要重新下载整个安装包；
+ 动不动弹出来权限不足的提醒；敢干嘛干嘛，要你妈的权限；

跟 JG 的 tucao：

> 好烦啊。我妈让我帮她下电视剧。蛋疼的手机，一会提醒我软件要更新，一会儿提醒我
> 权限不够，退出的时候还弹出窗口让我再点一次才能退出！而且特别傻逼的是，一个播放器。

## `1454243499`{.tzx-timestamp} 假期白话

#. 我一直以为读音是“shuli”……原来就是“shushu”。
#. 我真是想不通了。Bash 里面为什么把 Emacs 的快捷键全拿过去了……连 `M-- M-u` 都能用……
#. Using evil (simulating vim-like behaviour), I use this trick: :r!xsel or
   :r!xsel -b what reads output of command specified after exclamation mark. On
   MacOS you would probably use pbaste. – Jan Vlcinsky

一看就是 Vim 也了解得不够的人……

http://stackoverflow.com/questions/9985316/how-to-paste-to-emacs-from-clipboard

#. You may not like this ad, but it supports the developer and keeps this site free.

## `1453270095`{.tzx-timestamp} 如何截屏

发现还是 QQ 的截屏好用（虽然分辨率会降低），只要自己弄个群往里面传图片就可以了。
等所有的图片都截好。就打开历史，复制全部，再粘贴到 Word 里，保存。再改后缀为 zip，
最后解压，从 `word/media/` 文件夹拷贝出来就可以了～

传到 Lofter，备份完毕！

## `1453175655`{.tzx-timestamp} 玻璃心

See <https://www.zhihu.com/question/39523371/answer/82085727>

> 你一个韩国公司，我本不需要将我的政治观点强加于你。但你既然想来大陆赚钱，却连
> 客户朋友们的基本底线都搞不清楚。这是对客户缺乏起码尊重。
>
> 你触怒了客户的逆鳞，人前鞠躬道歉，人后却在外网上指责中国人蛮横无理。你还以为
> 全中国都不懂外文呢？——这已超越了政治立场，而是你道德人品的问题。
>
> 对待这种外国友人，我们堂堂甲方，只是停止和你做生意而已。于情于理，不需要有一
> 丝丝愧疚。对于周子瑜个人，区区16岁，确实值得同情。但是话说回来，视频道歉是我
> 大陆人民逼你录的吗？冤有头债有主，逼迫你的人，是你家的韩国公司JYP。
>
> 一个台湾人从小耳濡目染带有台独思想，我也是能够理解的。如果韩国方能够尊重你的
> 台独立场，让你一硬到底，我倒也敬重你是条汉子(女汉子...)。现在倒好，看到人民币
> 打了水漂，就逼着你哭哭啼啼跑出来道歉。想骑墙就骑墙，想变脸就变脸，你JYP把大陆
> 和台湾人民都当成什么了？人傻钱多的冤大头吗？
>
> 你家经纪人这副德性，就不怕连台湾市场都一起葬送了？

乖戾而强壮的人，总是可怕的。尤其他那个玻璃心。

## `1453173203`{.tzx-timestamp} 蟹煲饭，呵呵，蟹煲饭

<div class="tzx-hide">
似乎最近所有的女人都想去吃蟹煲饭，呵呵，呵呵呵。和师姐约饭这件事，让我特别不爽。
</div>

全文引用【饱醉豚】的一篇文章《生活方式》：

> 我厌恶所有需要排队等候的餐厅。无论那餐厅名声如何显赫，无论他们的菜肴多么精美
> ，如果我跟你一起在门口排队等候，朋友，你要知道我只是给你面子，而绝不会是因为
> 餐厅的饭菜好到值得我排队。
>
> 我不喜欢那些借团购、促销来招徕顾客的店铺。有些店铺你给个好评他就给你返现，这
> 样的地方我不喜欢。有些店铺你加了他们的公众号就可以优惠很多，这样的店铺我不会
> 去。
>
> 还有些玩积分的地方，积分多少可以换某些东西，我对此很厌烦，也从来不会用积分去
> 换什么。即使那积分可以换一张机票，一场旅途，可是我真的没有耐心去收集任何积分
> 。
>
> 我不喜欢滴滴打车、快的打车和优布砸钱拉客的方式，所以我的手机里并没有安装这些
> 东西。我更喜欢坐公交，花更多的钱打的，或者多走路一个小时，而不愿叫优布。我对
> 服务态度之类的东西不敏感，但是我对这种打车还先给补贴的的营销方式感到恶心。你
> 们不要建议我装个优布，也不要指望我帮你用优布叫车。
>
> 我对大商场毫无激情。当我在上海的时候，龙之梦和环球港之类的超大型商场仅仅是我
> 和朋友们聚餐的地方。如果聚餐地点是我决定的，是不会去这些大商场的。这些商场里
> 没有我要买的的东西。一样都不会有。我购物的地方，一般是小区门口的五金店，小区
> 里的小超市，淘宝。
>
> 如果我跟你一起逛南京路，也许唯一有兴趣的购物是在路边摊买一串煮熟的关东煮，或
> 者一盒臭豆腐。那些花花绿绿的专卖店，各种时尚品牌，各种精品专柜，我真的毫无兴
> 趣。我也不认得那些品牌。
>
> 一旦你进入上海这样的城市，你就觉得当代的都市基本上都是为高度商品化的时髦女人
> 而设置的。男人的风味一点都感受不到。或者男人的生活方式已经比女人还精致了。
>
> 我曾试图在上海街头找一些机械加工的地方，无论是车床、铣床、线切割，但是很难找
> 到。我也曾希望在街头看到一些工厂，但是工厂似乎已经完全消失。
>
> 而那些广告，那些品牌，那些模特，那些街头散发的传单文案，都让我觉得这城市离我
> 很遥远。这城市对我是如此的疏冷，那些灯红酒绿的场所，是为别人准备的，不是为我
> 。
>
> 或许有一些文艺人，他们去咖啡厅，去酒吧，去田子坊，去看话剧。而这些在我看来已
> 经不是文艺，而是难以容忍的恶俗。
>
> 甚至，对街头女人的某种走路姿势也越来越看不惯。那种姿势里包含着一种商品化的训
> 练，让你感到人都是出来演的，都是演好了去卖的。
>
> 有人说我是个很好照顾的人，随便吃什么街头快餐和低档旅馆就可以过得开心。但是我
> 也是个很难取悦的人，你把你认为最好的东西给我，却未能意识到那东西在我眼里分文
> 不值。
>
> 别跟我谈流行的书单，流行的电影，我都没看过。大家都在聊的《三体》，我一页都没
> 翻过，也不会有兴趣去看。也许我偶尔会看一部几十年前的老电影，但是大概与流行无
> 关。我对世界杯球赛毫无兴趣，你们熟知的那些球星我一个都不认识。我没有股票户头
> ，觉得一个人打理自己的股票、时刻盯着股市，那是把自己的闲暇给糟蹋了。我永远不
> 会有热情去看股市的。
>
> 我对层出不穷的新名词感到厌烦。或者说我对世界总体上越来越厌倦。我还没到抑郁症
> 的地步，也没偏执到与你们作对。世界很大，有那么多角落，很多东西是可以完全漠视
> 的，无论它多么主流。

## `1452942694`{.tzx-timestamp} 中文网站无中文

~~完全不知道为什么……你们定位是国外用户？也没感觉到啊。那为毛主界面上一个中文都没有！
作为一个说过“中文毁三代”，“我才不会用中文玷污自己的代码”的男人，我都无法理解了。~~

是我自己电脑设置的问题。

<!--
## 1452685079: 我不相信他

昨天很伤心，昨天很愚蠢。但我确实不喜欢这个男人。
但每个人都有权利做出自己的选择，我不应该干预。
我觉得自己现在就是个傻逼。^[还是个双子座（呵呵哒）。]

外，真心不喜欢有事没事发“![](http://gnat-tang-shared-image.qiniudn.com/emoji/20.gif)”的男人。

不过我只能祝小朱幸福，送给他们一根耳机分线器。^[SHIT!!! SHIT!!! SHIT!!!]

突然看到一句话：

> 祝她幸福，祝我快乐。

So it will be.
-->

## `1452000669`{.tzx-timestamp} 毛主席当然不是非黑即白

> 毛之所以有群众基础，
>
> 就是因为他的精神迎合了最底层民众的精神——不是零度就是一百度，非杨即墨，非奸即盗。
>
> 不过随着时间的消散作用，民众渐渐也会不那么二元。

显然不是这样。

大多数人的精神都是容易动摇的，你将信将疑，如何让别人铁了心跟你？
毛爷爷不是非黑即白，而是采用了一套简单、明确的做事原则，
不然下面的人乱成一团，这个国家还有救？

外，我一直觉得一个高明的坏蛋比一个无能的佛祖更有益于人类的整体发展。
无疑毛爷爷很高明，而且不混蛋。

不知道多少人一提起毛爷爷，就想到文革，就想到饥荒饿死人，就想到长春的屠城。然而
，文革并非毛爷爷所愿（江青倒是真让我觉得女人的可怕），毛最后几年时光都是憔悴、
无力、寂寥地，你指望他有年轻时跟打劫的土匪拼了的毅力决心和体力吗？饥荒？我想每
个人都有打肿脸充胖子的时候，比如小时候妈妈让你穿衣服你不穿，冻成狗你也只能在心
里骂骂娘，跟你妈依旧只能嘴上硬说“不冷”。这种打肿脸充胖子在建国初期也有积极意义
，那时候全世界都不看好我们。毛爷爷能带我们一起要饭去？至于屠城，即便是真的。那
也无奈，懂得统筹的人这时都不得不适时割舍。只要不是变态，每个人都会难受。但寒冷
若是不可避免的，请扛住。

总之，毛爷爷是个个性十足有毅力，坚韧不拔不畏缩的人。

我确实特讨厌左也不成右也不成的 pussy，对他们我只能说

> “Take it，take it，and piss off！”（请脑补 Ｌｅｏｎａｒｄｏ　Ｄｅｃａｐｒｉｏ 的在《血钻》的语气）

我怜悯你，也同时鄙视你。

嗨，我简直太爱毛爷爷的**斗争意志**了。^[格瓦拉比起毛爷爷，简直是既不够浪漫也不够强悍。]

Refs

#. [几个版本的比较--读后感 (评论: 毛泽东传)](http://book.douban.com/review/4562952/)

## `1451283139`{.tzx-timestamp} 售价远高于成本

我已经不止一次看到“iPhone 的售价远高于成本”的说法，呵呵哒。
说这话的人大概只算材料价格。这么算价格的人估计不去餐馆吃饭，也不会做饭，
把菜买回来全部剁成渣渣兑点水不就可以了。

iPhone 的价值当然不能用原材料算。在它的设计、制造、运输过程中，
每个人都给它注入了更多的价值，不能忽视。
尤其是那些程序员，难道他们的工作成果就是几十 MB 的字符？

## `1451203756`{.tzx-timestamp} 字“好看”却难认

其实我觉得不好看。比如这个：[冷知识 - 热门问答 - 知乎@Gnat采集到Mark(83图)_花瓣](http://huaban.com/pins/567722582/)

![](http://whudoc.qiniudn.com/shit-scripting.jpg)

真是丑死了！外，为什么小写字母要被人发明出来？全用大写不好吗？（最开始，是只有大写字母的）
就是因为小写字母有高低起伏，更够让人更快地辨识，这个蛋疼的手写体，
把 p 上面加了那么丑一个“脑袋”。

还有人喜欢（大多数是妹子）在字的末一笔加上很长的装饰性加长。我忘了这个叫什么，
但是肯定不能是每个字都这么用。Are you fucking joking me？

我用 Kindle 看书的时候，JG 也老说字体太小根本没法看。但这是无奈，因为我买不起
大屏幕的 Kindle，也没法把 PDF 的字变大，又不影响布局。奇怪的是，JG 可以忍受
自己的 Mac 上的 12px 的字。

我觉得 Mac 那种为了精致美而超级小的字号，是愚蠢的。我的笔记本字体总是调大的，系统范围 200%。
在这点上，Chrome 是愚蠢的，还在用 20 世纪的标准 12px 字号，Firefox 是明智的，目测字体至少有 16px。
而我通常都要 24px 以上。

## `1451128287`{.tzx-timestamp} 不用你客套！

我说的是听讲座的时候，在提问环节总有人要先起来感谢一下演讲者，
然后“欢迎”来中国/武大/遥感院交流。
我内心独白大概是：What the fuck！……Are you joking？Or you are jerking me off？……

## `1451117920`{.tzx-timestamp} 程序员的思维

程序员的思维里有一个很有意思的事情，就是喜欢**先**把 exception 说出来，这很适用于编程，比如：

```cpp
void doSomething( status_t *currentStatus ) {
    if ( !currentStatus ) {
        return;
    }

    // handle current status now...
}
```

程序员喜欢先把不满足的情况一个个先处理了，再专心于当下的事。

这让我想到《Ant-man》里面，话痨总是说着说着叉出去，扯半天淡，#$%^@……男主不淡定了，
“It's Wrong Details!”。

是的，这种思维不适合和人交流。

## `1451047461`{.tzx-timestamp} 剪指甲

当然不能在公共场合，难道不知道剪掉的指甲会乱飞？不知道剪指甲的声音很刺耳？
然而我在哪儿都能听到剪指甲。我不愿意去想象某片指甲飞到了谁的面包上，
我只知道这可恶的声音乱了我的心智。

## `1451047180`{.tzx-timestamp} 阿飞

《阿飞正传》里，阿飞去找自己的亲妈，亲妈不愿意见他，于是他走了，头也不回。
独白大概是说，因为她不愿意见他，那他也不绝不能让她看到自己。

这是一种互相的遗憾。

找了一下：

> 我终于来到亲生母亲的家了，但是她不肯见我，佣人说她已经不住这里了。当我离开这
> 房子的时候，我知道身后有一双眼睛盯着我，但我是一定不会回头的。我只不过想见见
> 她，看看她的样子，既然她不给我机会，我也一定不会给她机会。

> By the time when I left this house, I knew that there was someone behind
> starring at me. Though I wouldn't come back anymore, I just want to see her
> for once, To look at her face. Since she doesn't give me a chance, I won't
> give her such a chance.

## `1451032030`{.tzx-timestamp} 又是英语竞赛

本科的时候，每次我都信誓旦旦地说这次不要被 ZYX 同学虐，结果每次都别虐。失败我是
的常态，更别提她六级比我四级高……^[我四级 620 整，她六级 650+……（六级！别看错了。）]

但我怎么能认输呢，鸡蛋碰石头也得上。这里：

#. [研究生处 - 2016年全国大学生英语竞赛（NECCS）](http://www.shnu.edu.cn/Default.aspx?tabid=11957&ctl=Details&mid=25572&ItemID=172443)
#. [关于组织研究生参加2016年全国大学生英语竞赛的通知-培养-武汉大学研究生院](http://www.gs.whu.edu.cn/index.php/index-view-aid-7829.html)
#. [-启航！——2016年全国大学生英语竞赛报名工作全面展开](http://www.tefl-china.net/Article/ShowArticle.asp?ArticleID=1965)
#. [-2015年全国大学生英语竞赛样题](http://www.tefl-china.net/Article/ShowArticle.asp?ArticleID=1911)
#. [《全国大学生英语竞赛A类（研究生）历年真题精解与标准模拟考场 （第2版）》(赵晓敏...)【简介_书评_在线阅读】 - 当当图书](http://product.dangdang.com/23630422.html)
#. [2015年全国大学生英语竞赛（湖北赛区）决赛通知-本科生院](http://ugs.whu.edu.cn/info/1039/3378.htm)

25 块钱我有，害怕什么呢。

竞赛时间和方法：

:   - 初赛程序及形式。初赛定于2016年4月10日（星期日）上午9:00—11:00在全国各地同
      时举行。初赛赛题包括笔答和听力两部分。初赛听力采取播放录音的形式。
    - 决赛时间及形式。决赛笔试（含听力）定于2016年5月8日（星期日）上午9:00—
      11:00在全国各地同时举行。

初、决赛成绩公布和查询：

:   - 初赛成绩可在所在的参赛学校查询。
    - 决赛成绩可在赛后一个月到参赛学校查询。

奖励办法：

:   - 奖励等级：本次竞赛五个类别均设四个国家奖励等级：特等奖、一等奖、二等奖和
      三等奖。二等奖和三等奖通过初赛产生。特等奖和一等奖通过决赛产生。
    - 获奖证书：获奖学生由全国竞赛组委会颁发获奖证书。获特等奖、一等奖学生的指
      导教师（限一名）由全国竞赛组委会颁发荣誉证书。
    - 奖励形式：获特等奖的师生名单将在在全国大学生英语竞赛官方网站（
      www.chinaneccs.org）、中国英语外语教学研究网站（www.tefl-china.net）、英
      语辅导报社网站（www.ecp.com.cn）和全国主要外语报刊上宣传表彰。
    - 系列活动：2016年暑期举办2016年全国大学生英语竞赛（NECCS）全国总决赛暨2016
      年全国大学生英语夏令营，获特等奖的大学生均有资格和机会参加。

`1461731095`{.tzx-timestamp}，恩……炮灰了：[2016年全国大学生英语竞赛决赛通知及初
赛成绩公示-本科生院](http://ugs.whu.edu.cn/info/1039/4274.htm)

## `1451015437`{.tzx-timestamp} 书看完了再买新的！

我想买《代码大全2》，淘宝上有英文版的。但我至少要先把《Programming Perls》和《Algorithms》看完再说吧！

## `1450951484`{.tzx-timestamp} 复仇者联盟

终于想起来里面那个会迷惑人的女人在哪儿见过了，就是冰火里面的女巫啊！声音很赞。

## `1450836121`{.tzx-timestamp} 《权利的游戏》里最好看的女人

很多人喜欢“龙母” Daenerys Targaryen（Emilia Clarke），但我觉得她并不好看
[^eastface]。她还在《终结者 5》饰演了 Sarah Connor，同样，我也不喜欢。Game of
Throne 里面我喜欢的是 Rose Leslie 饰演的 Ygritte（老拼不对，这次我要记住！），
如下图：

![](http://whudoc.qiniudn.com/ygritte.jpg)

神奇的是，很多人特别喜欢她，很多人特别讨厌她[^ygritte-db]，有点像大家对 SICP 的感觉一样……[^sicp]：

![说好的正态分布呢？](http://whudoc.qiniudn.com/2016/QQ图片20160328182211.png)

```tzx-bigquote
    Its the Best! Its the Worst! Why the split?, May 8, 2000
    --------------------------------------------------------

                                             By Peter Norvig

This review is from: Structure and Interpretation of Computer Programs - 2nd
Edition (MIT Electrical Engineering and Computer Science) (Hardcover) I think
its fascinating that there is such a split between those who love and hate this
book. For most books, the review is a bell-shaped curve of star ratings; this
one has a peak at 1, a peak at 5, and very little in between. How could this
be? I think it is because SICP is a very personal message that works only if
the reader is at heart a computer scientist (or willing to become one). So I
agree that the book's odds of success are better if you read it after having
some experience.

To use an analogy, if SICP were about automobiles, it would be for the person
who wants to know how cars work, how they are built, and how one might design
fuel-efficient, safe, reliable vehicles for the 21st century. The people who
hate SICP are the ones who just want to know how to drive their car on the
highway, just like everyone else.

Those who hate SICP think it doesn't deliver enough tips and tricks for the
amount of time it takes to read. But if you're like me, you're not looking for
one more trick, rather you're looking for a way of synthesizing what you
already know, and building a rich framework onto which you can add new learning
over a career. That's what SICP has done for me. I read a draft version of the
book around 1982, when I was in grad school, and it changed the way I think
about my profession. If you're a thoughtful computer scientist (or want to be
one), it will change your life too.

Some of the reviewers complain that SICP doesn't teach the basics of OO design,
and so on. In a sense they are right. The book doesn't directly tell you how to
design and write an object-oriented program using the subset of object-oriented
principles that show up in the syntax of Java or C++. Rather, the book tells
you what those *principles* are, how they came to be selected as worthwhile,
how they can be implemented from the ground up, and how a different combination
of principles might be more appropriate for some particular problems. This
approach requires you to understand the range of possibilities, and to think
about trade-offs as you go through the design process. *Programming is a craft*
that is subject to frequent failure: many projects are started and abandoned
because the designers do not have the flexibility, experience and understanding
to come up with a suitable design and implementation. SICP gives you an
approach that will succeed, but it is an approach based on *principles* and
*wisdom*, not on a checklist. If you don't understand the principles, or if you
are the kind of person who wants to be given a cookbook of what to do rather
than to think creatively, or if you only want to work on problems that are
pretty much like the problem you worked on last time, then this approach will
not work for you. There are other approaches that will be more reproducible for
a limited range of simple problems, but there is no better way than SICP to
learn how to address the truly hard problems.

Donald Knuth says he wrote his books for "the one person in 50 who has this
strange way of thinking that makes a programmer". I think the most amazing
thing about SICP is that there are so FEW people who hate it: if Knuth were
right, then only 1 out of 50 people would be giving this 5 stars, instead of
about 25 out of 50. Now, a big part of the explanation is that the audience is
self-selected, and is not a representative sample. But I think part of it is
because Sussman and Abelson have succeeded grandly in communicating "this
strange way of thinking" to (some but not all) people who otherwise would never
get there.
```

[^eastface]: 如果喜欢东西方混合的美，就去看 [Rosamund Pike](http://www.imdb.com/name/nm0683253/?ref_=tt_cl_t2)，然而，同样我并不觉得她有那么美。
[^ygritte-db]: 见 [权力的游戏 第三季 剧照](https://movie.douban.com/photos/photo/1853305015/)。
[^sicp]: See [Amazon.com: Peter Norvig's review of Structure and Interpretation of Computer P...](http://www.amazon.com/review/R403HR4VL71K8).

当然，Shae 也很漂亮。

## `1450786936`{.tzx-timestamp} 又来卖弄学问！

这次吐槽的是自己。当我看到有人什么都在后面加个“er”表示什么什么人的时候，
我就情不自禁得觉得：好二。很多情况下能不能加“er”，该不该加“er”得看这个单词
的读音适不适合加“er”。比如 Donald Knuth 问过，TeX 的使用者，应该叫“Tekser”，还是
应该叫“Tecnician”。这么说，我觉得“Vimer”可以接受，“Emacser”不能接受，因为我是
“Vimer”，也是“Emasian”（这个发音好诡异，我把 `k` 这个音去掉了）。

后来我发现，又是自己记错了，原书（*The $\TeXbook$*）是这么说的：

> After you have mastered the material in this book, what
> will you be: A $\TeX pert$, or a $\TeX nician$?

然后这个答案让我想死：

> A $\TeX nician$ (underpaid); sometimes also called a $\TeX acker$.（好象 Tech Sucker……）

前几天跟 JG 说的外国人不会拼 banana 也有问题，其实那是一个小女孩的
“I know how to spell banana, but I don't know when to stop.”。我真是记忆力捉急！

## `1450695983`{.tzx-timestamp} Windows 真是太弱了

试了很久 Qt 的 QProcess 都不行。最后在 Ubuntu 上，
都可以！Windows 上真心不知道路径要 `/` 还是 `\\` 还是 `\`，一个个试，
也不行。

By the way，Qt 真心好用。刚才的测试：

```cpp
#include <QProcess>
#include <QDebug>
#include <QStringList>
#include <cstdio>

int main( void )
{
    // simple echo
    {
        QProcess process;
        process.start("echo", QStringList() << "Qt" << "Process" );
        process.waitForFinished();
        qDebug() << "echo: " << QString(process.readAllStandardOutput());
    }
    // pwd
    {
        QProcess process;
        process.start("pwd");
        process.waitForFinished();
        qDebug() << "pwd: " << QString(process.readAllStandardOutput());
    }
    // ag?
    {
        QProcess process;
        process.start( "ag", QStringList() << "moe~" << "." );
        process.waitForFinished();
        qDebug() << "ag: " << QString(process.readAllStandardOutput());
    }
    return 0;
}
```

name it to `project.cpp`，run these commands in Bash：

```bash
$ qmake -project
$ qmake
$ make
$ ./process
```

output：

```plain
echo:  "Qt Process
"
pwd:  "/tmp/process
"
ag:  "        process.start( "ag", QStringList() << "moe~" << "." );
"
```

用用 Qt 在 Linux 下那么容易的事（随手写一个 cpp 多方便），在 Win 上变得却如此复杂（只能用 Qt Creator 或者 CMake 建立工程）。

BeeBEEP 不错。可以在 Win 和 Linux 下面简单地聊天（复制文字）。

## `1450585786`{.tzx-timestamp} Sakai 女神

的歌总是那么让人精神振奋。可是我发现自己在音悦台下的演唱会音频
好捉急，一点都不好听，一定是谁在背后黑 Sakai。那是 04 年的演唱会，
Sakai 唯一一次演唱会，那时候她都老了。

特别喜欢这个：あの微笑みを忘れないで，活力四射。

## `1450537571`{.tzx-timestamp} CSDN 的广告

特别垃圾。刚才还弹出来一个“如何致富”，然后配图是一个卖地瓜……

## `1450516728`{.tzx-timestamp} Small Powerful Tool

Notepad++ is a free (as in "free speech" and also as in "free beer") source
code editor and Notepad replacement that supports several languages. Running in
the MS Windows environment, its use is governed by GPL License.

简单强大的典型：Notepad++，而且不自说自话打扰你。

还开源 free beer，[notepad-plus-plus/notepad-plus-plus](https://github.com/notepad-plus-plus/notepad-plus-plus)

## `1450509617`{.tzx-timestamp} Windows Sucks

想不通了怎么会这么卡！老师给的笔记本配置好到爆（除了网卡和硬盘），居然动不动就
freeze。现在不得不把外观调到最差，才显得流畅一些。比较让人不舒服的是，除了那些
有广告的恶心软件，大多数软件也都特别无耻地有事没事更新，关都关不掉，比如：
Firefox 整天催着我 update，VS 整天提醒我有新的 Extension 可以更新。还有 OneNote
，整天启动，但我真心不想用你了！

网卡让人无语到根本不想上网。在长沙的时候，谢师傅的电脑能上网，我和大侠的就是不
行。只能说这电脑是中看不中用。

就跟所有的手机让我不满意一样，我对所有的电脑也不满意，尤其是字体大小这一点。你
们就不能默认大一点的字体？Windows 上我总是设置成全系统 125%，现在我要改成 150%
。这一点上 Mac OS X 和各种 Linux distros 一样蠢，都喜欢把字体设置为 12px 以及以
下。然后现在分辨率早不是原来 800x600，设置成 18px 都不过分。

Windows 另一个傻逼之处是如果更新了，开机还要配置很久，从来不考虑用户开机的时候
很忙，不想干等着你龟速地更新。关机也一样。最起码提供一个“我现在安装了更新，但我
这次关机/开机/重启不希望它做任何耗时的改变”这个选项吧。

Windows 的 Explorer 的 `Control` 加滚轮居然是改变视图模式，然而我就是想改变字体
大小，而已。

## `1450503402`{.tzx-timestamp} 国内技术社区

#. CSDN 广告最多，做得最烂，人多又杂。
#. 博客园，比 CSDN 好点，广告少点。
#. 开源中国，广告略有品位，比前两者好，它的 [技术翻译](http://www.oschina.net/translate) 很有意思
#. V2EX，很少上，不评价。
#. SegmentFault，很不错。
#. Coding.net，GitCafe，Git@OSC 这个不算社区。

## `1450430826`{.tzx-timestamp} C++ 真是比 C 语言庞大太多

比如 OSG 里常用的这段代码，I have no fucking idea 这东西什么意思。
是 `ref_ptr` 模板类重载了 `->` 操作符？这迷惑性太大。

```cpp
osg::ref_ptr<osg::Group> lanes = new osg::Group;
lanes->addChild( lane );
return lanes.release();
```

我一直想吐槽 C++ 的引用，比如 `function(arg)`{.cpp}，这完全看不出来 `arg` 是否会被改变。
STL 还提倡大家都把返回值都变成变成传入引用的方式，因为这样可以完全不需要拷贝……

C 语言里一个指针就意味着可能“我要动你”。比这个明确得多，比如：

```c
int x1;
function1( &x1 );       // 我（可能）动你对象

int *x2;
function2( x2 );        // 我（可能）动你对象
```

C 喜欢说：我只（可能）动你“对象”，不动你。如果你想我动你，你得明确地指明，所以 `getline` 函数的使用才会那么“古怪”：

```cpp
FILE *fp = fopen( ... );
char *line = NULL;
size_t len = 0;
getline( &line, &len, fp );
```

第一次看上觉得“怪”，慢慢就明白了这简洁设计的良苦用心。C++ 把程序员眼里看到的确定性一手毁了。

## `1450429339`{.tzx-timestamp} Stupid Visual Studio

很多时候我更倾向于用 Qt Creator。因为它很贴心地有一个“切换头文件/源文件（F4）”的功能，
而 VS 居然只能“Go To Header File”，我怎么回来？每次都要找到文件列表，或者踩着一个函数“Go To Definition（F12）”。

去网上查了，有人弄了宏实现：[Visual Studio Macro to switch between CPP and H
files | Alteridem `[al′tər ī′dem′]`](http://www.alteridem.net/2008/02/26/visual-studio-macro-to-switch-between-cpp-and-h-files/)
。

但，我已经被 VS 蠢哭。

我想你一定不要错过 Vertical Tabs：

![](http://whudoc.qiniudn.com/2016/vertical-tabs.png)

我现在是浏览器，VS 都装了这种类型的插件，see [图片-dvorak4tzx](http://dvorak4tzx.lofter.com/post/1d4021c8_ad387c3)。

## `1450421135`{.tzx-timestamp} CMake 的 Cache 太扯淡

我已经不是第一次被它坑了。出了问题一定**第一时间**先试试重新完全 CMake 一下看问题还在不在。

比 CMake 愚蠢的是我自己，居然找了一个库，想弄个静态库 lib 文件，再把头文件引入。然而它只有头文件，
所有的实现都在这些头文件里，只有头文件还怎么生成静态库啊！

`1462676673`{.tzx-timestamp}，发现 QtCreator 里也有这个问题。如果一个新建的类（单独的 `.h` 和 `.cpp`）原来不需要
`moc`{.bash} 处理（不是 QObject 子类，没有添加 `Q_OBJECT` 宏），后来从 QObject 类继承，然后添加上 `Q_OBJECT` 宏，
也会出错。也是要把 build 文件夹完全删除才可以。

## `1450410830`{.tzx-timestamp} 为什么不给 BUF 多分配一个字符作为截止？

因为这是彪悍的 C/C++，你有责任知道自己在干什么。
而且，因为你分配的 buffer 不一定用来放字符串，不一定用到
那些需要借助 `\0` 来截止的函数（比如处理 `%s` 时的 `printf`{.cpp}）。

    - 你保证不越界？
    - 我保证！

## `1450408403`{.tzx-timestamp} 指针符号放在哪儿？

有些人喜欢用 `int *i`{.cpp}，有些人喜欢用 `int* i`{.cpp}，我倾向于第一种。

在函数声明/定义的时候有些人喜欢用 `int *f()` 有些人喜欢 `int* f()`，也有人用 `int * f()`，
我最欣赏第三种，但我用第一种。

在使用引用符号时大家也会有很大分歧，有人用 `int &ii` 有人用 `int& ii`，当然也有 `int & ii`，同样
我欣赏第三种，但我用第一种。

第一种比第二种更加接近真实，因为 `int *a, b` 实际是 `int *a; int b;` 而不是 `int* a; int* b;`。
所以使用 `int *i` 是一种避免落入此陷阱的策略。另一种策略是“永不使用一个类型多个变量的定义方式”，
把 `int* i` 和

```cpp
int* a;
int* b;
// 不使用 int* a, b; （实际这也是错的）
```

搭配使用。但我，依旧偏向第一种。Qt 也是偏向第一种^[但他们的 API 和文档，为了更
好的显示，用了第三种。]。

风格这东西随着时间都会变，以前人
们写 C 的时候还喜欢把返回值放在函数名的上一行呢。很科学，但太 trivial 了。

```
int *
getInt() {
    ...
}
```

当然，我很欣赏这个风格（清晰，一目了然）。

## `1450405601`{.tzx-timestamp} 制作灵格斯词典

[这个页面](http://www.lingoes.cn/zh/dictionary/dict_format.php) 说明了 Lingoes 词典的格式，
感觉这东西可以用来做成一个个人 wiki。

> 由于词典编译器仍在制作当中, 用户制作好词典源文件后, 请将该文件发往
> kevin-yau@msn.com  邮箱, 暂由作者代为转换成可以在灵格斯中使用的 .ld2 词典文件
> . 待词典编译器开发完成后, 用户将可自行使用编译器生成 .ld2 词典.

这个词典编辑器具什么时候能开放啊，难道我的 wiki 要时不时地发给 kevin 吗……

```plain
welcome
n. 欢迎, 接待<br/>v. 打败; 欺骗; 胜过<br/>adj. 受欢迎的, 可喜的, 可任意的

good|well|best
n. 好; 慷慨的行为; 好事<br/>adj. 好的, 上等的, 优良的
```

这个格式很简单很简单，甚至简单的脚本都能把它和 Pandoc 互通格式。

## `1450360685`{.tzx-timestamp} E-Typewriter

我想有一个打字机，有基本的机械键盘（60%），
还有一个比较长的屏幕（因为键盘本来就挺长），但高度可能只需要
40 行高。这样的小电脑，可以运行一个超级轻量级的 Linux，
配置了 Vim，可以用过来打字。可以联网同步数据（GitHub、Dropbox 之类）。

`1462676976`{.tzx-timestamp}，可能还需要开一个 ssh 服务，
还需要一个 USB 接口。最关键的是，待机时间要长（堪比 Kindle？）。

## `1450357527`{.tzx-timestamp} Password Fatigue

我觉得我得给自己设计一套密码本，取代原来的中文缩写。
用一张图片做背景，把乱码放上去，每个人都能看到这张图，
但就我知道那个账户的密码是在哪些纹理处的密码拼接而来。

## `1450320066`{.tzx-timestamp} Emacs with Evil-mode on Windows

首先下载 [Evil-mode](https://bitbucket.org/lyro/evil/wiki/Home)，或者用我的
备份：<http://whudoc.qiniudn.com/evil.7z>

然后打开 Emacs（我的备份：<http://whudoc.qiniudn.com/emacs.7z>），随便修改一下
配置，然后保存配置（`Options -- Save Options`），下面会出现你的配置地址，通常是
当前用户的 Roaming 文件夹（如：`C:\Users\Administrator\AppData\Roaming`），文件
夹下有一个 `.emacs` 文件和一个 `.emacs.d` 文件夹。

把解压后的 evil 文件夹放到 `.emacs.d` 文件夹，再修改 `.emacs` 文件，添加如下几行：

```
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)
```

打开 Emacs 就可以用了～

后来我有个个更好的主意，下载这个压缩包：
[config.7z](http://whudoc.qiniudn.com/config.7z)，放在随意的位置（我放在了
`emacs/bin` 文件夹下），如果你的 Win 安装了 [Bash](http://7xjdjw.com1.z0.glb.clouddn.com/Git-1.9.5-preview20150319.exe)，
双击这个 `config.sh`，就可以把配置自动处理好。

`config.sh`

:   ```bash
    #!/bin/bash

    junction $HOME/AppData/Roaming/.emacs.d `pwd`/emacs.d
    cp emacs.txt $HOME/AppData/Roaming/.emacs
    ```

    其中的 `junction`{.bash} 是 Win 下的 `ln -s`。你可以从微软官网上下载到。

但是启动特别慢，还特别卡！所以我一直用的 GVim。

## `1450267233`{.tzx-timestamp} Perl for Vimer

Perl 这门语言简直和 Vim 一个娘胎出来的！正则表达式几乎一模一样。
如果你用 Vim，却不学习 Perl，then You dont know what you missed。
Perl 处理起来文本特别牛逼，我觉得可以作为文本编辑器 Vim 之外的一个助手。
简单编辑用 Vim，脏活累活就搬出杀器 Perl。

比如在 Perl 里：

```perl
s/^\s+|\s+$//g
```

在 Vim 里：

```perl
s/\(^\s*\)\|\(\s*$\)//g
```

当然，两者都可以指定 delimiter，简直 identical。

`1462677122`{.tzx-timestamp}，其实 RegExp 都差不多。

## `1449975628`{.tzx-timestamp} What is Vim? Why Vim?

Vim 是一个用正则表达式把自己武装到牙齿的高效编辑器，其设计理念决定了它
能够存活几十年并在程序员的世界里广受欢迎。Vi 是银光闪闪的 Bill Joys 写的，
在那之前他写了 `ex`{.bash}。然后 Vi 系列就成了 Linux、Unix 等操作系统的标配。

Vi 的设计理念只于文本编辑器，就像是信息量只于信息，它就是那最小最核心的内容。
用正则表达式来匹配内容，用指令来进行操作。所有的文本操作都变成了一个动词加一个名词。
Emacs 和 Vim 不同，它的强大不在于设计理念，而在于使用的语言。与 `Vi`{.bash} 比起来就像是一个
一个 Naive 的 third class 程序员用 C# 写了一个漂亮的 GUI，提供了跟飞机驾驶舱一样多的功能，
而且告诉用户这些你都可以定制！Vi 在角落偷笑，傻逼才要那么多功能，“我只给你一把 Katana，
只要你再把正则表达式这本武林秘籍学好，不管什么样的战斗机，分分钟把它拆了”。

哦，我以前也是用 Emacs，后来我皈依了 Vim。不过现在虽然总黑 Emacs，
但有一天我会回去继续使用它。毕竟，它可以定制，而我有 Vim 满足不了的需求。

By the way，jgm 大神也用 Emacs（包括 Evil-mode）：

```lisp
(setq my-packages
   '(use-package evil evil-leader evil-jumper deft markdown-mode pandoc-mode
     magit full-ack yasnippet js2-mode phi-rectangle haskell-mode
     ghc solarized-theme helm cmake-mode lua-mode))
```

#. `ex`{.bash}, short for EXtended, is a line editor for Unix systems
    originally written by Bill Joy in 1976, beginning with an earlier program
    written by Charles Haley.
#. The original code for `vi`{.bash} was written by Bill Joy in 1976, as the
    visual mode for a line editor called `ex`{.bash} that Joy had written with Chuck Haley.

Refs

#. [vi - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Vi)
#. [ex (text editor) - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Ex_%28text_editor%29)
#. [Emacs - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Emacs)

## `1449914013`{.tzx-timestamp} Greedy Search

几乎所有的搜索工具都不能让我满意，无论是 grep、ag、Everything、Google、Bing、百
度，它们忽略了一个很明显的需求：如果找不到，就放宽条件帮我找一个！No matter what。

Grep 不提供这个功能是可以理解的，程序员可以得到“我没有找到”的提示，继而处理那些
fallback。但在其它搜索情形，提示“我没有找到”并不是好主意，因为用户心里觉得可以
找到，应该找到。

所以每次在浏览器里 <kbd>Control+F</kbd> 却什么都没有就很失望，你不能换一种高亮
颜色，放宽搜索条件帮我找找？！怎么能跟地球上所有号称“智能机”的那些东西一样蠢？

话说 Vim 也是这么蠢，如果没有 ignore case，找不到就是找不到。我觉得应该先 case sensitive 地
找找，找不到的话，1）ignore case 找，把找到的文字另一种高亮上色；2）
提示用户你可以设置 ignore case 或者关闭这个“自作多情”（How cute）的编辑器。

话说 Emacs 在这个方面做得特别赞，默认关闭了很多功能，当你第一次 invoke 它的时候，
就会提示你的这个操作不是给 novince 用户用的，你确定要打开这个高级功能？然后你
就可以选啊。How considerate。

## `1449810918`{.tzx-timestamp} Pandoc 之罪

Pandoc 属于神器之中的神器，从名字就可以看出来，`pan` + `doc`，有种一统江湖
的感觉对吧，听上去像 Pandora 一样美对吧。

可是它有这么一个功能：

Extension: `ignore_line_breaks`

:   Causes newlines within a paragraph to be ignored, rather than being treated
    as spaces or as hard line breaks. This option is intended for use with East
    Asian languages where spaces are not used between words, but text is
    divided into lines for readability.

东亚的文字是不需要加入空格，但是东亚人也用英文，东亚的文字和英文之间要加空格啊！
（处女座要。）我实在不知道为什么 Pandoc 不提供一个功能，使得前一行的末尾和后
一行的开头是东亚文字的时候不加空格，否则加一个空格。

用老师的话说是“很简单”。

话说 Vim 也没这么智能，但需要在这里为什么产品还没出来？

By the way，为此我专门跑到 Pandoc 的 GitHub 上提交了一个 Issue，说不定他们能很
快添加这个功能呢～

大神已经搞定了：See [膜拜大神](post-0076-real-hacker.html)。

## `1449807394`{.tzx-timestamp} Atom 编辑器之罪

Atom 是 GitHub 开发的号称 21 世纪的编辑器。但是，插件（我只是要个 Vim-mode 而已）
我装不了，因为装插件要联网。感谢 GFW，让我们回到了让人怀念二十世纪。

外，装了 Atom 提示安装 .Net 4.5，装完之后我的 VS 2010 挂了。找了很久才发现是 VS
2010 需要的是 .Net 4.0，不能是 4.5。然后又是一番折腾。

结论是，编辑器还是用 Vim 省心。

## `1449754750`{.tzx-timestamp} 文档这么丑！

CMake 的文档是 "Created using Sphinx 1.3a0."，字体那么小，完全糊在一起，根本看
不清。我觉得这个 Sphinx 弄出来的文档都特别恶心，Python 社区似乎特别偏爱这个破工
具。OpenCV 的文档也用这工具写的，醉了醉了醉了！

CMake 社区的示例代码也很少，而且给的例子都让人无语。明明你代码不会很多很长，为
什么缩进不弄 4 个空格而是 2 个？太抠了。

外，我见到的网站的搜索工具，一个比一个烂，根本不能用，本地随便一个八十年代的
grep 效果都比你好。特别慢，等你终于等到结果，显示的是“没有结果”，是不是特让人无
语。

## `1449546008`{.tzx-timestamp} Windows 系统小工具

好用的都在这个文件夹：`C:\Windows\SysWOW64`，比如 `where`{.bash}（相当于 Linux
的 `whereis`），`clip`{.bash}（相当于 `xclip -selection clipboard -o`。

最常用的是 `date +%s | clip`。

Windows 上的 `tree.com`{.bash} 和 *nix 下的 `tree`{.bash} 也类似，不过用的时候
要 `tree /F`{.bash} 才能把文件也打印。见 help（`help tree`{.bash}）：

```plain
以图形显示驱动器或路径的文件夹结构。

TREE [drive:][path] [/F] [/A]

   /F   显示每个文件夹中文件的名称。
   /A   使用 ASCII 字符，而不使用扩展字符。
```

Windows 下还有一个命令叫 `convert`{.bash}，它和 ImageMagick 的 `convert`{.bash}
冲突，可以考虑把后者重命名。

（我突然明白了为什么加系统变量的时候要把新的路径加在前面……）

安装了 Git Bash 后系统就有很多 Linux utils，记得把它加到 `%PATH%`：`C:\Program
Files (x86)\Git\bin`，Git Bash 的好处是可以随处在当前目录打开Bash。**CMD 可以通
过按住 <kbd>Shift</kbd> 再右键，“在此处打开命令窗口”。**

CMD 清屏不是 `clear` 不是 `clr` 而是 `cls`。

```tzx-bigquote
antiword.exe        dirname.exe         gpgkeys_ldap.exe  patch.exe
astextplain         docx2txt            gpgsplit.exe      patch.exe.manifest
awk                 dos2unix.exe        gpgv.exe          pdfinfo.exe
basename.exe        du.exe              grep.exe          pdftotext.exe
bash.exe            echo                gunzip.exe        perl.exe
bison.exe           egrep               gzip.exe          printf
bunzip2             env.exe             hd2u.exe          ps.exe
bzip2.exe           expr.exe            head.exe          pwd
c_rehash            false.exe           iconv.exe         rebase.exe
cat.exe             find.exe            id.exe            recodetree
chmod.exe           flex.exe            kill.exe          rm.exe
clear               gawk.exe            less.exe          rmdir.exe
cmp.exe             getcp.exe           ln.exe            rxvt.exe
connect.exe         git.exe             ls.exe            scp.exe
cp.exe              gitk                m4.exe            sed.exe
curl-ca-bundle.crt  gpg-zip             md5sum.exe        sh.exe
curl.exe            gpg.exe             mkdir.exe         sleep.exe
cut.exe             gpgkeys_curl.exe    msmtp.exe         sort.exe
date.exe            gpgkeys_finger.exe  mv.exe            split.exe
diff.exe            gpgkeys_hkp.exe     openssl.exe       ssh-add.exe

ssh-agent.exe       tar.exe             true.exe          vim
ssh-keygen.exe      tclsh.exe           uname.exe         vimtutor
ssh-keyscan.exe     tclsh85.exe         uniq.exe          wc.exe
ssh.exe             tee.exe             unix2dos.exe      which
start               touch.exe           unzip.exe         wish.exe
tail.exe            tr.exe              vi                wish85.exe
xargs.exe           yacc
```

```plain
## UTF-8 to Unicode
## This file is a dummy.
## The conversion is done algorithmicly, not by a table look-up.
```

<div class="tzx-drawer" shy>
Git Bash 文件夹下很有意思：

:   ```plain
    文件夹 PATH 列表
    卷序列号为 00000200 946A:A42F
    C:\Program Files (x86)\Git
    │  .bash_history
    │
    ├─bin
    │      antiword.exe
    |      ...
    │      yacc
    │
    ├─cmd
    │      git.exe
    │      gitk.cmd
    │      start-ssh-agent.cmd
    │
    ├─doc  （下面有很多文档，一个小小的程序里就有这么多值得学习的地方。）
    │
    ├─etc
    │      fileList-bindimage.txt
    │      fileList-builtins.txt
    │      git-completion.bash
    │      git-prompt.sh
    │      git.ico
    │      gitattributes
    │      gitconfig
    │      inputrc
    │      motd
    │      profile
    │      termcap
    │
    ├─lib
    │  ├─engines
    │  │      lib4758cca.so
    │  │      libaep.so
    │  │      libatalla.so
    │  │      libcapi.so
    │  │      libchil.so
    │  │      libcswift.so
    │  │      libgmp.so
    │  │      libgost.so
    │  │      libnuron.so
    │  │      libpadlock.so
    │  │      libsureware.so
    │  │      libubsec.so
    │  │
    │  ├─perl5
    │  │  ├─5.8.8
    |
    ├─libexec
    │  └─git-core
    │      │  git-add--interactive
    │      │  git-add.exe
    │      │  git-am
    │      │  git-annotate.exe
    │      │  git-apply.exe
    │      │  git-archive.exe
    │      │  git-bisect
    │      │  git-bisect--helper.exe
    │      │  git-blame.exe
    │      │  git-branch.exe
    │      │  git-bundle.exe
    │      │  git-cat-file.exe
    │      │  git-check-attr.exe
    │      │  git-check-ignore.exe
    │      │  git-check-mailmap.exe
    │      │  git-check-ref-format.exe
    │      │  git-checkout-index.exe
    │      │  git-checkout.exe
    │      │  git-cherry-pick.exe
    │      │  git-cherry.exe
    │      │  git-citool
    │      │  git-clean.exe
    │      │  git-clone.exe
    │      │  git-column.exe
    │      │  git-commit-tree.exe
    │      │  git-commit.exe
    │      │  git-config.exe
    │      │  git-count-objects.exe
    │      │  git-credential-store.exe
    │      │  git-credential-wincred.exe
    │      │  git-credential.exe
    │      │  git-daemon.exe
    │      │  git-describe.exe
    │      │  git-diff-files.exe
    │      │  git-diff-index.exe
    │      │  git-diff-tree.exe
    │      │  git-diff.exe
    │      │  git-difftool
    │      │  git-difftool--helper
    │      │  git-fast-export.exe
    │      │  git-fast-import.exe
    │      │  git-fetch-pack.exe
    │      │  git-fetch.exe
    │      │  git-filter-branch
    │      │  git-fmt-merge-msg.exe
    │      │  git-for-each-ref.exe
    │      │  git-format-patch.exe
    │      │  git-format-patch.exe.manifest
    │      │  git-fsck-objects.exe
    │      │  git-fsck.exe
    │      │  git-gc.exe
    │      │  git-get-tar-commit-id.exe
    │      │  git-grep.exe
    │      │  git-gui
    │      │  git-gui--askpass
    │      │  git-gui--askyesno
    │      │  git-gui.tcl
    │      │  git-hash-object.exe
    │      │  git-help.exe
    │      │  git-http-backend.exe
    │      │  git-http-fetch.exe
    │      │  git-http-push.exe
    │      │  git-imap-send.exe
    │      │  git-index-pack.exe
    │      │  git-init-db.exe
    │      │  git-init.exe
    │      │  git-log.exe
    │      │  git-ls-files.exe
    │      │  git-ls-remote.exe
    │      │  git-ls-tree.exe
    │      │  git-mailinfo.exe
    │      │  git-mailsplit.exe
    │      │  git-merge-base.exe
    │      │  git-merge-file.exe
    │      │  git-merge-index.exe
    │      │  git-merge-octopus
    │      │  git-merge-one-file
    │      │  git-merge-ours.exe
    │      │  git-merge-recursive.exe
    │      │  git-merge-resolve
    │      │  git-merge-subtree.exe
    │      │  git-merge-tree.exe
    │      │  git-merge.exe
    │      │  git-mergetool
    │      │  git-mergetool--lib
    │      │  git-mktag.exe
    │      │  git-mktree.exe
    │      │  git-mv.exe
    │      │  git-name-rev.exe
    │      │  git-notes.exe
    │      │  git-p4
    │      │  git-pack-objects.exe
    │      │  git-pack-redundant.exe
    │      │  git-pack-refs.exe
    │      │  git-parse-remote
    │      │  git-patch-id.exe
    │      │  git-patch-id.exe.manifest
    │      │  git-prune-packed.exe
    │      │  git-prune.exe
    │      │  git-pull
    │      │  git-push.exe
    │      │  git-quiltimport
    │      │  git-read-tree.exe
    │      │  git-rebase
    │      │  git-rebase--am
    │      │  git-rebase--interactive
    │      │  git-rebase--merge
    │      │  git-receive-pack.exe
    │      │  git-reflog.exe
    │      │  git-relink
    │      │  git-remote-ext.exe
    │      │  git-remote-fd.exe
    │      │  git-remote-ftp.exe
    │      │  git-remote-ftps.exe
    │      │  git-remote-http.exe
    │      │  git-remote-https.exe
    │      │  git-remote-testsvn.exe
    │      │  git-remote.exe
    │      │  git-repack.exe
    │      │  git-replace.exe
    │      │  git-request-pull
    │      │  git-rerere.exe
    │      │  git-reset.exe
    │      │  git-rev-list.exe
    │      │  git-rev-parse.exe
    │      │  git-revert.exe
    │      │  git-rm.exe
    │      │  git-send-email
    │      │  git-send-pack.exe
    │      │  git-sh-i18n
    │      │  git-sh-i18n--envsubst.exe
    │      │  git-sh-setup
    │      │  git-shortlog.exe
    │      │  git-show-branch.exe
    │      │  git-show-index.exe
    │      │  git-show-ref.exe
    │      │  git-show.exe
    │      │  git-stage.exe
    │      │  git-stash
    │      │  git-status.exe
    │      │  git-stripspace.exe
    │      │  git-submodule
    │      │  git-subtree
    │      │  git-svn
    │      │  git-symbolic-ref.exe
    │      │  git-tag.exe
    │      │  git-unpack-file.exe
    │      │  git-unpack-objects.exe
    │      │  git-update-index.exe
    │      │  git-update-index.exe.manifest
    │      │  git-update-ref.exe
    │      │  git-update-ref.exe.manifest
    │      │  git-update-server-info.exe
    │      │  git-update-server-info.exe.manifest
    │      │  git-upload-archive.exe
    │      │  git-upload-pack.exe
    │      │  git-var.exe
    │      │  git-verify-pack.exe
    │      │  git-verify-tag.exe
    │      │  git-web--browse
    │      │  git-whatchanged.exe
    │      │  git-write-tree.exe
    │      │  git.exe
    │      │
    │      └─mergetools
    │              araxis
    │              bc3
    │              codecompare
    │              deltawalker
    │              diffmerge
    │              diffuse
    │              ecmerge
    │              emerge
    │              gvimdiff
    │              gvimdiff2
    │              kdiff3
    │              kompare
    │              meld
    │              opendiff
    │              p4merge
    │              tkdiff
    │              tortoisemerge
    │              vimdiff
    │              vimdiff2
    │              xxdiff
    │
    ├─share
    │  ├─antiword
    │  │
    │  ├─bison
    │  │  │  bison.m4
    │  │  │  c++-skel.m4
    │  │  │  c++.m4
    │  │  │  c-skel.m4
    │  │  │  c.m4
    │  │  │  glr.c
    │  │  │  glr.cc
    │  │  │  java-skel.m4
    │  │  │  java.m4
    │  │  │  lalr1.cc
    │  │  │  lalr1.java
    │  │  │  location.cc
    │  │  │  README
    │  │  │  yacc.c
    │  │  │
    │  │  ├─m4sugar
    │  │  │      foreach.m4
    │  │  │      m4sugar.m4
    │  │  │
    │  │  └─xslt
    │  │          bison.xsl
    │  │          xml2dot.xsl
    │  │          xml2text.xsl
    │  │          xml2xhtml.xsl
    │  │
    │  ├─git-core
    │  │  └─templates
    │  │      │  description
    │  │      │
    │  │      ├─hooks
    │  │      │      applypatch-msg.sample
    │  │      │      commit-msg.sample
    │  │      │      post-update.sample
    │  │      │      pre-applypatch.sample
    │  │      │      pre-commit.sample
    │  │      │      pre-push.sample
    │  │      │      pre-rebase.sample
    │  │      │      prepare-commit-msg.sample
    │  │      │      update.sample
    │  │      │
    │  │      └─info
    │  │              exclude
    │  │
    │  ├─git-gui
    │  │  └─lib
    │  │      │  about.tcl
    │  │      │  ...
    │  │      │  logo.tcl
    │  │      │  win32.tcl
    │  │      │  win32_shortcut.js
    │  │      │
    │  │      └─msgs
    │  │
    │  ├─gitweb
    │  │  │  gitweb.cgi
    │  │  │
    │  │  └─static
    │  │          git-favicon.png
    │  │          git-logo.png
    │  │          gitweb.css
    │  │          gitweb.js
    │  │
    │  └─vim
    │      │  vimrc
    │      │
    │      └─vim74
    └─ssl
    ```
</div>

这个文件夹下也有很多有意思的东西：`c:\windows\system32`，比如：

#. `taskmgr.exe`，任务管理器
#. `winver.exe`，显示系统版本
#. `tasklist.exe`，`taskkill.exe`
#. `xcopy.exe`

`C:\Windows` 下面则有：

#. `write.exe`，写字板
#. `notepad.exe`
#. `regedit.exe`
#. `explorer.exe`
#. `winhlp32.exe`

我自己攒的小工具则有 `C:\dev\cmdtools`（大部分来自 Nuwen 的 MinGW 打包）：

```plain
addr2line.exe
ag.exe
aha.exe
ar.exe
as.exe
c++filt.exe
cpp.exe
dlltool.exe
dllwrap.exe
editor
elfedit.exe
g++.exe
gcc-ar.exe
gcc-nm.exe
gcc-ranlib.exe
gcc.exe
gcov.exe
gdb.exe
gdbserver.exe
gprof.exe
grep.exe
jpegtran.exe
lame.exe
ld.bfd.exe
ld.exe
make.exe
nm.exe
objcopy.exe
objdump.exe
oggdec.exe
oggenc.exe
ogginfo.exe
pcregrep.exe
pcretest.exe
pngcheck.exe
pngcrush.exe
qetag.exe
qrsboxcli.exe
qrsctl.exe
qrsync.exe
ranlib.exe
readelf.exe
sed.exe
sha1sum.exe
sha256sum.exe
sha512sum.exe
size.exe
sort.exe
strings.exe
strip.exe
uniq.exe
vcut.exe
vorbiscomment.exe
wc.exe
wget.exe
windmc.exe
windres.exe
```

```bash
calc.exe            # win+r: calc
ver.exe             # version
vol.exe             # volume
mspaint.exe         # paint
net user            # show users
ipconfig.exe
certmgr.exe         # certificate
compmgmt.exe        # computer management
osk.exe             # on screen keyboard
systeminfo
```

下载 [MinGW Distro - nuwen.net](http://nuwen.net/mingw.html)，解压在 C 盘根目录
（会自动创建文件夹），加到 `%PATH%`，就可以全系统范围内用 gcc 了。

这个 MinGW Distro 特别赞：

#. My MinGW distribution ("distro") is x64-native and
    currently contains GCC 5.2.0 and Boost 1.59.0.
#. GCC defaults to `C++03`, so you must compile with `-std=c++14` for C++14.

作者的网页上有句：

#. This is my personal website. I work for Microsoft, but I don't speak for them.
#. So high, so low, so many things to know
#. <nuwen.net> is my personal website; I pronounce it "**noo-when**". It's a
    reference to Pham Nuwen, a character in A Deepness In The Sky by Vernor Vinge.

## `1449546253`{.tzx-timestamp} 一个想法

一个工具，应该使用 JavaScript 写，可以漫游一个源码目录。
提供一个 index，源码高亮显示出来。

如果这一切都在线处理：

#. 给它一个源码目录，它先 directory listing（七牛不支持这个）
#. 根据 listing 的 index，点击后加载相应文件（URL 不变，只是加载文件并高亮而已）

如果这一切离线处理：

#. 也就是说所有的代码高亮都放到后台，把一个目录里的源码都转化为 HTML 再直接上传七牛
#. 可以参考 Doxygen。

我更倾向于用离线，因为可以不写 JavaScript……而且一次处理完可以打包好存起来。

外，把自己的离线文档（压缩包）也上传一部分。

## `1449480622`{.tzx-timestamp} 我们新疆干就是容易得鼻炎

然而到了上海，我也听到了“我们上海潮，就是容易得鼻炎”的说法。

## `1449296854`{.tzx-timestamp} So we beat on

<!--So we beat on, boats against the current, borne back ceaselessly into the past.-->

![](http://bookriotcom.c.presscdn.com/wp-content/uploads/2012/07/so-we-beat-on-300x253.jpeg)

> "The last line of The Great Gatsby only makes sense if you’re over 30, or
> better yet, even older than that." Yet Fitzgerald was 25 years old when he
> began writing the book and 27 when The Great Gatsby was published. Fitzgerald
> was dead before he was 45.

> I am 69, and really, I am not sure I understand this line in any way other
> than just what it means to me personally, which is that our present
> experience and who we are now instantly becomes our past experience and who
> we were then because we are constantly creating a past as we move into the
> future. And that past cannot be undone (as in "The Road not Taken" by Frost)
> or done over, as Gatsby attempted. We struggle on, trying to make a future,
> but what we have at the end of each day--and at the end of our lives--is the
> past which we have created.

感觉让 Tim Roth 演 Fitzgerald 特别合适（长得很像）。By the way，Fitzgerald 很郭敬明啊……（不说脸，说写作主题。简
直是污蔑哈哈但我确实这么想）。

![Fitzgerald](https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/F_Scott_Fitzgerald_1921.jpg/330px-F_Scott_Fitzgerald_1921.jpg)

Refs

#. [The Last Line of The Great Gatsby: "So We Beat On..."](http://bookriot.com/2012/07/26/the-last-line-of-the-great-gatsby-so-we-beat-on/)

## `1449217326`{.tzx-timestamp} 眼屎好吃吗？

我一直觉得，眼睛肯定比口腔更脆弱，所以能往眼睛里滴的，一定也能往嘴里塞。所以滴
眼液什么当然可以喝。是不是很有道理？

TJG 说，那你吃你的眼屎啊～

……shit…………

## `1449115137`{.tzx-timestamp} 别再压缩 JPEG 图片了！！！

这东西压缩不了多少，但是压缩和解压很费时间！整个打包不要压缩，不要压缩，不要压缩！

## `1448440357`{.tzx-timestamp} 学术和生产

突然想到老师要求的 CVRS 编码规范里 private 变量要放在类最开始（而不是像别的编码规范一样放在最后）。

很有道理。

我们做的是学术，以数据为中心，处理流程相对简单（我是说过程 in/out 清晰而不是一
团线条，多入多出），而不是

#. 以为别人提供合理的 API 接口为编码目的
#. 向用户隐藏/掩盖细节
#. 应用驱动、事务驱动

生产过程中往往需要和上、下的人打交道，隐藏自己这一层的细节很必要。^[曾看过一本
书，说这叫“信息屏蔽”。]而学术需要更加直观透明。这就是学术和生产的区别。

规范见 [CVRS C++ Coding Style Guidelines](post-0060-coding-style.html)。

## `1448436328`{.tzx-timestamp} Don't forget to feel bad

![](http://gnat.qiniudn.com/qk-does-not-feel-bad.jpg)

等我力所能及的时候我会给我 pirate 的每本书、每个软件的作者、出版社都捐助（补偿）
一笔钱。感谢他们。I feel bad.

我的主页的 title 也是这个，see [tangzhixiong.com](http://tangzhixiong.com)

## `1448420781`{.tzx-timestamp} 该死

[George Santayana](https://en.wikipedia.org/wiki/George_Santayana):

> **Those who don't know history are doomed to repeat it.**

不理解 Vim、Pandoc 的人也 doomed to be ignorant 益发愈加地 ignorant。

## `1448253493`{.tzx-timestamp} Please Don't Use Safari

<div class="tzx-fright">
![Mike Bostock](http://gnat.qiniudn.com/mbostock.jpg?imageView2/2/w/200)
</div>

D3.js 的作者 [Mike Bostock](https://github.com/mbostock "真大神，看他的
Contributions，看他的博客（全用的 Gist 搭出来。）"):

> To install the Chrome extension, visit the Chrome Web Store and click Add to
> Chrome.
>
> To install the Firefox extension, visit the Mozilla Add-ons. Then click Add
> to Firefox.
>
> A Safari extension is no longer supported because Apple requires a $99 per
> year fee to obtain a developer certificate. **Please don’t use Safari.**

## `1448196130`{.tzx-timestamp} Inconsistent X is terrible!

No matter what x is!

Even Visual Studio knows:

    > The line endings in the following file are not consistent.
    > Do you want to normalize the line endings?
    >
    > Line ending:
    >     Unix (LF)

## `1448183579`{.tzx-timestamp} Wait a long wait

国王的演讲里 King George VI 说：

> Waiting for me to... commence a conversation, one can wait rather a long wait.

感觉我的程序也让人 wait rather a long wait 了……而且还看不到转机。

## `1448052566`{.tzx-timestamp} 错误是什么时候引入的？

我不知道，但是我一个星期程序都跑不起来……各种调 CMake 结果发现是我改了变量名……

```cmake
## OSG
find_package( OpenSceneGraph REQUIRED ... )
set( OpenSceneGraph_LIBS_Release ${OSG_LIBRARY} ... )
set( OpenSceneGraph_LIBS_Debug ${OSG_LIBRARY_DEBUG}  ... )
```

我把这两个 set 的变量名改得简短了……然后它就找不到。话说上次也是类似的情况导致我
$HOME 路径下面文件被删了好几个。就是因为 Make 和 CMake 把没有的变量默认为空，也
不提醒一下！

上次的情况是 `rm -f $(PODIR)/*`{.bash}，因为 `PODIR` 没有设定，这个指令把我“家”
都清空了。

突然醒悟 C 语言里面的 `#define`{.c} 要求格式不能变，是多么合理的一个要求。
JavaScript 里面的 `exports = function(){}` 也是不可以的。原因和 `define` 的类似。

## `1448044500`{.tzx-timestamp} A Man of Value

Albert Einstein:

> Try not to become a man of success,
> but rather try to become a man of value.

![](http://gnat.qiniudn.com/value.jpg)

这句话太让人感动。

## `1447900492`{.tzx-timestamp} 做不完的事情总是做不完

![r] ![y] ![g] ![x]

[r]: http://gnat.qiniudn.com/ico/red-blink.ico
[y]: http://gnat.qiniudn.com/ico/yellow-blink.ico
[g]: http://gnat.qiniudn.com/ico/green-blink.ico
[x]: http://gnat.qiniudn.com/ico/redcheck.ico

很久前写的要做的事：

#. ![y] read some tmux
#. ![y] 学习使用 gitbook
#. ![y]<!--...--> [github/gitignore](https://github.com/github/gitignore)
#. ![y] 程序员自身修养
#. ![y] Learn Org-Mode

## `1447765652`{.tzx-timestamp} 教宗也当然是反对吃饭玩手机的人

![](http://o.aolcdn.com/hss/storage/midas/4214e245badd4faa7a36d7abc2c0fffd/202980253/imrs_thumbnail.jpg)

> 当孩子只顾在用餐时用电脑或手机，并不聆听旁人说话的话，那不算是家庭，而是一个
> 受豢（huàn）养者。

## `1447765371`{.tzx-timestamp} 如果我是“QQ 群”的产品经理

[云风的 BLOG: 闲扯几句移动社交软件](http://blog.codingnow.com/2015/11/chat_app.html)

:   > 关于 qq 群，我一直觉得是信息骚扰超过了它的实用价值。就是一群人聚在一起扯
    > 淡嘛，这个当然需要。但是我们是不是应该关注一下更本质的东西。怎么对系统分
    > 类，并协助用户过滤。

    确实，我一直觉得 QQ 群应当提供拉黑和关注功能（观众用户、关注关键词）、对发
    言评分并筛选掉一些低价值发言。还应该有发言标记功能（比如一个通知，一个备忘
    ），还应该有惩罚（一个人多次标记名不副实他的标记就会失去效力）。暂时就说这
    么多。

    > 说到底，就是以话题为核心的一个网状结构。我们从任何一个扯淡聚集区，通过里
    > 面的线索跳跃到新的线索上，每个线索中都有一群人。关系近的线索，人群结构也
    > 比较接近，但没有明确的发起人和组织人。也没有固定的群组。

    这个想法很棒。

## `1447502019`{.tzx-timestamp} Fork on GitHub

`#made-my-day#`

![fork on GitHub](http://gnat.qiniudn.com/pics/github-babaric-fork.png)

<!--
## `1447520394`{.tzx-timestamp} 哪里才是重点？

[威尔特·张伯伦_百度百科](http://baike.baidu.com/link?url=0r3zg8KYZhZ9kYM7WCaZ4XymrUCrBWSunooBrI3hYgRGot2aB286vheAMFQ3ZXFI)：

:   有点……叼……

    > 张伯伦 (Wilt Chamberlain) 在自传《俯瞰》中用专门的一章讲述他的艳遇，他声
    > 称从 15 岁开始，他平均每天就和 1.2 个女人睡过觉。“人们也许认为我的品位不
    > 高，但信不信由你，几乎每个与我约会的女人，在普通男人眼里都会是一见钟情式
    > 的偶像。”张伯伦的很多好友都认为他具有一种诱人的魅力，他曾经在 10 天里和
    > 23 个女人睡过觉。张伯伦尤其喜欢《生动的颜色》的一个片段：一个女人和她的女
    > 儿列出了一份还很长很长的名单上，都是那些同张伯伦睡过觉的女人的名字，而这
    > 对母女坦然地承认她们的名字也都在名单上。在后期张伯伦允许别人评价他的篮球
    > 弱点，却不容别人质疑他的性能力。

    同理，我允许别人说我编程慢，却不容别人质疑我的打字速度。

    ![用 AHK 脚本配置了键盘布局，然后 keybr 可以用了，于是一试……我知道我还需要练习](http://gnat.qiniudn.com/pics/144752051.png)
-->

## `1447489151`{.tzx-timestamp} 那些倔强又理性的人

总是深得我心。至于那：

#. 倔强但蛮不讲理的 &rarr; 去死
#. 理性而逆来顺受的 &rarr; 再见
#. 蛮不讲理又欺软怕硬的 &rarr; 滚远点

## `1447405412`{.tzx-timestamp} 每到冬天

就不得不忍受和其他人待在一个封闭的、酷热的房子里。热成狗。

`1450326446`{.tzx-timestamp}: 热死了！！！

## `1447292125`{.tzx-timestamp} How Could I FAIL You?

不能的，不能的。既不应该，也不可能。

## `1447284952`{.tzx-timestamp} JavaScript 程序员

喜欢用两个空格缩进而不是四个。像我这样的像素眼处女座，都一眼看不出缩进层次。
What bloody shit。

## `1447267769`{.tzx-timestamp} 面试和恋爱的关系

如果你最想去的是 A，一定不要先面 A。先面 B、C、D，etc，最后再去面 A。这好象是什
么人生哲理。

## `1447227862`{.tzx-timestamp} 作息不正常

从早上八点一觉睡到了下午两点半，洗个澡然后就三点，讲座是去不了了。What a pity。

## `1447186728`{.tzx-timestamp} 老师待我如初恋

> 初定周四早上8-9点讨论你的进展，整理成文档和PPT汇报最新进展

说好的周三……周三……周三……困到死。我应该感谢老师又多给我一天吗？……

如果我眼睛大点早看到我就不来熬夜了。说多了都是泪，只怪自己水平次效率低。Shit。

## `1447151147`{.tzx-timestamp} 牵狗的人

大声地呵斥他的狗：“吐出来，吐出来！”

我猜他的狗是吃了屎……

## `1447090204`{.tzx-timestamp} 不择手段地攒人气

> The documentation for 0.4.1 is under development. If you discover any issues or
> typos in the documentation, or if you feel like practicing your technical writing,
> please let us know by submitting on issue on github or submitting a pull request.

真是不择手段啊……我也想练练，不怕被我搞残吗？

## `1447063539`{.tzx-timestamp} 一定要 GET 写网页和脚本的技能！

太有用太有用，而我却不怎么会。

[Nik David Bamert 的 Hangul 输入法][hangual]：

<textarea id="krinput"
          style="width: 100%; height: 80px; margin: 0; padding: 0;"
          placeholder="你可以试试在这个文本框里输点东西，出来的是 Hangul（韩语）……这是一个牛逼哄哄的 Hangul 输入法。"></textarea>

<script type="text/javascript" src="ime.js"> </script>
<script type="text/javascript">
        window.onload = function(e){
            hangul.init("krinput");
        };
</script>

[hangual]: http://ndb.io/
[Voronoi Tessellation](http://bl.ocks.org/mbostock/4060366)

<!--
Firefox: Blocked by Content Security Policy.
<iframe src="http://bl.ocks.org/mbostock/raw/4060366/" width="1000" height="560"></iframe>
-->

## `1447044804`{.tzx-timestamp} 请问你的 QQ 是？

[留言 | 谢益辉](http://yihui.name/cn/guestbook/)：

> 请问你的 QQ 是？
>
> 抱歉，我很少用  QQ，因为即时聊天会打乱时间的完整性，我希望能有整块的时间集中
> 做事情，而不是盯着几个聊天窗口打着零碎的句子。如果你能破解 `md5sum` 的话，我
> 会感到很荣幸和你聊聊：`ff8fb48d51329ad82a306fa309b97e3a`（将 QQ 号写入文件、
> 不带换行符的文件的 md5sum）。我的主要联系方式是 Email。

这个……有点叼。我要好好学习以后破解 md5……

---

这是我的微（tu）博（cao）。呓语呓语，神志不清；若有冒犯，敬请原谅。
   ```
