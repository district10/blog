% 为什么 Emacs 用户爱德沃夏克
% TANG ZhiXiong
% 2015-02-19


为什么 Emacs 用户爱德沃夏克
===========================

参考资料
--------

建议先读这些

* 什么是德沃夏克: [维基百科][wikipedia], [百度百科][baidu]
* [说说qwerty、dvorak、colemak三种键盘布局][q_d_c]
* [Programmer Dvorak Keyboard Layout][dvp_intro]
* About Neo: [Neo官方][neo_official], [Wikipedia: neo][neo_wiki]
* [Steve Yegge：编程的肮脏小秘密 - 博客 - 伯乐在线](http://blog.jobbole.com/64959/)
* [键盘史上的 12 个典范 - 开源中国社区](http://www.oschina.net/news/56704/keyboards)

[wikipedia]: http://zh.wikipedia.org/wiki/%E5%BE%B7%E6%B2%83%E5%A4%8F%E5%85%8B%E9%8D%B5%E7%9B%A4
[baidu]: http://baike.baidu.com/view/1410112.htm
[q_d_c]: http://www.cnblogs.com/zhangshenjia/archive/2012/04/11/qwerty_dvorak_colemak.html
[dvp_intro]: http://www.kaufmann.no/roland/dvorak/
[neo_official]: http://www.neo-layout.org/
[neo_wiki]: https://en.wikipedia.org/wiki/Keyboard_layout#Neo

正文
----

### Several Points from Refs

1. 目前，世界上最快的英文打字速度是在 Dvorak 键盘上创造的。
   但 Dvorak 键盘没有流行起来，世界上最通用的键盘还是 QWERTY 键盘。
2. 学术界对这个事件存在争论。有人认为，这表明市场存在缺陷，由于用户的惰性，
   无法推广更有效率的技术。但也有人不同意这种说法，
   认为 Dvorak 有更快的打字速度纯粹是一种神话，没有任何证据可以表明，
   Dvorak 键盘显著地快于 QWERTY 键盘。
3. 估计某个程序员发现用 dvorak 布局很爽，就将之变得更加极限。
   于是出来这么一个 [Programmer Dvorak Keyboard Layout][dvp_kaufmann], 
   它包括dvorak 键盘的所有缺点, 但优化了程序中常用符号如
   <kbd>$</kbd><kbd>;</kbd><kbd>(</kbd><kbd>)</kbd><kbd>{</kbd><kbd>}</kbd><kbd>[</kbd><kbd>]</kbd><kbd>=</kbd> 等，
   用来 coding 巨爽。
4. Neo 通过加入一个 Level 把 <kbd>Enter</kbd>，<kbd>Backspace</kbd>，方向键等加入到了手指下，
   再也不用右手小指去摸回车删除了。 再不用为 Emacs，Vim 蛋疼的方向快捷键忧愁了
   （方向快捷这个想法显然很好，但是两者实现都略蛋疼，用 neo 这种更底层的方式的优点是显而易见的）。

[dvp_kaufmann]: http://www.kaufmann.no/roland/dvorak/

### 为什么程序员需要德沃夏克

1. 编程方便
2. 手指不疼
3. 纵小众，也是世界第二大键盘布局群体：

    ![Qwerty-Dvorak.PNG](http://upload-images.jianshu.io/upload_images/29284-766f600367d574e1.PNG)

4. 键盘是自己用的，换了布局你打出来的也不是火星文
5. Neo，不能更赞

### [Extended Programmer Dvorak][dvpe_github]

根据 Dvorak 的几个缺点（相比 qwerty 几乎可以忽略），
我定制了优化的 Programmer Dvorak，美其名曰: **Extended Programmer Dvorak**
如图：（dvpe0.2，旧版本）

![DVPE *v0.2*][dvpe0.2_pic]

* 一些说明：
    -  参考 [**English Letter Frequency Counts**][letter_freq], 作者是 [**Peter Norvig**][norvig]
    - 关于按键修改的说明见我的 [**github/extended-programmer-dvorak**][some_explanations]

[dvpe_github]: https://github.com/district10/extended-programmer-dvorak
[dvpe0.2_pic]: http://gnat-tang-shared-image.qiniudn.com/DVORAK_PROGRAMMER_EXTENDED0.2.png
[letter_freq]: http://norvig.com/mayzner.html
[norvig]: http://norvig.com/
[some_explanations]: https://github.com/district10/extended-programmer-dvorak#why

### 评测 qwerty，dvp，dvpe

1. **说明**
在 [pa7 的 Keyboard-Heatmap][pa7] 基础上我添加了我的 dvpe 布局，可以到 [**Github: district10 / Keyboard-Heatmap**][myheatmap] 下载，或者[直接下载][heatmap_down] 解压后用浏览器打开 `index.html` 即可：

![Heatmap][illus]

- **来测试不同布局下的热区。测试用到的文件有：**
    - [GNU **Octave** Docs][doc_gnu]
    - [**Jane** Eyre][doc_jane]: 1,070,329 bytes
    - [The Mechanical Properties of **Wood**...][doc_wood]: 395,712 bytes
    - [giada src **cpp** file][doc_giada]:419,831 bytes
      Got it by：`for i in *.cpp; do cat $i >> ../giada_whole.txt; done`{.bash},
      or you can use my archive [giada_src_cpp_whole.txt][qiniu_giada]
    - [Geoprocessing with python][geo_python] 里的 [**python** 代码][qiniu_geo], 30,154 bytes

- **测试结果**（顺序：qwerty - dvorak - neodvpe）

#### Octave

![octave - qwerty](http://gnat-tang-archive.qiniudn.com/aa.octave_qwerty.png)

![octave - dvp](http://gnat-tang-archive.qiniudn.com/ab.octave_dvp.png)

![octive - dvpe](http://gnat-tang-shared-image.qiniudn.com/dvpe0.2_jane.png)

#### Jane

![Jane - qwerty](http://gnat-tang-archive.qiniudn.com/ba.jane_qwerty.png)

![Jane - dvp](http://gnat-tang-archive.qiniudn.com/bb.jane_dvp.png)

![Jane - dvpe](http://gnat-tang-shared-image.qiniudn.com/dvpe0.2_jane.png)

#### Wood

![Wood - qwerty](http://gnat-tang-archive.qiniudn.com/ca.wood_qwerty.png)

![Wood - dvp](http://gnat-tang-archive.qiniudn.com/cb.wood_dvp.png)

![Wood - dvpe](http://gnat-tang-shared-image.qiniudn.com/dvpe0.2_wood.png)

#### C++

![C++ - qwerty：c++ 程序中有太多的符号，导致 qwerty 简直没法用](http://gnat-tang-archive.qiniudn.com/da.cpp_qwerty.png)

![C++ - dvp](http://gnat-tang-archive.qiniudn.com/db.cpp_dvp.png)

![C++ - dvpe](http://gnat-tang-shared-image.qiniudn.com/dvpe0.2._cpp.png)

#### Python

![Python - qwerty](http://gnat-tang-archive.qiniudn.com/ea.python_qwerty.png)
 
![Python - dvp](http://gnat-tang-archive.qiniudn.com/eb.python_dvp.png)

![Python - dvpe](http://gnat-tang-shared-image.qiniudn.com/dvpe0.2_python.png)

- **总结**
    - qwerty 不论在文学小说、科技类文章，c++、python 代码的输入上，和德沃夏克都不在一个层次；
    - dvpe 效果比 dvp 稍好。

[pa7]: https://github.com/pa7/Keyboard-Heatmap
[myheatmap]: https://github.com/district10/Keyboard-Heatmap 
[heatmap_down]: https://github.com/district10/Keyboard-Heatmap/archive/master.zip
[illus]: http://gnat-tang-archive.qiniudn.com/tool.png
[doc_gnu]: http://www.gnu.org/software/octave/doc/interpreter/
[doc_jane]: http://www.gutenberg.org/files/1260/1260.txt
[doc_wood]: http://www.gutenberg.org/cache/epub/12299/pg12299.txt
[doc_giada]: http://www.giadamusic.com/download
[qiniu_giada]: http://gnat-tang-shared-image.qiniudn.com/giada_whole.txt
[geo_python]: http://jianshu.io/p/a710e7656ddb 
[qiniu_geo]: http://gnat-tang-archive.qiniudn.com/geoprocessing_with_python_whole.txt

### How To Get It?

1. **For windows Users**
    - I made one by [Windows Keyboard Layout Creator 1.4][kl_creator], 
    - Download my keyboard layout installer here: [**dvpe0.3 for windows (installation guide inside)**][dvpe_win], 
- [**For Linux Users**][dvpe_linux]

[kl_creator]: http://www.microsoft.com/en-sg/download/details.aspx?id=22339
[dvpe_win]: http://gnat-tang-shared-image.qiniudn.com/dvpe-v3.7z
[dvpe_linux]: https://github.com/district10/extended-programmer-dvorak

## 附

1. 一开始不适应是正常的，请暂时忽略指法的不熟悉，体会其 rhythm 好在哪儿
2. 刚看 [Sacha Chua][sacha] [**采访 Xah Lee**][sacha-xah]，Sacha 说：

    > "it's funny that how the keyboard influences how we work" , "dvorak" blah blah blah,
    > "the third level of the neo layout, apparently is really good for programming. 
    > Eh, more layout, eh, and more code. Oh, back to Emacs"（20：10）
    
3. **为了更好的输入中文，做了单字输入法：[gat][gat]。暂时只能在 Emacs 里使用。** `2014-04-27`
4. [dvpe0.3][dvpe] 发布 (a.k.a. neo-extended dvpe)。 `2014-03-18` 
   也支持 qwerty 和 programmer dvorak 布局 (Level 3 一致)

    ![Level 1][level1]
    
    ![Level 2][level2]
    
    ![Level 3][level3]

Koan
----

> Steve Yegge，Sacha Chua 和 Lee Xah（李杀）都是 dvorak 粉丝啊。   

[outofdate]: http://gnat-tang-shared-image.qiniudn.com/dvpe0.2.jpg
[sacha]: http://sachachua.com
[sacha-xah]: http://v.youku.com/v_show/id_XNzA4MTYzNjQ0.html
[dvpe]: https://github.com/district10/neo_keyboard_layout
[gat]: https://github.com/district10/gat

[level1]: http://gnat-tang-shared-image.qiniudn.com/neo-dvpe-L1.svg

[level2]: http://gnat-tang-shared-image.qiniudn.com/neo-dvpe-L2.svg

[level3]: http://gnat-tang-shared-image.qiniudn.com/neo-L3.svg