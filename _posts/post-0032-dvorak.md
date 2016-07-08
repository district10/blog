---
title: Dvorak 键盘布局（演讲稿）
date: 2013-00-00
keywords:
    - keyboard layout
    - virtual reality
tags:
    - virtual reality
...

Dvorak 键盘布局（演讲稿）
========================

> 关于我最爱的德沃夏克键盘布局。

键盘布局说的是计算机按键的放置，我们常用的 QWERTY（铁蹄）键盘布局就是
以左手上排那六个字母命名的，它也是世界上最流行的键盘布局。

但键盘布局有很多，德语、法语里有很多注音字母，就像 Naïve 这个单词，普通键盘就难以打出^[可以用 compose key，在我的《随便翻翻系列文章合集》里有讲过。]，
所以他们也有自己的键盘布局。日本，由于他们文字里的平假名、片假名，也需要增强的键盘才能满足
他们的需要，所以日文键盘也是很奇特的一种存在，它的空格很短，就是为了塞入额外的两个 modifier 键
（modifier 键就是 shift、control、capslock 这样自身不输出字符，而是配合其他键的特殊按键）。

总之，不同国家的人，用的键盘都可能是不同的。不要以为世界上只有铁蹄键盘啊！

这里我要说的是一个叫 Dvorak（德沃夏克）的键盘布局，它是传说中从设计上完虐铁蹄键盘的一种存在，
具体可以参考我的另一个 post：[为什么 Emacs 用户爱德沃夏克](post-0006-why-emacs-users-favor-dvorak.html)。

这个演讲稿是大三的时候在选修课《英语演讲与辩论》上做的 presentation。那时候我已经用了几个月的 dvorak 键盘。

---

![1](http://gnat.qiniudn.com/dvorak/dvorak-0.jpg)

首先，dvorak 键盘布局可能让你一下子不适应。如果你不明白我啥意思，
你可以下载 <http://gnat.qiniudn.com/neo.exe> 双击运行（无需安装）试试，这是
我在 Windows 上必开的 dvorak 键盘配置程序。^[开源在 GitHub，你可以去瞧瞧：
[neo_keyboard_layout/neo.ahk at master · district10/neo_keyboard_layout · GitHub](https://github.com/district10/neo_keyboard_layout/blob/master/neo4win/neo.ahk)
。]

![2](http://gnat.qiniudn.com/dvorak/dvorak-1.jpg)

让我们点开维基百科瞧瞧它的牛逼之处。似乎这段话在说它比铁蹄键盘更高效哎！

那必须啊！铁蹄键盘据说就是为了让人打字不要太快（早期打字机里面的传动杆很容易卡住）而特地
设计成了这样的字母排序啊。要不你以为为什么每次自己打字不快，感觉很别扭是自己手长得不好么？

下面我们来对比一下两者。

![3](http://gnat.qiniudn.com/dvorak/dvorak-2.jpg)

这是铁蹄键盘。

![4](http://gnat.qiniudn.com/dvorak/dvorak-3.jpg)

这是德沃夏克键盘。

![5](http://gnat.qiniudn.com/dvorak/dvorak-4.jpg)

杰克·凯鲁亚克看到了自己的老朋友，一下子文思泉涌，
写出来了传奇的《在路上》（其实我觉得这种类型的小说、电影很无聊的……哈哈）。
不知道他那天晚上敲了一夜，打字机卡了多少次，骂了多少 f word。

如果你不相信铁蹄键盘如此桑心病狂，你可以看看下面的按键频率直方图，
或者你可以看看 Peter Norvig 的 [English Letter Frequency Counts: Mayzner Revisited or ETAOIN SRHLDCU](http://norvig.com/mayzner.html)，
我当年是看了，感动得一塌糊涂。

（但让我感动的不是 Norvig 的结论多么精准或者这个网页制作的多美。让我感动的是我们所处的时代。Norvig 是 Google 的一个 boss，
有一个 85 岁的老学者写信给他，请他利用 Google 的数据，对文本进行一下字母频率统计，他们很多年前做的时候都是人工！废了很大的劲，
但预料根本不够。Norvig 很高兴地接受了，于是有了这篇博客。相比老一辈研究者，我们真是太幸福，不需要用双手、用人工去战斗。）

![6](http://gnat.qiniudn.com/dvorak/dvorak-5.jpg)

下面这幅图则结合字母频率直方图和键盘布局，对比了三种键盘布局：QWERTY（铁蹄），Colemak，Dvorak（德沃夏克）。
QWERTY 这自己虐自己的设计显然被完虐了……

![7](http://gnat.qiniudn.com/dvorak/dvorak-6.jpg)

下面是两者的 heatmap（热区图），你可以看成一个键盘使用 20 年后的磨损情况。
铁蹄键盘磨损得不好，都在上面下面；而 dvorak 基本都是中间那一排很“费”，正
说明了 dvorak 用起来方便。

![8](http://gnat.qiniudn.com/dvorak/dvorak-7.jpg)

![9](http://gnat.qiniudn.com/dvorak/dvorak-8.jpg)

最后，维基百科里说了世界上打字速度的吉尼斯纪录就是在 dvorak 上创造的。

![10](http://gnat.qiniudn.com/dvorak/dvorak-9.jpg)

如果你是程序员，还有专门为程序员设计的 dvorak 微调版。我作为一个用过 programmer
dvorak 的过来人，建议不要尝试。反正我是用了一个学期，就投靠了德文键盘布局 neo，
然后给自己修订了一个自己天天用的键盘布局：[GitHub - district10/neo_keyboard_layout: Neo keyboard layout variants, for Qwerty, Dvorak, Programmer Dvorak users. English ! Not German, and without greek letters](https://github.com/district10/neo_keyboard_layout)。

![11](http://gnat.qiniudn.com/dvorak/dvorak-10.jpg)
