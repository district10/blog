---
title: GIS 理论与技术 -- 作业 5：设计一个物联网 GIS 应用的方案
date: 2015-11-11
key-words:
tags:
    - homework
    - gis
...

GIS 理论与技术 -- 作业 5：设计一个物联网 GIS 应用的方案
=======================================================

说到物联网，人们总是把它和商品联系在一起，但实际上物联网的应用范围要广得多。
说道 GIS，人们总是把它和地图或者城市、街道等宏观的东西联系在一起，但实际上 GIS 的应用范围也要广得多。
物联网 GIS 应用的一个例子是在影视特效中用对特技演员的肢体和表情进行捕捉和定位，你可能不赞同，但不得不承认演员的手脚就是物联网中的“物”，脸部的鼻子、眼睛乃至眼睫毛也是物联网中的“物”，对它们的定位也就是 GIS。这个例子的典型，是 ILM[^ilm] 的 iMoCap 技术。

[^ilm]: ILM，Industrial Light and Magic，即工业光魔，好莱坞最大特效制作公司。如果你没有听过，可以去看看纪录片：[工业光魔公司：创造不可能](http://v.youku.com/v_show/id_XMzQ3ODE3MzI0.html)

iMoCap
------

iMoCap 全称为 Image Based Motion Capture，中文译作基于图像的动作捕捉系统，事实上这一技术早已有科学家进行研究，但是真正投入到电影特技的制作中，还是工业光魔研发部门的功劳。iMoCap 的问世，得益于一个著名的好莱坞奇幻系列片 ---《加勒比海盗》。角色和剧情的需要给了工业光魔开发新技术的机会。

![iMoCap 肢体捕捉][imocap-4]

![iMoCap 表情捕捉][imocap-1]

![iMoCap 表情捕捉][imocap-2]

![最新版 iMoCap 还在演员关节处安置了二维码，这是为了区分不同的演员，避免肢体捕捉数据彼此混淆][imocap-3]

可以看到，iMoCap 就是一种特殊的 Internet of Things，而为了得到这些互联事物的 Where、When、What 信息，它本身又像是个 GIS 系统。

在 iMoCap 基础上的设计方案
--------------------------

iMoCap 用到了计算机视觉原理来求解对象的位置，还引入了特殊的二维码标记，但这些技术点都是从视觉角度出发，而突破可能就在非视觉的地方。
我能想到的改进，一是引入在室内定位和一卡通中广泛应用的 [RFID]（Radio Frequency Identification）技术，二是引入虚拟现实中的（反向）定位技术。

![RFID 在商品中的应用][rfid-pic]

![虚拟现实中的定位技术][vr-pic]

这样就形成了一个物联网 GIS 应用的完整方案：

:   影视特效制作过程中，用计算机视觉原理、RFID 标记和二维码标记以及虚拟现实中的定位技术，实现对特效演员肢体、表情的捕捉。

---

Refs

#. [详解工业光魔动作捕捉神器 iMoCap](http://www.douban.com/note/212047444/)
#. [《忍者神龟：变种时代》视效解析 详解 ILM 最顶级动作捕捉 - 视效观](http://www.intovfx.com/tmnt-2014-vfx-by-ilm/)

[imocap-1]: http://gnat.qiniudn.com/homework/imocap-1.jpg
[imocap-2]: http://gnat.qiniudn.com/homework/imocap-2.jpg
[imocap-3]: http://gnat.qiniudn.com/homework/imocap-3.jpg
[imocap-4]: http://gnat.qiniudn.com/homework/imocap-4.jpg
[rfid-pic]: http://gnat.qiniudn.com/homework/rfid.jpg
[vr-pic]: http://gnat.qiniudn.com/homework/vr.jpg
[RFID]: http://baike.baidu.com/subview/531097/13865303.htm
[this]: http://tangzx.qiniudn.com/post-0049-imocap.html
