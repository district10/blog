% Koans | 呓语
% TANG ZHiXiong
% 2015-12-25

Koans | 呓语
============

<div class="koans">

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

<small><small><small>
```tzx-plain
The command "wget http://devtools.qiniu.com/qiniu-devtools-linux_amd64-current.tar.gz" failed and exited with 8 during .
```
</small></small></small>

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
<travis.com> 也是他们一家的，可适用于 private repo`。`

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

<coding.net> 的 CodeInsight 就不错：[CodeInsight](https://coding.net/help/doc/codeinsight/getting-started.html)。

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

入手一个 iPad mini2，随手买了一个 Dash（因为 Zeal 只有 Windows 和 Linux 版本）
，感觉真是太赞了！

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
2.5M	./_statics
12K	./private
4.0K	./blagee
1.8M	./_posts
12M	./.git
816K	./_pages
7.6M	./publish
4.0K	./gists
3.4M	./_miscs
28M	.
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

简直是瞎猜！推荐的歌我几乎都不喜欢。pinjinjian 唱得跟屎一样。
七緒香更是不能听。

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
的错误，真是无可救药。

## `1455986511`{.tzx-timestamp} 你知道我在这耗了多久？

<div style="font-size:80%">
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
</div>

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

1455603432: Git 你也坑我？！

`git checkout --orphan <new-branch-name>`{.bash} 会把当前的工作直接清空……
等你 checkout 回来就发现自己到了知识的荒原。居然不提醒！！！

如果是 checkout，确实提醒了：

```plain
error: Your local changes to the following files would be overwritten by checkout:
	README.md
Please, commit your changes or stash them before you can switch branches.
Aborting
```

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

<!--
似乎最近所有的女人都想去吃蟹煲饭，呵呵，呵呵呵。和师姐约饭这件事，让我特别不爽。
-->
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
说这话的人大概这把材料价格算上了。这么算价格的人估计不去餐馆吃饭，也不会做饭，
把菜买回来全部剁成渣渣兑点水不就可以了。

iPhone 的价值当然不能用原材料算。在它的设计、制造、运输过程中，
每个人都给它注入了更多的价值，不能忽视。
尤其是那些程序员，难道他们的工作成果就是几十 MB 的字符？

## `1451203756`{.tzx-timestamp} 字“好看”却难认

其实我觉得不好看。比如这个：[冷知识 - 热门问答 - 知乎@Gnat采集到Mark(83图)_花瓣](http://huaban.com/pins/567722582/)

![](http://whudoc.qiniudn.com/shit-scripting.jpg)

真是丑死了！外，为什么小写字母要被人发明出来？全用大写不好吗？
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
的常态，更别提她六级比我四级高……

但我怎么能认输呢，鸡蛋碰石头也得上。这里：

#. [研究生处 - 2016年全国大学生英语竞赛（NECCS）](http://www.shnu.edu.cn/Default.aspx?tabid=11957&ctl=Details&mid=25572&ItemID=172443)
#. [关于组织研究生参加2016年全国大学生英语竞赛的通知-培养-武汉大学研究生院](http://www.gs.whu.edu.cn/index.php/index-view-aid-7829.html)
#. [-启航！——2016年全国大学生英语竞赛报名工作全面展开](http://www.tefl-china.net/Article/ShowArticle.asp?ArticleID=1965)
#. [-2015年全国大学生英语竞赛样题](http://www.tefl-china.net/Article/ShowArticle.asp?ArticleID=1911)
#. [《全国大学生英语竞赛A类（研究生）历年真题精解与标准模拟考场 （第2版）》(赵晓敏...)【简介_书评_在线阅读】 - 当当图书](http://product.dangdang.com/23630422.html)

25 块钱我有，害怕什么呢。

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

[^eastface]: 如果喜欢东西方混合的美，就去看 [Rosamund Pike](http://www.imdb.com/name/nm0683253/?ref_=tt_cl_t2)，然而，同样我并不觉得她有那么美。

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
##include <QProcess>
##include <QDebug>
##include <QStringList>
##include <cstdio>

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

## `1450421135`{.tzx-timestamp} CMake 的 Cache 太扯淡

我已经不是第一次被它坑了。出了问题一定**第一时间**先试试重新完全 CMake 一下看问题还在不在。

比 CMake 愚蠢的是我自己，居然找了一个库，想弄个静态库 lib 文件，再把头文件引入。然而它只有头文件，
所有的实现都在这些头文件里，只有头文件还怎么生成静态库啊！

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
好的显示，用了第三种]。

风格这东西随着时间都会变，以前人
们写 C 的时候还喜欢把返回值放在函数名的上一行呢。很科学，但太 trivial 了。

```
int *
getInt() {
    ...
}
```

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
快添加这个功能呢～See [Text Layout Requirements When Encountered East Asian Languages · Issue #2586 ·
jgm/pandoc](https://github.com/jgm/pandoc/issues/2586).

<div style="border: 1px dashed violet; padding: 1em;"><small>

> 更好地混排东亚文字和西文 | Text Layout Requirements When Encountered East Asian Languages

Pandoc 确实有这么一个扩展： | Pandoc does have a relevant extension:

`ignore_line_breaks`

:   Causes newlines within a paragraph to be ignored, rather than being treated
    as spaces or as hard line breaks. This option is intended for use with East
    Asian languages where spaces are not used between words, but text is
    divided into lines for readability.

`中`：但这个扩展实际不可用，因为当我用东亚文字的时候我总也会用到英文。这样一来，
如果不加这个扩展，合并行的时候东亚文字（比如中文）会多出很多空格，不美观；
如果加入这个扩展，合并行的时候西文（如英文）会混作一团，不仅不美观，内容都变了。

`En`: But this extension cannot work as expected, for we also use some English when
writing in East Asian languages. In that case, if we not turn on this extension,
Asian character lines will be joined together with extra spaces, pretty ugly;
But if turning on this extension, Western character lines will join into
a mess (e.g. several pairs of words turned into one).

For example, there is a demo file `demo.md` with content:

```plain
### Case 1: only East Asian Characters

我能吞下玻璃，
而不伤身体。我能吞下玻璃
而不伤身体。

### Case 2: Only Western Characters

The quick brown fox,
jumps over the lazy dog. The quick brown fox
jumps over the lazy dog.

### Case 3: Blended

我能吞下玻璃而不伤身体，
the quick brown fox jumps over the lazy dog.

The quick brown fox jumps over the lazy dog,
我能吞下玻璃而不伤身体。

中文和
English 混合排版。

English blended with
中文.
```

Using `pandoc` to convert it to html:

```bash
pandoc -f markdown -s -S demo.md -o demo-ext-off.html
pandoc -f markdown+ignore_line_breaks -s -S demo.md -o demo-ext-on.html
```

Without extension: (red marks point out pitfalls, I highlighted spaces in
browser simply with Control+F)

![](http://gnat.qiniudn.com/github/a.png)

With extension:

![](http://gnat.qiniudn.com/github/b.png)

I think `Pandoc` should be more intelligent so as to only insert space

1. between two western chars, e.g. `apple\n` + `pie` &rarr; `apple pie`,
2. between asian char and western char, e.g. `豆瓣\n` + `FM` &rarr; `豆瓣 FM`

and no extra spaces in others cases.

---

Or make it more simply:

Always add a space when join lines **except** when the previous line ends with
an East Asia Character and this line starts with another.

---

Pandoc 作者 [jgm (John MacFarlane)](https://github.com/jgm) 的回复：

> One approach would be to implement this option using an AST filter (internal
> to pandoc), instead of in the Markdown parser. The AST contains Space
> elements for spaces and soft line breaks (though it doesn't currently
> distinguish between the two---that may change soon). The filter could look
> for and remove Space elements when they occur between two Chinese characters.
> Note that (unlike the current approach) this would also affect line-internal
> spaces -- they would be collapsed too. Let me know if that's not desirable.

> Are spaces every used between two Chinese characters, or would it be safe for
> pandoc to avoid this by default?

我：

> Better not "affect line-internal spaces".
>
> Spaces are not ever used between two Chinese characters.
>
> Of course there would be someone in some cases to use "注 意 ！ ！ " (A T T E
> N T I O N ! ! !), but that's not normal. And I recommend they use fullwidth
> space (*i.e.* "　") instead of typical space (*i.e.* " "): `注 意 ！ ！`
> &rarr; `注　意　！　！ `.
>
> So it would be safe for pandoc to avoid this by default.

> For your information, adding a space between Chinese character and western
> character is not adopted by everyone, its more like a common rule for those
> who care typesetting. (see
> <https://github.com/sparanoid/chinese-copywriting-guidelines/blob/master/README.en.md#place-one-space-before--after-english-words>).
>
> But this: `fox\n` + `jumps` &rarr; `foxjumps` is bad, should be agreed by
> everyone.

额……我就回去睡了个觉，jgm 就把这个问题弄好了……：[Implemented `east_asian_line_breaks` extension. · jgm/pandoc@44120ea](https://github.com/jgm/pandoc/commit/44120ea7165546152af88fd442c52ab0f201052e#diff-c47c7c7383225ab55ff591cb59c41e6bR3227)

</small></div>

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

```bash
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

Git Bash 文件夹下很有意思：

```plain
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
calc.exe
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
#. <nuwen.net> is my personal website; I pronounce it "noo-when". It's a
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

感觉让 Tim Roth 演 Fitzgerald 特别合适。By the way，Fitzgerald 很郭敬明啊……（简
直是污蔑哈哈但我确实这么想）。

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

## `1448436328`{.tzx-timestamp} Don't forget to feel bad

![](http://gnat.qiniudn.com/qk-does-not-feel-bad.jpg)

等我力所能及的时候我会给我 pirate 的每本书、每个软件的作者、出版社都捐助（补偿）
一笔钱。感谢他们。

## `1448420781`{.tzx-timestamp} 该死

[George Santayana](https://en.wikipedia.org/wiki/George_Santayana):

> Those who don't know history are doomed to repeat it.

不理解 Vim、Pandoc 的人也 doomed to be ignorant 益发愈加地 ignorant。

## `1448253493`{.tzx-timestamp} Please Don't Use Safari

![Mike Bostock](http://gnat.qiniudn.com/mbostock.jpg?imageView2/2/w/200)

D3.js 的作者 [Mike Bostock](https://github.com/mbostock "真大神，看他的
Contributions，看他的博客（全用的 Gist 搭出来。）"):

> To install the Chrome extension, visit the Chrome Web Store and click Add to
> Chrome.

> To install the Firefox extension, visit the Mozilla Add-ons. Then click Add
> to Firefox.

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
find_package( OpenSceneGraph REQUIRED osgDB osgUtil osgViewer osgGA osgText osgFX osgQt )
set( OpenSceneGraph_LIBS_Release ${OSG_LIBRARY} ${OPENTHREADS_LIBRARY} ${OSGDB_LIBRARY} ${OSGGA_LIBRARY}  ${OSGTEXT_LIBRARY} ${OSGUTIL_LIBRARY} ${OSGVIEWER_LIBRARY} ${OSGFX_LIBRARY} ${OSGQT_LIBRARY} )
set( OpenSceneGraph_LIBS_Debug ${OSG_LIBRARY_DEBUG}  ${OPENTHREADS_LIBRARY_DEBUG} ${OSGDB_LIBRARY_DEBUG} ${OSGGA_LIBRARY_DEBUG} ${OSGTEXT_LIBRARY_DEBUG} ${OSGUTIL_LIBRARY_DEBUG} ${OSGVIEWER_LIBRARY_DEBUG} ${OSGFX_LIBRARY_DEBUG} ${OSGQT_LIBRARY_DEBUG} )
```

我把这两个 set 的变量名改得简短了……然后它就找不到。话说上次也是类似的情况导致我
$HOME 路径下面文件被删了好几个。就是因为 Make 和 CMake 把没有的变量默认为空，也
不提醒一下！

上次的情况是 `rm -f $(PODIR)/*`{.bash}，因为 `PODIR` 没有设定，这个指令把我“家”
都清空了。

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

## `1447520394`{.tzx-timestamp} 哪里才是重点？

[威尔特·张伯伦_百度百科](http://baike.baidu.com/link?url=0r3zg8KYZhZ9kYM7WCaZ4XymrUCrBWSunooBrI3hYgRGot2aB286vheAMFQ3ZXFI)：

> 张伯伦在自传《俯瞰》中用专门的一章讲述他的艳遇，他声称从 15 岁开始，他平均每
> 天就和 1.2 个女人睡过觉。“人们也许认为我的品位不高，但信不信由你，几乎每个与
> 我约会的女人，在普通男人眼里都会是一见钟情式的偶像。”张伯伦的很多好友都认为他
> 具有一种诱人的魅力，他曾经在10天里和23个女人睡过觉。张伯伦尤其喜欢《生动的颜
> 色》的一个片段：一个女人和她的女儿列出了一份还很长很长的名单上，都是那些同张
> 伯伦睡过觉的女人的名字，而这对母女坦然地承认她们的名字也都在名单上。在后期张
> 伯伦允许别人评价他的篮球弱点，却不容别人质疑他的性能力。

同理，我允许别人说我编程慢，却不容别人质疑我的打字速度。

![用 AHK 脚本配置了键盘布局，然后 keybr 可以用了，于是一试……我知道我还需要练习](http://gnat.qiniudn.com/pics/144752051.png)

## `1447489151`{.tzx-timestamp} 那些倔强又理性的人

总是深得我心。至于那：

#. 倔强但蛮不讲理的 &rarr; 去死
#. 理性而逆来顺受的 &rarr; 再见
#. 蛮不讲理又欺软怕硬的 &rarr; 滚远点

## `1447405412`{.tzx-timestamp} 每到冬天

就不得不忍受和其他人待在一个封闭的、酷热的房子里。热成狗。

`1450326446`{.ts}: 热死了！！！

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

</div>

---

<style> code.tzx-timestamp { color: white; } </style>
<script type="text/javascript" src="jquery.min.js"></script>
<script type="text/javascript" src="jquery-ui.min.js"></script>
<script type="text/javascript" src="moment.min.js"></script>
<script>
$(function() {
    // $( ".tzx-tabs" ).tabs();

    // reformat timestamp
    var tss = document.getElementsByClassName('tzx-timestamp');
    for ( var i = 0; i < tss.length; ++i ) {
        var _tss = tss[i].innerHTML;
        var ts = new Number( _tss );
        var dt = moment(ts*1000);
        var time = dt.format("YYYY/MM/DD HH:mm");
        // var gdt = dt.format(); // global date time
        var pdt = dt.format("YYYY-MM-DD HH:mm:ss"); // pretty date time
        var tooltip = _tss + ': ' + pdt;
        tss[i].innerHTML = time;
        tss[i].setAttribute( 'title', tooltip );
    }
});
</script>
