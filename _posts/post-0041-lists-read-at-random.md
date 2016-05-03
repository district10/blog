---
title: 随便翻翻 & Men Lists & Words Lists
date: 2014-00-00
key-words:
tags:
    - note
    - reading
...

随便翻翻 & Men Lists & Words Lists
==================================

这是一个摘抄系列的合集。时间跨度至少有半年，14 年有意思的就这部分了。

Words List 01
-------------

### KML - Keyhole Markup Language

[**Keyhole** Markup Language (KML)][kml] is **an XML notation for expressing
geographic annotation** and visualization within Internet-based,
two-dimensional maps and three-dimensional Earth browsers. KML was developed
for use with **Google Earth**, which was originally named Keyhole Earth Viewer.
It was created by Keyhole, Inc, which was acquired by Google in 2004. KML
became an international standard of the Open Geospatial Consortium in 2008.
Google Earth was the first program able to view and graphically edit KML files.
**Other projects such as Marble have also started to develop KML support.**

[kml]: http://en.wikipedia.org/wiki/Keyhole_Markup_Language

### WKT - Well-known text

[Well-known text (WKT)][wkt] is a text **markup language** for representing
**vector geometry objects** on a map, spatial reference systems of spatial
objects and transformations between spatial reference systems. A binary
equivalent, known as [**well-known binary (WKB)**][wkb] is used to transfer and
store the same information on databases, such as PostGIS, Microsoft SQL Server
and DB2. The formats were originally defined by the **Open Geospatial
Consortium (OGC)** and described in their Simple Feature Access and Coordinate
Transformation Service specifications.

[wkt]: http://en.wikipedia.org/wiki/Well-known_text
[wkb]: http://www-01.ibm.com/support/knowledgecenter/SSEPGG_8.2.0/com.ibm.db2.udb.doc/opt/rsbp4121.htm?lang=en

### Compose key

<div class="tzx-fright">
![compose keys][compose-key-pic]
</div>

[compose-key]

当时我在 Debian 上试了一些：

```plain
ä  ã  ǎ  ā  á  ă  å
®  ©  ™  «  »  …  “  ” ‘ ’
x² + y² = ½
20 °C
a · b
ß § ø đ æ ¡ ¿ ¥
```

how to do this?

* set up compose key:

    ```bash
    dpkg-reconfigure keyboard-configuration
    ```

* `CAPS` + `'` + `a` $\to$ `á`, or `CAPS` + `a` + `'` $\to$ `á`

[compose-key]: http://en.wikipedia.org/wiki/Compose_key
[compose-key-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/compose-key.png

### MOOC

**[MOOC][mooc]**（Massive Open Online Course，大规模在线公开课）已经引发教育的革命。
一根网线便可以让贫民窟连接上世界最顶尖学校的最牛老师，
在家里和全世界做同学分享学习经验，合作完成作业不再是梦想。
而你却还不知道 MOOC 是什么吗？

**xMOOC** 一词之所以被创造出来, 是为了与早期理想主义者们基于 connectivism 理念的 cMOOC 相区分。
这里我只介绍以 Coursera, edX, Udacity 为代表的 xMOOC.

But I want to say:

> Focus on what you really want to do,
> and Using the [**"If ... Then ..."**][if-then] method to achieve it

[mooc]: http://www.guokr.com/zone/MOOC/
[if-then]: http://www.yangzhiping.com/tech/learn-program-psychology.html

### BSoD - Blue Screen of Death

<div class="tzx-fright">
![蓝屏（blue screen of death）][bsod-pic]
</div>

[Blue Screen of Death][bsod] 指的是微软 Windows 操作系统在无法从一个系统错误中恢复过来时所显示的屏幕图像。

[bsod]: http://zh.wikipedia.org/wiki/%E8%93%9D%E5%B1%8F%E6%AD%BB%E6%9C%BA
[bsod-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/blue-screen-of-death.JPG

### Forge

<div class="tzx-fleft">
![forge][forge-pic]
</div>

[forge-google]

我当然不是说的炼钢这个 forge，就跟中文的“打造”一样，它有培养的意思。

[消失的爱人 (Gone Girl)](http://movie.douban.com/subject/21318488/) ^^（01:11:33）^^，Amy：

> But I made him smarter. Sharper.
>
> I inspired him to rise to my level.
>
> I forged the man of my dreams.

话说我想知道易卜生（Henrik Johan Ibsen）的“你最大的责任是把你这块材料铸造成器”
是不是用的这个词，但是没有查到。

[forge-google]: http://www.google.com.sg/search?q=forge&newwindow=1&source=lnms&tbm=isch&sa=X&ei=0cj0UsrUIomkige89oCwCA&ved=0CAgQ_AUoAg&biw=1364&bih=652
[forge-pic]: http://gnat-tang-shared-image.qiniudn.com/2014/05/forge.jpg?imageView2/2/w/150

### Artifact (software development)

An [artifact] is one of many kinds of [**tangible**][tangible] by-product
produced during the development of software. Some artifacts (e.g., **use cases,
class diagrams, and other UML models, requirements and design documents**) help
describe the function, architecture, and design of software. Other artifacts
are concerned with the process of development itself—such as project plans,
business cases, and risk assessments.

In end-user development an artifact is either an **application** or a **complex
data object** that is created by an end-user without the need to know a general
programming language. **Artifacts describe automated behavior or control
sequences, such as database requests or grammar rules, or user-generated
content.**

[artifact]: http://en.wikipedia.org/wiki/Artifact_(software_development)
[tangible]: http://dict.youdao.com/search?q=tangible&keyfrom=dict.index

### LBS - Location Based Service

基于位置的服务(Location Based Service，[LBS][lbs])，它是通过电信移动运营商的
**无线电通讯网络** （如 GSM 网、CDMA 网）或 **外部定位方式(如 GPS)** 获取移动终端用户的位置信息
（地理坐标，或大地坐标），在 GIS(Geographic Information System，地理信息系统)平台的支持下，
为用户提供相应服务的一种增值业务。

LBS are used in a variety of contexts, such as health, indoor object search,
entertainment, work, personal life, etc.

[lbs]: http://baike.baidu.com/subview/152851/5072513.htm?fr=aladdin

### Canonical

[canonical] `/kəˈnɒnɪk(ə)l/`

:   * adj. 依教规的；权威的；牧师的
    * n. 牧师礼服

[canonical]: http://dict.youdao.com/search?q=canonical&keyfrom=dict.index

熟悉开源的人应该都听过这个词，但是这个词发音跟 GNU 一样，怪。

### fickle

[fickle]

:   adj. 浮躁的；易变的；变幻无常的

[fickle]: http://dict.youdao.com/search?le=eng&q=fickle&keyfrom=dict.top

### jQuery

[jQuery] is a **cross-platform JavaScript library** designed to simplify the
client-side scripting of HTML. It was released in January 2006 at BarCamp NYC
by John Resig. It is currently developed by a team of developers led by Dave
Methvin. Used by **over 80% of the 10,000 most visited websites**, jQuery is
the most popular JavaScript library in use today.

（~~感觉自己弄这个博客的时候居然没用 jQuery，既牛逼，又错过了学习它的机会。~~用了，我必须得说，大赞！）

[jQuery]: http://en.wikipedia.org/wiki/Jquery

### AJAX

[Ajax][ajax] (also AJAX; `/ˈeɪdʒæks/`; an acronym for **Asynchronous JavaScript
and XML**) is a group of interrelated web development techniques used on the
client-side to create asynchronous web applications. With Ajax, web
applications can send data to, and retrieve data from, a server asynchronously
(in the background) without interfering with the display and behavior of the
existing page. Data can be retrieved using the XMLHttpRequest object. Despite
the name, the use of XML is not required (JSON is often used instead. See
AJAJ), and the requests do not need to be asynchronous.

[ajax]: http://baike.baidu.com/subview/1641/5762264.htm?fr=aladdin

### JSON

<div class="tzx-fright">
![JSON][json-pic]
</div>

[json]

JSON (`/ˈdʒeɪsɒn/` jay-soun, `/ˈdʒeɪsən/` jay-son), or **JavaScript Object
Notation**, is an open standard format that uses human-readable text to
transmit data objects consisting of attribute–value pairs. It is used primarily
to transmit data between a server and web application, as an alternative to
XML.

Although originally derived from the JavaScript scripting language, JSON is a
**language-independent data format**, and code for parsing and generating JSON
data is readily available in a large variety of programming languages.

[json]: http://en.wikipedia.org/wiki/JSON
[json-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/json.png

### deprecated

[deprecated] `/'dɛprə,ketɪd/`

:   ![deprecated][deprecated-pic]

[deprecated]: http://dict.youdao.com/search?q=Deprecated&keyfrom=dict.index
[deprecated-pic]: http://gnat-tang-shared-image.qiniudn.com/blog-deprecated.png?imageView2/2/h/100

### conjunction

[conjunction] 结合；`[语]` 连接词；同时发生

:   ![conjunction][conjunction-pic]

[conjunction]: http://dict.youdao.com/search?le=eng&q=conjunction&keyfrom=dict.top
[conjunction-pic]: http://gnat-tang-shared-image.qiniudn.com/blog-conjunction.jpg?imageView2/2/h/100

### hexadecimal

[hexadecimal] `,hɛksə'dɛsɪml`

:   ![hexadecimal][hexadecimal-pic]

[hexadecimal]: http://dict.youdao.com/search?q=hexadecimal&keyfrom=dict.index
[hexadecimal-pic]: http://gnat-tang-shared-image.qiniudn.com/blog-hexadecimal.png

### diacritical

[diacritical]

:   A diacritical mark is a "**glyph**" added to a letter. `(à _ á)`

[diacritical]: http://dict.youdao.com/search?le=eng&q=diacritical&keyfrom=dict.top

### TIY

Try It Yourself, seen from W3C School

### mandatory

[mandatory]

:   * `['mændət(ə)rɪ]`
    * adj. 强制的；托管的；命令的
    * n. 受托者（等于mandatary）

**Mandatory** **Must do**

[mandatory]: http://dict.youdao.com/search?q=mandatory&keyfrom=dict.index

### DOM - Document Object Model

The [Document Object Model (DOM)][dom] is a **cross-platform and
language-independent convention for representing and interacting with objects
in HTML, XHTML and XML documents.** Objects in the DOM tree may be addressed
and manipulated by using methods on the objects. The public interface of a DOM
is specified in its application programming interface (API). The history of the
Document Object Model is intertwined with the history of the "browser wars" of
the late 1990s between Netscape Navigator and Microsoft Internet Explorer, as
well as with that of JavaScript and JScript, the first scripting languages to
be widely implemented in the layout engines of web browsers.

（这个音发“道穆”，我以前老以为是“杜穆”……）

[dom]: http://en.wikipedia.org/wiki/Document_Object_Model

### MIME -Multipurpose Internet Mail Extensions

[MIME][mime] is an Internet standard that extends the format of email to support:

* Text in character sets other than ASCII
* Non-text attachments
* Message bodies with multiple parts
* Header information in non-ASCII character sets
* Although MIME was designed mainly for SMTP protocol, its use today has grown beyond
  describing the content of email and now often includes describe content type in general,
  including for the web (see Internet media type) and as a storage for rich content in some commercial products
* The content types defined by MIME standards are also of importance outside of email,
  such as in communication protocols like HTTP for the World Wide Web. HTTP requires that
  data be transmitted in the context of email-like messages, although the data most often is not actually email.

[mime]: http://en.wikipedia.org/wiki/MIME

### Ogg

[Ogg][ogg] is a free, open container format maintained by the Xiph.Org
Foundation. The creators of the Ogg format state that it is unrestricted by
software patents and is designed to provide for efficient streaming and
manipulation of high quality digital multimedia.

 "Ogg" is derived from "ogging", jargon from the computer game Netrek, which
 came to mean doing something forcefully, possibly without consideration of the
 drain on future resources.

The Ogg container format can multiplex a number of independent streams for
audio, video, text (such as subtitles), and metadata.

[ogg]: http://en.wikipedia.org/wiki/Ogg

### Groove

[groove]

[groove]: http://dict.youdao.com/search?q=groove&keyfrom=dict.index

### wrap

[wrap] **[ræp] **

:   * wrap up 包起来 ; 席卷而去 ; 伪装 ; 包好
    * Bubble wrap 气泡布 ; 泡沫包装 ; 外包装气泡膜 ; 气泡纸
    * Wrap around 残响波干扰 ; 折回现象 ; 环绕 ; 围住

[wrap]: http://dict.youdao.com/search?q=wrap&keyfrom=dict.index

### NaN - Not A Number

In computing, [NaN][nan], standing for not a number, is a numeric data type
value representing an undefined or unrepresentable value, especially in
floating-point calculations. Systematic use of NaNs was introduced by the IEEE
754 floating-point standard in 1985, along with the representation of other
non-finite quantities like infinities.

Two separate kinds of NaNs are provided, termed quiet NaNs and signaling NaNs.
Quiet NaNs are used to propagate errors resulting from invalid operations or
values, whereas signaling NaNs can support advanced features such as mixing
numerical and symbolic computation or other extensions to basic floating-point
arithmetic. For example, 0/0 is undefined as a real number, and so represented
by NaN; the square root of a negative number is imaginary, and thus not
representable as a real floating-point number, and so is represented by NaN;
and NaNs may be used to represent missing values in computations

[nan]: http://en.wikipedia.org/wiki/NaN

### Always be the worst musician in a band

[always-be-the-worst-musician-in-a-band]

A jazz musician friend of mine told me this:

> If you are not the worst musician in in your band,
> you should immediately switch bands.

I work at Spotify.
I feel like a piece of shit programmer almost every day.
I didn't at my last workplace.
So I left and started at Spotify.

When the time comes when I no longer feel like a piece of shit programmer here,
I'll quit and move on to a place that can once again make me feel like piece of shit.

This strategy has worked out really well for me during my career.

（这个观点很有意思。）

[always-be-the-worst-musician-in-a-band]: http://www.quora.com/Computer-Programmers/What-does-it-feel-like-to-be-an-average-programmer-among-very-talented-ones

### 功率放大器简称功放



[功率放大器][power-amplifier-zh]简称功放，俗称“扩音机”，是音响系统中最基本的设备，
它的任务是把来自信号源（专业音响系统中则是来自调音台）的微弱电信号进行放大以驱动扬声器发出声音。

### Power Amplifier

An [audio power amplifier][power-amplifier-en] is an electronic amplifier that
amplifies low-power audio signals (signals composed primarily of frequencies
between 20 - 20 000 Hz, the human range of hearing) to a level suitable for
driving loudspeakers and is the final stage in a typical audio playback chain.

[power-amplifier-zh]: http://baike.baidu.com/link?url=LeZhOMw_a_BIvYWfNCnL29XfNevRvVAE8A-bRoatkFgxrzbxTtZQj4e28TxIv0BZ
[power-amplifier-en]: http://en.wikipedia.org/wiki/Audio_power_amplifier

### OTS - Over-The-Shoulder Shot

<div class="tzx-fright">
![over the shoulder shot][ots-pic]
</div>

In film or video, an [over the shoulder shot][ots] (also over shoulder, OS,
OTS, or third-person shot) is a shot of someone or something taken from the
perspective or camera angle from the shoulder of another person. The back of
the shoulder and head of this person is used to frame the image of whatever (or
whomever) the camera is pointing toward. This type of shot is very common when
two characters are having a discussion and will usually follow an establishing
shot which helps the audience place the characters in their setting. It is an
example of a camera angle.

（我就说我比小璇璇知识丰富多了～）

[ots]: http://en.wikipedia.org/wiki/Over_the_shoulder_shot
[ots-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/over-the-shoulder-shot.png?imageView2/2/h/400

### Cranberry

<div class="tzx-fright">
![cranberry][cranberry-pic]
</div>

[cranberry]

:   Cranberries are a group of **evergreen** dwarf shrubs or trailing vines in
    the subgenus Oxycoccus of the genus Vaccinium. In some methods of
    classification, Oxycoccus( 酸果蔓属) is regarded as a genus in its own
    right. They can be found in acidic bogs(沼泽) throughout the cooler regions
    of the northern hemisphere.

[cranberry]: http://en.wikipedia.org/wiki/Cranberry
[cranberry-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/cranberry.jpg?imageView2/2/h/180

### feat.

Just [featuring][feat]. This is used when **there is an invited artist** on a track.

It is not restricted to music. It was used on film and show billboards. You
could also translate this (depending on context, select as many options as
appropriate) by with the (exceptional/gracefully
acknowledged/reciprocated/just-passing-by/I-just-so-love-this-guy/requested-by-the-management/i-lost-a-stupid-bet/this-is-my-brother-in-law)
participation of to use a latin-derived word.

（这个在唱片里很多，*feat.* edition，常见的还有 "acoustic", live, remix）

[feat]: http://music.stackexchange.com/questions/2944/what-exactly-does-feat-means

### Bog

<div class="tzx-fright">
![bog][bog-pic]
</div>

A [bog] is a mire that accumulates peat, a deposit of dead plant material—often
mosses, and in a majority of cases, sphagnum moss. It is one of the four main
types of **wetlands**. Other names for bogs include **mire**, **quagmire** and
**muskeg**; alkaline(碱性的) mires are called **fens**. They are frequently
covered in ericaceous shrubs rooted in the sphagnum moss and peat. The gradual
accumulation of decayed plant material in a bog functions as a carbon sink.

Bogs occur where the water at the ground surface is acidic and low in
nutrients. In some cases, the water is derived entirely from
**precipitation**(沉淀), in which case they are termed ombrotrophic (rain-fed).
Water flowing out of bogs has a characteristic brown colour, which comes from
dissolved peat tannins. In general the low fertility and cool climate results
in relatively slow plant growth, but decay is even slower owing to the
saturated soil. Hence peat accumulates. Large areas of landscape can be covered
many metres deep in peat. Bogs have distinctive assemblages of plant and
animal species and are of high importance for biodiversity, particularly in
landscapes that are otherwise settled and farmed.

[bog]: http://en.wikipedia.org/wiki/Bog
[bog-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/bog.jpg

### versatile

[versatile]

:   多才多艺的；通用的，万能的；多面手的

    这个单词在英文里很常用。

    偶然看到，双性恋（可“攻”可“受”那种）的人，也常被戏称为“versatile”。

### excerpt

[excerpt]

:   n. 摘录，引用

[versatile]: http://dict.youdao.com/search?le=eng&q=versatile&keyfrom=dict.top
[excerpt]: http://dict.youdao.com/search?le=eng&q=excerpt&keyfrom=dict.top

### 时区（Time Zoon)

[Time Standards][time-zoon]

:   * **GMT** » Greenwich Mean Time
    * **UTC** » Coordinated Universal Time
    * **DST** » Daylight Saving Time (br. Summer Time)
    * **CST**
        + Central Standard Time (USA) UT-6:00
        + Central Standard Time (Australia) UT+9:30
        + China  Standard Time UT+8:00
        + Cuba Standard Time UT-4:00
* configure on debian: `dpkg-reconfigure tzdata`{.bash}

[time-zoon]: http://www.douban.com/note/147740972/

### NAS - Network-Attached Storage

[Network-attached storage (NAS)][nas] is **file-level computer data storage**
connected to a computer network providing data access to a heterogeneous group
of clients. NAS not only operates as a file server, but is specialized for this
task either by its hardware, software, or configuration of those elements. NAS
is often manufactured as a computer appliance – a specialized computer built
from the ground up for storing and serving files – rather than simply a general
purpose computer being used for the role.

[nas]: http://en.wikipedia.org/wiki/Network-attached_storage

### LSB - Linux Standard Base

The [Linux Standard Base (LSB)][lsb] is a joint project by several Linux
distributions under the organizational structure of the Linux Foundation to
standardize the software system structure, including the filesystem hierarchy
used in the GNU/Linux operating system. The LSB is based on the POSIX
specification, the Single UNIX Specification, and several other open standards,
but extends them in certain areas.

[lsb]: http://en.wikipedia.org/wiki/Linux_Standard_Base

### Wake on LAN

[Wake-on-LAN (WOL)][wake-on-lan] is an Ethernet computer networking standard
that allows a computer to be turned on or awakened by a network message.

The message is usually sent by a program executed on another computer on the
same local area network. It is also possible to initiate the message from
another network by using subnet directed broadcasts or a WOL gateway service.
Equivalent terms include wake on WAN, remote wake-up, power on by LAN, power up
by LAN, resume by LAN, resume on LAN and wake up on LAN. In case the computer
being awakened is communicating via Wi-Fi, a supplementary standard called Wake
on Wireless LAN (WoWLAN) must be employed.

[wake-on-lan]: http://en.wikipedia.org/wiki/Wake-on-LAN

### DMI - Desktop Management Interface

[The Desktop Management Interface (DMI)][dmi] generates a standard framework
for managing and tracking components in a desktop, notebook or server computer,
by abstracting these components from the software that manages them. The
development of DMI marked the first move by the Distributed Management Task
Force (DMTF) into desktop-management standards. Before the introduction of
DMI, no standardized source of information could provide details about
components in a personal computer.

DMI exposes system data (including the System Management BIOS (SMBIOS) data) to
management software, but the two specifications function independently.

DMI is commonly confused with SMBIOS, which was actually called DMIBIOS in its
first revisions.

[dmi]: http://en.wikipedia.org/wiki/Desktop_Management_Interface

### Semaphore (programming)

In computer science, particularly in operating systems, a [semaphore] is a
variable or abstract data type that is used for controlling access, by multiple
processes, to a common resource in a parallel programming or a multi user
environment.

A useful way to think of a semaphore is as a record of how many units of a
particular resource are available, coupled with operations to safely (i.e.,
without race conditions) adjust that record as units are required or become
free, and, if necessary, wait until a unit of the resource becomes available.
Semaphores are a useful tool in the prevention of race conditions; however,
their use is by no means a guarantee that a program is free from these
problems. Semaphores which allow an arbitrary resource count are called
counting semaphores, while semaphores which are restricted to the values 0 and
1 (or locked/unlocked, unavailable/available) are called binary semaphores.

[semaphore]: http://en.wikipedia.org/wiki/Semaphore_(programming)

### RandR

The X Resize, Rotate and Reflect Extension ([RandR]) is an X Window System
extension, which allows clients to dynamically change X screens, so as to
resize, rotate and reflect the root window of a screen. The initial X11 design
did not anticipate the need for dynamic resizing and it was necessary to
restart the X display server to bring about the changes. However, XFree86 has,
since its first release, supported changing the screen resolution on the fly
without changing the desktop size. RandR extension framework brought the
ability to change display characteristics without restarting the X session. The
extension framework allows laptops and handheld computers to change their
screen size to drive external monitors at different resolutions than their
built in screens

[RandR]: http://en.wikipedia.org/wiki/RandR

Word List 02
------------

### Meme

A **[meme]** (`/ˈmiːm/` meem) is "an **idea**, **behavior**, or **style** that
spreads from person to person within a culture." A meme acts as a unit for
carrying cultural ideas, symbols, or practices that can be **transmitted from
one mind to another** through writing, speech, gestures, rituals, or other
imitable phenomena with a mimicked theme. Supporters of the concept regard
memes as cultural analogues（类似物） to genes in that they self-replicate, mutate, and
respond to selective pressures.

The gene has its **cultural analog**, too: the meme. In cultural evolution, a
meme is a replicator and propagator—an idea, a fashion, a chain letter, or a
conspiracy(共谋) theory. On a bad day, a meme is a virus.

（你不能说 meme 是流言蜚语，因为它是中性词。它更像是地方特色、风俗，roman's way of living。
有道上的翻译是“文化基因”，很好。）

**注意不要和 mime 弄混，那是 mime（`maim`），这是 meme（`meem`，“两个我”）。**
mime 引申出去一个词叫 mimic。[MIME](#mime--multipurpose-internet-mail-extensions) 还代表互联网文本格式（比如 `text/javascript`）。

[meme]: http://en.wikipedia.org/wiki/Meme

### tentative

[tentative]

:   * Tentative standard 试行标准 ; 暂行标准 ; 试用标准 ; 假设标准
    * tentative data 试验数据 ; 推测数据
    * tentative specification 暂定规范 ; 暂行规格 ; 试验规范 ; 暂行规范
    * Tentative Schedule 试验性时间表 ; 临时计划表
    * tentative palpation 初持
    * tentative cuts 试切创
    * Tentative species 暂定种
    * Tentative portion 暂定区间
    * tentative modality 试探性情态

[tentative]: http://dict.youdao.com/search?le=eng&q=tentative&keyfrom=dict.top

### TMI - Too Much Information

[TMI][tmi]

:   way more than you need/want to know about someone.

    * John: I have mad chafing on my balls.
    * Frank: uh, TMI

    上面的例子太生动了，应该是我从 UrbanDictionary 上找的。

see also [**Three Mile Island** accident, March 28, 1979][threemileisland]

[tmi]: http://www.urbandictionary.com/define.php?term=tmi
[threemileisland]: http://en.wikipedia.org/wiki/Three_Mile_Island_accident

### plasma

<div class="tzx-fright">
![plasma][plasma_img]
</div>

[Plasma][plasma] (from Greek πλάσμα, "anything formed") is **one of the four
fundamental states of matter** (the others being **solid**, **liquid**, and
**gas**). It comprises the **major component of the Sun**. Heating a gas may
ionize its molecules or atoms (reducing or increasing the number of electrons
in them), thus turning it into a plasma, which contains charged particles:
positive ions and negative electrons or ions. **Ionization**`[,aɪənɪ'zeʃən]` can
be induced by other means, such as strong electromagnetic field applied with a
laser or microwave generator, and is accompanied by the dissociation of
molecular bonds, if present. Plasma can also be created by the application of
an electric field on a gas, where the underlying process is the Townsend
avalanche.

[plasma]: http://en.wikipedia.org/wiki/Plasma_(physics)
[plasma_img]: http://gnat-tang-shared-image.qiniudn.com/pictures/plasma.jpg

### animistic

animistic

:    adj. 精灵论的；万物有灵论的

    总让我想到《万物有灵且有美》。

[animistic]: http://dict.youdao.com/search?le=eng&q=animistic&keyfrom=dict.top

### sic

The _Latin adverb_ **[sic]** ("**thus**"; in full: sic erat scriptum, "thus was
it written") added immediately after a quoted word or phrase (or a longer piece
of text), indicates that the quotation has been transcribed **exactly** as
found in the original source, complete with any erroneous or archaic spelling
or other nonstandard presentation.

The notation's usual purpose is to inform the reader that any errors or
apparent errors in the transcribed material do not arise from errors in the
course of the transcription, and **the errors have been repeated
intentionally**, i.e., that they are reproduced exactly as set down by the
original writer or printer.

It may also be used as a form of ridicule or as a humorous comment, drawing
attention to the original writer's spelling mistakes or emphasizing his or her
erroneous logic. Sic is generally placed inside square brackets "[ ]", and
traditionally in italics, as is customary when printing a foreign word. It is
sometimes placed in parentheses "( )" instead, though this is less than
optimal, as brackets are meant to signify that something was added to a quote.

[sic]: http://en.wikipedia.org/wiki/Sic

### FYI - For Your Information

[FYI][fyi] is a common abbreviation of "For Your Information" (or interest, in
some interpretations).

"FYI" is commonly used in e-mail, instant messaging or memo messages, typically
in the message subject, **to flag the message as an informational message**,
with the intent to communicate to the receiver that he/she may be interested in
the topic, but is not required to perform any action. It is also commonly used
in informal and business spoken conversations.

Among Internet Standards, FYIs are a subset of the Request for Comments (RFC)
series.

The following description is taken from FYI, the FYI on FYI:

> The FYI series of notes is designed to provide Internet users with a central
> repository of information about any topics which relate to the Internet. FYIs
> topics may range from historical memos on "Why it was done this way" to
> answers to commonly asked operational questions.

[fyi]: http://en.wikipedia.org/wiki/FYI

### Long tail

In statistics, a [long tail][longtail] of some distributions of numbers is the
portion of the distribution **having a large number of occurrences far from the
"head" or central part of the distribution**. The distribution could involve
popularities, random numbers of occurrences of events with various
probabilities, etc. A probability distribution is said to have a long tail, if
a larger share of population rests within its tail than would under a normal
distribution. A long-tail distribution will arise with the inclusion of many
values unusually far from the mean, which increase the magnitude of the
skewness(n. 歪斜) of the distribution. **A long-tailed distribution is a
particular type of heavy-tailed distribution.**

[longtail]: http://en.wikipedia.org/wiki/Long_tail

### Tic-tac-toe

![][ttt_img]

[Tic-tac-toe][tictactoe] (or Noughts and crosses, Xs and Os) is a
paper-and-pencil game for two players, X and O, who take turns marking the
spaces in a 3×3 grid. The player who succeeds in placing three respective marks
in a horizontal, vertical, or diagonal row wins the game.

这游戏家喻户晓（除了中国），但实际上很无聊。明显是大人欺负小孩子的游戏。

[tictactoe]: http://en.wikipedia.org/wiki/Tic-tac-toe
[ttt_img]: http://upload.wikimedia.org/wikipedia/commons/a/ae/Tic_Tac_Toe.gif

### Wacom Digitizer

[Wacom Digitizer][wacon_dig]

:   | **电源管理驱动** | **Power Management driver** |
    | :--: | :--: |
    | **电源管理系统** | **Power Manager** |
    | **数字手写板** | **Wacom Digitizer** |
    | **指纹识别系统** | **Fingerprint Software** |

Wacom(和冠): a Brand

[wacon_dig]: http://en.wikipedia.org/wiki/Wacom

### Grigori Rasputin

![Grigori Rasputin][rasputin_img]

[Rasputin] was a **healer**, **a man of God** and **an equal rights activist**.
For nearly a century, Grigory Rasputin, spiritual advisor to Russia's last Tsar
and Tsarina, has been unjustly maligned simply because history is written by
the politically...

长得有点个性。

[Rasputin]: http://en.wikipedia.org/wiki/Grigori_Rasputin
[rasputin_img]: http://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/G._Rasputin.JPG/220px-G._Rasputin.JPG

### Han Solo

[Han Solo][hansolo] is **a character** in the original trilogy of the Star Wars
universe. He is **portrayed by Harrison Ford**. He and his co-pilot,
**Chewbacca**, become involved in **the Rebel Alliance** against the **Galactic
Empire**. Over the course of the Star Wars [franchise][franchise], he becomes a
chief figure in the Alliance and succeeding galactic governments. Star Wars
creator George Lucas described the character as "**a loner who realizes the
importance of being part of a group and helping for the common good.**"

[hansolo]: http://en.wikipedia.org/wiki/Han_Solo
[franchise]: http://dict.youdao.com/search?le=eng&q=franchise&keyfrom=dict.top

### Cassandra

<div class="tzx-fright">
![Cassandra][cassandra-pic]
</div>

**In Greek mythology**, [Cassandra] (Greek Κασσάνδρα, also Κασάνδρα; ), also
known as **Alexandra** or **Kassandra**, was the **daughter of King Priam and
Queen Hecuba of Troy**. She had the power of prophecy and the curse of never
being believed. A common version of her story is that **Apollo gave her the
power of prophecy in order to seduce(诱惑)  her, but when she refused him, he
gave her the curse of never being believed.** In an alternate version, she fell
asleep in a temple, and snakes licked (or whispered in) her ears so that she
was **able to hear the future**. The connection between snakes and knowledge is
**a recurring theme in Greek mythology**, though sometimes it brings an ability
to understand the language of animals rather than an ability to know the
future. **She is a figure of both epic tradition and of tragedy.**

[Cassandra]: http://en.wikipedia.org/wiki/Cassandra
[cassandra-pic]: http://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Cassandra1.jpeg/220px-Cassandra1.jpeg

### Wheel

The term **[Wheel]** was adopted by Unix users in the 1980s, due to the movement of operating system developers and users from TENEX/TOPS-20 to Unix. Modern Unix implementations generally include a security protocol that requires a user be a member of the wheel user privileges group in order to **gain superuser access to a machine** by using the **`su`** command.

[Big Wheel / Big Wheels][bigwheel]:

:   A person **with a great deal of power or influence**, especially a high-ranking person in an organization, e.g. "She's a big wheel at IBM."

鉴于 wheel（轮子） 还有这个意思，以后我们把“造轮子”当成“造神”的双关语。

[Wheel]: http://en.wikipedia.org/wiki/Wheel_(Unix_term)
[bigwheel]: http://en.wiktionary.org/wiki/big_wheel

### Hymn

<div class="tzx-fright">
![Hymn][hymn-pic]
</div>

A [hymn] `/him/` is **a type of song**, usually **religious**, specifically
written **for the purpose of praise, adoration or prayer**, and typically
addressed to a **deity(神)** or deities, or to a prominent figure or
personification. The word hymn derives from Greek ὕμνος (hymnos), which means
"**a song of praise**". Collections of hymns are known as hymnals or hymn
books.

RMS 写的自由软件之歌（The Free Software Song）就是一首 Hymn，而
RMS 则是 Saint in the Church of Emacs，ST. IGNUCIUS。

[hymn]: http://en.wikipedia.org/wiki/Hymn
[hymn-pic]: http://gnat-tang-shared-image.qiniudn.com/201404-hymn.png

### omnivore

An [omnivore] `/ˈomnɪvɔər/`, meaning '**all-eater**' (Latin, omnes, omnia,
meaning "all" or "everything" and vorare meaning "to devour"), is an animal
that can derive its energy and nutrients from a diet consisting of a variety of
food sources that may include **plants**, **animals**, **algae** and **fungi**.

Omnivores often are **opportunistic, general feeders** which lack **carnivore**
or **herbivore** specializations for acquiring or processing food, but which
nevertheless consume both animal protein and vegetation.

RMS 说自己是个什么都吃的人，用的就是 omnivore 这个词。

[omnivore]: http://en.wikipedia.org/wiki/Omnivore

Words List 03
-------------

### Red tape

<div class="tzx-fright">
![red tape][redtape-img]
</div>

[Red tape][redtape] is **an idiom** that refers to excessive regulation or
rigid conformity to formal rules that is considered redundant or bureaucratic
and hinders or prevents action or decision-making. It is usually applied to
governments, corporations, and other large organizations.

One definition is the "**collection or sequence of forms and procedures
required to gain bureaucratic approval for something, especially when
oppressively complex and time-consuming**". Another definition is the
"**bureaucratic practice of hair splitting or foot dragging, blamed by its
practitioners on the system that forces them to follow prescribed procedures to
the letter**".

[redtape]: http://en.wikipedia.org/wiki/Red_tape
[redtape-img]: http://gnat-tang-shared-image.qiniudn.com/pictures/redtape.jpg

### Predicate (grammar)

There are two competing notions of the predicate in theories of grammar. The
first concerns traditional grammar, which tends to view a predicate as one of
two main parts of a sentence, the other part being the subject; the purpose of
the [predicate] is to modify the subject. The second derives from work in
predicate calculus (predicate logic, first order logic) and is prominent in
modern theories of syntax and grammar. In this approach, the predicate of a
sentence corresponds mainly to the main verb and any auxiliaries that accompany
the main verb, whereas the arguments of that predicate (e.g. the subject and
object noun phrases) are outside the predicate. **The competition between these
two concepts has generated confusion concerning the use of the term predicate
in theories of grammar. **

`integerp, numberp -> t, nil`{.coffee}

```scheme
;; float must have a dot followed by a zero
(integerp 3.) ; returns t
(floatp 3.)   ; returns nil
(floatp 3.0)  ; returns t
```

“谓词演算”的“谓词”就是这个 predicate。
很多黑客喜欢用 "you-want-black-coffee-p" 这种蛋疼的句式来表一般疑问。
另一面，很多中国人老想着用流畅的语法来表达自己，其实这中 hyphen seperated 形容词
也很常用。很切可以说得很长。而且这种句子用英文说起来很有意思，比如：
我是一个「天天吃-大盘鸡-从不厌烦」的人。

[predicate]: http://en.wikipedia.org/wiki/Predicate_(grammar)

### IMO - In My Opinion

[as I see it and in my opinion; in my view](http://idioms.thefreedictionary.com/In+My+Opinion)

总觉得这个词，有卖萌嫌疑。

### SCM - Software configuration management

In software engineering, [software configuration management (SCM)][scm] is **the
task of tracking and controlling changes in the software**, part of the larger
cross-discipline field of configuration management. SCM practices include
**revision control** and the **establishment of baselines**. If something goes
wrong, SCM can determine what was changed and who changed it. If a
configuration is working well, SCM can determine how to [replicate][replicate]
it across many hosts.

The acronym "SCM" is also expanded as **source configuration management** and
**software change and configuration management.** However, "configuration" is
generally understood to cover changes typically made by a system administrator;
management of source code undergoing software development is considered
separately (see revision control).

记住，SVN、Git、Bazzar、Mercurial 这些都算 SCM。

[scm]: http://en.wikipedia.org/wiki/Software_configuration_management
[replicate]: http://dict.youdao.com/search?q=replicate&keyfrom=dict.index "重复；折转"

### Editor war

[Editor war][editor-war] is the common name for the [**rivalry**][rivalry]
between users of the Vi (Vim) and Emacs text editors. The rivalry has become a
lasting part of hacker culture and the free software community.

Many flame wars have been fought between groups insisting that their editor of
choice is the [**paragon**][paragon] **of editing perfection**, and insulting
the others. Unlike the related battles over operating systems, programming
languages, and even source code indent style, choice of editor usually only
affects oneself.

see also: [brower war][brower-war]

Vim 是最棒的。Emacs 其次。其它不需要排名次。

[editor-war]: http://en.wikipedia.org/wiki/Editor_war
[brower-war]: http://en.wikipedia.org/wiki/Browser_war
[rivalry]: http://dict.youdao.com/search?q=rivalry&keyfrom=dict.index "竞争"
[paragon]: http://dict.youdao.com/search?le=eng&q=paragon&keyfrom=dict.top "模范；完美之物；优秀之人"

### Shebang

在计算机科学中，[Shebang][shebang]（也称为 Hashbang）是一个由井号和叹号构成的
字符串行（`#!`），其出现在文本文件的第一行的前两个字符。 在文件中存在 Shebang 的情况下，
类 Unix 操作系统的程序载入器会分析 Shebang 后的内容，将这些内容作为解释器指令，
并调用该指令，并将载有 Shebang 的文件路径作为该解释器的参数。

Shebang 的名字来自于 SHArp 和 bang，或 haSH bang 的缩写，指代 Shebang 中 `#!` 两个符号
的典型 Unix 名称。 Unix 术语中，井号通常称为 sharp，hash 或 mesh；而叹号则常常称为bang。
也有看法认为，shebang 名字中的 sh 来自于默认 shell Bourne shell 的名称，sh，因为常常使用 shebang 调用之。

[shebang]: http://zh.wikipedia.org/wiki/Shebang

### name suffix

A [name suffix][name-suffix], in the Western English-language naming tradition,
follows a person's full name and **provides additional information about the
person**. [Post-nominal letters][post-nominal-letters] indicate that the
individual holds a position, educational degree, accreditation, office, or
honor.

* Post-nominal letters
    + Academic
        - bachelor's degree (A.B, B.A., B.S., B.E, B.F.A., B.Tech., L.L.B, B.Sc., etc.)
        - master's degree (M.A., M.S., M.F.A., LL.M, M.L.A., M.B.A., M.Sc., M.Eng etc.)
        - professional doctorate (J.D., M.D., D.O., Pharm.D., etc.)
        - academic doctorate (Ph.D., D.Phil., LL.D, Eng.D., etc.).
    + Honorary
    + [Esquire][esquire]
    + Professional
    + Religious orders
    + Ordering
* Generational titles
    + [**Jr.**][jr]:  Junior

[name-suffix]: http://en.wikipedia.org/wiki/Suffix_(name)
[jr]: http://en.wikipedia.org/wiki/JR_(disambiguation)
[esquire]: http://dict.youdao.com/search?le=eng&q=Esquire&keyfrom=dict.top "先生；绅士"

### post nominal letters

[Post-nominal letters][post-nominal-letters], also called **post-nominal
[initials][initials]**, **post-nominal titles**, or
**[designatory][designatory] letters**, are letters placed after the name of a
person to indicate that the individual holds a position, educational degree,
accreditation, office, military decoration, or honour, or is a member of a
religious institute. An individual may use several different sets of
post-nominal letters, but in some regions it may be customary to limit the
number of sets to one or just a few. The order in which these are listed after
a name is based on the order of precedence and category of the order.
Post-nominal letters are one of the main types of name suffix.

[post-nominal-letters]: http://en.wikipedia.org/wiki/Post-nominal_letters
[designatory]: http://dict.youdao.com/search?le=eng&q=designatory&keyfrom=dict.top "标示，标出，标明，指明，指出；指定"
[initials]: http://dict.youdao.com/search?le=eng&q=initials&keyfrom=dict.top "首字母；缩写；姓名中的大写字母"

### De-facto

[De facto][defacto] (`/dɨ ˈfæktoʊ/`, `/deɪ-/`, Latin: `[deː ˈfaktoː]`) is a Latin
expression that means "**concerning fact**". In law, it often means "**in
practice but not necessarily ordained by law**" or "**in practice or actuality,
but not officially established**". It is commonly used in contrast to de jure
(which means "concerning the law") when referring to matters of law,
governance, or technique (such as standards) that are found in the common
experience as created or developed without or contrary to a regulation. When
discussing a legal situation, de jure designates what the law says, while de
facto designates action of what happens in practice. It is analogous and
similar to the expressions "for all intents and purposes" or "in fact".

这个词很常见。（是“实际中的主流”的意思？感觉和一个词弄混了。）

[defacto]: http://en.wikipedia.org/wiki/De_facto

### Quotation mark glyphs

Different typefaces, character encodings and computer languages use various
encodings and glyphs for quotation marks. This article lists some of these
glyphs along with their Unicode code points and HTML entities.

* [Quotation marks][quotation-mark-glyphs] in English
    + English curved quotes, also called `"book quotes"` or `"curly quotes"`
* Typewriter quotation marks
    + `”Good morning, Dave,” said HAL.`
    + `‛‛Good morning, Dave,’’ said HAL.`
    + `‛Good morning, Dave,’ said HAL.`
    + `` ``Good morning, Dave,'' said HAL. `` (in $\TeX$)
* Quotation marks in electronic documents
    + smart quotes `(“…”)`[^smart-page]
    + dumb quotes `("…")`

你能看出来上面那句话和 HAL 来自哪儿吗？

see also [Quotation Mark][quotation-mark]

[quotation-mark-glyphs]: http://en.wikipedia.org/wiki/Quotation_mark_glyphs
[quotation-mark]: http://en.wikipedia.org/wiki/Quotation_mark

[^smart-page]: 本站的 quotation marks 都是 smart 的。

### DWIM - Do What I Mean

[DWIM ("Do What I Mean")][dwim] computer systems attempt to anticipate what
users intend to do, correcting trivial errors automatically rather than blindly
executing users' explicit but incorrect input. The term was coined by Warren
Teitelman in his DWIM package for BBN Lisp, part of his PILOT system, some time
before 1966.

Teitelman's DWIM package "correct(ed) errors automatically or with minor user
intervention", similarly to a spell checker for natural language.

Teitelman and his Xerox PARC colleague Larry Masinter later described the
philosophy of DWIM in the Interlisp programming environment (the successor of
BBN Lisp):

Although most users think of DWIM as a single identifiable package, it embodies
a pervasive philosophy of user interface design: at the user interface level,
system facilities should make reasonable interpretations when given
unrecognized input. ...the style of interface used throughout Interlisp allows
the user to omit various parameters and have these default to reasonable
values...

DWIM is an embodiment of the idea that the user is interacting with an agent
who attempts to interpret the user's request from contextual information. Since
we want the user to feel that he is conversing with the system, he should not
be stopped and forced to correct himself or give additional information in
situations where the correction or information is obvious.

Critics of DWIM claimed that it was "tuned to the particular typing mistakes to
which Teitelman was prone, and no others" and called it "Do What Teitelman
Means" or "Do What Interlisp Means."

[dwim]: http://en.wikipedia.org/wiki/DWIM

### 乞题

[窃取论点][begging-the-question]（英语：begging the question 或 question begging；
拉丁语：petitio principii），又称乞求论点、乞题、丐题等等，
是在论证时**把不该视为理所当然的命题默认为理所当然**，这是一种不当默认的非形式谬误。

乞题的界定可大致归为两大类，一为承续亚氏的界定，将乞题定义为“**默认了结论为真**”，这是一种语形上的界定；
亦有人提出语用判准，将乞题定义为“**默认了不应默认的前提**”，以含括更多直觉上为不当默认的不恰当推理。

Examples:

* 男人体力最好，因为女人体力没那么好。
* 美国人都很有钱（未提供理由支持前提）
    + 美国人都很有钱，美籍教师彼得当然也很有钱啰！
    + 本例的前提“美国人都很有钱”比结论“美籍教师彼得很有钱”显然更可疑、更需要证明，
      这使得不同意结论的人极可能也不会同意前提，因此这个论证非常可能会乞题。

[begging-the-question]: http://zh.wikipedia.org/wiki/%E4%B9%9E%E9%A1%8C

### Modus operandi

[犯罪手法 (Modus Operandi)][modus-operandi] 是固定不變的作案方式 `/'modəs/` `/ɔpə'rændɪ/`

Modus operandi (plural modi operandi) is a Latin phrase, approximately
translated as "**method of operation**". The term is used to describe someone's
habits of working, particularly in the context of business or criminal
investigations. In English, it is often shortened to **M.O.**

The expression is often used **in police work** when discussing a crime and
addressing the methods employed by the perpetrators. It is also used in
criminal profiling, where it can help in finding clues to the offender's
psychology. It largely consists of examining the actions used by the
individual(s) to execute the crime, prevent its detection and/or facilitate
escape. A suspect's modus operandi can assist in his identification,
apprehension, or repression, and can also be used to determine links between
crimes.

[modus-operandi]: http://en.wikipedia.org/wiki/Modus_operandi

Words List 04
-------------

### QWAN - Quality without a Name

For [Christopher Alexander][christopher-alexander], it is most important to
think about the people who will come in contact with a piece of
**architecture**. One of his key values is making these people feel more alive.
He talks about the **"quality without a name" ([QWAN][qwan])**.

More generally, we could say that a good system should **be accepted**,
**welcomed** and **happily embraced** as an enrichment of daily life by those
who are meant to use it, or - even better - by all people it affects. For
instance, when discussing a street café, Alexander discusses the possible
desires of a guest, but also mentions people who just walk by.

The same thinking can be applied to technical devices such as telephones and
cars, to social structures like a team working on a project, or to the user
interface of a computer program. **The qualities of a software system, for
instance, could be rated by observing whether users spend their time enjoying
or struggling with the system.**

Another possible value is **the efficiency of a system**, regarding a specific
task. Here the happiness of the participants is less important, as long as they
do their job. In software engineering, design patterns usually help to create
object-oriented code that is easy to read, maintain, modify and reuse.  By
focusing on the impacts on human life, we can identify patterns that are
independent from changing technology, and thus find "[**timeless
quality**][timeless]".

这玩意儿也没中文翻译，突然想到，是不是可以说成是**“无印良品”**。

[qwan]:  http://c2.com/cgi/wiki?QualityWithoutaName
[christopher-alexander]: http://en.wikipedia.org/wiki/Christopher_Alexander
[timeless]: http://dict.youdao.com/search?le=eng&q=timeless&keyfrom=dict.top "Timeless: adj. 永恒的；不受时间影响的；不合时宜的"

### Narcissus

<div class="tzx-fright">
![Narcissus][narcissus-pic]
</div>

In Greek mythology, [Narcissus][narcissus] (`/nɑrˈsɪsəs/`; Greek: Νάρκισσος,
Narkissos) was a hunter from the territory of Thespiae in Boeotia who was
**renowned for his beauty**. He was the son of a river god named Cephissus and
a nymph named Liriope. He was exceptionally proud of what he did to those who
loved him. **Nemesis noticed and attracted Narcissus to a pool, wherein he saw
his reflection and fell in love with it, not realizing it was merely an
image**. Unable to leave the beauty of his reflection, Narcissus died.
Narcissus is the origin of the term **narcissism, a fixation with oneself**.

自恋得停不下来了。

[narcissus]: http://en.wikipedia.org/wiki/Narcissus_(mythology)
[narcissus-pic]: http://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Narcissus-Caravaggio_%281594-96%29_edited.jpg/220px-Narcissus-Caravaggio_%281594-96%29_edited.jpg

### 孕妇效应

[孕妇效应][yunfu-effect] 意即偶然因素随着自己的关注而让你觉得是个普遍现象，
就是当人怀孕了就更容易发现孕妇，你开了奔驰就更容易看到奔驰，你拎个LV就发现满大街都是LV。
世界其实挺美好的，看人把内心投射在哪里，而要投射前，先让自己的内心美好起来。相由心生，境由心造。

卡耐基先生很久以前就提出一个论点，那就是每个人的特质中大约有 80% 是长处或优点，
而 20% 左右是我们的缺点。当一个人只知道自己的缺点是什么，而不知发掘优点时，
“**视网膜效应**” 就会促使这个人发现他身边也有许多人拥有类似的缺点，
进而使得他的人际关系无法改善，生活也不快乐，你有没有发现那些常常骂别人很凶的人，
其实自己脾气也不太好？这就是“视网膜效应”的影响力。

[yunfu-effect]: http://baike.baidu.com/view/6927144.htm

### Comic Sans

[一个被无情鄙视的字体。][comic-sans]

[comic-sans]: http://en.wikipedia.org/wiki/Comic_Sans

### 黑长直

[“黑长直”][hei-chang-zhi]，ACG 界用语，泛指黑色长直发，是日本动漫游戏常见人设，萌属性之一。
带有黑长直属性的女性往往都会具备温柔贤淑、善解人意等东方传统特征，而与之同时也可能会附加腹黑、
傲娇、女王等其他属性，常常能激发出旁人强烈的爱慕之情。

关于黑长直这个词语主要有三种解释

* 其一，黑长直是指黑色长直发。
* 其二，黑长直是指黑丝、长直腿。
* 其三，黑长直是指黑丝、长腿、直发。

[hei-chang-zhi]: http://baike.baidu.com/view/3698561.htm

### ACG - Animation, Comic, Game

[ACG][acg] 文化的发源地是日本，以网络方式传播流入世界各国，在中国存在对于动漫产业的歧视，
也包含本国的动漫产业，还停留在发展阶段等原因，导致ACG 文化在中国沦为流行文化的悲惨地步，
由于中国二次元宅界的日语水平不高现象普遍存在，流入中国的ACG文化在翻译阶段，含义就被严重扭曲，
随着流行的传播，已完全失去了它本来的姿态。ACG为英文 **Animation、Comic、Game** 的缩写，
是动画、漫画、游戏的总称。为华人地区常用的次文化词汇。

现还有 ACGN，为在 ACG（英文 Animation、Comic、Game 的基础上增加了 N（Novel 小说，泛指文字读物（轻小说）），
此词汇主要流行于华人区域。详见 ACGN。

外，BGM 是背景音乐（background music），还有 OP、ED 你也应该知道。

[acg]: http://baike.baidu.com/subview/17740/8092663.htm

### Emoji

[Emoji][emoji] (絵文字 or えもじ; Japanese pronunciation: [emodʑi]) are the
**[ideograms][ideograms]** or **smileys** used in Japanese electronic messages
and webpages, whose use is spreading outside Japan. Originally meaning
pictograph, the word emoji literally means "picture" (e) + "character" (moji).
The characters are used much like ASCII emoticons or kaomoji, but a wider range
is provided, and the icons are standardized and built into the handsets.

Although originally only available in Japan, some emoji character sets have
been incorporated into Unicode, allowing them to be used elsewhere as well.
As a result, some phones such as the Windows Phone and the iPhone lines allow
access to the symbols without requiring a Japanese carrier. Emoji have also
started appearing in emailing services such as Gmail

[emoji]: http://en.wikipedia.org/wiki/Emoji
[ideograms]: http://dict.youdao.com/search?q=ideograms&keyfrom=dict.plugin "n. 意符；表意文字；表彰符号"

### 颜文字

[颜文字][yanwenzi]（日语：颜文字）并不是指有颜色的文字，而是指用文字或各种线条、
符号等组成的图画，它是 **[ASCII Art] 的一部分**。在电脑（以前是打字机）
用标点符号及英文字弄一些十分简单的面部图案。

[ASCII Art]: post-0009-ascii-art.html

我们现在所说的「颜文字」，一般是指日式颜文字或日本颜文字。“美国人称「颜文字」为"emoticon"
（emotion icon 的简称）。特色是在电脑（以前是打字机）用标点符号及英文字弄一些十分简单的面部图案。
最常用的是用 `:-)` 来表示笑容及以 `:-(` 代表不开心。用来代表大笑的 `XD` 也极之流行
（这也是港人最常用的美式颜文字）。
其它较常用的还有 `:-o`（吃惊）及 `:-p`（伸出舌头，即开玩笑）。因为迁就字式，都是向左倒的不完整表情。

[yanwenzi]: http://baike.baidu.com/view/56720.htm

### Here document

In computer science, a [here document][here-document] (**here-document**,
**heredoc**, **hereis**, **here-string** or **here-script**) is a file literal
or input stream literal: it is a section of a source code file that is treated
as if it were a separate file. The term is also used for a form of multiline
string literals that use similar syntax, preserving line breaks and other
whitespace (including indentation) in the text.

Here documents **originate in the Unix shell**, and are found in sh, csh, ksh,
Bash and zsh, among others. Here document-style string literals are found in
various high-level languages, notably the Perl programming language (syntax
inspired by Unix shell) and languages influenced by Perl, such as PHP and Ruby.
Other high-level languages such as Python and Tcl **have other facilities for
multiline strings**.

The most common syntax for here documents, originating in Unix shells, is <<
followed by a delimiting identifier, followed, starting on the next line, by
the text to be quoted, and then closed by the same identifier on its own line.

```bash
$ tr a-z A-Z << END_TEXT
one two three
END_TEXT
```

Output: `ONE TWO THREE`

```bash
# 这个不算，这是 here string
$ tr a-z A-Z <<< 'one two three'
```

Output: `ONE TWO THREE`

```bash
$ tr a-z A-Z <<< 'one
two three'
```
Output:

```plain
ONE
TWO THREE
```

perl:

:   ```perl
    my $var = <<EOF;
    ...
    ...
    ...
    EOF
    ```

[here-document]: http://en.wikipedia.org/wiki/Here_document

### 吃饭睡觉打豆豆

这是一则爆红的网络冷笑话，[吃饭睡觉打豆豆][chifan-shuijiao-dadoudou]，被很多网友用作昵称，
也有很多大中青年用作个性签名，归结其寓意有**百无聊赖，无所事事**之引申义。
现在青年人当中流行一种网页小游戏叫“打豆豆”，使吃饭睡觉打豆豆这个笑话融入到了现实生活中，
得到很多人的喜爱。打豆豆游戏又叫十字消除。

> 有个记者去南极采访一群企鹅，他问第一只企鹅：“你每天都干什么？”
> 企鹅说：“吃饭，睡觉，打豆豆！”
> 接着又问第 2 只企鹅，那只企鹅还是说：“吃饭、睡觉、打豆豆！”
> 记者带着困惑问其他的企鹅，答案都一样，就这样一直问了 99 只企鹅。
> 当走到第 100 只小企鹅旁边时，记者走过去问它：每天都做些什么啊？
> 那只小企鹅回答：“吃饭，睡觉。”
> 那人惊奇的又问：“你怎么不打豆豆？”
> 小企鹅撇着嘴巴，瞪了记者一眼说：“我就是豆豆！！！！”

[chifan-shuijiao-dadoudou]: http://baike.baidu.com/view/1402796.htm

### panchromatic

[panchromatic]

pan + chromatic 全色(全色影像什么的)

[panchromatic]: http://dict.youdao.com/search?le=eng&q=panchromatic&keyfrom=dict.top

### Truth or Dare? 真心话大冒险

[Truth or Dare?][truth-or-dare] is a party game requiring at least three
players. Players are given the choice between answering a question truthfully,
or performing a "dare", both of which are set by the other players. The game is
particularly popular among adolescents and children, and is sometimes used as a
forfeit when gambling.

The game has existed for centuries, with at least one variant, Questions and
Commands, being attested as early as 1712.

在鸟人里也看到了这个词。

[truth-or-dare]: http://en.wikipedia.org/wiki/Truth_or_Dare%3F

### Intrusive Thoughts

[intrusive-thoughts-wikipedia]

[知乎][intrusive-thoughts]: 实际上有 intrusive `[ɪn'trusɪv]` thoughts 的人有很多，包括丘吉尔首相自己也有。
他无法忍受住在楼上，因为他总是有「忍不住要从阳台跳下去」的想法。

Intrusive thoughts are **unwelcome involuntary** thoughts, images, or unpleasant
ideas that may become **obsessions**, are upsetting or distressing, and can be
difficult to manage or eliminate. When they are associated with
obsessive-compulsive disorder (OCD), depression, body dysmorphic disorder
(BDD), and sometimes attention-deficit hyperactivity disorder (ADHD), the
thoughts may become paralyzing, anxiety-provoking, or persistent. Intrusive
thoughts may also be associated with episodic memory, unwanted worries or
memories from OCD, posttraumatic stress disorder, other anxiety disorders,
eating disorders, or psychosis. Intrusive thoughts, urges, and images are of
inappropriate things at inappropriate times, and they can be divided into three
categories: "inappropriate aggressive thoughts, inappropriate sexual thoughts,
or blasphemous religious thoughts".

我也有个很 horrible 的 intrusive thoughts。

[intrusive-thoughts]: http://www.zhihu.com/question/23848160#answer-5660473
[intrusive-thoughts-wikipedia]: http://en.wikipedia.org/wiki/Intrusive_thoughts

### Saint Sebastian

[Saint Sebastian][saint-sebastian] (died c. 288) was an early Christian saint
and martyr. It is said that he was killed during the Roman emperor Diocletian's
persecution of Christians. He is commonly depicted in art and literature tied
to a post or tree and shot with arrows. This is the most common artistic
depiction of Sebastian; however, according to legend, he was rescued and healed
by Irene of Rome. Shortly afterwards he criticized Diocletian in person and as
a result was clubbed to death. He is venerated in the Catholic and Orthodox
Churches.

The details of Saint Sebastian's martyrdom were first spoken of by 4th-century
bishop Ambrose of Milan (Saint Ambrose), in his sermon (number 22) on Psalm
118. Ambrose stated that Sebastian came from Milan and that he was already
venerated there at that time. Saint Sebastian is a popular male saint,
especially among soldiers.

[saint-sebastian]: http://en.wikipedia.org/wiki/Saint_Sebastian

### OGC (符号)

[OGC][ogc] 是从网络聊天之表情符号中延伸出，初时意指男性自慰之表象，其中 `O` 为人体头部，
`G` 为上下两侧为左右手，中间则一横为男性生殖器官，`C` 则表示为双脚。

如同表情符号失意体前屈（Orz），OGC 后续也延伸出许多变化形式。最常见的如：

* `oec`：代表左撇子在自慰之意象。
* `O3>C`，代表女性自慰（`3` 为胸部、`>` 为双手，也作 `O8>C`、`OB>C`）。

[ogc]: http://zh.wikipedia.org/wiki/OGC_(%E7%AC%A6%E5%8F%B7)

### G.I. - Government Issue

[G.I.][government-issue] is a noun used to describe **the soldiers of the U.S.
Army** and **airmen of the U.S. Army Air Forces** — and occasionally for U.S.
Marines and shorebound sailors — and also for general items of their equipment.

The term G.I. has been used for a long time as an initialism of "Government
Issue" or "General Issue", but it originally referred to "galvanized iron", as
used by the logistics services of the Armed Forces of the United States.

The letters "G.I." were used to denote equipment made from galvanized iron,
such as metal trash cans, in U.S. Army inventories and supply records.

[government-issue]: http://en.wikipedia.org/wiki/Government_Issue

### Krypton

[Krypton][krypton] (from Greek: κρυπτός kryptos "the hidden one") is a chemical
element with symbol **Kr** and atomic number 36. It is a member of group 18
(**noble gases**) elements. A **colorless**, **odorless**, **tasteless** noble
gas, krypton occurs in trace amounts in the atmosphere, is isolated by
fractionally distilling liquefied air, and is often used with other rare gases
in fluorescent lamps. **Krypton is inert for most practical purposes.**

### Krypton (comics)

[Krypton][krypton-comics] is **a fictional planet** in the DC Universe and the
native world of **Superman**. In some stories, it is also the native world of
Supergirl, Krypto the Superdog, and Power Girl (albeit an alternate universe
version in her case, designated "Krypton-Two"). Krypton has been portrayed
consistently as having **been destroyed just after Superman's flight from the
planet**, with exact details of its destruction varying by time period, writers
and franchise. Kryptonians were the dominant species on Krypton.

The planet was created by Jerry Siegel and Joe Shuster, and was first referred
to in Action Comics #1 (June 1938). The planet was given its first full-fledged
appearance in Superman #1 (Summer 1939).

[krypton]: http://en.wikipedia.org/wiki/Krypton
[krypton-comics]: http://en.wikipedia.org/wiki/Krypton_(comics)

Words List 05
--------------

### OP, ED

[op-ed]

* OP: Opening 即片头曲
* ED: Ending   即片尾曲
* [虾米 - 精选动漫 ED 集][ed]

Izumi Sakai 有很多著名的好听的 OP/ED。

[op-ed]: http://bulo.hujiang.com/question/118366/
[ed]: http://www.xiami.com/song/showcollect/id/13279724

### 去 "IOE" - 去 IBM, Oracle, EMC

所谓去 [“IOE”][dis-ioe]，是对去 [IBM][ibm]、[Oracle][oracle]、[EMC][emc] 的简称，
三者均为海外 IT 巨头，其中 IBM 代表硬件以及整体解决方案服务商，
Oracle 代表数据库，EMC 代表数据存储。

银行在做去“IOE”筹划, 准备在三到五年内逐步淘汰外资，在银行 IT 系统和办公系统实现中资化。

去“IOE”并不是“棱镜”事件带来的新提法。据业内人士介绍，**去“IOE”提法最早来自工信部**，
时间为去年年中。其触发因素为国内厂商中兴、华为在开拓美国市场时遭不公平待遇，
美国以威胁信息安全为由将其挡在门外，这被国内市场视为赤裸裸的歧视及其对本土市场的保护。

而“棱镜”事件背后，对国内IT厂商来说，或**蕴藏着年千亿级的潜在市场**。
尽管去“IOE”并非坦途，但接受记者采访的业内人士均认为，国产化进程不可逆。
不过要实现核心领域的国产化，在期待政策激励和倾斜的同时，技术上的改进或是根本。

Related: [淘宝阿里巴巴上演去Oracle事件][taobao-dis-ioe]

[ibm]: http://en.wikipedia.org/wiki/IBM
[oracle]: http://en.wikipedia.org/wiki/Oracle_Corporation
[emc]: http://en.wikipedia.org/wiki/EMC_Corporation
[dis-ioe]: http://blog.sina.com.cn/s/blog_687c82060102e9u6.html
[taobao-dis-ioe]: http://tech.it168.com/a2012/0329/1331/000001331952.shtml

### BNF - Backus Normal Form

In computer science, [BNF (Backus Normal Form or Backus–Naur Form)][bnf] is one
of the two main notation techniques for context-free grammars, often used to
describe the syntax of languages used in computing, such as computer
programming languages, document formats, instruction sets and communication
protocols; the other main technique for writing context-free grammars is the
van Wijngaarden form. They are applied wherever exact descriptions of languages
are needed: for instance, in official language specifications, in manuals, and
in textbooks on programming language theory.

Many extensions and variants of the original Backus–Naur notation are used;
some are exactly defined, including Extended Backus–Naur Form (EBNF) and
Augmented Backus–Naur Form (ABNF).

A BNF specification is a set of derivation rules, written as

```bnf
<symbol> ::= __expression__
```

BNF's syntax itself may be represented with a BNF like the following:

```bnf
<syntax>         ::= <rule> | <rule> <syntax>
<rule>           ::= <opt-whitespace> "<" <rule-name> ">" <opt-whitespace> "::=" <opt-whitespace> <expression> <line-end>
<opt-whitespace> ::= " " <opt-whitespace> | ""
<expression>     ::= <list> | <list> "|" <expression>
<line-end>       ::= <opt-whitespace> <EOL> | <line-end> <line-end>
<list>           ::= <term> | <term> <opt-whitespace> <list>
<term>           ::= <literal> | "<" <rule-name> ">"
<literal>        ::= '"' <text> '"' | "'" <text> "'"
```

[bnf]: http://en.wikipedia.org/wiki/Backus%E2%80%93Naur_Form

### Extended Backus–Naur Form

<div class="tzx-fright">
![BNF notations][bnf-notations]
</div>

[EBNF][extended-backus-naur-form] is a code that expresses the grammar of a
formal language. An EBNF consists of **terminal** symbols and **non-terminal**
production rules which are the restrictions governing how terminal symbols can
be combined into a legal sequence. Examples of terminal symbols include
alphanumeric characters, punctuation marks, and white space characters.

The EBNF defines production rules where sequences of symbols are respectively assigned to a nonterminal:

```plain
digit excluding zero            = "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9" ;
digit                           = "0" | digit excluding zero ;
twelve                          = "1", "2" ;
two hundred one                 = "2", "0", "1" ;
three hundred twelve            = "3", twelve ;
twelve thousand two hundred one = twelve, two hundred one ;
natural number                  = digit excluding zero, { digit } ;
integer                         = "0" | [ "-" ], natural number ;
```

more examples

```plain
letter = "A" | "B" | "C" | "D" | "E" | "F" | "G"
       | "H" | "I" | "J" | "K" | "L" | "M" | "N"
       | "O" | "P" | "Q" | "R" | "S" | "T" | "U"
       | "V" | "W" | "X" | "Y" | "Z" ;
digit = "0" | "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9" ;
symbol = "[" | "]" | "{" | "}" | "(" | ")" | "<" | ">"
       | "'" | '"' | "=" | "|" | "." | "," | ";" ;
character = letter | digit | symbol | "_" ;

identifier = letter , { letter | digit | "_" } ;
terminal = "'" , character , { character } , "'"
         | '"' , character , { character } , '"' ;

lhs = identifier ;
rhs = identifier
     | terminal
     | "[" , rhs , "]"
     | "{" , rhs , "}"
     | "(" , rhs , ")"
     | rhs , "|" , rhs
     | rhs , "," , rhs ;

rule = lhs , "=" , rhs , ";" ;
grammar = { rule } ;
```

[extended-backus-naur-form]: http://en.wikipedia.org/wiki/Extended_Backus%E2%80%93Naur_Form
[bnf-notations]: http://gnat-tang-shared-image.qiniudn.com/pictures/bnf-notations.png

### Definite clause grammar

A [definite clause grammar (DCG)][definite-clause-grammer] is a way of
expressing grammar, either for natural or formal languages, in a logic
programming language such as Prolog. It is closely related to the concept of
attribute grammars / affix grammars from which Prolog was originally developed.
DCGs are usually associated with Prolog, but similar languages such as Mercury
also include DCGs. They are called definite clause grammars because they
represent a grammar as a set of definite clauses in first-order logic.

A basic example of DCGs helps to illustrate what they are and what they look like.

```plain
sentence --> noun_phrase, verb_phrase.
noun_phrase --> det, noun.
verb_phrase --> verb, noun_phrase.
det --> [the].
det --> [a].
noun --> [cat].
noun --> [bat].
verb --> [eats].
```

[definite-clause-grammer]: http://en.wikipedia.org/wiki/Definite_clause_grammar

### Pseudocode

[Pseudocode][pseudocode] is an informal high-level description of the operating
principle of a computer program or other algorithm.

It uses the structural conventions of a programming language, but is intended
for human reading rather than machine reading. Pseudocode typically omits
details that are not essential for human understanding of the algorithm, such
as variable declarations, system-specific code and some subroutines. The
programming language is augmented with natural language description details,
where convenient, or with compact mathematical notation. The purpose of using
pseudocode is that it is easier for people to understand than conventional
programming language code, and that it is an efficient and
environment-independent description of the key principles of an algorithm. It
is commonly used in textbooks and scientific publications that are documenting
various algorithms, and also in planning of computer program development, for
sketching out the structure of the program before the actual coding takes
place.

No standard for pseudocode syntax exists, as a program in pseudocode is not an
executable program. Pseudocode resembles, but should not be confused with
skeleton programs, including dummy code, which can be compiled without errors.
Flowcharts and Unified Modeling Language (UML) charts can be thought of as a
graphical alternative to pseudocode, but are more spacious on paper.


参考：

* [Pseudocode Standard][pseudocode-standard]

[pseudocode]: http://en.wikipedia.org/wiki/Pseudocode
[pseudocode-standard]: http://users.csc.calpoly.edu/~jdalbey/SWE/pdl_std.html

### MVC - Model View Control

[MVC 模式（Model-View-Controller）][mvc] 是软件工程中的一种软件架构模式，
把软件系统分为三个基本部分：模型（Model）、视图（View）和控制器（Controller）。

MVC 模式最早由 Trygve Reenskaug 在1978年提出，是施乐帕罗奥多研究中心（Xerox PARC）
在 20 世纪 80 年代为程序语言 Smalltalk 发明的一种软件设计模式。
MVC 模式的目的是实现一种动态的程式设计，使后续对程序的修改和扩展简化，
并且使程序某一部分的重复利用成为可能。除此之外，此模式通过对复杂度的简化，
使程序结构更加直观。软件系统通过对自身基本部分分离的同时也赋予了各个基本部分应有的功能。
专业人员可以通过自身的专长分组：

*（控制器 Controller）- 负责转发请求，对请求进行处理。
*（视图 View） - 界面设计人员进行图形界面设计。
*（模型 Model） - 程序员编写程序应有的功能（实现算法等等）、
  数据库专家进行数据管理和数据库设计(可以实现具体的功能)。

[mvc]: http://zh.wikipedia.org/wiki/MVC

### 沉锚效应

[沉锚效应][anchoring]，心理学名词，指的是人们在对某人某事做出判断时，易受第一印象或第一信息支配，
就像沉入海底的锚一样把人们的思想固定在某处。作为一种心理现象，沉锚效应普遍存在于生活的方方面面。
第一印象和先入为主是其在社会生活中的表现形式。

心理沙发客 06：[沉锚效应][anchoring-fm] (心理 FM：12 : 00)

[anchoring]: http://baike.baidu.com/view/680035.htm?fr=aladdin
[anchoring-fm]: http://fm.xinli001.com/2424/

### 鸟笼效应

[“鸟笼效应”][bird-cage-effect]是一个很有意思的规律，人们会在偶然获得一件原本不需要的物品的基础上，
自觉不自觉的继续添加更多自己不需要的东西。

1907 年,詹姆斯从哈佛大学退休,同时退休的还有他的好友物理学家卡尔森。
一天,两人打赌。詹姆斯说:“我一定会让你不久就养上一只鸟的。”
卡尔森不以为然:“我不信！因为我从来就没 有想过要养一只鸟。”
没过几天,恰逢卡尔森生日,詹姆斯送上了礼物——一只精致的鸟笼。
卡尔森笑了:“我只当它是一件漂亮的工艺品。你就别费劲了。”
从此以后,只要客人来访,看见书桌旁那只空荡荡的鸟笼,
他们几乎都会无一例外地问:“教授,你养的鸟什么时候死了？”
卡尔森只好一次次地向客人解释:“我从来就没有养过鸟。”
然而,这种回答每每换来的却是客人困惑而有些不信任的目光。
无奈之下,卡尔森教授只好买了一只鸟,詹姆斯的“鸟笼效应”奏效了。
实际上,在我们的身边,包括我们自己,很多时候不是先在自己的心里挂上一只笼子,
然后再不由自主地朝其中填满一些什么东西吗？

[bird-cage-effect]: http://baike.baidu.com/view/663361.htm?fr=aladdin

### Over-the-top content

[OTT][ott] 服务是指「over-the-top」服务，通常是指内容或服务建构在基础电信服务之上
从而不需要网络运营商额外的支持。该概念早期特指音频和视频内容的分发，后来逐渐包含了
各种基于互联网的内容和服务。典型的例子有Skype、Google Voice、微信等。
网络运营商由于OTT业务的兴起，日益被管道化。

Over-the-top content (OTT) refers to delivery of video, audio and other media
over the Internet without a multiple system operator being involved in the
control or distribution of the content. The provider may be aware of the
contents of the Internet Protocol packets but is not responsible for, nor able
to control, the viewing abilities, copyrights, and/or other redistribution of
the content. This is in contrast to purchase or rental of video or audio
content from an Internet service provider (ISP), such as pay television video
on demand or an IPTV video service, like AT&T U-Verse. OTT in particular refers
to content that arrives from a third party, such as NowTV, Netflix, WhereverTV,
NetD, Hulu, Crackle, WWE Network, RPI TV or myTV, and is delivered to an end
user device, leaving the ISP responsible only for transporting IP packets.

[ott]: http://en.wikipedia.org/wiki/Over-the-top_content

### Literate programming

[Literate programming][literate-programming] is an approach to programming
introduced by Donald Knuth in which a program is given as an explanation of the
program logic in a natural language, such as English, interspersed with
snippets of macros and traditional source code, from which a compilable source
code can be generated.

The literate programming paradigm, as conceived by Knuth, represents a move
away from writing programs in the manner and order imposed by the computer, and
instead enables programmers to develop programs in the order demanded by the
logic and flow of their thoughts. Literate programs are written as an
uninterrupted exposition of logic in an ordinary human language, much like the
text of an essay, in which macros are included to hide abstractions and
traditional source code.

Literate programming tools are used to obtain two representations from a
literate source file: one suitable for further compilation or execution by a
computer, the "tangled" code, and another for viewing as formatted
documentation, which is said to be "woven" from the literate source. While
the first generation of literate programming tools were computer
language-specific, the later ones are language-agnostic and exist above the
programming languages.

A good example: [Sacha Chua's Emacs Dotfiles][sacha-emacs-dotfiles]

[literate-programming]: http://en.wikipedia.org/wiki/Literate_programming
[sacha-emacs-dotfiles]: https://github.com/sachac/.emacs.d/blob/gh-pages/Sacha.org

### WTFPL

The [WTFPL][wtfpl] (Do What the Fuck You Want to Public License) is a
permissive way of licensing intellectual property rights, most commonly used as
a permissive free software license. It is essentially no different from
dedication to the public domain. The original Version 1.0 license, released
March 2000, was written by Banlu Kemiyatorn who used it for Window Maker
artwork. Sam Hocevar, a French programmer who was the Debian project leader
from 17 April 2007 to 16 April 2008, wrote version 2.0. It allows for
redistribution and modification of the software under any terms – licensees are
encouraged to "do what the fuck [they] want to". The license was approved as a
GPL-compatible free software license by the Free Software Foundation.

比 MIT 还大度的样子……

[wtfpl]: http://en.wikipedia.org/wiki/WTFPL

### 弥赛亚

[弥赛亚][messiah]（天主教译作默西亚，英语：Messiah），是个圣经词语，与希腊语词基督是一个意思，
在希伯来语中最初的意思是受膏者，指的是上帝所选中的人，具有特殊的权力，
受膏者是“被委任担当特别职务的人”的意思，是一个头衔或者称号，并不是名字。
另有很多艺术作品（清唱剧目、音乐专辑、动漫等）中亦有“弥赛亚”。

[messiah]: http://baike.baidu.com/subview/51437/5093829.htm?fr=aladdin

### Chinese language

[Chinese][chinese-language] (汉语 / 漢語; Hànyǔ or 中文; Zhōngwén) is a group
of related but in many cases mutually unintelligible language varieties, which
forms one of the branches of the Sino-Tibetan language family. Chinese is
spoken by the Han majority and many other ethnic groups in China. More than one
billion people, or about one-fifth of the world's population, speak some form
of Chinese as their first language.

* Language codes:
    + ISO 639-1	zh
    + ISO 639-2	chi (B)
    + zho (T)
    + ISO 639-3	zho – inclusive code
    + Individual codes:
        - cdo – Min Dong
        - cjy – Jinyu
        - cmn – Mandarin
        - cpx – Pu Xian
        - czh – Huizhou
        - czo – Min Zhong
        - gan – Gan
        - hak – Hakka
        - hsn – Xiang
        - mnp – Min Bei
        - nan – Min Nan
        - wuu – Wu
        - yue – Yue
        - och – Old Chinese
        - ltc – Late Middle Chinese
        - lzh – Classical Chinese
    + Glottolog	sini1245
    + Linguasphere	79-AAA

[chinese-language]: https://en.wikipedia.org/wiki/Chinese_language

### Closure (computer programming)

In programming languages, a [closure] (also lexical closure or function
closure) is a function or reference to a function together with a referencing
environment—a table storing a reference to each of the non-local variables
(also called free variables or upvalues) of that function. A closure—unlike a
plain function pointer—allows a function to access those non-local variables
even when invoked outside its immediate lexical scope.

The concept of closures was developed in the 1960s and was first fully
implemented in 1975 as a language feature in the Scheme programming language to
support lexically scoped first-class functions. The use of closures is
associated with functional programming languages such as Lisp and ML.
Traditional imperative languages such as Algol, C and Pascal do not support
returning nested functions as results from higher-order functions. Many modern
garbage-collected imperative languages support closures, such as Smalltalk (the
first object-oriented language to do so), OCaml, Python, Perl, Ruby,
JavaScript, Go, Dart, Scala, Swift, C#, Rust, Julia and C++ since C++11.

话说因为 JavaScript（ES6 之前） 没有 block level 的作用域，
大家都用 Immediately Invoked Function Expression (IIFE)
来保护（隔离）私有变量。

[closure]: https://en.wikipedia.org/wiki/Closure_(computer_programming)

### UGC - User-generated content

[User-generated content (UGC)][user-generated-content] refers to a variety of
media available in a range of modern communications technologies. UGC is often
produced through open collaboration: it is created by goal-oriented yet
loosely coordinated participants, who interact to create a product or service
of economic value, which they make available to contributors and
non-contributors alike.

[user-generated-content]: https://en.wikipedia.org/wiki/UGC

### If and only if

[IFF: if and only if.][iff]
↔ ⇔ ≡

In logic and related fields such as mathematics and philosophy, if and only if
(shortened **iff**) is a **biconditional logical connective** between
statements.

In that it is biconditional, the connective can be likened to the standard
material conditional ("only if", equal to "if ... then") combined with its
reverse ("if"); hence the name. The result is that the truth of either one of
the connected statements requires the truth of the other, i.e., either both
statements are true, or both are false. It is controversial whether the
connective thus defined is properly rendered by the English "if and only if",
with its pre-existing meaning. There is nothing to stop one from stipulating
that we may read this connective as "only if and if", although this may lead to
confusion.

[iff]: https://en.wikipedia.org/wiki/If_and_only_if

### Axiom

An [axiom], or **postulate**, is a **premise or starting point of reasoning.**
As classically conceived, an axiom is a premise so evident as to be accepted as
true without controversy. The word comes from the Greek ἀξίωμα (āxīoma) 'that
which is thought worthy or fit' or 'that which commends itself as evident.' As
used in modern logic, an axiom is simply a premise or starting point for
reasoning. Axioms define and delimit the realm of analysis; the relative truth
of an axiom is taken for granted within the particular domain of analysis, and
serves as a starting point for deducing and inferring other relative truths. No
explicit view regarding the absolute truth of axioms is ever taken in the
context of modern mathematics, as such a thing is considered to be an
irrelevant and impossible contradiction in terms.

[axiom]: https://en.wikipedia.org/wiki/Axiom

### Mod (video gaming)

遊戲模組，英文多簡稱為[「MOD」][mod]、「Mod」（全寫「Modification」），「修改」的名詞含義。
MOD 通常對應可以修改的電子遊戲，因此以電腦遊戲為主。必須依賴與原作品方可執行遊玩。
遊戲中的道具、武器、角色、敵人、事物、模式、故事情節等任意部分都可能屬於修改範疇，
多見於著名電子遊戲作品，遊戲類型多數為第一人稱射擊遊戲、即時戰略遊戲、角色扮演游戏（非日式）、
動作遊戲，著名實例包括红色警戒2、毀滅戰士系列、橫掃千軍、雷神之鎚系列、戰慄時空系列、
當個創世神、魔域幻境系列、无冬之夜系列、地牢围攻系列、上古卷軸5和俠盜獵車手系列等。

[mod]: https://en.wikipedia.org/wiki/Mod_(video_gaming)

### Per se

[per-se]

:   through itself, also "by itself" or "in itself".

    Without referring to anything else, intrinsically, taken without
    qualifications etc. A common example is negligence per se. See also malum in se.

[per-se]: https://en.wikipedia.org/wiki/Per_se_(terminology)#per_se

### Moore method

The [Moore method][moore-method] is a deductive manner of instruction used in
advanced mathematics courses. It is named after Robert Lee Moore, a famous
topologist who first used a stronger version of the method at the University of
Pennsylvania when he began teaching there in 1911.

The way the course is conducted varies from instructor to instructor, but the
content of the course is usually presented in whole or in part by the students
themselves. Instead of using a textbook, the students are given a list of
definitions and theorems which they are to prove and present in class, leading
them through the subject material. The Moore method typically limits the amount
of material that a class is able to cover, but its advocates claim that it
induces a depth of understanding that listening to lectures cannot give.

* [视频：Inquiry Based Learning and the Moore Method][inquiry-based-learning]

[moore-method]: https://en.wikipedia.org/wiki/Moore_method
[inquiry-based-learning]: http://www.56.com/u48/v_NzUwODU1MDk.html

### *e.g.* & *i.e.*

[eg & ie]

**exempli gratia (e.g.)**, usually shortened in English to "for example" (see citation signal).
Often confused with **id est (i.e.)**.

> Exempli gratia (e.g.) and id est (i.e.) are commonly confused and misused in
> colloquial English. The former, exempli gratia, means "for example", and is
> used before giving examples of something ("**I have lots of favorite colors,
> e.g., blue, green, and hot pink**"). The latter, id est, means "that is", and
> is used before clarifying the meaning of something, when elaborating,
> specifying, or explaining rather than when giving examples ("**I have lots of
> favorite colors; i.e., I can't decide on just one**"). In British style, the
> stops may be omitted: "I have lots of favourite colours, eg blue, green and
> hot pink". "I have lots of favourite colours; ie I can't decide on just one"

[eg & ie]: https://en.wikipedia.org/wiki/E.g.#cite_note-6

### Abuse of notation

In mathematics, [abuse of notation][abuse-of-notation] occurs when an author uses a mathematical notation
in a way that is not formally correct but that seems likely to simplify the exposition or
suggest the correct intuition (while being unlikely to introduce errors or cause confusion).
Abuse of notation should be contrasted with misuse of notation, which should be avoided.

A related concept is abuse of language or abuse of terminology, when not
notation but a term is misused. Abuse of language is an almost synonymous
expression that is usually used for non-notational abuses. For example, while
the word representation properly designates a group homomorphism from a group G
to GL(V) where V is a vector space, it is common to call V "a representation of
G". A common abuse of language consists in identifying two mathematical objects
that are different but canonically isomorphic. For example, identifying a
constant function and its value or identifying to $\mathbb R^3$ the Euclidean
space of dimension three equipped with a Cartesian coordinate system.

The latter uses may achieve clarity in the new area in an unexpected way, but
it may borrow arguments from the old area that do not carry over, creating a
false analogy.

[abuse-of-notation]: https://en.wikipedia.org/wiki/Abuse_of_notation

Words List 06
--------------

### CC 协议

<div class="tzx-fright">
![creative commons][cc-pic]
</div>

[**Creative Commons**][ccl]，简称 [CC][cc] 协议，中国大陆正式名称为**知识共享**，
台湾正式名称为**创用CC**。是一个非营利组织，也是一种创作的授权方式。
此组织的主要宗旨是增加创意作品的流通可及性，作为其他人据以创作及共享的基础，
并寻找适当的法律以确保上述理念。

![][by] 署名（BY） --- Attribution (BY)

:   Licensees may copy, distribute, display and perform the work and make
    derivative works based on it only if they give the author or licensor the
    credits in the manner specified by these.

![][sa] 相同方式共享（SA） --- Share-alike (SA)

:   Licensees may distribute derivative works only under a license identical to
    the license that governs the original work. (See also copyleft.)

![][nc] 非商业性使用（NC） --- Non-commercial (NC)

:   Licensees may copy, distribute, display, and perform the work and make
    derivative works based on it only for noncommercial purposes.

![][nd] 禁止演绎（ND） --- No Derivative Works (ND)

:   Licensees may copy, distribute, display and perform only verbatim copies of
    the work, not derivative works based on it.

CC 协议标志

![creative commons][cc-table]

See [Creative Commons License][ccl] for more.

[cc]: http://www.baike.com/wiki/CC%E5%8D%8F%E8%AE%AE
[ccl]: https://en.wikipedia.org/wiki/Creative_Commons_license
[by]: https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Cc-by_new.svg/40px-Cc-by_new.svg.png
[sa]: https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Cc-sa.svg/40px-Cc-sa.svg.png
[nc]: https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Cc-nc.svg/40px-Cc-nc.svg.png
[nd]: https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Cc-nd.svg/40px-Cc-nd.svg.png
[cc-pic]: http://gnat-tang-shared-image.qiniudn.com/pic/cc_guidant_les_contributeurs.jpg?imageView2/2/h/120
[cc-table]: http://gnat-tang-shared-image.qiniudn.com/pic/creative-commons.png

### 愤青，五毛，公知

[愤青][gtk]，英语简称 GTK，全称“愤怒青年”，特指一般对社会现状不满，而急于改变现实的青年，
后来被简称为愤青，并成为网络语言中的专有词汇，四个字的原称反而不常用了。
愤青是国家人民活跃程度的体现，但程度过分、缺乏客观性则会对社会造成负面影响并产生不良风气。

[五毛][five-cents] 多含有贬义，是指受雇于中国政府，在网络专门拣有利于当权者的话来说的全职或兼职人员，
开始时每发一贴可以得五角人民币，五角钱是书面语，口语即是五毛，所以这样的一群人有五毛之称。
也许，随着物价的上涨，每发一贴或许不止五毛了；也许，还会采用其它的给钱方式，
而不仅仅是看贴子的数量，但无论怎么说，这一流行说法的基本含义却没有变。
官方对这样的人员的正式称呼是网络舆情引导员。有人说五毛指的是网络评论员，
其实，这种说法本身就是五毛式的回答。“网络评论员”一指从定义的外延来看更广，
不仅可以指五毛，还可以指美分，当然还可以指受雇于个别公司的其它评论员。

[公知][gongzhi] 从字面可认为是公共知识分子（The Public Intellectual）的缩略词，
精确定义是，具有学术背景和专业素质的知识者，进言社会并参与公共事务的行动者，
具有批判精神和道义担当的理想者。原意是正面的。在中国社会的一般认知中，
“公知”一词更是对那些所谓公正博学，**自视甚高，以天下评判为已任，揭露各方面问题，
自认担纲启蒙责任，诲人不倦的一群文化人**。但在网络和微博中，
“公知”意思已经转变为只为少数人说话，甚至成为崇洋媚外人士的一种称号，意义完全相反.

[gtk]: http://baike.baidu.com/view/6931.htm
[five-cents]: http://baike.baidu.com/view/1264105.htm?fr=aladdin#2
[gongzhi]: http://baike.baidu.com/view/6150578.htm?fr=aladdin

### Trinitron

<div class="tzx-fright">
![Tranitron][trinitron-pic]
</div>

[trinitron]

[特丽珑][trinitron-zh]（台湾译作特丽霓虹，香港有时译作新力单枪）是索尼公司为电
视机和显示器的阴极射线管注册的商标。特丽珑阴极显像管又称单枪三束管，为水平方面
凸起而垂直方面笔直的柱面显像管。其画面比起同时代的普通显示器颜色更加鲜艳锐利。
索尼公司在很长时间内拥有这种设计的专利权，专利权过期后，其他的一些公司将自己生
产的的这种荫栅显像管以珑结尾的名字命名。其他公司已经可以使用特丽珑的管设计而无
须缴纳专利费。

在一段时间内，采用特丽珑阴极显像管的显示器也被苹果电脑、戴尔、迪吉多
公司（Digital Equipment Corporation）、升阳公司（Sun Microsystems）公司和
其他一些公司销售。在市场上贴有特丽珑标签的显示器成为了索尼显示器的同义词。

Trinitron was Sony's brand name for its line of aperture grille based CRTs used
in television sets and computer display monitors. One of the first truly new
television systems to enter the market since the 1950s, the Trinitron was
announced in 1968 to wide acclaim for its bright images, about 25% brighter
than common shadow mask televisions of the same era. Constant improvement in
the basic technology and attention to overall quality allowed Sony to charge a
premium for Trinitron devices into the 1990s.

[trinitron]: https://en.wikipedia.org/wiki/Trinitron
[trinitron-zh]: https://zh.wikipedia.org/wiki/Trinitron
[trinitron-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/trinitron.png

### LOL

It's original definition was "[Laughing out loud][lol]" (also written occasionally
as "**Lots of Laughs**"), used as a brief acronym to denote great amusement in chat conversations.

Now, it is overused to the point where nobody laughs out loud when they say it.
In fact, they probably don't even give a shit about what you just wrote. More
accurately, the acronym "lol" should be redefined as "**Lack of laughter**."
（变成了讽刺，感觉有点像 “呵呵”）

Depending on the chatter, its definition may vary. The list of its meanings
includes, but is not limited to:

1) "I have nothing worthwhile to contribute to this conversation."
2) "I'm too lazy to read what you just wrote so I'm typing something useless in hopes
   that you'll think I'm still paying attention."
3) "Your statement lacks even the vaguest trace of humor but I'll pretend I'm amused."
4) "This is a pointless acronym I'm sticking in my sentence just because it's become
   so engraved into my mind that when chatting, I MUST use the meaningless sentence-filler 'lol.'"

（完全就是 “呵呵”。。。）

* See: lmao, lmfao, rofl, lawl, heh, haha, lolol, and 120 for similarities.
* Statement: Sorry if I'm not too cheery, my best friend just died yesterday.
* Worthless Reply: lol
* Statement: The golden ratio is truely an intersting aspect of not only mathematics, but art as well.
* Worthless Reply: lol
* Statement: ... And then he says, "Your mom goes to college!"
* Worthless Reply: lol
* Statement: Hey, are you doing anything tonight? You could come over to my house and play some Unreal Tournie...
* Worthless Reply: lol, ok

[lol]: http://www.urbandictionary.com/define.php?term=Lol&defid=1406597

### Voice-Over

[Voice-over][voice-over] (also known as **off-camera or off-stage commentary**)
is a production technique where a voice—that is not part of the narrative
(non-diegetic)—is used in a radio, television production, filmmaking, theatre,
or other presentations. The voice-over may be spoken by someone who appears
elsewhere in the production or by a specialist voice actor. It is pre-recorded
and placed over the top of a film or video and commonly used in documentaries
or news reports to explain information.

几个著名的声优（这样说合适不。。。）：

* [Don LaFontaine][don-lafontaine]
* [Ted Williams][ted-williams]
* [Jake Foushee][jake-foushee] （YouTube 上爆红的青年）

[don-lafontaine]: https://en.wikipedia.org/wiki/Don_LaFontaine
[ted-williams]: https://en.wikipedia.org/wiki/Ted_Williams_(voice-over_artist)
[voice-over]: https://en.wikipedia.org/wiki/Voice-over
[jake-foushee]: http://news.yahoo.com/blogs/upshot/teen-does-movie-trailer-guy-impression-impresses-183341781.html

### Conan Show

[Conan][conan-show] is a late-night talk show airing each Monday through
Thursday on TBS in the United States. The hourlong show premiered（首次公演）
on November 8, 2010, and is hosted by writer, comedian and performer Conan
O'Brien. The program's host previously starred on NBC's Late Night with Conan
O'Brien for 16 years, then presented The Tonight Show for seven months until
Jay Leno's return to his version of The Tonight Show due to the 2010 Tonight
Show conflict.

[conan-show]: https://en.wikipedia.org/wiki/Conan_(talk_show)

### Kama Sutra

[印度性福圣经][kama-sutra]

[kama-sutra]: https://en.wikipedia.org/wiki/Kama_Sutra

### Ellen Show

The [Ellen DeGeneres Show][ellen-show], often shortened to Ellen, is an
American television talk show hosted by comedian/actress Ellen DeGeneres.
Debuting（`/de'bju/` 初次登台） on September 8, 2003, it is produced by
Telepictures and airs in syndication, including stations owned by NBCUniversal,
in the United States and Canada. For its first five seasons, the show was taped
in Studio 11 at NBC Studios in Burbank, California. It later moved to Stage 1
on the nearby Warner Bros. lot. Since the beginning of the sixth season, Ellen
has broadcast in high definition. The show has won 36 Daytime Emmy Awards as of
2013. It was announced on March 11, 2013 that the show had been renewed through
2017, which would extend the show through its 14th season.

[ellen-show]: https://en.wikipedia.org/wiki/The_Ellen_DeGeneres_Show

### Mark I

[Mark I][mark-i] often refers to **the first version of a weapon or military
vehicle**, and is sometimes used in a similar fashion in civilian product
development. In some instances, the Arabic numeral "1" is substituted for the
Roman numeral "I".

"Mark", meaning "**model**" or "**variant**", can itself be abbreviated "Mk."

[mark-i]: https://en.wikipedia.org/wiki/Mark_I

### Publish or Perish

"[Publish or perish][publish-or-perish]" is a phrase coined to describe the
pressure in academia to rapidly and continuously publish academic work to
sustain or further one's career.

Frequent publication is one of few methods at scholars' disposal（安排） to
demonstrate academic talent. Successful publications bring attention to
scholars and their sponsoring institutions, which can facilitate continued
funding and an individual's progress through their field. In popular academic
perception, scholars who publish infrequently, or who focus on activities that
do not result in publications, such as instructing undergraduates, may find
themselves out of contention for available tenure-track positions. The pressure
to publish has been cited as a cause of poor work being submitted to academic
journals.

[publish-or-perish]: https://en.wikipedia.org/wiki/Publish_or_perish

Men List 01
-----------

### Yoshitomo Nara

<div class="tzx-fright">
![slash with a knife][slash-with-a-knife]
</div>

[Yoshitomo Nara][yoshitomo-nara] (奈良美智 Nara Yoshitomo, born 5 December 1959
in Hirosaki, Japan) is a **Japanese artist**. He lives and works in Tokyo,
though his artwork has been exhibited worldwide. Nara has had nearly 40 solo
exhibitions since 1984. He is represented in New York City by Pace Gallery, in
Los Angeles by Blum & Poe and in London by Stephen Friedman Gallery.

奈良美智早期的作品以插画性质为多，在 1980 年代后期即发展出以儿童头像为主的角色
风格；奈良美智对于有着大眼睛和大头的儿童形象相当着迷，他的特色在于塑造各种带有
情感的眼神，其中最具代表性之一为斜视的眼神（有人说是代表愤怒、有人则说是代表了
邪恶）。此外，奈良美智的作品几乎不含有透视的背景，而只突显人物。在1990年代后期
，他也开始创作立体作品，主要是将画作中的孩童或小狗等，作成大型的立体雕塑，或采
用不同媒材拼组的方式构成，如近年在纽约市展出的“流泪的狗”就是以大量胶布为基本材
料所组成。

今日他的作品已被许多博物馆收藏，如纽约现代艺术博物馆和洛杉矶当代艺术博物馆等。

陈冠希似乎收藏了很多 Yoshitomo 的画，在他的纪录片里提到了。

[yoshitomo-nara]: http://en.wikipedia.org/wiki/Yoshitomo_Nara
[slash-with-a-knife]: http://gnat-tang-shared-image.qiniudn.com/pictures/yoshitomo-nara.png

### Kenichi Ohmae

<div class="tzx-fright">
![Kenichi Ohmae][kenichi-ohmae-pic]
</div>

[大前研一][kenichi-ohmae] Kenichi Ohmae（日语：大前 研一／おおまえ けんいち，
1943年2月21日－），**日本著名管理学家、经济评论家**。出生于福冈县北九州市若松区
，是非营利法人一新塾(前身为平成维新の会)的创立者，Ohmae & Associates 公司的 CEO
。Business Breakthrough公司 CEO 兼校长。他是现时世界上有关商业及企业策略的其中
一位领导者，以其发展的 3C 模型（或称作战略三角）而知名，被誉为“**策略先生**”。

主要的学术成就有以下几个：**全球化**、**M型社会**、**3C模型**（战略三角）、**最
少世代 (Generation of Minimum)**、**维他命十国**（VITAMIN，指越南、印尼、泰国、
土耳其、墨西哥、伊朗、伊拉克、尼日利亚、阿根廷和南非这十个新型经济体的开头字母）。

以前看过这个人写自己的经历，说道自己申请大学的时候吹牛逼……（要是他不是日本人，而是印度人，
吹牛逼……上天别人也不鸟你。这好像在说，一个人的性质（性格？）只有放到一个特殊的背景下，才能
创造自己独特的命运。）

[kenichi-ohmae]: http://zh.wikipedia.org/wiki/%E5%A4%A7%E5%89%8D%E7%A0%94%E4%B8%80
[kenichi-ohmae-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/Kenichi-Ohmae.jpg

### Yoko Ono

<div class="tzx-fright">
![Yoko Ono][yoko-ono-pic]
</div>

[Yoko Ono][yoko] (オノ・ヨーコ **小野 洋子 Ono Yōko**), born February 18, 1933,
is a Japanese artist, singer-songwriter, and peace activist. She is the second
wife and **widow of John Lennon** and is also known for her work in
**avant-garde art, music and filmmaking**

Dropping out of the graduate track program in philosophy at Tokyo's Peers
School, Ono moved to New York in 1953 joining her immediate family who were
already there. After some time at Sarah Lawrence College, she became involved
in New York City's downtown artists scene, collaborating and working with
members in and around the Fluxus group. An independent artist in her own right
before meeting Lennon, both the media and the public were critical of her for
years. She was repeatedly **criticized for her influence over Lennon and his
music**, and **blamed for the breakup of the Beatles**: The couple's early
years coincided with the band's final ones. Her experimental art was also not
popularly understood, and, after Lennon's death, her disagreements with Paul
McCartney received as much attention as her billboards and music releases,
**which the media usually advanced simply as attempts at self-promotion.**

[yoko]: http://en.wikipedia.org/wiki/Yoko_Ono
[yoko-ono-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/yoko-ono.jpg

### Grace Hopper

<div class="tzx-fright">
![Grace Hopper][grace-hopper-pic]
</div>

[Grace Murray Hopper][grace-hopper] (December 9, 1906 – January 1, 1992) was an
**American computer scientist** and **[United States Navy rear
admiral][admiral].** A pioneer in the field, she was one of the first
programmers of **the Harvard Mark I computer**, and developed **the first
compiler** for a computer programming language. She popularized the idea of
machine-independent programming languages, which led to the development of
COBOL, one of the first modern programming languages. She is credited with
popularizing the term "debugging" for fixing computer
[glitches][glitches](inspired by an actual moth removed from the computer).
Owing to the breadth of her accomplishments and her naval rank, she is
sometimes referred to as "**Amazing Grace**". The U.S. Navy destroyer USS
Hopper (DDG-70) is named for her, as was the Cray XE6 "Hopper" supercomputer at
NERSC.

她定义了“bug”。

[grace-hopper]: http://en.wikipedia.org/wiki/Grace_Hopper
[grace-hopper-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/grace-hopper.jpg
[admiral]: http://dict.youdao.com/search?q=admiral&keyfrom=dict.plugin "海军上将"
[glitches]: http://dict.youdao.com/search?le=eng&q=glitches&keyfrom=dict.top "小故障"

### The Everly Brothers

![the Everly Brothers][the-everly-brothers-pic]

[The Everly Brothers][the-everly-brothers] were **American country-influenced
rock and roll singers**, known for steel-string guitar playing and **close
harmony singing**. The duo, consisting of Isaac Donald "Don" Everly (born
February 1, 1937) and Phillip "Phil" Everly (January 19, 1939 – January 3,
2014), were elected to **the Rock and Roll Hall of Fame** in 1986 and **the
Country Music Hall of Fame** in 2001.

[the-everly-brothers]: http://en.wikipedia.org/wiki/The_Everly_Brothers
[the-everly-brothers-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/the-everly-brothers.jpg

### Elvis Presley

<div class="tzx-fright">
![Elvis Presley][elvis-presley-pic]
</div>

[Elvis Aaron Presley][elvis-presley] (January 8, 1935 – August 16, 1977) was an
**American singer, musician, and actor**. Regarded as one of the most
significant cultural icons of the 20th century, he is often referred to as
"**the King of Rock and Roll**", or simply, "**the King**".

In November 1956, he made his film [debut][debut] in _**Love Me Tender**_. ...
In 1973, Presley was featured in the first globally broadcast concert via
satellite, Aloha from Hawaii. Several years of prescription **drug abuse**
severely deteriorated his health, and he **died in 1977 at the age of 42**.

Presley is one of the most celebrated musicians of the 20th century.
**Commercially successful in many genres**, including **pop**, **blues** and
**gospel**, he is the best-selling solo artist in the history of recorded
music, with estimated album sales of around 600 million units worldwide. He was
**nominated for 14 Grammys and won three**, receiving the **Grammy Lifetime
Achievement Award at age 36**, and has been **inducted into multiple music
halls of fame**.

[elvis-presley]: http://en.wikipedia.org/wiki/Elvis_Presley
[elvis-presley-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/elvis-presley.jpg
[debut]: http://dict.youdao.com/search?le=eng&q=debut&keyfrom=dict.top "初次登台 de'bju"

### Bob Dylan

<div class="tzx-fright">
![Bob Dylan][bob-dylan-pic]
</div>

[Bob Dylan][bob-dylan] (`/ˈdɪlən/`; born Robert Allen Zimmerman, May 24, 1941)
is an **American musician, singer-songwriter, artist, and writer**. He has been
an influential figure in popular music and culture for more than five decades.
Much of his most celebrated work dates from the 1960s, when he was an
**informal chronicler and a seemingly reluctant figurehead of social unrest**.
A number of Dylan's early songs, such as "***Blowin' in the Wind***" and
"***The Times They Are a-Changin***'", became **anthems for the US civil rights
and anti-war movements**. Leaving behind his initial base in the culture of the
folk music revival, Dylan's six-minute single "Like a Rolling Stone" radically
altered the parameters of popular music in 1965. His recordings employing
electric instruments attracted denunciation and criticism from others in the
folk movement.

[bob-dylan]: http://en.wikipedia.org/wiki/Bob_Dylan
[bob-dylan-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/bob-dylan.jpg

Men List 03
-----------

### Bill Joy

<div class="tzx-fright">
![[Bill Joy][bill-joy] ([威廉·纳尔逊·乔伊][bill-joy-baidu])][bill-joy-pic]
</div>

William Nelson Joy (born November 8, 1954) is **an American computer
scientist**. Joy co-founded Sun Microsystems in 1982 along with Vinod Khosla,
Scott McNealy and Andreas von Bechtolsheim, and served as chief scientist at
the company until 2003. He played an integral role in the early **development
of BSD UNIX** while a graduate student at Berkeley, and he is the **original
author of the vi text editor**. He also wrote the 2000 essay "**Why the Future
Doesn't Need Us**", in which he expressed deep **concerns over the development
of modern technologies**. Some of his most notable contributions were the ex
and vi editors and **csh**.

段子

:   BBN had a big contract to implement TCP/IP, but their stuff didn't work,
    and grad student Joy's stuff worked. So they had this big meeting and this grad
    student in a T-shirt shows up, and they said, "How did you do this?" And Bill
    said, "**It's very simple — you read the protocol and write the code.**"

如此的牛逼，vi 也是他写的……Sam 好像也是。

keywords: SUN, UNIX, TCP/IP, Berkeley, vi, csh,

[bill-joy]: http://en.wikipedia.org/wiki/Bill_Joy
[bill-joy-baidu]: http://baike.baidu.com/view/1251704.htm?fr=aladdin
[bill-joy-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/bill-joy.jpg

### John D. Carmack

<div class="tzx-fright">
![[John Carmack][john-d-carmack] ([約翰·卡馬克][john-d-carmack-baidu])][john-d-carmack-pic]
</div>

John D. Carmack (born August 20, 1970) is an American **game programmer** and
the **co-founder of Id Software**. Carmack was the lead programmer of the Id
video games **Commander Keen**, **Wolfenstein 3D**, **Doom**, **Quake**,
**Rage** and their sequels. Carmack is best **known for his innovations in 3D
graphics**, and is also a **rocketry enthusiast** and the **founder and lead
engineer of Armadillo Aerospace**. In August 2013, Carmack took the position of
CTO at Oculus VR.

卡马克成长于美国堪萨斯城中心区的一个家庭，早年就对电脑产生了浓厚的兴趣。
他后来从肖尼东高中毕业，随后考入了堪萨斯城的密苏里州州立大学。但是在两个学期之后，
他从学校退学了，成为了一名自由程序员。

[john-d-carmack]: http://en.wikipedia.org/wiki/John_D._Carmack
[john-d-carmack-baidu]: http://baike.baidu.com/view/59118.htm?fr=aladdin
[john-d-carmack-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/john-d-carmack.jpg

### David Neil "Dave" Cutler, Sr

<div class="tzx-fright">
![[Dave Cutler][dave-cutler] ([大卫·卡特勒][dave-cutler-baidu])][dave-cutler-pic]
</div>

他是一位传奇程序员，是 VMS 和 Windows NT 的首席设计师，被人们称为“操作系统天神”。

David Neil "Dave" Cutler, Sr. (born March 13, 1942) is an American software
engineer, designer and developer of several operating systems including Windows
NT at Microsoft and RSX-11M, VMS and VAXELN at Digital Equipment Corporation.

Cutler was also known for his **disdain(蔑视) for all things Unix**.

keywords: Windows NT, VMS, DEC, MS, Windows Azure, X Box

[dave-cutler]: http://en.wikipedia.org/wiki/Dave_Cutler
[dave-cutler-baidu]: http://baike.baidu.com/view/1664664.htm?fr=aladdin
[dave-cutler-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/dave-cutler.JPG

### Donald Knuth

<div class="tzx-fright">
![[Donald Knuth][donald-knuth] ([唐纳德·克努特][donald-knuth-baidu])][donald-knuth-pic]
</div>


Donald Ervin Knuth (`/kəˈnuːθ/` `kə-nooth`; born January 10, 1938) is an
American **computer scientist**, **mathematician**, and **Professor
Emeritus(名誉退休的)** at Stanford University.

He is the author of the multi-volume work [**The Art of Computer
Programming.**(TAOCP)][toacp]. Knuth has been called **the "father" of the
analysis of algorithms**. In addition to fundamental contributions in several
branches of theoretical computer science, Knuth is the creator of the **TeX**
computer typesetting system, the related METAFONT font definition language and
rendering system, and the Computer Modern family of typefaces.

<div class="tzx-fleft">
![Hopper & Knuth][hopper-knuth-pic]
</div>

As a writer and scholar, Knuth created the WEB and CWEB computer programming
systems designed to encourage and facilitate literate programming, and designed
the MIX/MMIX instruction set architectures. As a member of the academic and
scientific community, **Knuth is strongly opposed to the policy of granting
software patents.** He has expressed his disagreement directly to both the
United States Patent and Trademark Office and European Patent Organization.

He is also the author of **Surreal Numbers**.

In 2006, Knuth was diagnosed with **prostate(前列腺) cancer**

克努特至今进行了两大工程，一个已经完成，一个尚未完成。第一个大工程就是
《计算机程序设计的艺术》系列，开始于他念博士期间，计划出七卷，第一卷《基本算法》于1968年出版，
第二卷《半数字化算法》于 1969 年出版，第三卷《排序与搜索》于 1973 年出版，第四卷 A 《组合算法》已于 2011 年出版。
这个工程为什么前紧后松，长期停顿呢?原来，前三卷书出版以后，克努特根据自己在校对清样时的感受，
决心对排版技术进行彻底改造，因此中止了第一个工程，而开始其第二个工程。
这个工程花费了克努特整整 9 年的时间和精力，结果就是对整个西文印刷行业带来了
革命性变革的TEX排版软件和 METAFONT 字型设计软件。

(他怎么能在读博士期间就想好要写书，洋洋洒洒写了几十年。。。)

补充阅读：[八卦高德纳][donald-knuth-bagua]

[donald-knuth]: http://en.wikipedia.org/wiki/Donald_Knuth
[donald-knuth-baidu]: http://baike.baidu.com/view/2193127.htm?from_id=2509519&type=syn&fromtitle=Donald+E.+Knuth&fr=aladdin
[donald-knuth-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/donald-knuth.jpg
[hopper-knuth-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/grace-hopper-donald-knuth.png
[toacp]: http://book.douban.com/subject/1130500/
[donald-knuth-bagua]: http://book.douban.com/review/5384627/

### Ken Thompson

<div class="tzx-fright">
![[Ken thompson][ken-thompson] ([肯·汤普森][ken-thompson-baidu])][ken-thompson-pic]
</div>

**Kenneth Thompson** (born February 4, 1943), commonly referred to as ken in
hacker circles, is an American **pioneer of computer science**. Having worked
at Bell Labs for most of his career, Thompson designed and implemented the
original Unix operating system. He also invented the **B programming
language**, the direct predecessor to the C programming language, and was one
of the creators and early developers of the Plan 9 operating systems. Since
2006, Thompson works at **Google**, where he co-invented the **Go programming
language**.

Other notable contributions included **his work on regular expressions** and
early computer **text editors QED and ed**, the definition of the [**UTF-8
encoding**][utf8], his work on computer chess that included creation of endgame
tablebases and the chess machine Belle.

[段子][ken-story]

:   装了 UNIX 的 PDP-11 最早被安装在 Bell Lab 里供大家日常使用。
    很快大家就发现 Ken 爷爷总能进入他们的帐户，获得最高权限。
    Bell Lab 里的科学家都心比天高，当然被搞得郁闷无比。于是有高手怒了，
    跳出来分析了 UNIX 代码，找到后门，修改代码，然后重新编译了整个 UNIX。
    就在大家都以为“这个世界清净了”的时候，他们发现 Ken 爷爷还是轻而易举地拿到他们的帐户权限，
    百思不解后，只好继续郁闷。谁知道这一郁闷，就郁闷了 14 年，直到 Ken 爷爷道出个中缘由。
    原来，代码里的确有后门，但后门不在 Unix 代码里，而在编译Unix代码的C编译器里。
    **每次 C 编译器编译 UNIX 的代码，就自动生成后门代码。而整个 Bell Lab 的人，
    都是用 Ken 爷爷的 C 编译器。`:D`**

[ken-thompson]: http://en.wikipedia.org/wiki/Ken_Thompson
[ken-thompson-baidu]: http://baike.baidu.com/view/1664692.htm
[ken-thompson-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/ken-thompson.png
[utf8]: http://www.ruanyifeng.com/blog/2007/10/ascii_unicode_and_utf-8.html
[ken-story]: http://blog.csdn.net/g9yuayon/article/details/34882

### Rob Pike

<div class="tzx-fright">
![[Rob Pike][rob-pike] ([罗布·派克][rob-pike-baidu])][rob-pike-pic]
</div>

Robert Pike (born 1956) is a **Canadian software engineer** and **author**. He
is best known for his work at **Bell Labs**, where he was a member of the Unix
team and was involved in the creation of the **Plan 9** from Bell Labs and
Inferno operating systems, as well as the **Limbo** programming language.

He also co-developed the Blit graphical terminal for Unix; before that he
**wrote the first window system for Unix in 1981**. Pike is the sole inventor
named in AT&T's US patent 4,555,775 or "backing store patent" that is part of
the X graphic system protocol and one of the first software patents.

Over the years Pike has written **many text editors**; **sam** and **acme **are
the most well known and are still in active use and development.

Pike, with Brian Kernighan, is the co-author of **The Practice of Programming
and The Unix Programming Environment**. With Ken Thompson he is the
**co-creator of UTF-8**. Pike also developed lesser systems such as the vismon
program for displaying images of faces of email authors.

Pike is married to Renée French, and currently works for Google, where he is
involved in the creation of the programming languages Go and Sawzall.

[rob-pike]: http://en.wikipedia.org/wiki/Rob_Pike
[rob-pike-baidu]: http://baike.baidu.com/view/3463850.htm
[rob-pike-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/rob-pike.jpg

### Dennis M. Richie

<div class="tzx-fright">
![[Dennis M. Richie][dennis-m-ritchie] ([丹尼斯·里奇][dennis-m-ritchie-baidu])][dennis-m-ritchie-pic]
</div>

**Dennis MacAlistair Ritchie** (September 9, 1941 – c. October 12, 2011) was an
American computer scientist. He created the **C programming language** and,
with long-time colleague Ken Thompson, **the Unix operating system.** Ritchie
and Thompson received the Turing Award from the ACM in 1983, the Hamming Medal
from the IEEE in 1990 and the National Medal of Technology from President
Clinton in 1999. Ritchie was the head of Lucent Technologies System Software
Research Department when he retired in 2007. He was **the "R" in [K&R C][krc]**
and commonly known by his username **dmr**.

Ritchie was found dead on October 12, 2011, at the age of 70 at his home in
Berkeley Heights, New Jersey, where he **lived alone**. First news of his death
came from his former colleague, Rob Pike. The cause and exact time of death
have not been disclosed. He had been in frail health for several years
following treatment for prostate cancer and heart disease. His death came a
week after the death of Steve Jobs but did not receive as much media coverage.
Computer historian Paul E. Ceruzzi said after his death: "Ritchie was under the
radar. His name was not a household name at all, but... if you had a microscope
and could look in a computer, you'd see his work everywhere inside."

[dennis-m-ritchie]: http://en.wikipedia.org/wiki/Dennis_M._Ritchie
[dennis-m-ritchie-baidu]: http://baike.baidu.com/view/6648356.htm?from_id=1971171&type=syn&fromtitle=Dennis+M.+Ritchie&fr=aladdin
[dennis-m-ritchie-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/dennis-m-ritchie.jpg
[krc]: http://en.wikipedia.org/wiki/The_C_Programming_Language

### Edsger W. Dijkstra

<div class="tzx-fright">
![[Edsger Wybe Dijkstra][edsger-wybe-dijkstra] ([艾兹格·迪科斯彻][edsger-wybe-dijkstra-baidu])][edsger-wybe-dijkstra-pic]
</div>

Edsger Wybe Dijkstra (Dutch pronunciation: `[ˈɛtsxər ˈʋibə ˈdɛikstra]` ( listen);
11 May 1930 – 6 August 2002) was **a Dutch computer scientist.** He received
the 1972 Turing Award for fundamental contributions to developing programming
languages, and was the Schlumberger Centennial Chair of Computer Sciences at
The University of Texas at Austin from 1984 until 2000.

Shortly before his death in 2002, he received the ACM PODC Influential Paper
Award in distributed computing for **his work on self-stabilization of program
computation**. This annual award was renamed the Dijkstra Prize the following
year, in his honor.

Dijkstra was known for his habit of **carefully composing manuscripts with his
fountain pen**. The manuscripts are called **EWDs**, since Dijkstra numbered
them with EWD, his initials, as a prefix.

1. 提出 “goto 有害论”;
2. 提出信号量和 PV 原语;
3. 解决了“哲学家聚餐”问题;
4. 最短路径算法(SPF)和银行家算法的创造者;
5. 第一个 Algol 60 编译器的设计者和实现者;
6. THE 操作系统的设计者和开发者;

与 D. E. Knuth 并称为我们这个时代最伟大的计算机科学家的人。
与癌症抗争多年，于 2002 年 8 月 6 日在荷兰 Nuenen 自己的家中去世，享年 72 岁。

他老妈似乎是个数学家。

[edsger-wybe-dijkstra]: http://en.wikipedia.org/wiki/Edsger_Wybe_Dijkstra
[edsger-wybe-dijkstra-baidu]: http://baike.baidu.com/view/277610.htm?fromtitle=Edsger+Wybe+Dijkstra&fromid=9875586&type=syn
[edsger-wybe-dijkstra-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/edsger-wybe-dijkstra.jpg

### Anders Hejlsberg

<div class="tzx-fright">
![[Anders Hejlsberg][anders-hejlsberg] ([安德斯·海尔斯伯格][anders-hejlsberg-baidu])][anders-hejlsberg-pic]
</div>

Anders Hejlsberg (born December 1960) is a **prominent Danish software
engineer** who co-designed several popular and commercially successful
programming languages and development tools. He was the original author of
Turbo Pascal and the chief architect of Delphi. He currently **works for
Microsoft as the lead architect of C#** and **core developer on TypeScript**.

Turbo Pascal 编译器的主要作者， Delphi 和 C# 之父，同时也是 .NET 创立者。

[anders-hejlsberg]: http://en.wikipedia.org/wiki/Anders_Hejlsberg
[anders-hejlsberg-baidu]: http://baike.baidu.com/view/119319.htm?from_id=9081506&type=syn&fromtitle=Anders+Hejlsberg&fr=aladdin
[anders-hejlsberg-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/anders-hejlsberg.jpg

随便翻翻 01
-----------

Language agnostic

[What's your favorite "programmer" cartoon?][programmer-cartoon]

![xkcd comics][xkcd-comics]

[programmer-cartoon]: http://stackoverflow.com/questions/84556/whats-your-favorite-programmer-cartoon
[xkcd-comics]: http://gnat-tang-shared-image.qiniudn.com/pictures/sandwich.png

[折腾 Emacs][visual-emacs]

> 如果装了 Visual Studio，那么，在 Visual Studio 的菜单 Tools 下面可以通过 External Tools 加入
> 一个自定义的外部工具。外部工具的命令可以使用上面定义的 emacsclientw.exe ，参数那栏加上
> `-n -a "D:\emacs\bin\runemacs.exe" +$(CurLine) $(ItemPath)`{.bash}

[visual-emacs]: http://zhuoqiang.me/torture-emacs.html#id5

### 28 个 Unix/Linux 的命令行神器 | 酷 壳

[28个Unix/Linux的命令行神器 | 酷 壳][coolshell-gods-tools]

* bash, vim, ssh
* 熟悉 bash 的作业管理，如： `&`, `Ctrl-Z`, `Ctrl-C`, `jobs`{.bash},
  `fg`{.bash}, `bg`{.bash}, `kill`{.bash}, 等等。`SIGQUIT`, `SIGINT`
* filesystem, network basics, regexpr, fid, stream, pipe
* `curl`{.bash}, `wget`{.bash}, `cut`{.bash}, `paste`{.bash}, `join`{.bash},
  `sort`{.bash}, `uniq`{.bash}, `awk`{.bash}, `sed`{.bash}, `split`{.bash}
* wireshark, dmesg, ldd
* `dstat`{.bash}
* `tmux`{.bash}

[coolshell-gods-tools]: http://coolshell.cn/articles/7829.html

### 应该知道的Linux技巧 | 酷 壳

[应该知道的Linux技巧 | 酷 壳][coolshell-linux-skills]

Try [IRC][irc]

* Refs:
    + [Emacs IRC -- Erc][irc-jianlee]
    + [Emacs：简化 ERC 登录][irc-wenshan]
    + [Irc Basic Commands][irc-basics]
    + [IRCHelp.org — An IRC Tutorial][irc-tutorial]
* Do It Yourself

[coolshell-linux-skills]: http://coolshell.cn/articles/8883.html
[irc]: http://en.wikipedia.org/wiki/internet_relay_chat
[irc-jianlee]: http://jianlee.ylinux.org/computer/emacs/erc.html
[irc-wenshan]: http://wenshanren.org/?p=312
[irc-basics]: http://www.ircbeginner.com/ircinfo/ircc-commands.html
[irc-tutorial]: http://www.irchelp.org/irchelp/irctutorial.html

### 说说你觉得最狂霸酷炫屌炸天的命令

[说说你觉得最狂霸酷炫屌炸天的命令][hackerway]

* 以 sudo 的方式执行上次的命令，用于忘记加 sudo 的情况: `sudo !!`{.bash}
* `telnet towel.blinkenlights.nl`{.bash} Telnet 观看星球大战，IPV6 的话可以看到彩色版。（好长的故事，没有看完）
* `sl`{.bash} 终端里开过一辆火车。
* `bb`{.bash} 非常牛 B 的命令之一，是 aalib 的一个应用展示，
  在用户终端中用不停变换的字符组成一段视频，效果非常炫酷。
* aalib 这货让用户明白，没有什么是不能由ASCII来完成的。
* asciiquarium ASC II 水族馆。
* `:(){:|:&};:`{.bash}, fork bomb. （不要乱试这个）

[hackerway]: http://segmentfault.com/q/1010000000489601

### Keen Team： 这群执著的人和那些纯粹的事

[Keen Team： 这群执著的人和那些纯粹的事][keen-team]

![Keen Team][keen-team-pic]

1. 出名的都在安全公司，无名的都在自己的圈子，匿名的都在国家人才库
2. 团队为了准备比赛，‘闭关’了两个多月，每天夜以继日，工作时间超过 20 个小时，
   最终成功挑战了世界上最安全的操作系统。15 秒攻破 OS X，20 秒攻破 Windows 8.1，
   这些闪亮瞬间都是团队平时努力和专注的结果。”

[keen-team]: http://www.csdn.net/article/2014-05-07/2819656
[keen-team-pic]:  http://gnat-tang-shared-image.qiniudn.com/pictures/keen-team.jpg

### 自由软件之父 Richard Stallman 访华

[自由软件之父Richard Stallman访华][richard-stallman-china-travel]

![Richard Stallman][rms-china]

我去了，哈哈~

[richard-stallman-china-travel]: http://code.csdn.net/news/2819712
[rms-china]: http://gnat-tang-shared-image.qiniudn.com/2014/05/richard-stallman-china.png

### EMACS: The Extensible, Customizable Display Editor

[EMACS: The Extensible, Customizable Display Editor][emacs-design]

RMS 的论文（未读）

[emacs-design]: http://www.gnu.org/software/emacs/emacs-paper.html

### Steve Yegge：编程的肮脏小秘密

[Steve Yegge：编程的肮脏小秘密][steve-yegge-coding]

那么结果如何呢？在学期末，Yeev 一分钟打对了 60 个词，而且他甚至不是班上最好的。
这可是 45 天，每天 50 分钟的付出，并且充满了乐趣。实际上，随着更好的软件和键盘出现，
现在的打字学习可能就是**30 天，每天 30 分钟**的付出。现在 Yeev 可以**每分钟打120个词**。
他进大学时还只是每分钟打大约 60 到 65 个词，但他决定提高速度，在他遇见了一个叫凯利的同级学生，
他通过UNIX上的“talk”软件每分钟能打 120 个词。在他们较量时，Yeev 能够感受到她的不耐烦。
他提到了这点，她回应到，“**你该看看我在 Dvorak 键盘上打字时的水平**”。
Yeev 在那时已经深谙社交了，他咬紧牙关，不在打任何东西。但关于 Yeev 的故事已经足够了，
毕竟他是人们虚构的。

另外一点就是外行的代码往往是最短的。他们不会花费其他努力来注释代码。如果他们的打字技巧太差，
他们可能会选择用一种偷懒的方式来注释代码。**难道他们是在用手肘打字？**他们甚至不在意格式，
这可以说是一个程序猿所犯的最大的罪。这还不是最糟糕的，最糟糕的是错拼标识符后还不修正过来，
因为有太多地方需要修正。

**承认吧，其实就是自己懒而已。没有其他借口了。**我有一个朋友，叫约翰，只能使用一只手，
但是他却能一分钟打 70 个单词。他创造了自己的小技巧。他没有找借口，而是在找借口的人中间默默坚持着。
感到羞愧吧！如果你双手健全，完全正确地一分钟打 70 个单词是轻而易举的，甚至更快。
打字并没有你想的那么难，它比你想得更有用。

既然你今天就要开始学，你最好**在德沃夏克键盘上学习**，它可以促进你的学习速度，给自己一个有利的开头。

[steve-yegge-coding]: http://blog.jobbole.com/64959/

### Peter Norvig：自学编程，十年磨一剑

[Peter Norvig：自学编程，十年磨一剑][peter-norvig-10-year-of-programming]

1. 你们着什么急？ (21 天系列之类）
2. 也不是 10 年， 是 10000 小时
3. 你想当程序员么？
    * 沉醉于编程，编程是为了兴趣
    * 在实践中学习
    * 同其他程序员交流，多阅读其他人写的程序
    * 读一个计算机科学专业, if you really want
    * 做项目
    * 至少学习半打编程语言
    * 牢记“计算机科学”中包含着“计算机”这个词, which means you should know something about hardware
    * 尽量参与语言的标准化过程, 有良好的意识，能尽快适应语言标准化的成果。
4. 所以尽管去书店大买 Java/Ruby/Javascript/PHP 书籍吧；你也许会发现他们真的挺管用。
   但是这样做不会改变你的人生，也不会让你在整体经验上有什么提高。24 小时，几天，几周，做一个真正的程序员？
   光靠读书可读不出来。你尝试过连续 24 个月不懈努力提高自己么？
   呵呵，如果你做到了，好吧，那么你开始上路了……

[peter-norvig-10-year-of-programming]: http://blog.jobbole.com/22905/

### How to be a Programmer

[A Short, Comprehensive, and Personal Summary][how_to_programmer]

这一部分实在太多，而且很细节，以后再看（2014-06-02)

[how_to_programmer]: http://samizdat.mines.edu/howto/HowToBeAProgrammer.html "啥，开玩笑的？"

### 对九个超级程序员的采访

[对九个超级程序员的采访 | 酷 壳 - CoolShell.cn][9-super-coders]

1. 你们觉得对程序员最重要的事是什么？
    * 沟通能力（写和说）。(Steve Yegge)
    * 品味. It’s a thing I call “taste” (Linus Torvalds)
    * 我不觉得只有一个，如果要我说一个的话，我说是“专注”。(Peter Norvig)
    * 能为自己的直觉提供证据的能力。 (Tim Bray)
2. 关于编程，你们认为接下来的大事是什么？X-Oriented编程，Y语言，量子电脑 ？
    * Web (Steve Yegge)
    * 大规模的分布式处理 (Peter Norvig)
    * 对付并行和复杂 (James Goslin)
3. 如果你有3个月学一个相对较新的技术，你会学什么？
    * 我想把 Javascript 学得更好，然也当然也想学 flash. (Peter Norvig)
    * 学习 3D渲染技术 （James Goslin）
    * 安全，加密，数字签名，身份标识，等等。对我来说，从没学过这些东西对我来说是个很大的问题。 (Tim Bray)
4. 什么工具是你的最爱（操作系统，编程/脚本语言，文本编辑器，版本管理，shell，数据库，或其它没它你活不了的工具），为什么不是别的？
    * Unix, Ruby, MySQL, Bash, Emacs, GIMP (Steve Yegge)
    * Git, Micro-Emacs, Pine(Email-Reader) (Linus Torvalds)
    * OS X, TextMate, Ruby, Subversion, MySQL (David Heinemeier Hansson)
    * Not Windows, Mac, Linux。我喜欢 Python 和 Lisp. Emacs. (Peter Norvig)
    * OSX, Emacs, TextMate, Rails, Ruby, SVN, CVS, Rake, make, xsltproc, TeX, MySQL, Postgres。Mac并不见得有多好，但是它不需要很牛的技术，也不需要经常维护，这让我可以让我更专心得使用它。 (Dava Thomas)
    * Unix/Linux, Python, vi+emacs, Firefox. (Guido Van Rossum)
    * Unix, sam (一个非常简单的文本编辑器), 当然，一个好的C++编译器。 (Bjarne StrouStrup)
    * Unix-like 的操作系统，像 Python 和 Ruby 的动态语言，像Java的静态语言（具体说来是Java API） Emacs, 还有, bash, whatever, NetBeans.  (Tim Bray)
5. 你最喜欢的编程书是什么？
    * **Gödel, Escher, Bach: an Eternal Golden Braid**
**SICP** (Steve Yegge)
    * **The C Programming Language**
**Operating Systems: Design and Implementation** (Linus Torvalds)
    * **SICP** (Peter Norvig)
    * **Quicksilver** by Neil Stephenson  (Guido Van Rossum)
    * **Programming Pearls** byJon Bentley (James Goslin)
    * **The C Programming Language** (Bjarne Stroustrup)
    * **Programming Pearls** (Tim Bray)
6. 你最喜欢的和编程无关的一本书是什么？
    * **1984** by George Orwell. (David Heinemeier Hansson)
    * **Guns, Germs & Steel** by Jared Diamond (James Goslin)

[9-super-coders]: http://coolshell.cn/articles/8275.html

随便翻翻 02
-----------

### 看看 9 种编程语言的发明者是怎么说的

[看看 9 种编程语言的发明者是怎么说的][how-they-say-about-their-language]

1. Ryan Dahl：**Node.js** ==> 处理 I/O, Node 鼓励人们用非阻塞的模式
2. Guido van Rossum：**Python** ==> 必要时，要用高效的语言来取代之，比如 C 和 C++
3. Yukihiro Matsumoto ：**Ruby** ==> 让程序员更开心
4. Dmitry Jemerov：**Kotlin** ==> 开发更复杂，更高性，高频率交互的程序, 静态语言 Kotlin is for you
5. Martin Odersky：**Scala** ==> 将函数式和面向对象编程结合成一个包，
   给开发人员提供一个强大的语言，让人感觉他有很强的互补性
6. Bjarne Stroustrup：**C++** ==> 在基础架构方面有无与伦比的优势
7. Lars Bak：**Dart** ==> With Dart 虚拟机，可以更快的运行和启动
8. Stefan Karpinski：**Julia** ==> 一种动态语言，非常简单的编程模型。但它有极高的效率
9. Rich Hickey ：**Clojure** ==> 为 JVM 发明一种动态的，函数式编程语言

[how-they-say-about-their-language]: http://www.cnbeta.com/articles/191388.htm

### 游戏策划的“落地思维”

[游戏策划的“落地思维”][落地思维]

于是乎，我们看到了一堆嘴炮策划、口述策划，整日天马行空、侃侃而谈，头脑风暴的会议一个接一个，
却始终无法提出可行方案，坑了一个又一个团队，误了一个又一个项目。
最后，游戏圈最不缺的就是评论家，吐槽拍砖样样行，唯独不会解决问题。

[落地思维]: http://www.cocoachina.com/gamedev/designer/2014/0605/8678.html

### 心目中的编程高手系列

[心目中的编程高手系列][coders]

(很幽默，被百度百科收录了好几个）

* [心目中的编程高手 (1) -- Bill Joy][programmer-bill-joy]
* [心目中的编程高手 (2) -- John Carmack][programmer-john-d-carmack]
* [心目中的编程高手 (3) -- David Cutler][programmer-david-culter]
* [心目中的编程高手 (4) -- Donald E. Knuth][programmer-donald-e-knuth]
* [心目中的编程高手 (5) -- Ken Thompson][programmer-ken-thompson]
* [心目中的编程高手 (6) -- Rob Pike][programmer-rob-pike]
* [心目中的编程高手 (7) -- Dennis M. Ritchie][programmer-dennis-m-ritchie]
* [心目中的编程高手 (8) -- Edsger Wybe Dijkstra][programmer-edsger-wybe-dijkstra]
* [心目中的编程高手 (9) -- Anders Hejlsberg][programmer-anders-hejlsberg]

[programmer-anders-hejlsberg]: http://blog.csdn.net/g9yuayon/article/details/44589
[programmer-bill-joy]: http://blog.csdn.net/g9yuayon/article/details/32833
[programmer-david-culter]: http://blog.csdn.net/g9yuayon/article/details/32917
[programmer-dennis-m-ritchie]: http://blog.csdn.net/g9yuayon/article/details/44123
[programmer-donald-e-knuth]: http://blog.csdn.net/g9yuayon/article/details/33416
[programmer-edsger-wybe-dijkstra]: http://blog.csdn.net/g9yuayon/article/details/44125
[programmer-john-d-carmack]: http://blog.csdn.net/g9yuayon/article/details/32834
[programmer-ken-thompson]: http://blog.csdn.net/g9yuayon/article/details/34882
[programmer-rob-pike]: http://blog.csdn.net/g9yuayon/article/details/38393
[coders]: http://jianshu.io/p/a0655adb1203

上面的链接已经不能用了。赶紧找了一个备份。版权属于 g9 大神所有。

先不修改中英文之间（missing）的空格了。

```tzx-bigquote
-- Bill Joy MIT BBS 上说微软电话面试的一道题就是“Who do you think is the best
coder, and why?”。我觉得挺有意思的，也来凑个热闹。排名不分先后。

心目中的编程高手 (1)

Bill Joy, 前任 Sun 的首席科学家，当年在 Berkeley 时主持开发了最早版本的 BSD。他
还是 vi 和 csh 的作者。当然，Csh Programming Considered Harmful 是另一个话题乐
。据说他想看看自己能不能写个操作系统，就在三天里写了个自己的 Unix, 也就是 BSD
的前身。当然是传说了，但足见他的功力。另一个传说是，1980 年初的时候，DARPA 让
BBN在 Berkley Unix 里加上 BBN 开发的 TCP/IP 代码。但当时还是研究生的 B 伯伯怒了
，拒绝把 BBN TCP/IP 加入 BSD，因为他觉得 BBN 的 TCP/IP 写得不好。于是 B 伯伯出
手了，端的是一箭封喉，很快就写出了高性能的伯克利版 TCP/IP。当时 BBN 和 DARPA 签
了巨额合同开发 TCP/IP Stack，谁知他们的代码还不如一个研究生的好。于是他们开会。
只见当时 B 伯伯穿个 T-shirt 出现在会议室 (当时穿 T-shirt 不象现在，还是相当散漫
的哈)。只见 BBN 问：你怎么写出来的？而 B 伯伯答：简单，你读协议，然后编程就行了
。最令偶晕倒的是，B 伯伯硕士毕业后决定到工业界发展，于是就到了当时只有一间办公
室的 Sun, 然后他就把 Sparc 设计出来乐... 象这种软硬通吃的牛人，想不佩服都不行的
说。据 Bill Joy 的同事说，一般开会的时候 B 伯伯总是拿一堆杂志漫不经心地读。但往
往在关键之处，B 伯伯发言，直切要害，提出漂亮的构想，让同事们彻底崩溃。对了，他
还是 Java Spec 和 JINI 的主要作者之一。

心目中的编程高手 (2)

John Carmack，ID Software 的 founder 和 Lead Programmer。上个月和一个搞图形的师
兄聊天，他竟然不知道 John Carmack, 也让偶大大地晕了一把。不过也许搞研究的和搞实
战的多少有些隔吧。想必喜欢第一人称射击游戏的都知道 J 哥哥。90 年代初只要能在 PC
上搞个小动画都能让人惊叹一番的时候，J 哥哥就推出了石破天惊的 Castle Wolfstein,
然后再接再励，doom, doomII, Quake... 每次都把 3D 技术推到极致。J 哥哥的简历上说
自己的专长是"Exhaust 3D technology"，真是牛人之言不我欺的说。做 J 哥哥这样的人
是很幸福的，因为各大图形卡厂家一有了新产品就要向他“进贡”，不然如果他的游戏不支
持哪种卡，哪种卡基本就会夭折乐。当初 MS 的 Direct3D 也得听取他的意见，修改了不
少 API。当然，J 哥哥在结婚前十数年如一日地每天编程 14 小时以上，也是偶们凡人望
尘莫及的。对了，J 哥哥高中肆业 (?!)，可以说是自学成才。不过呢，谁要用这个例子来
为自己学习不好辩护，就大错特错了。那 Leonardo Da Vinci 还是自学成才呢 (人是私生
子，不能上学)。普通人和天才还是有区别的。对了，其实偶们叫“达分奇”是相当不对的，
因为 Vinci 是地名，而 Da Vinci 就是从 Vinci 来的人的意思。换句话说，Leonardo Da
Vinci 就是“从 Vinci 来的 Leonardo”的意思。叫别人“Da Vinci”就不知所谓乐。嗯，扯
远了，打住。

心目中的编程高手 (3)

David Cutler，VMS 和 Windows NT 的首席设计师，去微软前号称硅谷最牛的 kernel 开
发员。当初他和他的手下在微软一周内把一个具备基本功能的 bootable kernel 写出来，
然后说："who can't write an OS in a week?"，也是牛气冲天的说。顺便说一句，D 爷
爷到 NT3.5 时，管理 1500 名开发员，自己还兼做设计和编程，不改 coder 本色啊。D爷
爷天生脾气火爆，和人争论时喜欢双手猛击桌子以壮声势。:-) 日常交谈 F-word 不离口
。他面试秘书时必问："what do you think of the word 'FUCK'?"，让无数美女刹羽而归
。终于有一天，一个同样火爆的女面对这个问题脱口而出："That's my favorite word"。
于是她被录取乐，为 D 爷爷工作到 NT3.5 发布。

心目中的编程高手 (4)

Donald E. Knuth。高爷爷其实用不着偶多说。学编程的不知道他就好像学物理的不知道牛
顿，学数学的不知道欧拉，学音乐的不知道莫扎特，学 Delphi 的不知到 Anders
Hejlsberg，或者学 Linux 不知道 Linus Torvalds 一样，不可原谅啊。:-) 为了让文章
完整，就再罗唆几句吧。高爷爷本科时就开始给行行色色的公司写各种稀奇古怪的编译器
挣外快了。他卖给别人时收一两千美元，那些公司拿了 code，加工一下卖出去就是上万上
十万。不过也没见高爷爷不爽过，学者本色的说。想想那可是 60 年代初啊，高爷爷写编
译器写多了，顺带就搞出了个 Attribute Grammar 和 LR(k)，大大地造福后人啊。至于高
爷爷在 CalTech 的编程比赛 (有 Alan Kay 得众多高高手参加) 总是第一，写的 Tex 到
86 年就 code freeze，还附带 2^n 美分奖励等等都是耳熟能详，偶就不饶舌乐。顺便说
一下，高老大爷是无可争议的写作高手。他给 Concrete Mathematics 写的前言可谓字字
铿锵，堪为前言的典范。他的技术文章也是一绝，文风细致，解释精当，而且没有学究气
，不失轻快跳脱。记得几年前读 Concrete Mathematics，时不时开怀大笑，让老妈极其郁
闷，觉得我 nerdy 到家，不可救药。其实呢，子非鱼，安知鱼之乐，更不知那完全是高爷
爷的功劳。说到写作高手，不能不提 Stephen A. Cook。他的文章当年就被我们的写作老
师极力推荐，号称典雅文风的样本。库爷爷一头银发，身材颀长，总是面带谦和的微笑，
颇有仙风道骨，正好和他的仙文相配的说。高爷爷其实还是开源运动的先驱。虽然他没有
象 Richard Stallman 那样八方奔走，但他捐献了好多作品，都可以在网上看到，比如著
名的 Mathematical Writing，MMIXWare，The Tex Book 等，更不用说足以让他流芳百世
的Tex 乐。

心目中的编程高手 (5)

Ken Thompson，C 语言前身 B 语言的作者，Unix 的发明人之一 (另一个是 Dennis M.
Riche 老大，被尊为 DMR)，Belle(一个厉害的国际象棋程序) 的作者之一，操作系统Plan
9 的主要作者 (另一个是大牛人 Rob Pike, 前不久被 google 挖走了)。Ken 爷爷也算是
计算机历史上开天辟地的人物了。1969 年还是计算机史前时代，普通人都认为只有大型机
才能运行通用的操作系统，小型机只有高山仰止的份儿。至于用高级语言来写操作系统，
更是笑谈。Ken 爷爷自然不是池中物，于是他和 DMR 怒了，在 1969 年到 1970 间用汇编
在 PDP-7 上写出了 UNIX 的第一个版本。他们并不知道，一场轰轰烈烈的 UNIX 传奇由此
拉开了序幕。Ken 爷爷在 1971 年又把 Unix 用 C 重写，于是 C 在随后 20 年成就了不
知多少豪杰的梦想和光荣。Ken 爷爷还有段佳话：装了 UNIX 的 PDP-11 最早被安装在
Bell Lab 里供大家日常使用。很快大家就发现 Ken 爷爷总能进入他们的帐户，获得最高
权限。Bell Lab 里的科学家都心比天高，当然被搞得郁闷无比。于是有高手怒了，跳出来
分析了 UNIX 代码，找到后门，修改代码，然后重新编译了整个 UNIX。就在大家都以为“
这个世界清净了”的时候，他们发现 Ken 爷爷还是轻而易举地拿到他们的帐户权限，百思
不解后，只好继续郁闷。谁知道这一郁闷，就郁闷了 14 年，直到 Ken 爷爷道出个中缘由
。原来，代码里的确有后门，但后门不在 Unix 代码里，而在编译 Unix 代码的 C 编译器
里。每次 C 编译器编译 UNIX 的代码，就自动生成后门代码。而整个 Bell Lab 的人，都
是用 Ken 爷爷的 C 编译器。

心目中的编程高手 (6)

Rob Pike, AT&T Bell Lab 前 Member of Technical Staff，现在 google 研究操作系统
。罗伯伯是 Unix 的先驱，是贝尔实验室最早和 Ken Thompson 以及 Dennis M. Ritche
开发 Unix 的猛人，UTF-8 的设计人。他还在美国名嘴 David Letterman 的晚间节目上露
了一小脸，一脸憨厚地帮一胖子吹牛搞怪。让偶佩服不已的是，罗伯伯还是 1980 年奥运
会射箭的银牌得主。他也是个颇为厉害的业余天文学家，设计的珈玛射线望远镜差点被
NASA用在航天飞机上。他还是两本经典，The Unix Programming Environment 和 The
Practice of Programming 的作者之一。如果初学者想在编程方面精益求精，实在该好好
读读这两本书。它们都有中文版的说。罗伯伯还写出了 Unix 下第一个基于位图的窗口系
统，并且是著名的 blit 终端的作者。当然了，罗伯伯还是号称锐意革新的操作系统，
Plan9，的主要作者。可惜的是，Plan9 并没有引起多少人的注意。罗伯伯一怒之下，写出
了振聋发聩的雄文 Systems Software Research is Irrelevant，痛斥当下系统开发不思
进取，固步自封的弊病。虽然这篇文章是罗伯伯含忿出手，颇有偏激之词，但确实道出了
系统开发的无奈：开发周期越来越长，代价越来越大，用户被统一到少数几个系统上，结
果越来越多的活动是测量和修补，而真正的革新越来越少。就在罗伯伯郁闷之极的时候，
google 登门求贤来乐。如果说现在还有一家大众公司在不遗余力地把系统开发推向极致的
话，也就是 google 乐。随便看看 google 的成果就知道了。具有超强容错和负载平衡能
力的分布式文件系统 GFS(现在能够用 100,000 台廉价 PC 搭起一个巨型分布系统，并且
高效便宜地进行管理的系统也不多哈)，大规模机器学习系统 (拼写检查，广告匹配，拼音
搜寻。。。哪个都很牛的说)，更不用说处理海量并行计算的各式 google 服务了。Rob 在
System Software Research is Irrelevant 里萧瑟地说现在没有人再关心系统研究的前沿
成果了。想不到他错了，因为 google 关心。google 网络了大批功成名就的牛人，还有大
量初生牛犊般博士做开发，显然不是没事耍酷，而是因为它们的开发总是试图吸取系统研
究的最新成果。想必 Rob Pike 在 google 很幸福。愿他做出更棒的系统。

心目中的编程高手 (7)

Dennis M. Ritchie 既然 Ken Thompson 是我的偶像，新闻组上人称 DMR 的 Dennis M.
Ritchie 自然也是，毕竟两人共同缔造了 UNIX，而 Dennis 几乎独力把 C 搞大 (当然，C
的前身是 B，而 B 是 Ken Thompson 一手做出来的)。J D 两人 1983 年分享图灵奖，是
有史以来少数几个因工程项目得奖的工程师 (本来是唯一的一对儿，但 Alan Kay 才因为
SmallTalk 得奖，所以就成了唯二的乐)。一个人一生能做出一个卓越的系统已经不易，
DMR 的 C 和 UNIX 长盛不衰近 30 年，至今生机勃勃，DMR 此生可以无憾的说。D 爷爷也
算有家学渊源：他老爸在 AT&T 贝尔实验室工作了一辈子，并在电路设计方面卓有成就，
还出了本颇有影响的书 The Design of Switching Circuits，据说在交换理论和逻辑设计
方面有独到的论述。当然，D 爷爷和他老爸是不同时代的人：他老爸的研究成形于晶体管
发明之前，而 D 爷爷的工作离了晶体管就玩儿不转乐。:-D 不要看 D 爷爷搞出了 C，其
实他最爱的编程语言是 Alef，在 Plan9 上运行，支持并行编程。Alef 的语法和 C 相似
，但数据类型和执行方式都和 C 大大不同。说到语言，D 爷爷对后来人有非常中肯的建议
：抱着学习的目的来开发你自己的语言，不要冀望于它被众人接受。这个建议不光对语言
开发有用，也适用于其它大型系统的开发。别的不说，DMR 后来领导自己的团队在 1995
年和 1996 分别推出了 Plan9 和 Inferno 操作系统，又用多少人知道呢？其实，D 爷爷
当初也没想过 C 会风行世界。他开发 C 的初衷和 Eric S. Raymond 在 Cathedral and
Bazaar 里阐述的一样，就是要消除自己对现有工具的不爽之处。谁知 D 爷爷无心插柳，C
竟然受到众多程序员的狂热拥戴，连 D 爷爷自己都大惑不解。在一次采访中 D 爷爷说大
概那是因为 C 的抽象程度碰巧既满足了程序员的要求，又容易实现。当然 C 一度是 Unix
上的通用语言也是原因。但不管怎么说，D 爷爷对编程语言出色的审美意识奠定了 C 广为
流传的基础。最后八卦一下。D 爷爷的业余爱好和 NBA 大牛 Karl Malone 一样：开卡车
。不过 D 爷爷更喜欢开 NASCAR，而 KM 独爱巨无霸。J D 爷爷自称心中不供偶像，如果
一定要说一个，那就是 Ken Thompson 了。现在 Ken 爷爷退休当飞机教练去了，而 D 爷
爷当了贝尔实验室系统开发部的头，整日忙于开支票。他俩合作 20 年，屡屡创造历史。
这段令人神往的佳话，也就长留你我心中乐。P.S.，很多人都以为 Brian W. Kernighan
是C 的作者。其实 BWK 只是写了那本经典 K&R C。据 D 爷爷说，他，Ken 和 Kernighan
三人中，Kernighan 最能写文章，他次之，而 Ken 写得最少；但说到编程，Ken 爷爷才是
当之无愧的老大。

心目中的编程高手 (8)

Edsger Wybe Dijkstra 对，就是 E.W. Dijkstra. 一提到 EWD，很多人就会想起找最短路
径的 Dijkstra Algorithm，就好像一提到 Sir. Tony Hoare，就想起 Quick Sort 一样。
其实这些个算法不过是两个牛人在他们职业生涯中最琐碎的贡献。比如 Dijkstra 算法，
无非是戴爷爷在 1956 年为了展示新计算机 ARMAC 的计算能力，初试身手的成果，属于他
的算法处女作。据戴爷爷自述，他搞出最短路径算法的时候连纸笔都没用。当时他和他老
婆在阿姆斯特丹一家咖啡厅的阳台上晒太阳喝咖啡，突然就把这个算法想出来乐。而且当
时的算法研究还比较原始，牛人们忙着用计算机搞数值计算，对离散算法不屑一顾。那时
连一个象样的专注于离散算法的专业期刊都没有。戴爷爷于是推迟发表这个算法。直到
1959 年，他才把这个算法发表在 Numerische Mathematik 的创刊号上，权为捧场。:-)
EWD 在多个领域牛气冲天，端的是理论和编程两手硬的高手。只不过他的很多工作比较深
刻，学校的老先生们觉得本科生接受不了，不给本科生讲而已。戴爷爷大概因为最短路径
算法一战成名，于是有人请他参加另一台计算机 X1 的设计工作，并且把设计实时中断系
统的任务派给了他。现在看来实时中断也许不算什么，但要知到，X1 前根本就没有实时中
断的概念。实现它简直就是一场豪赌。戴爷爷起初还不情愿，但经不住项目负责人 Bram
和Carel 的轮番“吹捧”：我们知道实时中断让您工作变得非常困难，但象您这样的牛人肯
定能做出来的说。结果戴爷爷被糖衣炮弹彻底击穿，接下了这个烫手山芋。两三年后，他
不仅搞出了实时中断，还围绕这个写出了自己的博士论文，顺利戴上博士帽。让戴爷爷真
正成名立万的还是在 X1 上开发的 Algo60，最早的高级语言之一。戴爷爷没日没夜地工作
了8 个月，就搞出了 Algo60，也因此获得了 1972 年的图灵奖。因为 Algo60，戴爷爷发
表了一篇石破天惊的文章：Recursive Programming，于是人们才知道，原来高级语言也可
以高效地实现递归，原来从此以后，所有程序员都不可避免地和戴爷爷发明的一个词 (应
该说是概念) 打交道：堆栈。而且 Algo60 还让戴爷爷深入地思考多道程序设计的问题，
最终发明了每个系统程序员都绕不开的概念：semaphore。当然，戴爷爷总是把他发明的概
念严格形式化，极具科学家本色的说。和这些成就想比，他提出的吃饭的哲学家问题，也
就没什么好说的了。说来好笑，当时的大学 (忘了哪所了) 还是觉得戴爷爷没有受过正统
的数学训练，也不是专门搞数值分析的，所以最后不太情愿地给了他一个教职。这种小挫
折并不能妨碍象戴爷爷这样的牛人创造历史。他一边教数值分析 (:-D)，一边开始开发一
个新的操作系统，并培养计算机科学家。几年后，THE Multiprogramming System 横空出
世。THE 是第一个支持松散耦合，显式同步的进程并由此使得严格证明系统没有死锁变得
容易的操作系统。可惜戴爷爷任职的系不识货，还强行解散了他的研究小组 (1972 年戴爷
爷给他的系主任说他得了图灵奖，系主任的第一反应是你们搞计算机就喜欢乱发奖)。这让
戴爷爷相当郁闷，得了抑郁症。在极度郁闷之中，戴爷爷决定用写作来治疗自己的抑郁症
。于是经典就诞生乐：Notes on Structured Programming。戴爷爷从此被尊为结构化编程
的奠基人，而且他的抑郁症也被治好乐。EWD 太牛，结果他的故事也太多。先到这里吧。
1973 起，他的故事就在美国发生了。

心目中的编程高手 (9)

Anders Hejlsberg，微软.NET 的首席架构师，编程语言设计和实现的顶尖高手。他一手做
出了 Turbo Pascal，也是 Delphi, J++(尤其是 WFC)，C#和.NET 的主要作者。这些作品
的名字足以为他立传。作为一个程序员，我在这样的大师面前实在无语。生子当如 Anders
的说。李维的《Borland 传奇》里已详细讲述了 Anders 的传奇故事，我就不用费舌了：
http://java.mblogger.cn/iexploiter/posts/1505.aspx。Artima 上有 Anders 谈 C#的
系列访谈。MSDN 上有一段 Anders 导游的录像。有兴趣可以去看看牛人的丰采。
```

### 使用超动感 HTML & JS 开发 WEB 应用!

[使用超动感 HTML & JS 开发 WEB 应用!][html-web]

* Web 移动终端开发
    + [PhoneGap][phone-gap]: 使用 HTML、CSS 和 JavaScript 来构建跨平台的移动应用程序。
    + [Sencha Touch][sencha-touch]: Mobile App Development Framework. JavaScript and HTML5.
    + Media Queries, Zepto.js
    + Bootstrap
* JavaScript 的兄弟们
    + [CoffeeScript][coffeescript]
    + [TypeScript][typescript]
    + [Node.js][node-js]
* 百花齐放的类库和框架
    + [Sea.js - A Module Loader for the Web][sea-js]: JS, CSS Modules
    + [Metro-UI-CSS][metro-ui-css]
    + [Hype][hype]
    + [前端 MVC 架构][mvc-zhihu]
* 工程化的 Web 前端开发规范
    + [AMD 与 CMD 规范之争][amd-cmd]
    + Java 语言编码规范对于前端开发编程规范有非常大的影响:
        - Crockford 编程规范
        - jQuery 核心风格指南
        - SproutCore 编程风格指南
        - [Google 的 JavaScript 风格指南][js-code-guide]
        - Dojo 编程风格指南

[html-web]: http://www.angularjs.cn/A04F
[phone-gap]: https://github.com/sintaxi/phonegap
[sencha-touch]: https://www.sencha.com/products/touch/
[sea-js]: http://seajs.org/docs/
[metro-ui-css]: https://github.com/olton/Metro-UI-CSS
[amd-cmd]: http://www.zhihu.com/question/20351507/answer/14859415
[coffeescript]: http://en.wikipedia.org/wiki/CoffeeScript
[typescript]: http://en.wikipedia.org/wiki/TypeScript
[node-js]: http://en.wikipedia.org/wiki/Node.js
[hype]: https://github.com/hype/HYPE_Processing
[mvc-zhihu]: http://www.zhihu.com/question/20135390
[js-code-guide]: http://chajn.org/jsguide/javascriptguide.html

### 杰出校友

在看 [武汉大学杰出校友][whu-xiaoyouhui], 我知道的有：

* [王梓坤](http://alumni.whu.edu.cn/info/1055/8117.htm)
* [雷军](http://alumni.whu.edu.cn/info/1056/8125.htm)
* [池莉](http://alumni.whu.edu.cn/info/1058/8151.htm)
* [易中天](http://alumni.whu.edu.cn/info/1058/8148.htm)
* [史文中](http://alumni.whu.edu.cn/info/1059/8155.htm)

[whu-xiaoyouhui]: http://alumni.whu.edu.cn/jcxy.htm

随便翻翻 03
-----------

### Popular Coding Convention on Github

[Popular Coding Convention on Github][coding-convention]

涉及的语言有 JavaScript, Python, Java, Scala, Ruby, C#, PHP , 通过统计 Github 上的代码得到数据。

谈到 Tab / Space 的使用；逗号放哪儿；函数后空格问题等等。这些地方不影响代码执行，但是美观还是很重要对吧。规范还得遵守对吧？

大多数程序员都：

* 不用 Tab 来缩进。推荐用 soft tab 即 4 个空格；
* 函数名后加空格，参数列表里除第一个参数，前面都加空格；
* 控制语句参考上一条，`do`， `while`，`for` 后面都加空格；
* 遵循 80 字规范；
* 避免不必要的前缀，比如 int 型前加 `i_`；
* Python 的引用语句，CSS 的 selector 语句，若有多项，都要一行一个；
* 避免无聊的多余空格 (extraneous whitespace), 如使用 Lambda 表达式，作为参数传递的函数少用空格；
* 不按照 `=` 来对齐，比如 `int foo = 0;\ndouble bar = 1.0;`，简单处理就行。
* 定义类用 `MyFairLady`，而不是 `myFairLady`

一些实例：

```javascript
int function (int foo, int bar) {
    double indent_with_4_spaces;
}

while (true) {
    /* text within 80 chars */
}

import sys;
import numpy; # not `import sys, numpy`

div
p {
    color : red;
}

/* No extraneous whitespace */
spam(ham[1], {eggs: 2})
/* With extraneous whitespace */
spam( ham[ 1 ], { eggs: 2 } )

class MyFairLady ... /* CamelCase with a capital first letter */
val myValue = ...
def myMethod = ...
var myVariable ...
```

[coding-convention]: http://sideeffect.kr/popularconvention#javascript

### All Our Patent Are Belong To You | Tesla Motors

[All Our Patent Are Belong To You | Tesla Motors][tesla-motors]

When I started out with my first company, Zip2, I thought patents were a good
thing and worked hard to obtain them. **...** After Zip2, when I realized that
receiving a patent really just meant that you bought a lottery ticket to a
lawsuit, I avoided them whenever possible.

The unfortunate reality is the opposite: electric car programs (or programs for
any vehicle that doesn’t burn hydrocarbons) at the major manufacturers are
**small to non-existent**, constituting an average of far less than 1% of their
total vehicle sales.

Technology leadership is not defined by patents, which history has repeatedly
shown to be **small protection** indeed against a determined competitor, but
rather by the ability of a company to attract and motivate the world’s most
talented engineers. **We believe that applying the open source philosophy to
our patents will strengthen rather than diminish Tesla’s position in this
regard.**

[tesla-motors]: http://www.teslamotors.com/blog/all-our-patent-are-belong-you

### 怎样读书比较快？

[怎样读书比较快？][how-to-be-a-fast-reader]

虽然在学校也读过一些英文书，但速度大概是每个学期 3 到 4 本，偶尔能看 5 本以上，
就觉得相当有成就感了。现在要求一周内看完一本英文教材，还得给同事讲解，
这是我从来没想过也没经历过的。... 这件事给我的印象太深刻了，平时大家总说“潜力”，
但似乎都关注的是工作和学习的潜力，却没有想过**阅读也是有潜力的**。

关于阅读，还有一本我印象深刻的书，叫做[《怎样阅读一本书》][how-to-read-a-book]。...
让我真正深刻意识到，**阅读原来是讲方法的**，比如什么书应该精读，什么书应该略读，
一本书的哪些部分应该精读，哪些部分应该略读……

**只有速度而没有质量，再快都没有意义**。

在学习技术知识时，讨论可能并不重要，因为书里的内容可以**由客观标准来验证**（对计算机来说更是如此）。
但是对其它种类的知识，尤其是稍微艰深、复杂的知识，**讨论**是真正掌握的必经之路。

如果实在是找不到同好来讨论自己阅读的内容，还有一个加深理解的好办法，就是写**读后感**。
读一本书或者非常容易，但是要写读后感，哪怕只是短短几百字的读后感，也会非常让人头疼。
你会逼迫自己把读过的内容翻过来倒过去，**仔细思考**，**梳理**出自己认可的逻辑，并按照一定的结构组织起来。

最后我想说的是，阅读速度不是孤立阅读一本书的速度，而是所有你的**阅读量的加速度**。
因为之前的知识积累，在很大程度上影响着你阅读当前这本书的速度。... 只要你抱定开放的心态，
必然可以不断提高自己的阅读鉴别力，通过除莠存良，**提高自己的阅读效率**。

[how-to-be-a-fast-reader]: http://www.luanxiang.org/blog/archives/1736.html
[how-to-read-a-book]: http://book.douban.com/subject/1013208/

### 没有比较，难有收获

[没有比较，难有收获][no-comp-no-gain]

在没有老师指导的情况下如何练习作文？俞敏洪的回答是：如果自己练习，那么拿到题目先不要看范文，
想想自己要怎么写，写出来，再对比范文，**看看人家为什么写得好，有哪些地方可以学习**。

自学的时候，问题的答案往往是一开始就摆在那里的，于是学习就变成了“熟练掌握某种技能”的过程，
但真正要弄掌握这些知识，或许应该认真想想：**如果自己不知道答案，会怎么解决这个问题。
**动过脑筋之后，再和现成答案对比，看看究竟有哪些需要学习和改进的地方。

我必须承认，在现成的答案面前，再花时间设想解法确实有点“耽误功夫”，而且自己的解法往往不能跟现成答案对比，
有时候甚至差很多。这当然让人难为情，但是**持续的比较、思考所带来的收获，远比“拿现成的来用”的收获要大。**

以前，有则寓言我印象很深。一个人问智者：“怎样才能获得幸福？” 智者答：“做正确的事情。”
那个人接着问：“怎样才能做正确的事情呢？”，智者答：“通过做错误的事情。”

[no-comp-no-gain]: http://www.luanxiang.org/blog/archives/1742.html

### 纯属偶然——我和正则表达式的缘份

[纯属偶然——我和正则表达式的缘份][reg-expr]

> 我说以前怎么就看过他的博客……原来这样

所以在正式接手翻译《正则表达式》之前，我已经积累了十多万字的翻译经验，
其中很多还是被批评后反复修改、讨论的结果。这些经验没有为我赢得什么实质的报酬，
却是日后争取到翻译《精通正则表达式》机会的宝贵积累。

所以如今，每次听到大家把“正则表达式”和我联系到一起，我都感到非常惭愧。
复习 GRE 提高了英语，热心前辈的建议和指引帮我提高了翻译水平，
公司的“高压”让我有机会认识并迅速掌握正则表达式，项目经理的严格培养了我通过 Google 自学的能力，
亚马逊的书评和电子版的存在让我选择《精通正则表达式》作为学习资料……只要其中任何一个条件发生变化，
我可能都不会与正则表达式结缘。我真正能掌握的，只是掌握自己认为有价值的工具，练习自己认为有价值的技能，
学习自己认为有价值的知识。

[reg-expr]: http://www.luanxiang.org/blog/archives/1717.html

### 从《图灵的秘密》想到的

[从《图灵的秘密》想到的][turning-secret]

不过我最高兴的，还是通过阅读填补了自己知识结构中的若干鸿沟：原始的计算机都是专用于“计算”的，
后来如何转变为能做任何事情的机器？大千世界的众多信息是怎样一步步进入计算机世界里，
被表现和构建出来的？这些问题之前一直困扰着我，也找不到答案，看过这本书算是终于地摸到了答案，
这本身就值得高兴；而且，填补断层有利于把所学的知识联接为统一的有机体，以后记忆和运用起来也更自如。

从目前计算机教育的教学大纲上看，知识点似乎都覆盖了，实际情况却相差万里。
计算机科学本来是讲究“贯彻”的知识，许多看似高深或者无用的知识，其实正是问题的核心，
它隐藏在表象之下，在语言和语法之后。

与此相反，了解这些背景也是构造知识内在联接，构建整门学科图谱的重要因素；
有了丰富的内在联系，有完整的图谱，对整门学科的认知才会更深入，
也更有可能从多种方面解决复杂问题。

我想，应该要有**好的教师**，能把知识讲得深入浅出——相机上的转接环就是 Bridge 模式的应用；
要有广泛知道的**好的教材**——[《现代操作系统》][modern-os]和[《操作系统概念》][os-concepts]是
学习操作系统的必读书；还要有类似[《图灵的秘密》][the-annotated-turning]之类的书籍把学科背后
的源流梳理清楚——原来图灵关心的是可计算序列而不是可计算数，这样计算机就不只会算“数”了。

[《编码：隐匿在计算机软硬件背后的语言》][code-the-hidden-language]，
[《逻辑的引擎》][engines-of-logic]，[《复杂》][complexity]，
《图灵的秘密》

[turning-secret]: http://www.luanxiang.org/blog/archives/1396.html
[modern-os]: http://book.douban.com/subject/3852290/
[os-concepts]: http://book.douban.com/subject/2109679/
[the-annotated-turning]: http://book.douban.com/subject/10779604/
[code-the-hidden-language]: http://book.douban.com/subject/4822685/
[engines-of-logic]: http://book.douban.com/subject/1391740/
[complexity]: http://book.douban.com/subject/6749832/

### 关于程序员学英语的经验

[关于程序员学英语的经验][coders-english]

总的来说，程序员可算是英语水平比较好的群体，因为在这个行业，英文资料是最全面、
最及时，对英文资料的需求也最迫切的。

* 第一，既要看代码，也要读文档。
    + x should be not more than five, `x <= 5`;
    + x should be no more than five, `x = 5`;
    + 最近的例子来自这句话

    > But as with any web-based system, atom-based solutions trade latency for scalability,
    > making atom often inappropriate for very low-latency notifications。

    这句话之所以难翻译，问题似乎在于，除去句子的主干，之前有一个But as…，
    之后又有一个making…。然而我最后发现，对这个句子有疑问的程序员其实根本
    没搞懂 [**trade…for…**][trade-for] 的用法（翻译为“基于atom的解决方案需要权衡延迟性和扩展性”），
    如果明白它是“牺牲xx换取xx”之后，整个句子就相当好理解，也非常容易翻译了：

    > 与所有基于 web 的系统一样，基于 atom 的解决方案为追求可扩展性，增大了延迟，
    > 所以 atom 往往并不合适用对延迟要求极低的提示。

* 第二，注意读音。
    + 解决这个问题有一个非常好的办法，就是学习美国大学的公开课，耶鲁、斯坦福等学校的计算机系都
      放出了许多高质量的公开课，学习其中的一些精品课程，不但能夯实基础，还能顺带学会许多每天都要遇到，
      但不会或者读错的术语。
* 第三，锻炼英文表达。
    + recognizable, usable words
    + 即便答案近在咫尺（输入正确的关键词，Google 的第一条结果就是答案），
      但程序员就是一筹莫展——因为他不知道计算机的“嘟嘟”声是 `beep`，
      不知道搜“多线程”资料应该用 `concurrency`，也不知道
        - “死机”是 `system halt`，
        - “黑屏”是 `blank screen`，
        - “（登录时）不停返回”是 `infinite loop`……
    + 要解决这个问题，最好的办法是在阅读资料时多用心，记住这些说法；
      另一方面，没事的时候多浏览 stackoverflow 之类的网站，不要因为问题与自己无关而忽略，
      多留心这些问题到底是什么，是如何表达的。这样，在自己遇到问题时，才能迅速找到可能的解决方案，节省时间。

[coders-english]: http://www.luanxiang.org/blog/archives/1236.html
[trade-for]: http://dict.youdao.com/search?q=trade+for&keyfrom=dict.index

随便翻翻 04
-----------

###  5分钟让你 get 100 个 TED points!

[5分钟让你get 100个 TED points!][5-min-ted]

1.  A lot of people aspire to be productive so they can become happier, but
    happiness has been shown to lead to productivity, not the other way around.
2.  You have three brain systems for love: lust, romantic love, and attachment. To
    develop more intimate relationships with your significant other, it’s important
    to invest in all three.
3.  Taking time off can make you a lot more productive, because time away from your
    work lets you explore, reflect, and come up with better ideas.

### 看剧学英语之《是，大臣》

[看剧学英语之《是，大臣》][american-tv-show-to-learn-language]

这剧很有年头了,从 1980 年到 1984 年，共播出三季，每季7集。续集《是，首相》，两季，每季 8 集，
在 1986 至 1988 年播出。上下两部之外，还另有一部圣诞特别篇。总共有38集。
也就是说，播完的时候，很多人还没有出生。

但不妨碍这部剧对英国的影响，当年，这部剧获奖无数，甚至被撒切尔夫人点名表扬，
后世首相（包括现任卡梅隆）都对其交口称赞，说其揭露了英国政坛的种种弊端。

那为什么扯这个剧呢，原因只有一个，这里面的英语实在是。。。太美了。
《是，大臣》的演员说话不仅仅字正腔圆，而且一开口就是典故文章，各种高级词汇，
以至于网上的观众将其称为 **GRE例句大全**。也就是说，里面的句子，**只要记住了，
稍微改一改，就可以直接当GRE的范文**。

### They never forget: The strange gift of perfect 记忆

[They never forget: The strange gift of perfect记忆][perfect-memory]

### 【美好肉体】Crossfit女神 Jennifer Selter

[【美好肉体】Crossfit女神Jennifer Selter][health]

![Crossfit][health-01]

### Jiro Dreams of Sushi | 寿司之神

[Jiro Dreams of Sushi | 寿司之神中文配音版][sushi]

我不是吃货，但看上去确实很棒。
对待食物很虔诚，做得很用心，过程很艰辛。

### 四轴飞行器 | DIY小组 | 果壳

[四轴飞行器 | DIY小组 | 果壳][quad-rotor]

![quad rotor][quad-rotor-pic]

### 学习是一种能力

[学习是一种能力][study-as-an-ability]

There are good study references, leave for later reading, make note here

[从我给别人讲这个题中，我所体会到的，是人们是 **多么容易被暗示，去做毫无道理，其实戳穿后原理非常简单的事情**。我想我也是一样容易被忽悠的。所以咱们都别太自信自己是正确的，哪怕看来是一目了然的事情。另外，就是多学习些知识还是有用的。虽然人生而蒙昧，但是多学一点，就少一点被忽悠的可能。](http://www.douban.com/note/329437118/)

学习新技术的 10 个建议

:   #. 克服惰性(Overcoming Inertia)
    #. 关注大牛(Watch the Pros)
    #. 建立知识网(Let the Information Flow Begin)
    #. 多听多看(Listen and Watch)
    #. 行动起来(Time for Action)
    #. 写博客(Blogging)
    #. 感受技术的脉搏(Feel the Pulse)
    #. 参加聚会以及会议(Meetups and Conferences)
    #. 拥抱GitHub
    #. 专注学习(Concentrated Learning)

But we should always keep in mind: **from Internet, we can get the newest
staff; but from good books, we can get things systemly, and in a short time.**

Dont waste too much time, surfing (constant searching but no answer) the internet.

### 25 Celebrities Who Share An Uncanny Resemblance

[25 Celebrities Who Share An Uncanny Resemblance][25-celebrities]

作为一个中国人，觉得这差距还是挺大的。或许是由于[异族效应][other-face-effect]

![Carlos Jackie][carlos-jackie]

### 芙蓉姐姐

[芙蓉姐姐][lady-furong]

芙蓉姐姐 2005 年与一名研究生小男友在一起，但分手多年后，芙蓉一直放不下这段感情。
更得知其已经结婚，在看到他与新娘的婚纱照后，常常以泪洗面。恰巧在 2012 年 9 月 18 日，
芙蓉向一位暗恋许久的男生表白，却被对方拒绝，更是情绪受挫。回想到自己到北京发展 10 年中，
自己一个人打拼，转眼已经 35 岁，但依旧没有找到感情归宿，而且不能得到外界的认可。

[5-min-ted]: http://www.guokr.com/post/526120/
[american-tv-show-to-learn-language]: http://www.guokr.com/post/588807/
[perfect-memory]: http://www.guokr.com/post/322249/
[health]: http://www.guokr.com/post/540404/
[quad-rotor]: http://www.guokr.com/post/400769/?_block=post_quality&_pos=1&rkey=b1356ddf
[quad-rotor-pic]: http://gnat-tang-shared-image.qiniudn.com/2014/05/quad-rotor.png
[health-01]: http://gnat-tang-shared-image.qiniudn.com/pictures/good-girl.gif
[sushi]: http://v.youku.com/v_show/id_XNjgwNjc0MDk2.html
[study-as-an-ability]: http://www.douban.com/doulist/1863484/
[carlos-jackie]: http://gnat-tang-shared-image.qiniudn.com/pictures/jackie-chan.png
[other-face-effect]: http://baike.baidu.com/view/8966554.htm?fr=aladdin
[25-celebrities]: http://list25.com/25-celebrities-who-share-an-uncanny-resemblance/
[lady-furong]: http://baike.baidu.com/view/3800.htm

Math List 01
------------

### Variable (mathematics)

In elementary mathematics, a [variable][variable-math] is **an alphabetic character**
representing a number which is either arbitrary or **not fully specified** or
**unknown**. Making algebraic computations with variables as if they were
explicit numbers allows one to solve a range of problems in a single
computation. A typical example is **the quadratic formula**（二项式）, which
allows to solve every quadratic equation by simply substituting the numeric
values of the coefficients of the given equation to the variables that
represent them.

The concept of variable is also fundamental in calculus. Typically, a
**function y = f(x) involves two variables**, its argument x and its value y.
The term "variable" comes from the fact that, when the argument (also called
the "**variable of the function**") varies, then the value varies accordingly.

In more advanced mathematics, a variable is simply **a symbol representing some
data**, which is commonly a number, but may also be any mathematical object
such as a vector, a matrix or even a function. In this case, the original
property of "variability" of a variable is not kept (except, sometimes, for
informal explanations).

Similarly, in computer science, a variable is a name (commonly an alphabetic
character or a word) representing some value represented in computer memory. In
mathematical logic, a variable is either a symbol representing an unspecified
term of the theory, or a basic object of the theory, which is manipulated
without referring to its possible intuitive interpretation.

Here are other specific names for variables.

:   * A **unknown** is a variable in which an equation has to be solved for.
    * An **indeterminate** (like ![][indeterminate-pic]) is a symbol, commonly called
      variable, that appears in a polynomial or a formal power series. Formally
      speaking, an indeterminate is not a variable, but a constant in the polynomial
      ring of the ring of formal power series. However, because of the strong
      relationship between polynomials or power series and the functions that they
      define, many authors consider indeterminates as a special kind of variables.
    * A parameter is a quantity (usually a number) which is a part of the input of a
      problem, and remains constant during the whole solution of this problem. For
      example, in mechanics the mass and the size of a solid body are parameters for
      the study of its movement. It should be noted that in computer science,
      parameter has a different meaning and denotes an argument of a function.
    * **Free variables and bound variables**
        + A random variable is a kind of variable that is used in probability theory and its applications.

Other notational usages. Some of the most common usages: (大赞!!!)

```plain
a, b, c, and d (sometimes extended to e and f) often represent parameters or coefficients.
a0, a1, a2, ... play a similar role, when otherwise too many different letters would be needed.
ai or ui is often used to denote the i-th term of a sequence or the i-th coefficient of a series.
f and g (sometimes h) commonly denote functions.
i, j, and k (sometimes l or h) are often used to denote varying integers or indices in an indexed family.
l and w are often used to represent the length and width of a figure.
n usually denotes a fixed integer, such as a count of objects or the degree of an equation.
When two integers are needed, for example for the dimensions of a matrix, one uses commonly m and n.
p often denotes a prime numbers or a probability.
q often denotes a prime power or a quotient
r often denotes a remainder.
x, y and z usually denote the three Cartesian coordinates of a point in Euclidean geometry. By extension, they are used to name the corresponding axes.
z typically denotes a complex number, or, in statistics, a normal random variable.
α, β, γ, θ and φ commonly denote angle measures.
ε usually represents an arbitrarily small positive number.
ε and δ commonly denote two small positives.
λ is used for eigenvalues.
σ often denotes a sum, or, in statistics, the standard deviation.
```

[variable-math]: https://en.wikipedia.org/wiki/Variable_(mathematics)
[indeterminate-pic]: http://mathworld.wolfram.com/images/equations/Indeterminate/NumberedEquation1.gif

### Constant (mathematics)

[Constant (mathematics)][constant]

Notable mathematical constants

:   * `0 (zero)`.
    * `1 (one)`, the natural number after zero.
    * `π (pi)`, the ratio of a circle's circumference to its diameter
    * `e`, approximately equal to 2.718281828459045235360287...
    * `i`, the imaginary unit such that i2 = -1.
    * `Square root of 2`
    * `φ (golden ratio)`, ≈1.618, or algebraically ![][golden-ratio-eq]

[golden-ratio-eq]: http://latex.codecogs.com/png.latex?\frac{1+\sqrt{5}}{2}
[constant]: https://en.wikipedia.org/wiki/Constant_(mathematics)

### Mathematical notation

[Mathematical notation][mathematical-notation]

Modern notation

:   The 18th and 19th centuries saw the creation and standardization of
    mathematical notation as used today. [Euler][leonhard-euler] was responsible
    for many of the notations in use today: the use of `a, b, c` for constants and
    `x, y, z` for unknowns, `e` for the base of the natural logarithm, `sigma (Σ)`
    for summation, `i` for the imaginary unit, and the `functional notation f(x)`.
    He also popularized the use of `π` for Archimedes constant (due to William
    Jones' proposal for the use of π in this way based on the earlier notation of
    William Oughtred). Many fields of mathematics bear the imprint of their
    creators for notation: the differential operator is due to Leibniz, the
    cardinal infinities to Georg Cantor (in addition to `the lemniscate (∞)` of
    John Wallis), `the congruence symbol (≡)` to Gauss, and so forth.

Computerized notation

:   TeX, LaTex, etc

注：尤其值得一提的是莱布尼茨（Leibniz）的一套符号。如微分表示 df/dx。

扩展阅读：

* [Latin alphabet][latin-alphabet]
* [List of mathematical symbols][mathematical-symbols]
* [Latin letters used in mathematics][latin-math]
* [Modern Arabic mathematical notation][modern-arabic-math]

[mathematical-notation]: https://en.wikipedia.org/wiki/Mathematical_notation
[leonhard-euler]: https://en.wikipedia.org/wiki/Euler
[latin-math]: https://en.wikipedia.org/wiki/Latin_letters_used_in_mathematics
[modern-arabic-math]: https://en.wikipedia.org/wiki/Modern_Arabic_mathematical_notation
[latin-alphabet]: https://en.wikipedia.org/wiki/Latin_alphabet
[mathematical-symbols]: https://en.wikipedia.org/wiki/Math_symbols

### Bijection

<div class="tzx-fright">
![bijection][bijection-pic]
</div>

[Bijection][bijection]

In mathematics, a bijection (or bijective function or **one-to-one
correspondence**) is a function between the elements of two sets, where every
element of one set is paired with exactly one element of the other set, and
every element of the other set is paired with exactly one element of the first
set. There are no unpaired elements. In formal mathematical terms, a bijective
function f: X → Y is a one to one and onto mapping of a set X to a set Y.

A bijection from the set X to the set Y has an inverse function from Y to X. If
X and Y are finite sets, then the existence of a bijection means they have the
same number of elements. For infinite sets the picture is more complicated,
leading to the concept of [cardinal number][cardinal-numbers] (基数), a way to
distinguish the various sizes of infinite sets.

A bijective function from a set to itself is also called a **permutation** (置换).

Bijective functions are essential to many areas of mathematics including the
definitions of isomorphism, homeomorphism, diffeomorphism, permutation group,
and projective map.

[bijection]: http://en.wikipedia.org/wiki/Bijective
[bijection-pic]: http://gnat-tang-shared-image.qiniudn.com/math/bijection.png
[cardinal-numbers]: http://en.wikipedia.org/wiki/Cardinal_number

### Isomorphism

[Isomorphism][isomorphism-en] | [同态][isomorphism-zh]

英文的完全没有看懂。。。。中文的也够呛

抽象代数中，同态是两个代数结构（例如群、环、或者向量空间）之间的 **保持结构不变** 的映射。
英文的同态 （homomorphism）来自希腊语: ὁμός (homos)表示"相同"而 μορφή (morphe)表示"形态"。
注意相似的词根 ὅμοιος (homoios)表示"相似"出现在另一个数学概念同胚的英文(homeomorphism)中。

注：在 Peter D. Lax 的 [线性代数][algebra-lax] 中，对 Isomorphism 定义大致是说
，两个线性空间（Linear Space）如果在操作上不可区分（Indistinguishable by means
of operations available in linear spaces），则称他们为 Isomorphism。这个定义就
很容易理解。这也就是说，“同态”是相对操作而言的。（我们都是中国人，这个意义上我
们“同”；但你是女生我是男生，这个意义上我们“不同”。）

[isomorphism-en]: http://en.wikipedia.org/wiki/Isomorphism
[isomorphism-zh]: http://zh.wikipedia.org/wiki/%E5%90%8C%E6%80%81
[algebra-lax]: http://book.douban.com/subject/2883844/

### Parallelepiped

<div class="tzx-fright">
![parallel piped][parallelepiped-pic]
</div>

[Parallelepiped][parallelepiped]

In geometry, a parallelepiped is a three-dimensional figure formed by six
**parallelograms** (the term rhomboid is also sometimes used with this
meaning). By analogy, it relates to a parallelogram just as a cube relates to a
square or as a cuboid to a rectangle. In Euclidean geometry, its definition
encompasses all four concepts (i.e., parallelepiped, parallelogram, cube, and
square). In this context of affine geometry, in which angles are not
differentiated, its definition admits only parallelograms and parallelepipeds.
Three equivalent definitions of parallelepiped are

* a polyhedron with six faces (**hexahedron**), each of which is a parallelogram,
* a hexahedron with three pairs of parallel faces, and
* a **prism** of which the base is a parallelogram.

The rectangular cuboid (six rectangular faces), cube (six square faces), and
the rhombohedron (six rhombus faces) are all specific cases of parallelepiped.

"Parallelepiped" is now usually pronounced /ˌpærəlɛlɨˈpɪpɛd/,
/ˌpærəlɛlɨˈpaɪpɛd/, or /-pɨd/; traditionally it was /ˌpærəlɛlˈɛpɨpɛd/
parr-ə-lel-ep-i-ped in accordance with its etymology in Greek
παραλληλ-επίπεδον, a body "having parallel planes".

Parallelepipeds are a subclass of the **prismatoids** (a polyhedron that has
all of its vertices in two parallel planes).

[parallelepiped]: http://en.wikipedia.org/wiki/Parallelepiped
[parallelepiped-pic]: http://gnat-tang-shared-image.qiniudn.com/math/parallelepiped.png

### Theorem

[Theorem][theorem-en] | [定理][theorem-zh]

定理

:   定理（英语：Theorem）是經過受邏輯限制的證明為真的陈述。
    一般來說，在數學中，只有重要或有趣的陳述才叫定理。
    證明定理是數學的中心活動。一个定理陈述一个给定类的所有（全称）元素一种不变的关系，
    这些元素可以是无穷多，它们在任何时刻都无区别地成立，而没有一个例外。
    （例如：某些a是x，某些a是y，就不能算是定理）。

猜想

:   是相信為真但未被證明的數學敘述，或者叫做命题，當它經過證明後便是定理。
    猜想是定理的來源，但並非唯一來源。一個從其他定理引伸出來的數學敘述可以不經過成為猜想的過程，成為定理。

如上所述，定理需要某些邏輯框架，繼而形成一套公理（公理系統）。
同時，一個推理的過程，容許從公理中引出新定理和其他之前發現的定理。

在命題邏輯，所有已證明的敘述都稱為定理。

扩展阅读：

* [Fermat's Last Law | Le dernier théorème de Fermat | 费马大定理][fermats-last-law]

[theorem-en]: http://en.wikipedia.org/wiki/Theorem
[theorem-zh]: http://zh.wikipedia.org/wiki/%E5%AE%9A%E7%90%86
[fermats-last-law]: http://en.wikipedia.org/wiki/Fermat%27s_Last_Theorem

### Probability mass function

[Probability mass function][probability-mass-function]

通常表示为 pmf or p.m.f.

与 pdf （probability density function）不同的是，pmf 讨论的是离散量。参见下一条。

[probability-mass-function]: https://en.wikipedia.org/wiki/Probability_mass_function

### Probability distribution

[Probability distribution][p.d.f]

对比：

* Probability density, Probability density function, `p.d.f`: most often reserved for continuous random variables.
* Probability mass, Probability mass function, `p.m.f.`: for discrete random variables.

[p.d.f]: https://en.wikipedia.org/wiki/Probability_distribution

### Lemniscate

[Lemniscate][lemniscate]

八字形

![lemniscate][lemniscate-pic]

[lemniscate]: http://mathworld.wolfram.com/Lemniscate.html
[lemniscate-pic]: http://mathworld.wolfram.com/images/eps-gif/Lemniscate_1000.gif

### Galois theory

[Galois theory][galois]

In mathematics, more specifically in abstract algebra, Galois theory, named
after Évariste Galois, provides **a connection between field theory and group
theory**. Using Galois theory, certain problems in field theory can be reduced
to group theory, which is in some sense simpler and better understood.

Originally, Galois used permutation groups to describe how the various roots of
a given polynomial equation are related to each other. The modern approach to
Galois theory, developed by Richard Dedekind, Leopold Kronecker and Emil Artin,
among others, involves studying automorphisms of field extensions.

Further abstraction of Galois theory is achieved by the theory of Galois connections.

举例：

1.  对 Quadric Equation the Galois group of the polynomial x2 − 4x + 1 consists of
    two permutations: the identity permutation which leaves A and B untouched, and
    the transposition permutation which exchanges A and B. It is **a cyclic group
    of order two**, and therefore **isomorphic to Z/2Z**.
2.  Consider the polynomial: ![][exponent-four-pic] the Galois group is isomorphic
    to the **Klein four-group**.

[galois]: https://en.wikipedia.org/wiki/Galois_theory
[exponent-four-pic]: https://upload.wikimedia.org/math/e/9/7/e97943ecd808133750808ddca289d69d.png

### Congruent

[Congruent][congruent]

举例 1：全等三角形（They are congruent）

:   ![][congruent-pic]

[congruent-pic]: http://upload.wikimedia.org/wikipedia/commons/0/09/Congruence_en.gif

举例 2：在线性代数中

:   一个形如 `(x1, x2, ..., xn)` 的向量 v1，一个形如 `(0, y2, ..., yn)` v2，
    如果 v1 的 x1 恰好为 0，那么他们 Congruent。

[congruent]: http://en.wikipedia.org/wiki/Congruence_(geometry)

### Quotient Space

[Quotient Space][quotient-space]

问题引入

:   If two vectors v1, v2 in Linear Space X are congruent modulo Y (a linear
    subspace of X), then v1, v2 and all other vectors congruent with them form a
    linear space, denoted by X/Y or X mod Y. （我写的，没有语法错误把？）

再看一下，其实 X/Y 表示的是线性空间 X 里面的向量投影到线性空间 Y 后相等（或者说 Congruent）。
比如二维平面 x-y，用 （x，y）表示。（x，0）表示所有 y 为 0 的向量集合，显然也是一个线性空间。
则 （x，y）/（x，0）这个 Quotient Space 里的（2, 2） 和（2, 8）一样（因为投影把 y 方向的信息忽略了）。

In linear algebra, the quotient of a vector space V by a subspace N is a vector
space obtained by "collapsing" N to zero. The space obtained is called a
quotient space and is denoted V/N (read V mod N or V by N).

mod: [modulo][modulo]

两个例子

:   Let X = R2 be the standard Cartesian plane, and let Y be a line through the
    origin in X. Then the quotient space X/Y can be identified with the space of
    all lines in X which are parallel to Y. That is to say that, the elements of
    the set X/Y are lines in X parallel to Y. This gives one way in which to
    visualize quotient spaces geometrically. （X 二维平面，Y 面上的一条直线（dim Y
    还是 2），然后 X/Y 是所有的平行于那条直线的向量）

Another example is the quotient of Rn by the subspace spanned by the first m
standard basis vectors. The space Rn consists of all n-tuples of real numbers
(x1,…,xn). The subspace, identified with Rm, consists of all n-tuples such that
the last n-m entries are zero: (x1,…,xm,0,0,…,0). Two vectors of Rn are in the
same congruence class modulo the subspace if and only if they are identical in
the last n−m coordinates. The quotient space Rn/ Rm is isomorphic to Rn−m in an
obvious manner.

V 是 U，W 的 Direct Sum，然后有

* dim V = dim U + dim V，以及
* U = V/W

[quotient-space]: https://en.wikipedia.org/wiki/Quotient_space_(linear_algebra)
[modulo]: https://en.wikipedia.org/wiki/Modulo_operation

### Prime -- Symbol

[Prime -- Symbol][prime-symbol]

The prime symbol ( ′ ), double prime symbol ( ″ ), and triple prime symbol ( ‴
), etc., are used to designate several different units and for various other
purposes in mathematics, the sciences, linguistics and music. The prime symbol
should not be confused with the **apostrophe** （就是英文单引号 `'`）, single
quotation mark, acute accent, or grave accent; the double prime symbol should
not be confused with the double quotation mark（`"`）, the [ditto
mark][ditto-mark], or the letter double apostrophe. The prime symbol is very
similar to the [Hebrew][hebrew] [geresh][geresh], but in modern fonts the
geresh is designed to be aligned with the Hebrew letters and the prime symbol
not, so they should not be interchanged.

比如求导，f′ 中文读作 “艾弗撇”，英文对应为 “ef prime”（我觉得 f' 也挺好的。。。f apostrophe），
如果用 Leibniz 的表示法 df/dx，读作 “dee ef over dee eks”。

P.S. 曾经弄键盘布局的时候差不多把各种标点符号的英文都摸了个清（所以才有 [Neo-Extended Programmer Dvorak][neo-dvpe]）

[prime-symbol]: https://en.wikipedia.org/wiki/Prime_(symbol)
[ditto-mark]: https://en.wikipedia.org/wiki/Ditto_mark
[neo-dvpe]: post-0006-why-emacs-users-favor-dvorak.html
[hebrew]: https://en.wikipedia.org/wiki/Hebrew_alphabet
[geresh]: https://en.wikipedia.org/wiki/Geresh

### ∂

[∂][dee]

The character ∂($\partial$) (html element: `&#8706;`{.html} or `&part;`{.html}, unicode: `U+2202`{.html}) or
![][big-partial] is `a stylized d` mainly used as a mathematical symbol to
denote a partial derivative such as $\frac{\partial z}{\partial x}$ (read as "the partial derivative
of z with respect to x"). The symbol was originally introduced by
[Legendre][legendre] in 1786, but only gained popularity when it was used by
[Jacobi][jacobi] in 1841.

∂ is also used to denote the following:

* The Jacobian, $\frac{\partial (x,y,z)}{\partial (u,v,w)}$
* The boundary of a set in topology. （比如 Manifold of M is denoted as ∂M）
* The boundary operator on a chain complex in homological algebra.
* The boundary operator of a differential graded algebra.
* The Dolbeault operator on complex differential forms.

The symbol may be referred to as "**del**", "**dee**", "**partial dee**", or "**partial**". （读法）

[dee]: https://en.wikipedia.org/wiki/%E2%88%82
[dz-dx]: https://upload.wikimedia.org/math/4/3/9/439fa44e8adcd80b72eded7c72f8d9b1.png
[jacobian-xyz-uvw]: https://upload.wikimedia.org/math/a/1/e/a1ebc9553ef3630ce3bf2dc9209ae462.png
[big-partial]: https://upload.wikimedia.org/math/5/2/c/52cc749bb1c32abf1dccf613bd847a6e.png
[legendre]: https://en.wikipedia.org/wiki/Adrien-Marie_Legendre
[jacobi]: https://en.wikipedia.org/wiki/Carl_Gustav_Jacob_Jacobi

### Annihilator

[Annihilator][annihilator]

![annihilator][annihilator-pic]

维基百科：[Annihilator][annihilator-wiki]

（我去。。。上次弄的这个图片把我自己吓一跳。。。）
这是一个互相（Mutual）的说法。x，y annihilate 如果它们的 Scalar Product（x，y）= 0。

[annihilator]: http://dictionary.reference.com/browse/annihilator?s=ts
[annihilator-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/annihilator.png
[annihilator-wiki]: https://en.wikipedia.org/wiki/Faithful_module#Definitions

### Euclidean Space

[Euclidean Space][euclidean-space]

极度规范的一个线性空间，其 Base Vectors 规范正交（~~Orthogonal~~ Orthonormal）。
还引入了 Euclidean Structure 这种运算规则。

Euclidean Structure 在线性空间的基础上定义了向量的 Inner Product（内积），
也叫 Dot Product，Scalar Product。引入了 Norm 的概念，这样就能定义一个向量的长度（Norm，模），
这个空间也就有个测度（Metric）。

[euclidean-space]: https://en.wikipedia.org/wiki/Euclidean_space

Words List 07 08 09
-------------------

### 超实数

[超实数][superreal-numbers]

超实数系统是为了严格处理无穷量（无穷大量和无穷小量）而提出的。自从微积分的发明以来，
数学家、科学家和工程师等（包括牛顿和莱布尼兹在内）就一直广泛地用**无穷小量**等概念。
超实数集，或称为非标准实数集，记为 * ℝ，是实数集 ℝ 的一个扩张；

[superreal-numbers]: http://zh.wikipedia.org/wiki/%E8%B6%85%E5%AE%9E%E6%95%B0_(%E9%9D%9E%E6%A0%87%E5%87%86%E5%88%86%E6%9E%90)

See also

* [Superreal Number (Wikipedia-en)](https://en.wikipedia.org/wiki/Superreal_number)

### Manifold

[Manifold][manifold]

![Manifold](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2d/BoysSurfaceTopView.PNG/220px-BoysSurfaceTopView.PNG)

中文居然翻译成 “[流形][manifold-wiki-zh]”。。。微积分用 Manifold 说就是（一个公式概括微积分）：

![Stokes' Theorem](https://upload.wikimedia.org/math/2/1/6/216f8d275203f20027c481b439cd6916.png)

$$\int_{\partial \Omega}\omega=\int_\Omega \mathrm {d}\omega.$$

这里的 $\Omega$，$\partial\Omega$ 都是 Manifold，后者是前者的边界。

See also

* [Stokes' Theorem 斯托克斯定理](https://en.wikipedia.org/wiki/Stokes%27_theorem)
* [Exterior derivative 外微分](https://en.wikipedia.org/wiki/Exterior_derivative)

[manifold]: https://en.wikipedia.org/wiki/Manifold
[manifold-wiki-zh]: https://zh.wikipedia.org/wiki/流形

### UTF-8

[UTF-8][utf-8] without BOM

The Internationally defined Standard ISO/IEC 10646, Universal Character Set
(UCS) know as UTF-8 (**Universal Character Set** + **Transformation
Format**—8-bit) is a variable-width encoding that can represent every character
in the Unicode character set. It was designed for backward
compatibility（后向兼容） with ASCII and to avoid the complications（ 并发症）
of endianness（字节顺序） and byte order marks in UTF-16 and UTF-32.

UTF-8 has become the dominant character encoding for the World Wide Web,
accounting for more than half of all Web pages. The Internet Mail Consortium
(IMC) recommends that all e-mail programs be able to display and create mail
using UTF-8. The W3C recommends UTF-8 as default encoding in their main
standards (XML and HTML).

The official IANA code for the UTF-8 character encoding is UTF-8.

The `UTF-8 BOM` is a sequence of bytes (EF BB BF) that allows the reader to
identify the file as an UTF-8 file.

Normally, the BOM is used to signal the endianness of the encoding, but since
endianness is irrelevant to UTF-8, the BOM is **unnecessary**.

According to the Unicode standard, the BOM for UTF-8 files is not recommended:

P.S. GitHub 上新建的文档都是 `UTF-8 without BOM` 编码；
Windows 系统上用记事本新建的文档都是 ANSI 编码（微软自家用）。
建议使用 `UTF-8 without BOM`

Notes

* `the International Organization for Standardization` (ISO)
* `the International Electrotechnical Commission` (IEC)
* `Byte Order Mark` (BOM)
* `Internet Assigned Numbers Authority` (IANA)  互联网号码分配局

Refs

* [What's different between utf-8 and utf-8 without BOM?](http://stackoverflow.com/questions/2223882/whats-different-between-utf-8-and-utf-8-without-bom)

See also

* [阮一峰：字符编码笔记：ASCII，Unicode和UTF-8](http://www.ruanyifeng.com/blog/2007/10/ascii_unicode_and_utf-8.html)
* [阮一峰：utf-8编码已经成为主流](http://www.ruanyifeng.com/blog/2008/05/growth_of_utf-8_on_the_web.html)

[utf-8]: https://en.wikipedia.org/wiki/UTF-8

### Mutatis Mutandis

[Mutatis Mutandis][mutatis-mutandis]

Mutatis mutandis is a Latin phrase meaning "**changing [only] those things
which need to be changed**" or more simply "[only] the necessary changes having
been made".

The phrase carries the connotation that the reader should **pay attention to
differences between the current statement and a previous one, although they are
analogous**. (For example, in writing about appropriate forms of dress in
biblical times, the New Testament generally refers to females in considering
immodesty and extravagance in dress; but, analogously, the same can be applied,
mutatis mutandis ["**changing only those things which need to be changed**,"
namely, the sex of the person referred to], to men also.) It can be understood
as meaning "acknowledging the difference between the two" or (more
succinctly（简便地）) as "acknowledging differences". This term is used
frequently in economics, philosophy, logic, and law, to parameterize a
statement with a new term, or note the application of an implied, mutually
understood set of changes. The phrase is also used in the study of
counter-factuals, wherein the requisite change in the factual basis of the past
is made and the resulting causalities are followed.

用中文说大意是：接下来有个例子差不多（但还是差一点，要注意哦）

（这个“哦”显得有点娘炮。。。但是 That's it）

see also

* [A fortiori](https://en.wikipedia.org/wiki/A_fortiori_argument)

[mutatis-mutandis]: https://en.wikipedia.org/wiki/Mutatis_mutandis

### M3U

[M3U][m3u]

M3U is a computer file format that contains multimedia playlists. It originally
was designed for audio files, such as MP3, but various software now uses it to
play video file lists. M3U's can also point a media player to an online
streaming audio source. Numerous media players and software applications
supports the M3U file format.

这个真牛逼。。。用这个可以管理自己的视频文档。不管存在哪，维护一个文档列表，
要看的时候把它（你整理的视频目录） copy 出一个 M3U 文件就行。
比各种不同视频播放器的 Playlist 强（兼容性！！！）

我在 Gist 上的 M3U 笔记：[M3U 记录][m3u-gist]

外，这个 M3U 文档，另存下来，用播放器打开，就能看：

* [人为什么活着（优酷）][why-you-live]

其实大家以后分享视屏，可以分享一个 M3U 文件，而不是优酷链接（还不用看广告了）

[why-you-live]: https://gist.githubusercontent.com/district10/a982f999a7e853d3ca1b/raw/a6977b598d45475e140ba5f74e1101c1f9bb1c62/人为什么活着.m3u
[m3u]: https://en.wikipedia.org/wiki/M3U
[m3u-gist]: https://gist.github.com/district10/a982f999a7e853d3ca1b

### Phonetics

[Phonetics][phonetics] 语音学

[phonetics]: https://en.wikipedia.org/wiki/Phonetics

### AMS - American Mathematical Society

[AMS - American Mathematical Society][ams]

The **American Mathematical Society (AMS)** is an association of professional
mathematicians dedicated to the interests of mathematical research and
scholarship, and serves the national and international community through its
publications, meetings, advocacy（辩护） and other programs.

The society is one of the four parts of the **Joint Policy Board for
Mathematics (JPBM)** and a member of the **Conference Board of the Mathematical
Sciences (CBMS)**.

The AMS was an early advocate of the typesetting program TeX, requiring that
contributions be written in it and producing its own packages
[AMS-TeX][ams-tex] and [AMS-LaTeX][aml-latex]. TeX and LaTeX are now
ubiquitous（无所不在的） in mathematical publishing.

[ams]: https://en.wikipedia.org/wiki/American_Mathematical_Society
[ams-tex]: https://en.wikipedia.org/wiki/AMS-TeX
[aml-latex]: https://en.wikipedia.org/wiki/AMS-LaTeX

### Hash Mark

[Hash Mark][hash-mark]

Hash marks are short lines, running perpendicular to sidelines or sideboards,
used to mark locations, primarily in sports.

![Hash Mark](https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/KentAkron_%28cropped%29.jpg/300px-KentAkron_%28cropped%29.jpg)

[hash-mark]: https://en.wikipedia.org/wiki/Hash_marks

### Number Sign

[Number Sign][number-sign]

Number sign is a name for the symbol `#`, which is used for a variety of
purposes, including (mainly in the United States) the designation（指示） of a
number (for example, "#1" stands for "number one"). In recent years, it has
been used for "hashtagging" on social media websites.

The term number sign is most commonly used when the symbol is used before a
number. In the United States, it is sometimes known as the **pound sign**, and
has been traditionally used in the food industry as an abbreviation for pounds
avoirdupois（常衡）. Outside of North America the symbol is called hash and the
corresponding telephone key is called the "**hash key**" (and the term "pound
sign" usually describes the British currency symbol "£"). The symbol is defined
in Unicode as `U+0023` # number sign (HTML: # as in ASCII).

The symbol may be confused with the musical symbol called **sharp (♯)**. In
both symbols, there are two pairs of parallel lines. The main difference is
that the number sign has two horizontal strokes while the sharp sign has two
slanted parallel lines which must rise from left to right, in order to avoid
being obscured by the horizontal musical staff lines.

[number-sign]: https://en.wikipedia.org/wiki/Number_sign

### Exclamation Mark

[Exclamation Mark][exclamation-mark]

The exclamation mark or exclamation point is a punctuation mark usually used
after an interjection or exclamation to indicate strong feelings or high volume
(shouting), and often marks the end of a sentence. Example: “Watch out!”
Similarly, a bare exclamation mark (with nothing before or after) is often used
in warning signs.

The mark can also be used at the beginning of a word instead of at the end. For
example, several computer languages use "!" for logical negation; e.g. "!A"
means "the logical negation of A", also called "not A". There are many other
specialized uses of this mark, such as in mathematics where it denotes the
factorial operation.

In the Geek Code version 3, "!" is used before a letter to denote that the geek
refuses to participate in the topic at hand. In some cases, it has an alternate
meaning, such as G! denoting a geek of no qualifications, !d denoting not
wearing any clothes, P! denoting not being allowed to use Perl, and so on. They
all share some negative connotations however.

[exclamation-mark]: https://en.wikipedia.org/wiki/Exclamation_mark

### Hashtag

[Hashtag][hashtag]

A hashtag is a word or an unspaced phrase prefixed with the number sign ("#").
It is a form of **metadata tag**. Words in messages on microblogging and social
networking services such as Twitter, Facebook, Google+, VK or Instagram may be
tagged by putting "#" before them, either as they appear in a sentence, (e.g.,
"New artists announced for #SXSW2014 Music Festival") or appended to it. The
term "hashtag" can also refer to the hash symbol itself when used within the
context of reciting a hashtag.

Hashtags make it possible to group such messages, since one can search for the
hashtag and get the set of messages that contain it. A hashtag is only
connected to a specific medium and can therefore not be linked and connected to
pictures or messages from different platforms.

Because of its widespread use, the word was added to the Oxford English
Dictionary in June 2014.

Notes

* 新浪微博使用 `#tag#`，而不是 `#tag`，这和中文的特殊性有关。

See also

* [Tag (metadata)][tag-metadata]

[tag-metadata]: https://en.wikipedia.org/wiki/Tag_(metadata)
[hashtag]: https://en.wikipedia.org/wiki/Hashtag

[Render unto Caeser...][render-unto-caeser]

"Render unto Caesar" is the beginning of a phrase attributed to Jesus in the
synoptic （对观福音书的）gospels（福音书）, which reads in full, "**Render unto
Caesar the things that are Caesar's, and unto God the things that are God's**"
(Ἀπόδοτε οὖν τὰ Καίσαρος Καίσαρι καὶ τὰ τοῦ Θεοῦ τῷ Θεῷ)

This phrase has become a widely quoted **summary of the relationship between
Christianity and secular（世俗） authority**. The original message, coming in
response to a question of ***whether it was lawful for Jews to pay taxes to
Caesar***, gives rise to multiple possible interpretations about the
circumstances under which it is desirable for the Christian to submit to
earthly authority.

[render-unto-caeser]: http://en.wikipedia.org/wiki/Render_unto_Caesar

### CSL

[CSL][csl]

[csl]: http://en.wikipedia.org/wiki/CSL

### YAML

[YAML][yaml]

[yaml]: http://en.wikipedia.org/wiki/YAML

### CDN

[CDN]

[CDN]: http://en.wikipedia.org/wiki/Content_delivery_network

### Chi Rho

[Chi Rho]

* <http://en.wikipedia.org/wiki/Book:Typographical_symbols>
* <http://en.wikipedia.org/wiki/Category:Typographical_symbols>
* [Hyperbolic function - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Hyperbolic_function)
* [Chi-squared distribution - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Chi-squared_distribution)

[Chi Rho](http://en.wikipedia.org/wiki/Chi_Rho)

### Moment

峰度

:   [Kurtosis - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Kurtosis#excess_kurtosis)

Kurtosis Excess Kurtosis

A distribution with negative excess kurtosis is called platykurtic, or
platykurtotic. "Platy-" means "broad". In terms of shape, a platykurtic
distribution has a lower, wider peak around the mean and thinner tails.

### MISC

* [Download & Print Multiple Wikipedia Articles to a Single PDF File](http://www.labnol.org/internet/print-wikipedia-as-pdf/13475/)
* [Pretty Good Privacy - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Pretty_Good_Privacy)
* [Caesar cipher - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Caesar_cipher)
* [Mode (statistics) - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Mode_(statistics))
* [中華人民共和國民主運動 - 维基百科，自由的百科全书](http://zh.wikipedia.org/wiki/%E4%B8%AD%E8%8F%AF%E4%BA%BA%E6%B0%91%E5%85%B1%E5%92%8C%E5%9C%8B%E6%B0%91%E4%B8%BB%E9%81%8B%E5%8B%95)
* [民粹主义_百度百科](http://baike.baidu.com/view/79548.htm)
* [Abbott and Costello - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Abbott_and_Costello)
* [何祚庥_百度百科](http://baike.baidu.com/view/60499.htm?fr=aladdin)
* [rice spirit][rice-spirit] 米酒
* Mediocre people 平庸的人们 ; 平庸的人 [,midɪ'okɚ]
* omnivore `['ɒmnɪvɔː]` n. [动] 杂食动物；不偏食的人

[rice-spirit]: http://dict.youdao.com/search?q=ricespirit&keyfrom=dict.index

梭哈是一种扑克的玩法， 当然看港剧的人都知道 它还有一个意思是把所有的东西全部压上去，也就是英文里的 show hand， 它的意思就是摊牌，亮出手里所有的东东。

Quotation List
--------------

### 请在我们脏的时候爱我们

**迪米特里·迪米特里耶维奇·肖斯塔科维奇**（Дмитрий·Дмитриевич·Шостакович，1906年9月25日－1975年8月9日），
原苏联时期最重要的 **作曲家** 之一，20世纪世界著名作曲家之一；生于**圣彼得堡**，
1919—1925年在彼得堡音乐学院学习钢琴与作曲；1923、1925年先后毕业，以第1交响曲而成名；
1927年在肖邦钢琴比赛中获奖；**卫国战争中所创作的第7交响曲享誉世界**；1957、1962年先后因第10、13交响曲引起争论；
1960年加入苏联共产党；其主要作品还有小提琴协奏曲、钢琴协奏曲、大提琴协奏曲以及大量室内乐等；1975年在莫斯科去世。

### 对一切冷酷和独裁，我们的回答是生活

**加夫列尔·加西亚·马尔克斯**（Gabriel José de la Concordia García Márquez，1927年3月6日－2014年4月17日），
是 **哥伦比亚** 作家、记者和社会活动家，**拉丁美洲魔幻现实主义文学** 的代表人物，20世纪最有影响力的作家之一，
1982年诺贝尔文学奖得主。作为一个天才的、赢得广泛赞誉的小说家，加西亚·马尔克斯将现实主义与幻想结合起来，
创造了一部风云变幻的哥伦比亚和整个南美大陆的神话般的历史。代表作有《**百年孤独**》（1967年）
《**霍乱时期的爱情**》（1985年）。据悉，马尔克斯已罹患老年痴呆症，今后可能无法再从事创作活动。

2014年4月17日在墨西哥家中去世，享年87岁。

Math List 02
------------

### Orthogonal Matrix

[Orthogonal Matrix][ortho-mat]

In linear algebra, an orthogonal matrix is a square matrix with real entries
whose columns and rows are orthogonal unit vectors (i.e., orthonormal vectors),
i.e.

$$Q^\mathrm{T} Q = Q Q^\mathrm{T} = I,$$

where I is the identity matrix.

This leads to the equivalent characterization: a matrix Q is orthogonal if its
transpose is equal to its inverse:

$$Q^\mathrm{T}=Q^{-1}, \,$$

An orthogonal matrix Q is necessarily invertible (with inverse $Q^{-1} = Q^T$),
unitary ($Q^{-1} = Q^*$) and therefore normal ($Q^*Q = QQ^*$) in the reals. The
determinant of any orthogonal matrix is either +1 or −1. As a linear
transformation, an orthogonal matrix preserves the dot product of vectors, and
therefore acts as an isometry of Euclidean space, such as a rotation or
reflection. In other words, it is a unitary transformation.

The set of n × n orthogonal matrices forms a group O(n), known as the orthogonal group. The subgroup SO(n) consisting of orthogonal matrices with determinant +1 is called the special orthogonal group, and each of its elements is a special orthogonal matrix. As a linear transformation, every special orthogonal matrix acts as a rotation.

The complex analogue of an orthogonal matrix is a unitary matrix.

[ortho-mat]: https://en.wikipedia.org/wiki/Orthogonal_matrix

### Unitary

[unitary-matrix] [unitary-transformation]

[unitary-matrix]: http://en.wikipedia.org/wiki/Unitary_matrix
[unitary-transformation]: http://en.wikipedia.org/wiki/Unitary_transformation

### Conjugate Transpose

[Conjugate Transpose][conjugate-transpose]

[conjugate-transpose]: http://en.wikipedia.org/wiki/Conjugate_transpose

### Trace Diagram

[Trace Diagram][trace-diagram]

吓尿了。。。

[trace-diagram]: http://en.wikipedia.org/wiki/Trace_diagram

### Matrix Decomposition

[Matrix Decomposition][matrix-decomposition]

[matrix-decomposition]: http://en.wikipedia.org/wiki/Matrix_decomposition

### Incident Matrix

[Incident Matrix][incident-matrix]

[incident-matrix]: https://en.wikipedia.org/wiki/Incidence_matrix

### Vorticity

[Vorticity][vorticity]

[vorticity]: https://en.wikipedia.org/wiki/Vorticity

### Fractal

[Fractal][fractal]

![fractal][fractal-pic]

![fractal][fractal-pic2]

[fractal]: https://en.wikipedia.org/wiki/Fractal_geometry
[fractal-pic]: https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Animated_fractal_mountain.gif/220px-Animated_fractal_mountain.gif
[fractal-pic2]: https://upload.wikimedia.org/wikipedia/en/thumb/e/e7/Koch_Snowflake_Animated_Fractal.gif/170px-Koch_Snowflake_Animated_Fractal.gif

### e

[e]

[e]: https://en.wikipedia.org/wiki/E_(mathematical_constant)

### Cyclotomic Polynomial

<https://en.wikipedia.org/wiki/Cyclotomic_polynomial>

### Euler Phi Function

[Euler Phi Function](https://en.wikipedia.org/wiki/Euler%27s_totient_function)

随便翻翻 05
-----------

### 挑战无处不在

[挑战无处不在 | 酷 壳 - CoolShell.cn][challange]

[challange]: http://coolshell.cn/articles/7048.html

### 一些名词

一些命名规范

:   * camelCase
    * snake_case
    * PascalCase
    * CAPS_SNAKE_CASE
    * Snake_Pascal_Case
    * Param Block:

Block

:   * opening/closing braces on seperate line (Allman)
    * opening/closing braces on same line as declaration (OTBS)

### GitLab 的故事 - Teahour.fm

[GitLab 的故事 - Teahour.fm][gitlab-story]

看这个：[程序员播客（podcast）推荐 | 简书][podcast-jianshu] 就选了这个看。

* [GitLab] 的老大 [Randx][randx] 原来英语很差，但是参与很多的 Issue 后英语变好了很多。四级到六级哈哈。
* Randx 的每个月都能发布一个版本，难得的坚持。
* Randx 有三个星期缺勤，两个星期生病；一个星期打游戏。

[gitlab-story]: http://teahour.fm/2013/03/25/story-of-gitlab.html
[podcast-jianshu]: http://jianshu.io/p/10e4cd97cef9
[gitlab]: https://www.gitlab.com/
[randx]: https://github.com/randx

### 怎样翻译更地道

[怎样翻译更地道][fanyi]

[fanyi]: http://www.luanxiang.org/blog/archives/tag/%E6%80%8E%E6%A0%B7%E7%BF%BB%E8%AF%91%E6%9B%B4%E5%9C%B0%E9%81%93

### 如何战胜他人的偏见？

[如何战胜他人的偏见？][miss-treated]

![miss treated][miss-treated-pic]

### 意志力是什么？

[意志力是什么？][will-power]

那，什么是意志力？

:   * 自我控制(self-control)，能控制内心冲突，抑制恶魔一方。
    * 比方说跑马拉松时会肌肉酸痛、呼吸不顺、腹部疼痛等，此时内心就会出现想停下来舒缓痛楚的欲望，
      然而另一方面也希望可以完成全程马拉松好成就自己是个好汉，此时内心就产生了一个冲突。
      要继续跑还是要停下来？若能成功的抑制停下来舒缓不适的欲望，也就控制了这一次的内心冲突，
      马拉松得以继续跑下去。因此，完成一次马拉松=重复地对抗内心冲突、抑制想停止的欲望=意志力的展现。
    * 用握力器测测你的意志力
    * 意志力强，则减肥见效；减肥成功，意志力变更强
    * 要提升意志力并不需要甚么特别的训练，只要可以每天规律地进行一些平常不做的事就可以了

[miss-treated]: http://www.guokr.com/article/437220/
[miss-treated-pic]: http://img1.guokr.com/image/-pwCzVbSjDRUx2j9fVtXVRxhXECJU0Z8zH_gIo5AmWH0AQAA9AEAAEpQ.jpg
[will-power]: http://www.guokr.com/article/437231/

豆瓣阅读
--------

社会竞争压力太大，物价上涨过快。他终于是没能在你最美的年纪里攒够娶你的钱，他也不小了，二十七八岁了。
家里说给他看了一个还不错的姑娘，让他回家看看。你知道了，松了一口气，也答应了去见那个妈妈给介绍的
年轻有为有车有房的男人。最终他回了老家娶了别人，你也嫁给了一个你理想中的男人。有车有房，不用你吃苦，
你能安心奋斗了。

EDC（Everyday Carry)

:   1. 简单普及一些危险因素信息的对应标记，都是英文缩写：
        * 有毒有害物质：GAS。
        * 易燃易爆物质：EXPL。
        * 放射性物质：RAD。
        * 化学物质：CHEM。
        * 漏电：ELEC。
        * 燃料泄露：FUEL。
        * 可能垮塌：COLL。
    2. 如果标志有危险信息，还可进的话，就说明危险因素已经被排除了。


关键是人，而不是工具。

互联网上百分之一的人生产内容，百分之十的人参与互动，百分之八十的人单纯阅读。
为自己不断地寻找理由，努力做一个贡献内容的人。
有句话说得好: 每个技术团队都有一个年久失修的博客，这能说明什么问题呢？

不一定要那么大众，那么出彩，那种形式，才算作品。不同的人，不同的阶段对作品都有着不同的定义。
作品也有拿的出手的和拿不出手的之分。但如果你对「作品」完全没有了创作欲望或决心又碰巧是个好学的人，
那么我说的**求知瘾者**可能就是你。

感觉这群人永远站在自我世界的中心，他们指着天上的劫云一副仙风道骨随时羽化的模样，
大喊：「我要打十个！」好在这个社会的秩序还是靠实力评判。真正行动的人，他们往往什么都不说。

松塔环顾四周。仔细想想，男朋友只是不见了，不能说明这锅米饭就是他变的。
也许他煮了米饭，就变成了一枚戒指呢？他这么爱我，一定不会变成一锅米饭给我添麻烦的。
肯定是变成了我最喜欢的戒指！

想到这里，松塔终于缓了一口气。还好，米饭没有冷，松塔给自己做了个西兰花炒带鱼，
配着米饭吃掉了。然后买了时尚潮爆 Tiffany 来自星星的你同款戒指（江浙沪包邮），
从此天天把它带在身边。无论是上班、吃火锅、跟客户开会、拍桌子骂他们傻逼、
一个人环游世界到处开房从不带套。

直到戒指丢了。

试了一段时间觉得效果很不错，尤其是上班时精神状况明显好转，几乎不太打瞌睡，身材也比较能控制住。
后来 Google 一下 「站着工作」 发现原来 Google、Facebook、AOL 等公司也有一些人开始会站着工作，
有许多研究报告也指出**站着工作比坐着好，无论是在卡路里的消耗或是工作时的精神状态，都有不少助益。**
其实站着工作除了有助于身材和精神之外，我发现对于「移动」这件事情也很有帮助；坐着的时候想要去倒杯水、
上个厕所，有时候还真有点懒得起身移动，但如果是站着就可以很轻易地一个转身就去做那些事.

最后附记一下，昨天，我问三个小女孩，这么多兴趣班，你们都喜欢吗？
学了九门课的女孩 A 抢着说：我都喜欢，但我最喜欢钢琴、舞蹈和英语。
学了四门课的女孩 B 说：我喜欢钢琴和舞蹈，还有画画。
学了一门课的毛丫同学说：我都不喜欢，我只喜欢玩。
我陪你好好玩。 没有人能拥有完美的人生，但每个人都值得一个快乐的童年。

Men List: 02（音乐人特别版 01）
------------------------------

### Izumi Sakai 坂井泉水

[Izumi Sakai 坂井泉水][izumi-sakai]

[![Izumi Sakai][izumi-sakai-pic]][izumi-sakai-douban]

* [虾米][izumi-sakai-xiami]
* [百度百科（比 wikipedia 详细）][izumi-sakai-baidu]

Izumi Sakai (坂井泉水 Sakai Izumi), (February 6, 1967 – May 27, 2007), was **a
Japanese Pop singer, song writer, and member of the group Zard**.

卡拉OK皇后

:   曾在1989年被评为东映卡拉 OK 皇后，日本 AIR SYSTEM 活动女郎，
    90年日清赛皇后。ZARD 几乎所有的歌都由坂井泉水作词，此外她也曾为 Field Of View、DEEN 等团体作词，
    看来坂井泉水确实是多才多艺。

女子摇滚乐队第一人

:   坂井泉水担当乐队的作词和主唱，可以说她开创了摇滚乐队以女子为主唱的形式，
    ZARD 不仅在日本本土，在亚洲也堪称女子乐团的传奇组合。虽然坂井泉水的歌曲以情歌为主，
    但一般都节奏明快，充满活力。她写的歌词大多是鼓励人们去勇敢坚强地面对爱情和生活中的挫折，
    在当代得到歌迷的巨大反响。

歌之精神

:   ZARD 的歌大多偏向轻快、激昂的曲风，且多为连续剧或动画的主题歌，
    像《SLAM DUNK》的 ED《[My Friend][my-friend]》、《真·中华一番》（中华小当家/中华一番）的 OP，
    《无法呼吸》，被称作动漫歌曲界不朽的名作。
    ZARD 也曾为《灌篮高手》、《名侦探柯南》等动漫/电视剧等演唱过主题曲。

[izumi-sakai]: http://en.wikipedia.org/wiki/Izumi_Sakai
[izumi-sakai-baidu]: http://baike.baidu.com/view/192420.htm
[izumi-sakai-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/izumi-sakai.png
[izumi-sakai-douban]: http://music.douban.com/musician/103766/
[izumi-sakai-xiami]: http://www.xiami.com/search?pos=1&key=%E5%9D%82%E4%BA%95%E6%B3%89%E6%B0%B4
[my-friend]: http://www.xiami.com/song/3686309?spm=a1z1s.3521865.23309997.12.iRY1P2

### Maki Ohguro 大黑摩季

[Maki Ohguro 大黑摩季][da]

大黑摩季（1969年12月31日－）是一位著名的日本创作型女歌手，
所属唱片公司为 EMI Music Japan Inc. 与 Virgin Music，
演唱曲风以摇滚为主。代表作有《DA·KA·RA》、《我只凝望你》、《LA·LA·LA》等。

[Maki Ohguro][maki-ohguro] (大黒 摩季 Ōguro Maki?) is a Japanese pop singer and songwriter from Sapporo, Hokkaido.

In 1989, she passed the '3rd BAD' audition. Her famous songs are "DA・KA・RA",
"Chotto", and so on... Her second single "DA・ka・RA" sold 1.1 million copies
and won the 'Japan Record Grand Prix' newcomer award of the year. **Because of
her rare public appearances, she was originally known as a phantom singer, like
Izumi Sakai of Zard.** "Anata Dake Mitsumeteru", the ending theme for Slam
Dunk（灌篮高手啊亲）, was the number 2 song for the month of January 1994, and
is certified as a Million record, selling 1,087,160 copies.

[da]: http://zh.wikipedia.org/wiki/%E5%A4%A7%E9%BB%91%E6%91%A9%E5%AD%A3
[maki-ohguro]: http://en.wikipedia.org/wiki/Maki_Ohguro

### 玛莉特 Marit Larsen

[玛莉特 Marit Larsen][marit-larsen]

![Marit Larsen][marit-larsen-pic]

Marit Larsen，原 M2M 女子组合的成员。在 2002 年 4 月解散后，Marion 在 2005 年出了其首张专辑 Here I Am，
Marit 则在 2006 年出了其首张单飞专辑 Under The Surface，08 年推出了第二张专辑 The Chase。

Marit Elisabeth Larsen (born 1 July 1983) is a **Norwegian singer and
songwriter**. She began playing violins at age of 5, and played it until the
age of 8. She gained international fame during her teenage years as a member of
the pop duo（二重唱） M2M with childhood friend Marion Raven. More recently she
has pursued her own music career releasing her solo debut album, *Under the
Surface*, in 2006. Her second album, *The Chase*, was released in Norway in
October 2008. The third album, titled *Spark* was released in Norway, Denmark,
Sweden, Finland on 18 November 2011 and Germany, Austria, Switzerland on 16
December 2011.

If A Song Could Get Me You，太喜欢这首歌了~

[marit-larsen]: http://music.douban.com/musician/102341/
[marit-larsen-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/marit-larsen.png
[if-a-song-could-get-me-you]: http://douban.fm/?start=1381102g3cd3g-3&cid=3381102

### M2M

[M2M][m2m]

M2M was a pop music duo formed by two Norwegians, **Marion Elise Raven** and
**Marit Elisabeth Larsen**. They released three albums under Warner Music
Norway: *Shades of Purple*, *The Big Room*, and *[The Day You Went Away: The
Best of M2M][the-best-of-m2m]*, a greatest hits album released by their record
label after they disbanded.

Raven and Larsen come from Lørenskog in the district east of Oslo. They had
known each other since the age of five. Discovered by the Norwegian music
producers Kenneth M. Lewis and Kai Robøle, the girls were signed to Atlantic
Records in 1998. The name "M2M" was chosen from a contest held for fans to give
a name to the band, having been previously known as **Marion & Marit**.

[m2m]: https://en.wikipedia.org/wiki/M2M_(band)
[the-best-of-m2m]: http://www.xiami.com/play?ids=/song/playlist/id/1769272999/object_name/default/object_id/0#loaded


### The Eagles

[The Eagles][the-eagles]

The Eagles are an American rock band formed in Los Angeles in 1971 by Glenn
Frey, Don Henley, Bernie Leadon and Randy Meisner. With five number-one
singles, six Grammy Awards, five American Music Awards and six number one
albums, the Eagles were one of the most successful musical acts of the 1970s.
At the end of the 20th century, two of their albums, Their Greatest Hits
(1971–1975) and Hotel California, were ranked among the 20 best-selling albums
in the U.S. according to the Recording Industry Association of America. Hotel
California is ranked 37th in Rolling Stone's list of "The 500 Greatest Albums
of All Time" and the band was ranked number 75 on the magazine's 2004 list of
the 100 Greatest Artists of All Time.

They are one of the world’s best-selling bands of all time, having sold over
150 million records[7]—100 million in the U.S. alone—including 42 million
copies of Their Greatest Hits (1971–1975) and 32 million copies of Hotel
California. They are the fifth-highest-selling music act and highest-selling
American band in US history. No American band sold more records than the Eagles
during the 1970s.

The Eagles released their self-titled debut album in 1972, which spawned three
top 40 singles: "Take It Easy", "Witchy Woman" and "Peaceful Easy Feeling".
Their next album, Desperado (1973), was less successful than the first,
reaching only number 41 on the charts; neither of its singles reached the top
40. However, the album contained two of the band's most popular tracks:
"Desperado" and "Tequila Sunrise". They released On the Border in 1974, adding
guitarist Don Felder midway through the recording of the album. The album
generated two top 40 singles: "Already Gone" and their first number one, "Best
of My Love".

It was not until 1975's One of These Nights that the Eagles became arguably
America's biggest band. The album included three top 10 singles: "One of These
Nights", "Lyin' Eyes" and "Take It to the Limit", the first hitting the top of
the charts. They continued that success and hit their commercial peak in late
1976 with the release of Hotel California, which would go on to sell over 16
million copies in the U.S. alone and over 32 million copies worldwide. The
album yielded two number-one singles, "New Kid in Town" and "Hotel California".
They released their last studio album for nearly 28 years in 1979 with The Long
Run, which spawned three top 10 singles: "Heartache Tonight", "The Long Run"
and "I Can't Tell You Why", the lead single being another chart-topping hit.

The Eagles disbanded in July 1980 but reunited in 1994 for the album Hell
Freezes Over, a mix of live and new studio tracks. They have toured
intermittently since then and were inducted into the Rock and Roll Hall of Fame
in 1998. In 2007, the Eagles released Long Road Out of Eden, their first full
studio album in 28 years and their sixth number one album. The next year they
launched the Long Road Out of Eden Tour in support of the album. In 2013, they
began the extended History of the Eagles Tour in conjunction with the band's
documentary release, History of the Eagles.

[the-eagles]: https://en.wikipedia.org/wiki/Eagles_(band)

### R.Kelly

[R.Kelly][r-kelly]

[r-kelly]: https://en.wikipedia.org/wiki/R._Kelly


### Leonard Cohen

[Leonard Cohen][leonard-cohen]

![Leonard Cohen][leonard-cohen-pic]

Leonard Norman Cohen, CC GOQ (born 21 September 1934) is a Canadian
singer-songwriter, musician, poet, and novelist. His work has explored
religion, politics, isolation, sexuality, and personal relationships. Cohen
has been inducted into the American Rock and Roll Hall of Fame and both the
Canadian Music Hall of Fame and the Canadian Songwriters Hall of Fame. He is
also a Companion of the Order of Canada, the nation's highest civilian honour.
In 2011, Cohen received a Prince of Asturias Award for literature.

The critic Bruce Eder assessed Cohen's overall career in popular music by
asserting that "[he is] one of the most fascinating and enigmatic …
singer/songwriters of the late '60s … [and] has retained an audience across
four decades of music-making … Second only to Bob Dylan (and perhaps Paul
Simon) [in terms of influence], he commands the attention of critics and
younger musicians more firmly than any other musical figure from the 1960s who
is still working at the outset of the 21st century."

The Academy of American Poets has commented more broadly on Cohen's overall
career in the arts, including his work as a poet, novelist, and songwriter,
stating that "[Cohen's] successful blending of poetry, fiction, and music is
made most clear in Stranger Music: Selected Poems and Songs, published in 1993,
which gathered more than 200 of Cohen's poems … several novel excerpts, and
almost 60 song lyrics … While it may seem to some that Leonard Cohen departed
from the literary in pursuit of the musical, his fans continue to embrace him
as a Renaissance man who straddles the elusive artistic borderlines."

Cohen will release his 13th studio album, Popular Problems, on Columbia Records
a day after his 80th birthday on September 22, 2014.

[leonard-cohen-pic]: http://gnat-tang-shared-image.qiniudn.com/pic/leonard-cohen-2.png
[leonard-cohen]: https://en.wikipedia.org/wiki/Leonard_cohen

### Leehom Wang 王力宏

[Leehom Wang 王力宏][leehom-wang]

[leehom-wang]: https://en.wikipedia.org/wiki/Leehom_Wang

### Queen

[Queen][queen]

[queen]: https://en.wikipedia.org/wiki/Queen_(band)

### Adam Lambert

[Adam Lambert][adam-lambert]

话说维基上 Adam 好丑。。。说好的妖艳呢。。。

[adam-lambert]: https://en.wikipedia.org/wiki/Adam_lambert

### Jason Chen 陈以桐

[Jason Chen 陈以桐][jason-chen]

[jason-chen]: https://en.wikipedia.org/wiki/Jason_Chen

### Katy Perry

[Katy Perry][katy-perry]

大爱 Katy Perry 的 *The One That Got Away*，这里是 [Acoustic 版][acoustic-the-one-that-got-away]

[katy-perry]: https://en.wikipedia.org/wiki/Katy_perry
[acoustic-the-one-that-got-away]: http://www.xiami.com/play?ids=/song/playlist/id/1770755852/object_name/default/object_id/0#open

Men List: 04 (程序员特别版 02)
------------------------------

### [List of programmers - Wikipedia, the free encyclopedia][id]

[id]: http://en.wikipedia.org/wiki/List_of_programmers

### Richard Stallman

[Richard Stallman][richard-stallman] ([理查德·斯托曼][richard-stallman-baidu])

![Richard Stallman][rms-pic]

keywords: Free Software, GPL, Emacs, GCC, GNU

[richard-stallman]: http://en.wikipedia.org/wiki/Richard_Stallman
[richard-stallman-baidu]: http://baike.baidu.com/view/117581.htm?from_id=9336362&type=syn&fromtitle=Richard+Stallman&fr=aladdin
[rms-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/richard-stallman-julian-assange.jpg

### Julian Assange

[Julian Assange][julian-assange] ([朱利安·阿桑奇][julian-assange-baidu])

keywords: WikiLeaks

[julian-assange]: http://en.wikipedia.org/wiki/Julian_Assange
[julian-assange-baidu]: http://baike.baidu.com/view/4034352.htm?from_id=13866421&type=search&fromtitle=%E9%98%BF%E6%A1%91%E5%A5%87&fr=aladdin

### Linus Torvalds

![[Linus Torvalds][linus-torvalds] ([林纳斯·托瓦兹][linus-torvalds-baidu])][linus-torvalds-pic]

keywords: Linux, Git

[linus-torvalds]: http://en.wikipedia.org/wiki/Linus_torvalds
[linus-torvalds-baidu]: http://baike.baidu.com/view/117611.htm?fromtitle=Linus+Torvalds&fromid=9336769&type=syn
[linus-torvalds-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/linus-torvalds.jpeg

### Bill Gates

![[Bill Gates][bill-gates] ([比尔·盖茨][bill-gates-baidu])][bill-gates-pic]

keywords: Windows, BASIC

[bill-gates]: http://en.wikipedia.org/wiki/Bill_gates
[bill-gates-baidu]: http://baike.baidu.com/subview/2075/11117599.htm?fromtitle=%E6%AF%94%E5%B0%94%E7%9B%96%E8%8C%A8&fromid=145939&type=syn
[bill-gates-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/bill-gates.JPG

### Paul Allen

![[Paul Allen][paul-allen] ([保罗·艾伦][paul-allen-baidu])][paul-allen-pic]

[paul-allen]: http://en.wikipedia.org/wiki/Paul_Allen
[paul-allen-baidu]: http://baike.baidu.com/view/190995.htm?fromtitle=Paul+Allen&fromid=5257486&type=syn
[paul-allen-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/paul-allen.jpg

### Kevin Mitnick

![[Kevin Mitnick][kevin-mitnick] ([凯文·米特尼克][kevin-mitnick-baidu])][kevin-mitnick-pic]

[kevin-mitnick]: http://en.wikipedia.org/wiki/Kevin_Mitnick
[kevin-mitnick-baidu]: http://baike.baidu.com/view/165032.htm?from_id=3299528&type=syn&fromtitle=Kevin+Mitnick&fr=aladdin
[kevin-mitnick-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/kevin-mitnick.png

### Tsutomu Shimomura

![[Tsutomu Shimomura][tsutomu-shimomura]][tsutomu-shimomura-pic]

[tsutomu-shimomura]: https://en.wikipedia.org/wiki/Tsutomu_Shimomura
[tsutomu-shimomura-pic]: http://gnat-tang-shared-image.qiniudn.com/pic/tsutomu-shimomura.png

### Steve Yegge

![[Steve Yegge][steve-yegge]][steve-yegge-pic]

[steve-yegge]: http://en.wikipedia.org/wiki/Steve_Yegge
[steve-yegge-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/steve-yegge.jpg

### [Brian Kernighan][kernighan]

[Brian Kernighan][kernighan]

[kernighan]: http://en.wikipedia.org/wiki/Kernighan

### Alan Kay

[alan-kay]

[alan-kay]: https://en.wikipedia.org/wiki/Alan_Kay

### Steve Wozniak

[Steve Wozniak][steve-wozniak]

[steve-wozniak]: https://en.wikipedia.org/wiki/Stephen_Wozniak

Men List: 05 (数学家特别版 01)
------------------------------

* [List Of Mathematicians][list-of-mathematicians]

[list-of-mathematicians]: https://en.wikipedia.org/wiki/List_of_mathematicians

### Leonhard Euler

[Leonhard Euler][leonhard-euler]

### David Hilbert

[David Hilbert][david-hilbert]

[david-hilbert]: https://en.wikipedia.org/wiki/Hilbert

### Kurt Gödel

![[Kurt Gödel][kurt-godel]][kurt-godel-pic]

**Kurt Friedrich Gödel** (/**ˈkɜrt ɡɜrdəl**/; German: [ˈkʊʁt ˈɡøːdəl] ; April
28, 1906 – January 14, 1978) was an Austrian, and later American, **logician**,
**mathematician**, and **philosopher**. Considered with Aristotle and Gottlob
Frege to be one of the most significant logicians in history, Gödel made an
immense impact upon scientific and philosophical thinking in the 20th century,
a time when others such as Bertrand Russell, A. N. Whitehead, and David
Hilbert were pioneering the use of logic and set theory to understand the
foundations of mathematics.

[kurt-godel]: http://en.wikipedia.org/wiki/Godel
[kurt-godel-pic]: http://gnat-tang-shared-image.qiniudn.com/math/kurt-godel.jpg

### M. C. Escher

![[M. C. Escher][mc-escher]][mc-escher-pic]

[mc-escher]: https://en.wikipedia.org/wiki/M._C._Escher
[mc-escher-pic]: http://gnat-tang-shared-image.qiniudn.com/math/mc-escher.jpg

### William Sealy Gosset

[William Sealy Gosset][william-sealy-gosset]

笔名叫 Student。。。统计学大神中的大神。

[william-sealy-gosset]: https://en.wikipedia.org/wiki/William_Sealy_Gosset

### Ronald Fisher

[Ronald Fisher][ronald-fisher]

[ronald-fisher]: https://en.wikipedia.org/wiki/Ronald_Fisher

### Karl Pearson

[Karl Pearson][karl-pearson]

[karl-pearson]: https://en.wikipedia.org/wiki/Karl_Pearson

### Egon Pearson

[Egon Pearson][egon-pearson]

[egon-pearson]: https://en.wikipedia.org/wiki/Egon_Pearson

### John Wishart

[John Wishart][john-wishart]

[john-wishart]: https://en.wikipedia.org/wiki/John_Wishart_(statistician)

### Jerzy Neyman

[Jerzy Neyman][jerzy-neyman]

[jerzy-neyman]: https://en.wikipedia.org/wiki/Jerzy_Neyman

### Abraham Wald

[Abraham Wald][abraham-wald]

[abraham-wald]: https://en.wikipedia.org/wiki/Abraham_Wald

### Harald Cramer

[Harald Cramer][harald-cramer]

[harald-cramer]: https://en.wikipedia.org/wiki/Harald_Cram%C3%A9r

### 柯尔莫哥洛夫（Andrey Nikolaevich Kolmogorov）



> 他 5、6 岁时就归纳出了 `l=1^2，1+3=2^2，1+3+5=3^2，1+3+5+7=4^2．…` 这一数学规律。

![[柯尔莫哥洛夫（Andrey Nikolaevich Kolmogorov）][andrey-wiki]][andrey-kolmogorov-pic]

Andrey Nikolaevich Kolmogorov (Russian: Андрей Николаевич Колмогоров; (IPA:
`[ɐn'drʲej nʲɪkɐˈlajɪvʲɪt͡ɕ kəlmə'ɡorəf]`), 25 April 1903 – 20 October 1987) was
a 20th-century **Soviet mathematician** who made significant contributions to
the mathematics of probability theory, topology, intuitionistic（直觉） logic,
turbulence（湍流）, classical mechanics, algorithmic information theory and
computational complexity.

柯氏公理系统（概率论）

See also

* [维基百科-中文](https://zh.wikipedia.org/wiki/%E5%AE%89%E5%BE%B7%E9%9B%B7%C2%B7%E6%9F%AF%E7%88%BE%E8%8E%AB%E5%93%A5%E6%B4%9B%E5%A4%AB)

[andrey-wiki]: https://en.wikipedia.org/wiki/Andrey_Kolmogorov
[andrey-baike]: http://gnat.qiniudn.com/%40%2Fpeople%2FAndrey-Kolmogorov.jpg
[andrey-kolmogorov-pic]: http://gnat.qiniudn.com/%40%2Fpeople%2FAndrey-Kolmogorov.jpg

Men List: 06 (诺贝尔物理学奖 01)
--------------------------------

* [List of Nobel laureates in Physics][list-of-nobel-laureates-in-physics]

[list-of-nobel-laureates-in-physics]: https://en.wikipedia.org/wiki/List_of_Nobel_laureates_in_Physics

### Walter Cronkite

[Walter Cronkite][walter-cronkite]

[walter-cronkite]: https://en.wikipedia.org/wiki/Walter_Cronkite

### Gregor Mendel

[Gregor Mendel][gregor-mendel]

[gregor-mendel]: https://en.wikipedia.org/wiki/Gregor_mendel

### Don Juan

[Don Juan][don-juan]

[don-juan]: https://en.wikipedia.org/wiki/Don_juan

As An Emacs Newbie
==================

Emacs 101

:   What is [Emacs](http://en.wikipedia.org/wiki/Emacs)

    - extensible text editors
    - by [Richard Stallman](http://en.wikipedia.org/wiki/Richard_Stallman),
      [Guy L. Steele, Jr](http://en.wikipedia.org/wiki/Guy_L._Steele,_Jr.) in 1976
    - Emacs became, along with vi, one of the two main [contenders](http://dict.youdao.com/search?q=contenders&keyfrom=dict.index "竞争者（contender复数）")
      in the traditional editor wars of Unix culture.

    Some Sites/Tutorials

    - [EmacsWiki](http://emacser.com/)
    - [Xah Lee Web 李杀网](http://xahlee.org/)
    - [Emacs 中文网](http://www.emacswiki.org/emacs/)
    - [王垠的 Emacs](http://docs.huihoo.com/homepage/shredderyin/emacs.html)
    - [王纯业的 Emacs](http://ann77.emacser.com/Emacs/EmacsIndex.html)
    - [一年成为 Emacs 高手(像神一样使用编辑器)](https://github.com/redguardtoo/mastering-emacs-in-one-year-guide/blob/master/guide-zh.org)
    - [Planet Earth: 多个Emacs博客的集合](http://planet.emacsen.org/)

Emacs Notes

:   Edit Tables

    - `table-insert`, `table-capture`,  `table-release`
    - `table-{insert, delete}-{row, column}`
    - `table-generate-source`, `table-justify`

    ~~~
    +------------+---------+---------+--------+--------+
    |My          |         |   First |Emacs   |Table   |
    +------------+---------+---------+--------+--------+
    |Tab         |         |      to |move    |forward |
    +------------+---------+---------+--------+--------+
    |   S-Tab    |this row |   to    |  move  |backward|
    |            |   is    |         |        |        |
    |            |justified|         |        |        |
    |            |to center|         |        |        |
    +------------+---------+---------+--------+--------+
    |this col is |         | this col|        |the     |
    |widened     |         |       is|        |newly   |
    |            |         |justified|        |inserted|
    |            |         | to right|        |row     |
    +------------+---------+---------+--------+--------+
    |            |new COL  |  now to |        |now to  |
    |            |here!    |  insert |        |insert  |
    |            |         |     col |        |row     |
    +------------+---------+---------+--------+--------+
    |            |         |         |        |        |
    +------------+---------+---------+--------+--------+
    ~~~

    [Org-mode](http://orgmode.org/)（Org-mode，让生活更美好）

    * My Notes on Github: [Learning Org-mode](https://github.com/district10/notes/blob/master/2014/Learning-Org-Mode.md)

    Keyboard Macros

    - `start-kbd-macro`, （鼠标移过来，左边有个链接）
    - `end-kbd-macro`
    - `call-last-kbd-macro`
    - `apply-macro-to-region-lines`, `name-last-kbd-macro`
    - `recentf-open-files`
    - 一个完整的例子: 比如你想这样（左边变到右边）

    ~~~
    start-kbd-macro	                  *start-kbd-macro*
    end-kbd-macro	   	====>	    *end-kbd-macro*
    call-last-kbd-macro		          *call-last-kbd-macro*
    ~~~

    你需要先把光标移到最左上角，开始录制宏，
    输入`*`，按`End`，输入`*`，按  `Down`（方向键），`Home`，结束录制宏。
    再运行两次宏，就可以了 (或者 `C-u 2 C-x e`^[‘C-u 0 C-x e’ to execute the macro an infinite number of times until the end of the file is reached])。

    File Header

    - file header to specify mode, etc

    ````
    ;; -*- mode: Lisp; fill-column: 75; comment-column: 50; -*-
    ````

    - file header: first line for normal file, second line for script file(it
      has a shebang

    - Comment
        - `comment-region`, `comment-box`, `line-comment-banner`
        - I rename this three to `comment-{region, box, banner}`

Misc (以后慢慢把 misc 里的移出来）

:   - **evil-mode** 太牛逼了~~~ 不配置的话，vim 确实方便点。
    - `C-h c`(describe-key-briefly), `C-h f`(describe-function)
    - `goto-line`, `goto-char`
    - `delete-trailing-whitespaces`
    - Insert Date
    - Shadow Copy（强烈推荐），更牛逼的还有个 v cursor, 牛逼的
      我的眼都要瞎了
    - `C-x r s R` and `C-x r g R` (think: register-**set**/register-**get**).
    - `eval-buffer`,  `eval-region`:  修改后配置后快速应用
    - Line Numbers
    - Zap To Char, `M-z e`
    - yasnippet: 这完虐 VS 之类的 IDE 啊有木有
    - Abbrev: 如果你觉得有些东西不好敲
    - Bookmarks
    - `C-x k`:	Close File （我怎么老忘）。。。
    - `C-x C-+`, `C-x C--`, `C-x C-0`, Zoom In/Out, Resume

    ```
    toggle-case-fold-search
    read-only-mode
    ```

Emacs Relative

:   - Chrome Plugin: [edit-with-emacs](https://chrome.google.com/webstore/detail/edit-with-emacs/ljobjlafonikaiipfkggjbhkghgicgoh?utm_source=chrome-ntp-icon).
      I use this to edit almost all of my JianShu Posts now.

refs and see also

  - <http://www.emacswiki.org/emacs/TableMode>
  - <http://www.gnu.org/software/emacs/manual/html_node/emacs/Table-Definition.html>
  - <http://ergoemacs.org/emacs/emacs_table.html>
  - <http://www.emacswiki.org/emacs/KeyboardMacrosTricks>
  - <http://www.emacswiki.org/emacs/LineNumbers>
  - <http://www.emacswiki.org/emacs/Yasnippet>
  - <http://www.emacswiki.org/emacs/ZapToChar#zap-to-char>
  - <http://ergoemacs.org/emacs/emacs_abbrev_mode.html>
  - <http://ergoemacs.org/emacs/bookmark.html>
  - <http://www.emacswiki.org/emacs/LineCopyChar>
  - <http://www.emacswiki.org/emacs/VcursorPackage>


#### [Xah Lee (ErgoEmacs)][xah-lee-emacs-chat]

[xah-lee-emacs-chat]: http://v.youku.com/v_show/id_XNzA4MTYzNjQ0.html





--------------------------------------------------------------------------------

#### Jānis Mancēvičs





--------------------------------------------------------------------------------

#### Tom Marble







--------------------------------------------------------------------------------

#### Iannis Zannos






--------------------------------------------------------------------------------

#### Magnar Sveen








--------------------------------------------------------------------------------

#### Sacha Chua (with Bastien Guerry)






--------------------------------------------------------------------------------

#### Bastien Guerry







--------------------------------------------------------------------------------

#### [Carsten Dominik][ec-carsten-dominik] (author of org-mode)

 ![ScreenShot][ec-carsten-dominik-pic]

 + Print out a huge chunk of elisp code to read, and enjoy it.
 + "We **only use git**"
 + "I'm sorry, I just use it(writing emacs lisp) as **a way to relax**, sometimes."
 + "It's my **hobby**. Like others people would do wood knits or something"
 + "I actually want my computer to **work exactly as how I wanted**."


[ec-carsten-dominik]: http://v.youku.com/v_show/id_XNjgwNDY4MzM2.html
[ec-carsten-dominik-pic]: http://gnat-tang-shared-image.qiniudn.com/emacs/emacs-chat/carsten-dominik.png



--------------------------------------------------------------------------------

#### Thomas Kjeldahl Nilsson



--------------------------------------------------------------------------------

#### Avdi Grimm (Org-mode, Ruby, etc.)



--------------------------------------------------------------------------------

#### John Wiegley












--------------------------------------------------------------------------------








--------------------------------------------------------------------------------

~~~
log: $1. 2014-05-10, created (Carsten Dominik); $2. Thu Aug  6 18:09:51     2015;
~~~

[emacs-chat]: http://sachachua.com/blog/category/podcast/emacs-chat-podcast/
[emacs-chat-youku]: http://i.youku.com/u/UMTQyNzM3OTMyNA==

1. Jamie Zawinski

Lisp hacker, early Netscape developer, and nightclub owner Jamie Zawinski,
a.k.a. jwz, is a member of the select group of hackers who are as well
known by their three-letter initials as by their full names.

“Ptthh, wrong!” and he’d walk
away. So that was kind of getting thrown in the deep end. It was like
the Zen approach—the master hit me with a stick, now I must
meditate.

“Oh my god; now
I’m trying to debug GDB, which I’ve never looked at before.”

We spent a long time talking about features. Well, not a
long time, but it seemed like a long time because we were living a
week every day. We stripped features, definitely. We had a
whiteboard; we scribbled ideas; we crossed them out. This was a
group of like six or seven people. I don’t remember exactly the
number. A bunch of smart, egotistical people sitting in a room yelling
at each other for a week or so.

In some ways, yeah. Programming is obviously much more
rigid. But as far as the overall ability to express a thought, they’re very
similar. Not rambling, having an idea in your head of what you’re
trying to say, and then being concise about it. I think that kind of
thinking is the overlap between programming and writing prose.

When I’m just writing the first version of the program, I tend to put
everything in one file. And then I start seeing structure in that file. Like
there’s this block of things that are pretty similar. That’s a thousand
lines now, so why don’t I move that into another file. And the API sort
of builds up organically that way. The design process is definitely an
ongoing thing; you never know what the design is until the program is
done. So I prefer to get my feet wet as early as possible; get something
on the screen so I can look at it sideways.

We had to ship the thing even if it wasn’t perfect. We can ship it later and it would be higher quality but someone else might have eaten our lunch by then.

I always wish people would comment more, though the thing that
makes me cringe is when the comment is the name of the function
rephrased. Function’s called push_stack and the comment says, “This
pushes to the stack.” Thank you.

You’ve got to say in the comment something that’s not there already.
What’s it for? Either a higher-level or a lower-level description,
depending on what’s most important. Sometimes the most important
thing is, what is this for? Why would I use it? And sometimes the most
important thing is, what’s the range of inputs that this expects?

Long variable names. I’m not a fan of Hungarian notation, but I think
using actual English words to describe things, except for loop
iterators, where it’s obvious. Just as much verbosity as possible, I
guess.

I usually end up putting the leaf nodes up at the top of the
file—try to keep it basically structured that way. And then usually up
at the top, document the API. What are the top-level entry points of
this file, this module, whatever? With an object-y language, that’s done
by the language for you. With C you’ve got to be a little more explicit
about that. In C I do tend to try to have a .h file for every .c file that
has all the externs for it. And anything that’s not exported in the .h file
is static. And then I’ll go back and say, “Wait, I need to call that,” and I
change it. But you’re doing that explicitly rather than just by accident.

Sometimes. Normally I would think that someone who is a
big fan of C++ templates—keep me away from that guy. But that
might just be a snap judgment on my part. Maybe in the context
they’ve used them, they actually work fine. Certainly with the folks I’ve
worked with, ability to argue their point was important because we all
ended up being a pretty argumentative bunch. With that environment,
that helped a lot. That certainly doesn’t have anything to do with
programming ability. That’s just interpersonal-dynamics stuff.

I know I ended up doing a lot of reading of code
and asking questions. I think one thing that’s really important is to not
be afraid of your ignorance. If you don’t understand how something
works, ask someone who does. A lot of people are skittish about that.
And that doesn’t help anybody. Not knowing something doesn’t mean
you’re dumb—it just means you don’t know it yet.

So there were definitely times,
especially early on, where I felt like, “Oh my god, I don’t know
anything.” It would just be embarrassing—but that was just being
insecure. Being the young kid around all these people with PhDs—
“Aaah, I don’t know anything! I’m an idiot! How did I bluff my way into
this?”

That just seemed bizarre and wrong. But I don’t know. Maybe it’s not wrong. Maybe that’s the caveman thoughts: “Back in my day, we programmed with a nine-volt battery and a steady hand!”

I actually haven’t read very many of those. The one I
always recommend is Structure and Interpretation of Computer Programs,
which a lot of people are afraid of because it’s Lispy, but I think does a
really good job of teaching programming without teaching a language.

Seibel: Is there a key skill programmers must have?
Zawinski: Well, curiosity—taking things apart. Wanting to know
what’s going on under the hood. I think that’s really the basis of it.
Without that I don’t think you get very far. That’s your primary way of
acquiring knowledge. Taking something apart and looking at it is how
you learn to build your own. At least for me. I’ve read very few books
about computers. My experience has been digging through source
code or reference manuals. I’ve got a goal and, alright, to do this I
need to know what this thing does and what this thing does. And I’ll
just sort of random-walk through that until I find where I’m going.

Brad Fitzpatrick
--------------










---

~~~
log: $1. ;
~~~


### Refs

- [**Foundations of Python Network Programming**](http://book.douban.com/subject/4793807/)

---
### TOC
- Preface
- §1. Introduction to Client/Server Networking
- §2. UDP
- §3. TCP
- §4. Socket Names and DNS
- §5. Network Data and Network Errors
- §6. TLS and SSL
- §7. Server Architecture
- §8. Caches, Message Queues, and Map-Reduce
- §9. HTTP
- §10. Screen Scraping
- §11. Web Applications
- §12. E-mail Composition and Decoding
- §13. SMTP
- §14. POP
- §15. IMAP
- §16. Telnet and SSH
- §17. FTP
- §18. RPC
- §19. Index

---
~~~
                                  Run, Forest, Run
~~~
#### [Preface]()
---

#### §1. Introduction to Client/Server Networking
1. **The Building Blocks: Stacks and Libraries**
 - The Idea of a Protocol Stack
 - Using Python libraries of prepared code
    - search your libs: [The Python Standard Library](http://docs.python.org/2/library/), or
    - more than the standard: [PyPI - the Python Package Index](https://pypi.python.org/pypi)
 - [`virtualenv - have an virtual env without contaminating your system-wide Python`](https://pypi.python.org/pypi/virtualenv)
    - install virtualenv
```
# command line
pip install virtualenv # or get the latest from github(dev version)
pip install https://github.com/pypa/virtualenv/tarball/develop
# compile from source code, cd source dir first, then
python setup.py install
# `make` docs, here I prefer html
cd docs && make html
```
    - set up an environment
```
virtualenv --no-site-packages gmapenv # will create a dir "gmapenv"
. bin/active # notice the <space> between "." and "bin/active"
python -c "import googlemaps" # not work, so to install the module
# do it yourself, if you intall it in the virtualenv, you can use it in the environment, but out there, you can't, that's why it's called "virtualenv"
```
    - example
```
#!/usr/bin/env python
# Foundations of Python Network Programming - Chapter 1 - search1.py
from googlemaps import GoogleMaps
address = '207 N. Defiance St, Archbold, OH'
print GoogleMaps().address_to_latlng(address)
# doesn't work... Google MAP is already changed.
```

- **Application Layer**
 -
```
#!/usr/bin/env python
# Foundations of Python Network Programming - Chapter 1 - search2.py
import urllib, urllib2
try:
       import json
except ImportError: # for Python 2.5
       import simplejson as json
params = {'q': '207 N. Defiance St, Archbold, OH',
              'output': 'json', 'oe': 'utf8'}
url = 'http://maps.google.com/maps/geo?' + urllib.urlencode(params)
rawreply = urllib2.urlopen(url).read()
reply = json.loads(rawreply)
print reply['Placemark'][0]['Point']['coordinates'][:-1]
```
My words:
> This part is kinda OUT OF DATE, for I got error_message:
>> The Geocoding API v2 has been turned down on September 9th, 2013. The Geocoding API v3 should be used now.
Learn more at [here](https://developers.google.com/maps/documentation/geocoding/)

- **Speaking a Protocol**

- **A Raw Network Conversation**
```
import socket
sock = socket.socket()
sock.connect(('maps.google.com', 80)) # tuple
sock.sendall(...) # specify here
rawreply = sock.recv(4096)
print rawreply
```

- **Turtles All the Way Down**
 - `The protocol stack we have just explored, for example, is four protocols high:`
   - Google Maps URLs return JSON data containing coordinates.
   - URLs name documents that can be retrieved using HTTP.
   - HTTP uses sockets to support document commands like GET.
   - Sockets know only how to send and receive text.
 - `The layers operating below the socket() API are the following:`
   - TCP (The Transmission Control Protocol)
`sockets use it to support network conversations between two programs`
   - IP (The Internet Protocol)
`knows how to send packets between different computers`
   - The "link layer" (at the very bottom)
`consists of network hardware devices (Ethernet ports and wireless cards)`
`which can send physical messages between directly-linked computers`

- **The Internet Protocol**

- **IP Addresses**
```
import socket
print socket.gethastbyname('maps.google.com') # ==> 74.125.235.206
```

- **Routing**

- **Packet Fragmentation**

- **Learning More About IP**


---
#### [**§2. UDP**]()
1. **Should You Read This Chapter?**
Yes, if you are going to be doing any programming on an IP network.

- **Addresses and Port Numbers**
 - like `192.168.1.30:44137` or `192.168.1.9:53`
 - Port Number Ranges
   - Well-Known Ports: 0–1023. `treated special by Operating System`
   - Registered Ports: 1024–49151. `can be register by the IANA`
   - The remaining port numbers: 49152–65535. `free for any use`

- **Sockets**
```
#!/usr/bin/env python
# Foundations of Python Network Programming - Chapter 2 - udp_local.py
# UDP client and server on localhost
import socket, sys
s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
MAX = 65535
PORT = 1060
if sys.argv[1:] == ['server']:
    s.bind(('127.0.0.1', PORT))
    print 'Listening at', s.getsockname()
    while True:
        data, address = s.recvfrom(MAX)
        print 'The client at', address, 'says', repr(data)
        s.sendto('Your data was %d bytes' % len(data), address)
elif sys.argv[1:] == ['client']:
    print 'packet '
    print 'Address before sending:', s.getsockname()
    s.sendto( "hello " + str(i) , ('127.0.0.1', PORT))
    print 'Address after sending', s.getsockname()
    data, address = s.recvfrom(MAX) # overly promiscuous - see text!
    print 'The server', address, 'says', repr(data)
else:
    print >>sys.stderr, 'usage: udp_local.py server|client'
```

- **Unreliability, Backoff, Blocking, Timeouts**
```
#!/usr/bin/env python
# Foundations of Python Network Programming - Chapter 2 - udp_remote.py
# UDP client and server for talking over the network
import socket, sys, random
s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
MAX = 65535
PORT = 1060
if 2 <= len(sys.argv) <= 3 and sys.argv[1] == 'server':
    print "The server:"
    interface = sys.argv[2] if len(sys.argv) > 2 else '' # specify an interface or '0.0.0.0'(any interface)
    s.bind((interface, PORT))
    print 'Listening at', s.getsockname()
    while True:
        data, address = s.recvfrom(MAX)
        if random.randint(0, 1):
            print 'The client at', address, 'says', repr(data)
            s.sendto('Your data was %d bytes' % len(data), address)
        else:
            print 'Pretending to drop packet from', address
elif len(sys.argv) == 3 and sys.argv[1] == 'client':
    print "The client:"
    hostname = sys.argv[2]
    s.connect((hostname, PORT))
    print 'Client socket name is:', s.getsockname()
    delay = 0.1
    while True:
        s.send('This is another message')
        print 'Waiting up to', delay, 'seconds for a reply'
        s.settimeout(delay)
        try:
            data = s.recv(MAX)
        except socket.timeout:
            delay *=2 # wait even longer for the next request
            if delay > 2.0:
                raise RuntimeError('I think the server is down')
        except:
            raise # a real error, so we let the user see it
        else:
            break # we are done, and can stop looping
    print 'The server says', repr(data)
else:
    print >>sys.stderr, 'Error:'
    print >>sys.stderr, 'usage: udp_remote.py server [<interface>]'
    print >>sys.stderr, '   or: udp_remote.py client <host>'
    sys.exit(2)
```

- **Connecting UDP Sockets**
once you have run `connect()`, the operating system will discard any incoming packets to your port whose return address and port number do not match the server to which you are sending packets.

- **Request IDs: A Good Idea**
  - protects you from being confused by duplicate answers to requests that you repeated several times in your exponential backoff loop
 - provide a barrier against spoofing
`none of this is real security—it just protects against naive spoofing attacks`

- **Binding to Interfaces**
 - binding to an IP interface: limit which external hosts can talk to you
 - more network interfaces can bring up more UDP listening servers

- **UDP Fragmentation**

- **Socket Options**
 - `man 7 socket` and `man 7 udp`
 - options:
   - SO_BROADCAST
   - SO_DONTROUTE
   - SO_TYPE
 - `SOCK_DGRAM`:UDP, or `SOCK_STREAM`: TCP

- **Broadcast**
```
#!/usr/bin/env python
# Foundations of Python Network Programming - Chapter 2 - udp_broadcast.py
# UDP client and server for broadcast messages on a local LAN
import socket, sys
s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
s.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1)
MAX = 65535
PORT = 1060
if sys.argv[1:] == ['server']:
  s.bind(('', PORT))
  print 'Listening for broadcast at', s.getsockname()
  while True:
      data, address = s.recvfrom(MAX)
      print 'The client at %r says: %r' % (address, data)
elif len(sys.argv) == 4 and sys.argv[1] == 'client':
  network = sys.argv[2]
  s.sendto( sys.argv[3] , (network, PORT))
else:
  print >>sys.stderr, 'usage: udp_local.py server'
  print >>sys.stderr, '   or: udp_broadcast.py client <host> <message>'
  sys.exit(3)
# you can run like this:
# `python broadcast.py server`
# `for in in {1..4}; do python broadcast.py client 127.0.0.4 'hello, $i'; done`
# on the server side, you get:
# The client at ('127.0.0.1', 55627) says: 'hello, 1'
# The client at ('127.0.0.1', 60106) says: 'hello, 2'
# The client at ('127.0.0.1', 57721) says: 'hello, 3'
# The client at ('127.0.0.1', 42740) says: 'hello, 4'
```

- **When to Use UDP**
 - You might think that UDP would be very efficient for sending small messages. Actually, UDP is **efficient only if your host ever only sends one message at a time, then waits for a response. **
 - If send several messages in a burst, use an intelligent message queue algorithm like ØMQ

- **Summary**
 - **UDP socket** of POSIX network stack: `IP address` + `UDP port number`
 - **server**: `bind()` to an address and port
 - **client**: `sendto()`/`connect(), send()`, OS will choose a port num for u
 - **unreliable** (packets can be droped without notice), so client should **re-transmit**, but should use `exponential backoff` to avoid making busy network even worse


---
#### [**§3. TCP**]()
1. **How TCP Works**

- **When to Use TCP**












- §4. Socket Names and DNS
- §5. Network Data and Network Errors
- §6. TLS and SSL
- §7. Server Architecture
- §8. Caches, Message Queues, and Map-Reduce
- §9. HTTP
- §10. Screen Scraping
- §11. Web Applications
- §12. E-mail Composition and Decoding
- §13. SMTP
- §14. POP
- §15. IMAP
- §16. Telnet and SSH
- §17. FTP
- §18. RPC
- §19. Index


---
| [**建议/意见**](http://jianshu.io/p/63a956887fd4) | [**Errata**](http://jianshu.io/p/e1e05fa9e0a3) |  [**闲话废话**](http://jianshu.io/p/2d3d4348074f) | [**推荐博客**](http://jianshu.io/p/d2c2bb38c31b) |
| :---: | :---: | :---: | :---: |
| | | | | |
~~~
log:
~~~

---

Words Frist:

> I've kept this tutorial in my bookmarks for a long time,
and today I'm studying it, write something to share and keep myself going on

### [Refs][null]

1. [**Geoprocessing with Python**](http://www.gis.usu.edu/~chrisg/python/2008/)

---

## [Week 1:][null]

---

### [Reading Vector Data with OGR][null]

1. **Open Source RS/GIS Modules**
 * [OGR](http://www.gdal.org/ogr/)
 * [GDAL](http://www.gdal.org/)
 * Numeric:
Sophisticated array manipulation
(extremely useful for raster data, already replaced by Numpy)
 * [**Numpy**](http://www.numpy.org/)
 * [**OWSLib**](http://geopython.github.io/OWSLib/)

- **Module free-Standing methods(2 kinds)**
  * Not rely on pre-existing objects: e.g.
  **`driver = ogr.GetDriverByName('ESRI Shapefile')`**
  * Rely on pre-existing objects: e.g.
  ** `ds = driver.Open('data/test.shp')`**

3. **OGR: supported many different vector formats**
 * Get all drivers:
```
for i in range(ogr.GetDriverCount()):
print ogr.GetDriver(i).GetName()
```
 * Driver is for **Write** especially, but we prefer read data with driver too
 * ***Usage:***
```
import ogr
driver = ogr.GetDriverByName('PDF')
dataSource = driver.Open('test.shp', 0)
layer = dataSource.GetLayer()
layer.GetFeatureConut(), layer.GetExtent()
feature = layer.GetFeature(0)
dataSource.Destroy()
```

4. **The Working Directory**
 `import  os`, `os.chdir('chang/dir/to')`

5. **Text file I/O**

6. **Homework**

7. [**OGR API Refs PDF**](http://www.gis.usu.edu/~chrisg/python/2008/ogr_summary.pdf)


---

## [Week 2][null]

---

### [Creating Geometries and Writing Vector Data with OGR][null]

1. **Writing New Data**
 * Create a **New Feature** before write it to a **shapefile**(or other **vector data set**)
 * Create a new feature, we need:
    * **geometry**
    * **feature definition**(may including **field definition**)
 * Creating a New Geometry
    * From an existing feature(see last week)~~(Orz, where is it..)~~
here: `feature = layer.GetFeature(0); featureDefn = feature.GetDefnRef()`
    * Creating it by acting on an existing Geometry(next week)
    * Create a new one from scratch(use the geometry **constructor**):
          **`ogr.Geometry(<OGRwkbGeometryType>)`**
   * Define geometry in a different way for each type:
        **point**, **line**, **polygon**, etc
        * ```
point = ogr.Geometry(ogr.wkbPoint); # Usage: point.AddPoint(x, y, z=0)
line = ogr.Geometry(ogr.wkbLineString)
line.AddPoint(10, 10), line.AddPoint(20, 20), ...
line.SetPoint(0, 30, 30) # 0 indexed, so (10, 10) -> (30, 30)
outring = ogr.Geometry(ogr.wkbLineRing)
outring.AddPoint(0, 100), ..., outring.CloseRings()  or
outring.AddPoint(0, 100)  # (Same thing)
inring (same as outring)
polygon = ogr.Geometry(ogr.wkbPolygon)
polygon.AddGeometry(outring), polygon.AddGeometry(inring)
print polygon.GetGeometryCount(), ring = polygon.GetGeometryRef(INDEX)
```
 * **Feature Definition**

     * ```
featureDefn = feature.GetDefnRef()
feateruDefn = layer.GetLayerDefn()
fieldDefn = feature.GetFieldDefnRef(0)
fieldDefn = featureDefn.GetFieldDefn(1)
#Create one from Scratch:
fieldDefn = ogr.FieldDefn('id', ogr.OFTString) # ogr.OFTInteger...
fieldDefn.SetWidth(4)
```
```
[datasource = [
                       layers = [
                                  features obey featureDefn = [
                                                                geometry +
                                                                fieldDefns
                                                              ]
                                ]
                     ]
```

- **Write to Shp file**
 - **Layer**
```
dataSource = driver.CreateDataSource('new-shpfile.shp')
layer = dataSource.CreateLayer('new-layer', geom_type=ogr.wkbPoint)
layer.CreateField(fieldDefn)
```
 - **Features**
```
featureDefn = layer.GetLayerDefn()
feature = ogr.Feature(featureDefn) # Create a new feature
feature.SetGeometry(point)
feature.SetField('id', 23)
layer.CreateFeature(feature) # Write the feature to the layer
```

- **Remember to `Destroy()` dataSource**

- **Some Python**
 - `info = "A, 12, 34".split(',')`, `id = info[0], x,y = info[1],info[2]`
     \# `split` to list, by default, the delim is `<SPACE>`
 * Data type conversions: **_bool()_, _float()_, _int()_, _long()_, _str()_**, etc

- **Homework**

- **Challenge**

- **My problems**
> When I run some examples in [**geometries_examples.pdf**](http://www.gis.usu.edu/~chrisg/python/2008/geometries_example.pdf)
> I found some different things,
like:  point.Empty(), print point ==> "**POINT EMPTY**"
not "**POINT (0 0 0)**"
> And in [**os2\_hw\_c1.py**](http://www.gis.usu.edu/~chrisg/python/2008/os2_hw_c1.py), `feature.SetField('name', countyName)`
\# 没看懂，有“name”这个field？？ 哪儿设置的？ Key words?


---

## [Week 3:][null]

---

### [Filters and Simple Analysis of Vector Data][null]

1. **Attribute Filters**
```
layer.GetFeatureCount()
layer.SetAttributeFilter()
layer.GetFeatureCount() # see, some features filtered out
layer.SetSpatialFilter(<geom>)
layer.SetSpatialFilterRect(min_x, min_y, max_x, max_y)
```
 * More Complicated Filters
      * [SQL support refs](http://www.gdal.org/ogr/ogr_sql.html), caveats(警告): not all sql is supported

- **Spatial Relations**
```
# 0/1 for True/False
geom1.Intersect(geom2) #==> 0 / 1 # 我理解的，Intersect是 A 和 B 是否 Intersect
geom1.Disjoint (geom2) #==> 0 / 1
geom1.Touches  (geom2) #==> 0 / 1 # TouchES，是 A TouchES B
geom1.Crosses  (geom2) #==> 0 / 1
geom1.Within   (geom2) #==> 0 / 1
geom1.Contains (geom2) #==> 0 / 1
geom1.Overlaps (geom2) #==> 0 / 1 # A & B overlaps, or A overlaps B, like
                                   # "The ends of cloth overlap the bed."
geom1.Equal    (geom2) #==> 0 / 1
```

- **Simple Geoprocessing**
 ```
geom1.Intersection       (geom2) #==> geom_intersection
geom1.Union              (geom2) #==> geom_union
geom1.Difference         (geom2) #==> geom_difference
geom1.SymmetricDifference(geom2) #==> geom_symmdiff
geom1.Buffer          (distance) #==> geom_buffer
geom1.GetEnvelope             () #==> Get extent as a list,
                                   #               a.k.a (minX, maxX, minY, maxY)
```

- **Homework**


---

## [Week 4:][null]

---

### [Projections and Functions][null]

1. For **Spatial Reference Objects**, different ways to specify projections
 - [**Well-Known Text (WKT)**](http://en.wikipedia.org/wiki/Well-known_text)
 - [**PROJ.4**](www.remotesensing.org/geotiff/proj_list/): e.g.
       `+proj=utm +zone=12 +ellps=WGS84 +datum=WGS84 +units=m +no_defs`
 - [**EPSG (European Petroleum Survey Group)**](http://spatialreference.org/ref/epsg/ "Petroleum: 石油"): e.g. `32612`
 - [**USGS**](http://en.wikipedia.org/wiki/United_States_Geological_Survey), see `importFromUSGS()` description at [OGRSpatialReference](http://www.gdal.org/ogr/classOGRSpatialReference.html): e.g.
 ```
(1, 12, (0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0), 12)
```
 - **Others:** ESRI .prj (import only), PCI software, XML

- **Getting a Layer's Projects: spatialRef**
 - If it has projection information, like ".prj" file along with a shapefile:
    `spatialRef = layer.GetSpatialRef()`
 - If not, `GetSpatialRef()` returns "_None_"
 - Also can get from geometry object:
 `spatialRef = geometry.GetSpatialReference()`

- **Create a New Projection**
```
import osr # first of first
spatialRef = osr.SpatialReference()
spatialRef.ImportFromEPSG(32612)
spatialRef.ImportFromProj4(<proj4_string>)
```

- **Exporting a Projection**
```
ExportToWkt()
ExportToPrettyWkt()
ExportToProj4()
ExportToPCI()
ExportToUSGS()
ExportToXML()
```

- **Creating a coordinate Transform**
 - For reproject data, we need to do the _**coordinates transform**_
 - to do that, we need the **spatial reference** for the **source** and **target**
```
sourceSR = osr.SpatialReference()
sourceSR.ImportFromXXXX() # same for targetSR
coordinateTrans = osr.CoordinateTransformation(sourceSR, targetSR)
```

- **Projecting a Geometry**
 - one **geometry** at a time
 - **`geom.Transform ( coordinateTrans )`** # modifies the geometry **in place**

- **Some Python**
 - Define functions: to automate the whole process above
 - Exceptions: **try**: ... **except** <name>: ... **finally**: ...
 - **Modules**
      - Modules are handy places to keep functions, so we can
         `import mymod.py`, then call function using
`mymod.somefuncs()`
      - Find modules, about **PYTHONPATH**
      - `sys.path.append(new_path)`  # add a path to module seaching path
 - Glob:Lists files in a directory that match a pattern
```
import glob
glob.glob('./[0-9].\*')
glob.glob('\*.gif')
glob.glob('?.gif')
for fn in glob.glob('/shapfiles/\*.shp'):
         print fn
```

- Homework

- My Words:
> in file "_some.py_": "**import our\_module**", the search path of "**our\_module.py**" is where we "**python some.py**"
> and after the **import**, we'll have a "**some.pyc**" file.


---

## [Week 5:][null]

---

### [Reading Raster Data with GDAL][null]

1. **GDAL, supports about 75 raster formats**
 - **ArcInfo grids, ArcSDE raster, Imagine
Idrisi, ENVI, GRASS, GeoTIFF**
 - [**HDF4, HDF5**](http://en.wikipedia.org/wiki/United_States_Geological_Survey)
 - **USGS DOQ, USGS DEM**
 - **ECW, MrSID**
 - **TIFF, JPEG, JPEG2000, PNG, GIF, BMP**
 - see more: [**GADL Raster Formats**](http://www.gdal.org/formats_list.html)

- **Importing GDAL**
```
import gdal
         # All gdalconst constants start with a prefix which minimizes
         # the possibility of conflicts with other modules, import them:
from gdalconst import *
```

- **GDAL data drivers**
 - Similar to **OGR** data drivers
 - **Register** one before using it
 - Register all drivers at once: **`gdal.AllRegister()`**
works for reading data but not for **creating data sets**,
for that we need to do more...
 - **Get the Imagine driver and register it**
works fine for reading and creating new Imagine files
```
driver = gdal.GetDriverByName('HFA')
driver.Register()
```

- **Opening a raster data set**
 - Once register the driver, we can use the _stand-alone_
    `Open(<filename>, <GDALAcess>)` method
```
dataset = gdal.Open('aster.img', GA_ReadOnly)`
if dataset is None:
       print 'Could not open file'
       sys.exit(1)
```

- **Getting Image Dimensions**
```
cols  = dataset.RasterXSize
rows  = dataset.RasterYSize
bands = dataset.RasterCount
```

- **Getting Georeference Info**
 - **GeoTransforms** are lists of information used to **georeference** an image
 - From GDAL document, we know:
```
adfGeoTransform[0] # top left x
adfGeoTransform[1] # w-e pixel resolution
adfGeoTransform[2] # rotation, 0 if image is "north up"
adfGeoTransform[3] # top left y
adfGeoTransform[4] # rotation, 0 if image is "north up"
adfGeoTransform[5] # n-s pixel resolution
# Coordinates are for top left corners of pixels
# unlike Imagine, which uses centers
```
Q: what is [**adf**](http://www.coolutils.com/formats/adf) ?
A: **file extension** for the Arc/Info Binary Grid format,
another df from Arc/info is **ARC/INFO ASCII Grid format**
maybe means "**A**cr/info **df**(data format)"
- How to use it?
```
 geotransform = dataset.GetGeoTransform()
 originX     = geotransform[0]
 originY     = geotransform[3] # Good Design!!!
 pixelWidth  = geotransform[1]
 pixelHeight = geotransform[5]
```

- **Computing Pixel Offsets**
 - xOffset = int((x – originX) / pixelWidth)
 - yOffset = int((y – originY) / pixelHeight)
 - **e.g.** (感谢 [**博客园**](http://www.cnblogs.com/gnat-tang/p/3538234.html) 的图)
![](http://images.cnitblog.com/blog/598474/201402/061052413032689.png)
`(x – originX) / pixelWidth ~= 3.25 ==> 3`

- **Getting Pixel Values**
 - the **band index** (_1-based_)
band = dataset.**`GetRasterBand`**(_Index_)
data = band.**`ReadAsArray`**(_xOffset_, _yOffset_, _xSize_(1), _ySize_(1))
value = **data[0, 0]**
 - **Reading an entire image at once**
```
data = band.ReadAsArray(0, 0, cols, rows)
value = data[42, 94]` # row: 42, col: 94
```
 - **Reading Raster Data Efficiently**
```
# Read one pixel at a time is inefficient
# Reading the entire image at once is pretty efficient, but not the best
#  and we should have enough RAM to hold it all or process it
# Most efficient way to access raster data is [by blocks]
#     (Unfortunately, don't always know the <block size>)
Tiled images
      1. Some file types, like most GeoTIFFs, are "not tiled":
         a block is a row
      2. By default Erdas Imagine files, tiled into blocks 64x64
```
   - **Reading one Row at a time**
```
for i in range(rows):
            data = band.ReadAsArray(0, i, cols, 1)
            # do something with data
```
   - **Reading one Row of Blocks**
```
bSize = <BlockSize>
for i in range(0, rows, bSize):
          if i + bSize < rows:
               size = bSize
          else:
               size = rows - i
          data = band.ReadAsArray(0, i, cols, size)
          # do something with data
```
   - **Reading Block by Block**
```
# before we start:
rows, cols = 13, 11
# you should know: range(0,13,5) & range(0,11,5) both return [0, 5, 10]
# Lets go
bSize = 5
for i in range(0, rows, bSize):
          if i + bSize < rows:
               numRows = bSize
          else:
               numRows = rows – i
          for j in range(0, cols, bSize):
               if j + bSize < cols:
                   numCols = bSize
               else:
                   numCols = cols – j
          data = band.ReadAsArray(j, i, numCols, numRows)
          # do something with the data here, before
          # reading the next block
```
 - **Warning!**
    - When reading and writing data with different cell sizes or extent,
    the offsets are different as well!
   - This makes reading and writing by block more complicated because there is more to keep track of

- **Closing the dataset**
 - Close the dataset to **save memory**
 - No **Destroy()** like in **OGR**, Instead, just **`dataset = None`**

- Homework


---

## [Week 6:][null]

---

#### [Map Algebra and Writing Raster Data][null]

1. **Numeric**
 - (**Numpy** is better, but here we firstly see some numeric)
```
import Numeric # python doesn't offer this module now
x = Numeric.arange(20)
print x  # ==> [0 1 .. 20]
print x[10]
Numeric.reshape(x, (2, 10))
print x
a, b = Numeric.array([10, 20, 30]), Numeric.array([20, 40, 60])
print a+b
```

- **Manipulating data with Numeric**
 - Say we want to compute [**NDVI**](http://en.wikipedia.org/wiki/Normalized_Difference_Vegetation_Index) on raster.img
`NDVI = (NIR - RED) / (NIR + RED)`, NIR(band3), RED(band2)
 * Attention: "**Division by Zero Error**"
```
data2 = band2.ReadAsArray(0, 0, cols, rows).astype(Numeric.Float16)
data3 = band3.ReadAsArray(0, 0, cols, rows).astype(Numeric.Float16)
mask = Numeric.greater(data3 + data2, 0) # not 0
ndvi = Numeric.choose(mask, (-99, (data3 - data2) / (data3 + data2)))
```

- **Creating a New Dataset**
 ```
driver = inDataset.GetDriver()
outDataset = driver.Create(filename, cols, rows, 1, GDT_Float32)
# Space on disk is allocated immediately
```

- **Georeferencing a new data set**
```
geoTransform = inDataset.GetGeoTransform()
outDataset.SetGeoTransform(geoTransform )
proj = inDataset.GetProjection()
outDataset.SetProjection(proj)
```

- **Writing to a raster data set**
```
outBand = outDataset.GetRasterBand(1)
outBand.WriteArray(ndvi, 0, 0) # WriteArray(array, xoff, yoff)
```

- **Reading & writing by block**
```
blockSize = 64
for i in range(0, rows, blockSize):
       if i + blockSize < rows:
             numRows = blockSize
       else:
             numRows = rows – i
       for j in range(0, cols, blockSize):
             if j + blockSize < cols:
                  numCols = blockSize
             else:
                  numCols = cols – j
       data = band.ReadAsArray(j, i, numCols, numRows)
       # do calculations here to create outData array
       outBand.WriteArray(outData, j, i)
```

- **Setting histogram**
 - So the ArcGIS will display the Image correctly
Do it **AFTER** done writing to the image
**`histogram: [min, max, bins, list of counts]`** is a list
**`SetDefaultHistogram(min, max, counts)`**
 - Code:
```
outBand.SetNoDataValue(-99)
histogram = outBand.GetDefaultHistogram()
outBand.SetDefaultHistogram(histogram[0], histogram[1], histogram[3])
```

- **Building pyramids**
 - Do this **AFTER** setting the **histogram**
Force Imagine-style pyramid file (.rrd)
 - Code:
```
gdal.SetConfigOption('HFA_USE_RRD', 'YES')
# not sure what the optimal overview list is
outDataset.BuildOverviews ( overviewlist=[3, 9, 27, 81, 243, 729] )
```

- **Different extents**
 - What if we need to do map algebra on two images
   **with different extents**?
```
1.. Find overlapping extents
2.. Just read data in for the overlapping areas
3.. When creating the output, make sure you
           1. set the correct rows and columns and that
           2. the geotransform reflects the correct origin
4.. Make an appropriate decision for dealing with cells that don't line up
```

- **Different cell sizes**
 - **Harder** than different extents
Could use a utility to **resample** images
so they do all have the same cell size
(we'll talk about some of these on the last day)
 - Could **choose an output cell size and use input images as they are**, but how to decide which value to use for images with smaller cells?

- [**Mosaicing**](http://dict.youdao.com/search?q=Mosaicing&keyfrom=dict.index)

- **Homework**

- **My Problem:**
> [os6_hw.py](http://www.gis.usu.edu/~chrisg/python/2008/os6_hw.py) doesn't work, for I don't have "Numeric" module, I have "Numpy" but don't know how to modify...

---

## [Week 7:][null]

---
### [More Raster Processing][null]

1. **Projecting rasters**
 - WKT for input / output projections
```
gdal.CreateAndReprojectImage( <source_dataset>, <output_filename>,
                                   src_wkt = <source_wkt>,
                                   dst_wkt = <output_wkt>,
                                   dst_driver = <Driver>,
                                   eResampleAlg = <GDALResampleAlg>)
```
 - Code:
```
import gdal, osr
from gdalconst import *
inFn = 'd:/data/classes/python/data/aster.img'
outFn = 'd:/data/classes/python/data/aster_geo.img'
driver = gdal.GetDriverByName('HFA')
driver.Register()
# input WKT
inDs = gdal.Open(inFn)
inWkt = inDs.GetProjection()
# output WKT
outSr = osr.SpatialReference()
outSr.ImportFromEPSG(4326)
outWkt = outSr.ExportToWkt()
# reproject
gdal.CreateAndReprojectImage(inDs, outFn, src_wkt=inWkt, dst_wkt=outWkt, dst_driver=driver, eResampleAlg=GRA_Bilinear)
inDs = None
```
- **DOCELL**
 - An AML DOCELL loop processes each cell in a grid individually
 - Can loop through each cell with Numeric but it's really slow
 - Fortunately, there are other (better) ways...
    - Simple model using a DEM,
elevation > 2500 = 1
elevation < 2500 = 0
```
import gdal, Numeric, sys, time, utils
inFn = 'd:/data/demtest/41111f6.img'
outFn1 = 'd:/data/classes/python/data/dem1a.img'
outFn2 = 'd:/data/classes/python/data/dem2a.img'
driver = gdal.GetDriverByName('HFA')
driver.Register()
inDs = gdal.Open(inFn)
inBand = inDs.GetRasterBand(1)
rows = inDs.RasterYSize
cols = inDs.RasterXSize
start = time.time()
# specific processing here, outData
end = time.time()
# outFn changes and print statement at end, but
# everything else is the same for all methods
outDs = driver.Create(outFn1, cols, rows, 1, inBand.DataType)
outDs.SetGeoTransform ( inDs.GetGeoTransform() )
outDs.SetProjection ( inDs.GetProjection() )
outBand = outDs.GetRasterBand(1)
outBand.WriteArray(outData, 0, 0)
outDs = None
print 'Method 1 took', end - start, 'seconds to process'
```
       - Method 1 - **looping through cell-by-cell**
```
# method 1 – looping through cell-by-cell
start = time.time()
outData = Numeric.zeros((rows, cols))
for y in range(rows):
             for x in range(cols):
                  if inData[y, x] > 2500:
                         outData[y, x] = 1
                  else:
                         outData[y, x] = 0
end = time.time()
# Method 1 took 28.36 seconds to process
```
       - Method 2 - **using Numeric.greater()**
```
# method 2 – using Numeric.greater()
start = time.time()
outData = Numeric.greater(inData, 2500)
end = time.time()
# Method 2 took 0.14 seconds to process
```
    - Take home message:
> Built-in functions are **MUCH** faster
than looping through cells

3. **Moving windows (neighborhoods)**
 - ![](http://timge4.126.net/image?w=440&url=http%3A%2F%2F126.fm%2F3tk5sT&gif=0&quality=85)
 - Code:
```
import gdal, Numeric, sys, time
inFn = 'd:/data/classes/python/data/smallaster.img'
outFn = '...' # different for each one
driver = gdal.GetDriverByName('HFA')
driver.Register()
inDs = gdal.Open(inFn)
cols = inDs.RasterXSize
rows = inDs.RasterYSize
inBand = inDs.GetRasterBand(1)
inData = ... # different for each one
outData = ... # different for each one
start = time.time()
# specific processing here
end = time.time()
outDs = driver.Create(outFn, cols, rows, 1, inBand.DataType)
outDs.SetGeoTransform(inDs.GetGeoTransform())
outDs.SetProjection(inDs.GetProjection())
outBand = outDs.GetRasterBand(1)
outBand.WriteArray(outData, 0, 0)
outDs = None
print end - start, 'seconds to process'
```
    - Method 1
```
# truncating the output values using "neighborhood notation" – 44.3 seconds
# must cast input up to int or else calculations get truncated to byte
inData = inBand.ReadAsArray(0, 0, cols, rows).astype(Numeric.Int)
outData = Numeric.zeros((rows, cols), Numeric.Int)
start = time.time()
for i in range(1, rows-1):
           for j in range(1, cols-1):
               outData[i,j] = (inData[i-1,j-1] + inData[i-1,j] + inData[i-1,j+1] + inData[i,j-1] + inData[i,j] + inData[i,j+1] + inData[i+1,j-1] + inData[i+1,j] + inData[i+1,j+1]) / 9
end = time.time()
```
    - Method 2
```
# explicitly rounding the output values using "neighborhood notation" – 50.9 seconds
# can use Int or Float for inData & outData
inData = inBand.ReadAsArray(0, 0, cols, rows).astype(Numeric.Int)
outData = Numeric.zeros((rows, cols), Numeric.Int)
start = time.time()
for i in range(1, rows-1):
           for j in range(1, cols-1):
               outData[i,j] = round((inData[i-1,j-1] + inData[i-1,j] + inData[i-1,j+1] + inData[i,j-1] + inData[i,j] + inData[i,j+1] + inData[i+1,j-1] + inData[i+1,j] + inData[i+1,j+1]) / 9.0)
end = time.time()
```
    - Method 3
```
# implicitly rounding the output values using "neighborhood notation" – 47.4 seconds
# gets rounded when written to byte output dataset
# must be float to get the rounding
inData = inBand.ReadAsArray(0, 0, cols, rows).astype(Numeric.Float)
outData = Numeric.zeros((rows, cols), Numeric.Float)
start = time.time()
for i in range(1, rows-1):
           for j in range(1, cols-1):
               outData[i,j] = (inData[i-1,j-1] + inData[i-1,j] + inData[i-1,j+1] + inData[i,j-1] + inData[i,j] + inData[i,j+1] + inData[i+1,j-1] + inData[i+1,j] + inData[i+1,j+1]) / 9.0
end = time.time()
```
    - Method 4
```
# truncating the output values using "matrix notation" – 0.6 seconds
inData = inBand.ReadAsArray(0, 0, cols, rows).astype(Numeric.Int)
outData = Numeric.zeros((rows, cols), Numeric.Int)
start = time.time()
outData[1:rows-1, 1:cols-1] = (inData[0:rows-2, 0:cols-2] + inData[0:rows-2, 1:cols-1] + inData[0:rows-2, 2:cols] + inData[1:rows-1, 0:cols-2] + inData[1:rows-1, 1:cols-1] + inData[1:rows-1, 2:cols] + inData[2:rows, 0:cols-2] + inData[2:rows,1:cols-1] + inData[2:rows,2:cols]) / 9
end = time.time()
```
    - Method 5
```
# explicitly rounding the output values using "matrix notation" – 3.6 seconds
inData = inBand.ReadAsArray(0, 0, cols, rows).astype(Numeric.Int)
outData = Numeric.zeros((rows, cols), Numeric.Float)
start = time.time()
outData[1:rows-1, 1:cols-1] = Numeric.around((inData[0:rows-2, 0:cols-2] + inData[0:rows-2, 1:cols-1] + inData[0:rows-2, 2:cols] + inData[1:rows-1, 0:cols-2] + inData[1:rows-1, 1:cols-1] + inData[1:rows-1, 2:cols] + inData[2:rows, 0:cols-2] + inData[2:rows,1:cols-1] + inData[2:rows,2:cols]) / 9)
end = time.time()
```
     - Method 6
```
# implicitly rounding the output values using "matrix notation" – 2.1 seconds
# gets rounded when written to byte output dataset
inData = inBand.ReadAsArray(0, 0, cols, rows).astype(Numeric.Float)
outData = Numeric.zeros((rows, cols), Numeric.Float)
start = time.time()
outData[1:rows-1, 1:cols-1] = (inData[0:rows-2, 0:cols-2] + inData[0:rows-2, 1:cols-1] + inData[0:rows-2, 2:cols] + inData[1:rows-1, 0:cols-2] + inData[1:rows-1, 1:cols-1] + inData[1:rows-1, 2:cols] + inData[2:rows, 0:cols-2] + inData[2:rows,1:cols-1] + inData[2:rows,2:cols]) / 9
end = time.time()
```
   - **So what is "matrix notation"?**
    - Obviously much faster than "_neighborhood notation_"
    - Basically **slicing** and **shifting** arrays
    - Output and all input array slices MUST be the **same dimensions**
    - Output array cannot be a **smaller data type** than any of the input arrays

- **Neighborhood by blocks**
 - Too hard to understand, leave for tomorrow


---

## [Week 8:][null]

---
### [Misc Stuff][null]

1. **Random Python stuff**
 - To really delete a feature from a shapefile
```
layer.DeleteFeature(fid)
datasource.ExecuteSQL('REPACK ' + layer.GetName())
```
 - To print something **immediately**
instead of waiting until the program is done:
```
print 'stuff'
sys.stdout.flush()
```

- **GDAL & OGR utilities**
 - Installed with FWTools and available from the FWTools Shell
`for me, it's zsh shell, all ogr utilities and some gdal utilities`
 - Full documentation available at:
[OGR utilities](http://www.gdal.org/ogr_utilities.html)
[GDAL utilities](http://www.gdal.org/gdal_utilities.html)
 - Utilities usage:
   - ogrinfo
```
ogrinfo sites.shp
ogrinfo sites.shp sites
ogrinfo –al sites.shp
ogrinfo sites.shp -al -so -spat 46000 4590000 490000 4600000
```
   - ogr2ogr
```
# Converts from one data type to another
# Converts shapefile to KML
ogr2ogr -f KML -dsco NameField=Name counties.kml ut_counties.shp
# Convert a KML file to a shapefile and reproject
ogr2ogr -f "ESRI Shapefile" -s_srs "EPSG:4326" -t_srs "EPSG:26912" counties_utm.shp counties.kml
# Copy just a subset of fields with –select
ogr2ogr -f KML -select name,state_name counties1.kml ut_counties.shp
# Can use some of the same switches as with ogrinfo, like
# Limit by attribute with –where
# Limit by spatial extent with –spat
# Use –append to append to an existing file
```
   - gdalinfo
```
# Prints info about a raster data set
gdalinfo raster.img
# See the documentation for ways to suppress some of the info
```
   - gdal_translate
```
# Convert from one data type to another
# Convert to full-sized jpg
gdal_translate -of jpeg aster.img aster1.jpg
# Make a much smaller jpg
gdal_translate -of jpeg -outsize 10% 10% aster.img aster2.jpg
# Only use the first band in the image
gdal_translate -of jpeg -outsize 10% 10% -b 1 aster.img aster3.jpg
# Re-order the bands
gdal_translate -of jpeg -outsize 10% 10% -b 3 -b 2 -b 1 aster.img aster4.jpg
# Subset the image
gdal_translate -of jpeg -projwin 458000 4658000 483000 4631000 aster.img aster5.jpg
```
   - gdaladdo
```
# Build overviews (pyramids) for an image
# To build Imagine-style pyramids:
gdal_translate -of hfa -projwin 458000 4658000 483000 4631000 aster.img astersub.img
gdaladdo --config HFA_USE_RRD YES astersub.img 3 9 27 81
```
   - gdalwarp
```
# Reproject images
gdalwarp -of hfa -t_srs EPSG:4326 -r bilinear aster.img aster_geo.img
```
   - gdal_merge.py
```
# Python script to mosaic images
# Only works with some output formats (not jpeg or png, for example)
gdal_merge.py -o mosaic1.tif -of gtiff -co tfw=yes q0519ne.jpg q0520nw.jpg
# Mosaic and subset at the same time
gdal_merge.py -o mosaic2.tif -of gtiff -co tfw=yes -ul_lr 424600 4622700 430000 4620000 q0519ne.jpg q0520nw.jpg
# Make a reduced resolution mosaic
gdal_merge.py -o mosaic3.tif -of gtiff -co tfw=yes -ps 100 100 q0519ne.jpg q0520nw.jpg
# Mosaic lots of files at once
gdal_merge -o mosaic4.tif -of gtiff -co tfw=yes -ps 100 100 --optfile files.txt
# where files.txt has filenames, one per line, like: q2.jpg \n q3.jpg \n etc
```

- **Calling other programs from Python**
 - os.system(<command_string>)
```
import os
os.system('gdaladdo --config HFA_USE_RRD YES q0520nw.img 3 9 27 81')
# Batching it:
import glob, os
for fn in glob.glob('d:/data/*.img'):
        os.system('gdaladdo --config HFA_USE_RRD YES ' + fn + ' 3 9 27 81')
# Open ArcMap and wait for it to close (use / or \\ for directory separators)
os.system('C:/Bin/ArcMap.exe')
os.spawnl(os.P_WAIT, 'C:/Bin/ArcMap.exe')
# Open ArcMap and let Python continue on its way
os.spawnl(os.P_NOWAIT, 'C:/Bin/ArcMap.exe')
# Open all .py files in a directory with Crimson Editor (use Windows notation \ for passed arguments)
os.spawnl(os.P_NOWAIT, 'C:/Crimson Editor/cedt.exe', 'cedt.exe', 'd:\data\classes\python\os8\*.py')
```
 - **Open Files**
   - Windows only
   - The file extension must have an associated application
   - Python has no idea what you do with the file once it's open
`os.startfile('test.doc')`

- **Using GDAL & OGR with ArcGIS**
 - Need to install GDAL, Numeric, etc for the ArcGIS version of Python (see the installation instructions from the first day)
 - Can import arcgisscripting , gdal, ogr, Numeric, etc all in the same python script
 - I tried using the script's output as an input to another tool in a model, and ArcGIS died a horrible death (without even trying to run the script! – when the user chooses the input and output files)
 - What I learned after wasting many hours trying to make this work: Mixing gdal and arcgisscripting is fine, but avoid ArcMap

### [That's it, folks!][null]

[null]: file:///

---
~~~
log: $1. Finished at 01:50:08, Saturday, February 08 2014; $2. modified a lot. Friday, February 28 2014; $3. Sunday, January 04 2015;
~~~



- [**Improv Wisdom: Don't Prepare, Just Show Up**](http://book.douban.com/subject/2887103/)

---
### [TOC]()
- prologue
- the first maxim: **say yes**
- the second maxim: **don't prepare**
- the third maxim: **just show up**
- the fourth maxim: **start anywhere**
- the fifth maxim: **be average**
- the sixth maxim: **pay attention**
- the seventh maxim: **face the facts**
- the eighth maxim: **stay on course**
- the ninth maxim: **wake up to the gifts**
- the tenth maxim: **make mistakes, please**
- the eleventh maxim: **act now**
- the twelfth maxim: **take care of each other**
- the thirteen maxim: **enjoy the ride epilogue**

---
~~~
                                  Run, Forest, Run
~~~

## [prologue]()
1. The older Days
 - 11 years old, got one **"paint-by-numbers kit"**, then "Patsy(author) is an artist".
 - I found the way to live: always go by the rules, use the recipe, follow the pattern, rehearse the script, copy the masters, etc. Be short, follow the lines in everything.

- Painting outside the lines
 - As improvisers we discover that we don't need this unrealistic guarantee to begin. The only real failure is not doing anything. Why not explore, get moving on your life, **kick-start your dreams, paint outside thi lines?**
- The Improvisers's World
 - secret society: "the improv world", they are **can-do** people, they **improvise**.
- The First Improvisers
 - Improvising can give us a taste of the **primal freedom** that our early ancestors experienced before they turned their attention to planning; it is an exhilarating way to live.
- Not Everything is Funny
 - Improvisation is not the study of comedy.
 - An excellent manual on swimming is useless until you jump into the pool.
 - My aim is to **nudge** out of your comfortable poolside chair, guide you to climb onte the high board, and cheer you on as you dive into to the clear, crystal water.
- When Not to Improvise
 - Don't over acting, it's a tool should always be put into service with a healthy dose of common sense.
 - A successful life involves both planning and improvising.
 - "going with the flow" ?
"Pisces Mortui Solum Cum Flumine Natant". (Only the dead fish go with the flow")

---
###### the first maxim:
## [say yes]()
1. ...yes I said yes I will Yes.  -- James Joyce, _Ulysses_
 - crazy to "yes" to everything,
 - Saying yes (and follow through with support) prevent you from committing a cardinal sin - blocking.
 - As we practice this affirmative response to life, positive things can happen.
 - Try this: for one day say yes to everything. Set your own preferences aside. See what's gonna happen
- Inventing Proverbs
 - "Try ... not ... to ... laugh ... when ... you ... look ... at ... your ... waistline."
Yes, yes, yes, yes, yes, yes!
- Exercise the yes muscle. This builds optimism and hope.

---
###### the second maxim:
## [don't prepare]()
1. Empty yourself of everything. -- Lao Tse, _Tao Te Ching_
 - We often substitude planning, ruminating, or list-making for actually doing something about our dreams.
 - Instead of preparing an outcome, ready yourself, for whatever may come.
 - Substitute attention for preparation. Then you will be working in real time.
- Try this:
 - speand a day without plan, have an adventure.
 - Substitute Zen-like attention for planning.
 - Relax
- Coping with Fear
 - Performance anxiety comes from excessive self-focus. "Everyone is looking at me, I'm not good enough..."
 - Not a big deal.

---
#### the third maxim:
## [just show up]()
1. Stop talking. Start walking. -- L.M. _Heroux_
 - Just show up
 - Shit off **procrastination**, **laziness**, **fears**.
 - Kick-start your life - walk, run, crawl, flaw, bicycle.
- Using Rituals
 - create a simple ritual
 - think of what will make the habit easy or more attractive to do.
 - Set a time to do the preparatory ritual each day
 - Focus on doing it faithfully.
- Showing Up for others
- Changing Location
 - e.g. eat at different places. make a change
 - Walk, run, bike, skip to the places that you need to be.
 - Motivation is not a prerequisite for showing up.



- the fourth maxim: start anywhere
- the fifth maxim: be average
- the sixth maxim: pay attention
- the seventh maxim: face the facts
- the eighth maxim: stay on course
- the ninth maxim: wake up to the gifts
- the tenth maxim: make mistakes, please
- the eleventh maxim: act now
- the twelfth maxim: take care of each other
- the thirteen maxim: enjoy the ride epilogue



---
~~~
log: $1. created at 23:44:08, Wednesday, February 26 2014;
~~~

- [Xah Emacs Lisp Tutorial][xah_lisp]

[xah_lisp]: http://ergoemacs.org/emacs/elisp.html







---
#### [ELisp Basics][elisp_basic]

```
message, nil, integerp, equal, string-equal, setq, if, let, progn, while, interactive

(print (format "yay %d" x))
(defun fun_name (params) "msg" body)
```

[elisp_basic]: http://ergoemacs.org/emacs/elisp_basics.html








---
#### [Overview of Text-Processing in Emacs Lisp][overview]

```
point
point-{min, max}
line-{beginning, end}-position
region-{beginning, end}
{goto, forward, backward}-char
delete-{char, region}
insert

```

[overview]: http://ergoemacs.org/emacs/elisp_editing_basics.html







---
#### [Emacs Lisp Examples][emacs-lisp-examples]

1. [How to Write a Emacs Major Mode for Syntax Coloring][highlight]

[emacs-lisp-examples]: http://ergoemacs.org/emacs/elisp_examples.html
[highlight]: http://ergoemacs.org/emacs/elisp_syntax_coloring.html








---
#### [How to Evaluate Emacs Lisp Code][evaluate-emacs]


[evaluate-emacs]: http://ergoemacs.org/emacs/elisp_eval_lisp_code.html

- [Inkscape  Official Tutorials](http://www.inkscape.org/en/learn/tutorials/)




---
### TOC

-  Basic tutorial
-  Advanced tutorial
-  Shapes tutorial
-  Bitmap tracing tutorial
-  Calligraphy tutorial
-  Elements of Design tutorial
-  Tips and tricks
-  Interpolate





---
###  [Basic tutorial][basic]
- The Basic Tutorial covers
 - **canvas navigation**,
 - **managing documents**,
 - **shape tool basics**,
 - **selection techniques**,
 - **transforming objects with selector**,
 - **grouping**,
 - **setting fill and stroke**,
 - **alignment**, and
 - **z-order**.





---
### [Advanced tutorial][advanced]
- This tutorial covers
 - **copy/paste**,
 - **node editing**,
 - **freehand** and
 - **bezier drawing**,
 - **path manipulation**,
 - [**booleans**][bool],
 - **offsets**,
 - [**simplification**][simpli], and
 - **text tool**
 - The **ultimate power tool** of Inkscape is the **`XML editor`**





---
### [Shapes tutorial][shapes]

1. **Rectangle**: `F4`
![](http://inkscape.org/design/doc/shapes/shapes-f08-en.svg.png)

- **Ellipse**: `F5`
![](http://inkscape.org/design/doc/shapes/shapes-f11-en.svg.png)

- **Star**
![](http://inkscape.org/design/doc/shapes/shapes-f14-en.svg.png)
![](http://inkscape.org/design/doc/shapes/shapes-f16-en.svg.png)

- **Spiral**
![](http://inkscape.org/design/doc/shapes/shapes-f22-en.svg.png)

- **Conclusion**
Inkscape's shape tools are very powerful. **Learn their tricks** and **play with them at your leisure** — **this will pay off** when you do your design work, because using shapes instead of simple paths often makes vector art faster to create and easier to modify.





---
### [Bitmap tracing tutorial][tracing]

1. **Brightness Threshold**
![](http://inkscape.org/design/doc/tracing/tracing-f02-en.svg.png)

- **Optimal Edge Detection**
![](http://inkscape.org/design/doc/tracing/tracing-f03-en.svg.png)

- **Color Quantization**
![](http://inkscape.org/design/doc/tracing/tracing-f04-en.svg.png)

- **After tracing, we Simplify**
![](http://inkscape.org/design/doc/tracing/tracing-f06-en.svg.png)





---
### [Calligraphy(书法) tutorial][caligraphy]
1. There are **three main styles** of calligraphy:
 - Western or Roman
 - Arabic
 - Chinese or Oriental
This tutorial focuses mainly on **Western calligraphy**, as the other two styles tend to use a brush (instead of **a pen with nib**), which is not how our Calligraphy tool currently functions.

- **Angle & Fixation**
 - fixed angle
![][angle]

 - fixed angle
![][fixation]

- **Tremor**
![][tremor]

- **Wiggle & Mass**
 - [example][inkscape]

- **Conclusion**
Calligraphy is **not only fun**; it's a deeply **spiritual art** that may transform your outlook on everything you do and see. Inkscape's calligraphy tool can only serve as a modest introduction. And yet it is very nice to play with and may be useful in real design. Enjoy!






---
### [Elements of Design tutorial][elements]
1. **Overview**
![][elems]

- **Elements of Design**
 - [**Line**][line], [**Shape**][shape],  [**Size**][size],  [**Space**][space],  [**Color**][color], [**Texture**][texture], [**Value**][value]

- **Principles of Design**
 - [**Balance**][balance], [**Contrast**][contrast], [**Emphasis**][emphasis], [**Proportion**][proportion], [**Pattern**][pattern], [**Gradation**][gradation]

- **Composition: make them together**
![][composition]





---
### [Tips and tricks][tipstricks]




---
### [Interpolate][interpolate]



[basic]: http://inkscape.org/doc/basic/tutorial-basic.html
[shapes]: http://inkscape.org/doc/shapes/tutorial-shapes.html
[advanced]: http://inkscape.org/doc/advanced/tutorial-advanced.html
[tracing]: http://inkscape.org/doc/tracing/tutorial-tracing.html
[caligraphy]: http://inkscape.org/doc/calligraphy/tutorial-calligraphy.html
[elements]: http://inkscape.org/doc/elements/tutorial-elements.html
[tipstricks]: http://inkscape.org/doc/tips/tutorial-tips.html
[interpolate]: http://inkscape.org/doc/interpolate/tutorial-interpolate.html


[bool]: http://inkscape.org/design/doc/advanced/advanced-f08-en.svg.png
[simpli]: http://inkscape.org/design/doc/advanced/advanced-f13-en.svg.png
[angle]: http://inkscape.org/design/doc/calligraphy/calligraphy-f04-en.svg.png
[fixation]: http://inkscape.org/design/doc/calligraphy/calligraphy-f06-en.svg.png
[tremor]: http://inkscape.org/design/doc/calligraphy/calligraphy-f07-en.svg.png
[inkscape]: http://inkscape.org/design/doc/calligraphy/calligraphy-f10-en.svg.png
[elems]: http://inkscape.org/design/doc/elements/elements-f01-en.svg.png
[line]: http://inkscape.org/design/doc/elements/elements-f02-en.svg.png
[shape]: http://inkscape.org/design/doc/elements/elements-f03-en.svg.png
[size]: http://inkscape.org/design/doc/elements/elements-f04-en.svg.png
[space]: http://inkscape.org/design/doc/elements/elements-f05-en.svg.png
[color]: http://inkscape.org/design/doc/elements/elements-f06-en.svg.png
[texture]: http://inkscape.org/design/doc/elements/elements-f07-en.svg.png
[value]: http://inkscape.org/design/doc/elements/elements-f08-en.svg.png
[balance]: http://inkscape.org/design/doc/elements/elements-f09-en.svg.png
[contrast]: http://inkscape.org/design/doc/elements/elements-f10-en.svg.png
[emphasis]: http://inkscape.org/design/doc/elements/elements-f11-en.svg.png
[proportion]: http://inkscape.org/design/doc/elements/elements-f12-en.svg.png
[pattern]: http://inkscape.org/design/doc/elements/elements-f13-en.svg.png
[gradation]: http://inkscape.org/design/doc/elements/elements-f14-en.svg.png
[composition]: http://inkscape.org/design/doc/elements/elements-f15-en.svg.png




---
~~~
log: $1. created long time ago, now is Fri Apr 11 16:45:34 CST 2014;
~~~



---
### Refs
- [Learning IPython for Interactive Computing and Data Visualization][ipython_for_something]

[ipython_for_something]: http://book.douban.com/subject/24525190/










---
### TOC
- Preface
- §1. Getting Started with IPython
- §2. Interactive Work with IPython
- §3. Numeric Computing with IPython
- §4. Interactive Plotting and Graphical Interfaces
- §5. High-Performance and Parallel Computing
- §6. Customizing IPython









---
#### [Preface]()
1. **Get the example code**
 - Download from [**Packt Publishing**][packet_pub]
 - Or, my archive: [**Learning ... Visualization.zip**][my_archive]

[packet_pub]: http://www.packtpub.com/learning-ipython-for-interactive-computing-and-data-visualization/book
[my_archive]: http://gnat-tang-archive.qiniudn.com/file_Learning%20IPython%20for%20Interactive%20Computing%20and%20Data%20Visualization.zip






---
#### [§1. Getting Started with IPython]()
1. **Packages** (check all in one site: [PyPI - Python Package Index][py_pk_index])
 - IPython
 - Numpy
 - SciPy
 - Matplotlib
 - Matplotlib-basemap
 - NetworkX
 - Pandas
 - [PIL - _Python Image Library_][pil]
 - PySide (Python wrapper around Qt)
 - PyQt(similar to PySide but with a different license)
 - Cython( for using c code in python)

- **Getting binary installers**
 - Windows
 - OS X
 - Linux
   - Debian: `sudo apt-get install ipython-notebook`
   - Fedora: `sudo yum install python-ipython-notebook`
   - Using the Python packaging system:
`easy_install ipython` # will be replaced by `pip` someday
`pip install ipython` # recommended

- **Optional dependencies for IPython**
 - **pyreadline**: line-editing
 - **pyzmq**: needed for IPython's parallel computing features, such as
Qt console and Notebook
 - **pygments**: highlight syntax in Qt console
 - **tornado**: required by web-based notebook
```
# all in all:
easy_install ipython[zmq,qtconsole,notebook]
```

- **Installing the development versions(for experienced users)**
```
git clone https://github.com/ipython/ipython.git
cd ipython
python setu.py install # or: python setupegg.py develop
```

- **Ten IPython essentials**
 - **Running the IPython console**: `ipython`
`%pinfo supper`, or `pinfo supper`, or `supper?`: "object supper not found"
appending `?` or `??` to get information about var
 - **Using IPython as a system shell**
 Ipython magic commands: with prefix `%`(can be omitted)
 - **Using the history**
recent past output: `_`, then `__`, then `___`, that's all.
recent past input: `_i`, then `_ii`, then `_iii`, that's all.
 - **Tab completion**
 - **Executing a script with the `%run` command**
 - Quick **benchmarking** with the `%timeit` command
```
%timeit [x*x for x in range(100000)]
# output: 100 loops, best of 3: 6.33 ms per loop
```
 - Quick **debugging** with the `%debug` command
and: `%pdb` magic command to activate the automatic execution of the
IPython debugger as soon as an exception is raised.
 - **Interactive computing with Pylab**
```
%pylab # then we entered pylab session
x = linspace(-10., 10., 1000)
plot(x, sin(x)) # tah~
```
 - **Using the IPython Notebook**
```
ipython notebook # run it in shell
# then go to 127.0.0.1:8080 in your browser
```
 - **Customizing IPython**
```
ipython profile create # run it in a shell
# output: [ProfileCreate] Generating default config file: u'/root/.config/ipython/profile_default/ipython_config.py'
#         [ProfileCreate] Generating default config file: u'/root/.config/ipython/profile_default/ipython_notebook_config.py'
```

- **Summary**

[py_pk_index]: http://pypi.python.com
[pil]: http://pythonware.com/products/pil









---
#### §2. Interactive Work with IPython
1. **The extended shell: iPython**

- **Navigating through the filesystem**
```
import urllib2, zipfile
url = 'http://ipython.rossant.net/'
filename = 'facebook.zip'
downloaded = urllib2.urlopen(url + filename)
folder = 'data'
mkdir $folder
cd $folder # in memory, not in filesystem
with open(filename, 'wb') as f:
      f.write(downloaded.read())
with zipfile.ZipFile(filename) as zip:
      zip.extractall('.')
cd facebook
```
```
%bookmark fbdata
%cd fbdata
```

- **Accessing the system shell from IPython**
```
files = !ls -a -f | grep '.py'
!head -n 5 {files[0]}
path = !echo '$PATH'
path = !echo "$PATH"
%alias largest ls -1sSh | grep %s
```

- **The extended Python console**
 - some features like in shell:
   - `Ctrl + R`: reverse-i-search
   - `%hist` or `%history`
```
%hist 4-6 8`
%hist -nop # -n, line num; -o, output; -p, prompt; -g, grep
```

- **Import/export of Python code**
 - import: `%run test.py params`
 - export: `%edit`, open and edit, close it and then run it automaticaly

- **Dynamic [introspection][introspection]**
 - Tab completion
 - Source Code introspection
```
%pfile python_file # like an python file viewer
%psource # check source code, `%psource pinfo`
%pdef psource # => psource(self, parameter_s='', namespaces=None)
%pdoc # Print the docstring for an object.
```

- **Using the interactive debugger**(p.32, leave for later reading)
 - Interactive benchmarking and profiling
   - Controlling the execution time of a command
   - Profiling a script

- **Using the IPython notebook**
 - frontend offer us: **powerful HTML UI** && **JSON**
(alternative(not recommanded): [**qtconsole**][qtconsole])
 - Installation: use `pip` or `easy-install`
 - **The Notebook Dashboard**
   - run `ipython notebook` in console
   - go [http://127.0.0.1:8888/](http://127.0.0.1:8888/)
   - WebSocket protocol is necessary for notebook to work
   - Online notebooks viewer: [nbviewer][nbviewer]
 - Working with cells
```
Cntl + Enter
Shift + Enter
Cntl + M
```
 - Cell magics
```
%% instead of %
%%file Desktop/file.txt # create a file named "file.txt"
%lsmagic # list all magic commands (line magics and cell magics)
```
 - Managing notebooks
```
Cntl + S to save
rename
```
 - Multimedia and rich text editing (markdown, etc)
[我的 Markdown 简明教程][markdown_tutorial]
 - Graph plotting

- **Summary**

[qtconsole]: http://ipython.org/ipython-doc/dev/interactive/qtconsole.html
[nbviewer]: http://nbviewer.ipython.org/
[markdown_tutorial]: http://jianshu.io/p/7bd23251da0a








---
#### §3. Numeric Computing with IPython
> before we start this chapter:
1. run `ipython notebook` in console
2. Go to [http://127.0.0.1:8888/](http://127.0.0.1:8888/)
3. Import notebook: `Leaing_IPython/Chapter 03/9932_03_{01,02,03}.ipynb`
See how to do it, [Pic 01](http://gnat-tang-shared-image.qiniudn.com/qiniu-ipython_1.png), [Pic 02](http://gnat-tang-shared-image.qiniudn.com/qiniu-ipython_2.png) (my screenshots)

1. Code 1
```
x = array([1, 2, 3])
x.shape
x.dtype # => dtype('int32')
x = array([1, 2, 3], dtype=float64)
y = np.fromstring('1 2 5 10', dtype=int, sep=' ')
In[10]: print "good" # => good
In[11]: exec In[10] # => good
```
`Blaze = Numpy + Pandas + SciPy + Numba + Theano`







---
§4. Interactive Plotting and Graphical Interfaces
§5. High-Performance and Parallel Computing
§6. Customizing IPython







---
~~~
log: $1. created long time ago, Friday, March 07 2014; $2. added something, Friday, March 07 2014; $3. Sat Apr 12 21:08:18 CST 2014: modified;
~~~


[introspection]: http://dict.youdao.com/search?q=introspection&keyfrom=dict.index

---
[**Main**](http://jianshu.io/p/a160816a18b2)[** » 读书笔记**](http://jianshu.io/p/d74b041f0ceb)

---
### [Refs]()
- [**Learning Python**](http://book.douban.com/subject/3988517/)

---
### [TOC]()
- Part I: Getting Started
 - §1. A Python Q&A Session
 - §2. How Python Runs Programs
 - §3. How You Run Programs
- Part II: Types and Operations
 - §4: Introducing Python Object Types

---
~~~
                                  Run, Forest, Run
~~~
---
## [Part I: Getting Started]()
#### [§1. A Python Q&A Session]()
1.  **Python: Object-Oriented Scripting Language**
- What I can do with Python:
 - System Programming;
 - GUIs;
 - Internet Scripting;
 - Component Integration;
 - Database Programming;
 - Rapid Prototyping;
 - Numeric and Scientific Programming;
 - And more: Gaming, Images, Data Mining, Robots, Excel...
- Python's Technical Strength: Object-Oriented & Functional
- Free, portable, powerful, mixable, easy to learn.

---
#### [§2. How Python Runs Programs]()
1. Python Interpreter
- Program Execution
 - Programmers' view
  - Python's view: byte code compilation & Python Virtual Machine
```
Source[m.py] -> Byte Code[m.pyc] -> Runtime[PVM]
```
 - Performance Implications & Development Implications
 - Execution Model Variations:
```
Python(CPython),         the Standard;
Jython,		       Python for Java;
IronPython, 	      Python for .Net;
Stackless,	  Python for concurrency;
PyPy, 		        Python for speed.
```
 - Execution Optimization Tools
```
Cython:             A Python / C hybrid
Shed Skin:	      A Python-to-C++ translator
Pysco:		      The original JIT(just-in-time) compiler
```
 - Frozen Binaries

---
#### [§3. How You Run Programs]()
1. the Interactive Prompt
- Running code interactively
- System Command Line and Files
           1. [A Script file] -> [Running files with command lines]
	   2. Command-line Usage Variations: python a_file.py > save_output.txt
     4. Unix-Style Executable Scripts: #!
           1. Unix Script Basics:
	         1. Their first line is special: #! (hash bang / shebang)
		 2. They usually has executable privileges
		 3. The Unix env Loopup trick:
		       #!/usr/bin/env python
		             1. avoid hardcoding the path to the Python interpreter
			     2. by looking in all the directories listed in $PATH
     5. Import && reload && modules and namespaces
     6. Using exec(open('a_module.py').read()) to Run module Files
     7. The IDLE user interface (IDLE -> IDE): idle-python2.7(python -m idlelib.idle)
     8. Other Launch Option
           1. Embedding Calls: in C, it's like:
	        		#include<Python.h>
				Py_Initialize();
				PyRun_SimpleString("x = 'brave ' * 100");

Part II: Types and Operations

Chap 4: Introducing Python Object Types
     1. The Python Conceptual Hierarchy
           1. Programs are composed of modules
	   2. Modules contain expression
	   3. Statemonts contain expressions
	   4. Expressions create and process objects
     2. Why use built-in types?
           1. Built-in objects make programs easy to write
	   2. Built-in objects are components of extensions.
	   3. Built-in objects are often more efficient than custom data structures
	   4. Buitt-in objects are a standard part of the language
     3. Python's Core Data Types
     	1. Overall:
		 Object-type				Example literals/creation
	  	 Numbers				1573
	   	 Strings				'spam'
	   	 Lists					[1, [2, 4], 5]
	   	 Dictionaries				{'food': 'spam', 'taste': 'yum'}, dict(hours=10)
	   	 Tuples					(1, 'spam', 4, 'U'), tuple & namedtuple
	   	 Files					open('egg.txt'), open('file-path', 'wb')
	   	 Sets					set('abc'), {'a', 'b', 'c'}
	   	 Other core types			Booleans, types, None
	   	 Program unit types			Funtions, modules, classes
	   	 Implementatino-related types		Compiled code, stack tracebacks
        2. Number
	      1. len(str(2 ** 10000000)) # how many digits in a big number
	      2. import math     // math.pi               // math.sqrt(24)
	      3. import random   // random.random()	  // random.choice([4, 42, 20, 20])
	3. Strings
	      1. Sequence Operations: len(A_STRING); A_STRING[N]; A_STRING[-N]; A_STRING[M:N]; A_STRING * 6;
	      2. Immutability (immutable -> unchangable)
	            1. s[0] = 'z'                # Immutable objects cannot be changed
		    2. s = 'z' + s[1:] 		 # But we can make new objecs
		    3. list(s) 	 		 # Expand to a list: [...]
	      3. Type-Specific Methods
	      	    1. e.g. #1   # 1st example in file [Python_examples]
		    2. upper(); isalpha(); rstrip() # Remove whitespace characters on the right side
		    3. '%s, eggs, and %s' % ('spam', 'SPAM')
		    4. '{0}, eggs, and {1}'.format('spam', 'SPAM')    # Formatting method (2.6+, 3.0+)
		    5. '{}, eggs, and {}'.format('spam', 'SPAM')      # Formatting method (2.7+, 3.1+)
		    6. '{:,.2f}'.format(2044.420)
		    7. '%+4.2f' % (-3.2420420)
	      4. Getting help
	      	    1. dir(s)
		    2. help(s.__add__) # Not help(s.__add__())
	      5. Unicode Strings
	      6. Pattern Matching
	            1. import re # regular expression
		    2. ... (for later futher reading)
	4. Lists
	      1. Sequence Operations: (like STRING)
	      2. Type-Specific Operations: append(STR); pop(N); sort(); reverse();
	      3. Bounds Checking: L[99] ... error text omitted ... IndexError: list assignment index out of range
	      4. Nesting
	      5. Comprehensions
	      	    1. e.g. #5
		    2. diag = [M[i][i] for i in [0, 1, 2]]
		    3. ...
	5. Dictionaries
	      1. Mapping Operations:
	      	 	 1. bob2 = dict(name = 'Bob', job = 'dev', age = 40)
			 2. bob3 = dict(zip(['name', 'job', 'age'], ['Bob', 'dev', 40])) # Zipping
	      2. Nesting Revisited
	      3. Missing Keys:
	      	 	 1. >>> 'f' in D
			    False
			 2. >>> if not 'f' in D:
			    	   print('missing')
			    Missing
			 3. >>> value = profile.get('gender', 'male') # D.get(k[,d]) -> D[k] if k in D, else d.  d defaults to None.
			 4. D.keys(); D.values();
	      4. Sorting Keys: for Loops
	      5. Itaration and Optimization: for x in [1, 2, 3, 4]: ...  # This is what a list comprehension deos,
	      	 	       		     	      	     	    	 # Run the iteration protocol internally.
        6. Tuples
	      1. T = (1, 2, 3, 4)              # A 4-item tuple / T = 1, 2, 3, 4
	      2. len(T)        	  	       # 4
	      3. T[0]; T.index(4); T.count(4);
	      4. Why Tuples: it's like a list, but supports fewer operations, but it's [Immutability]
	7. Files
	      1. f = open('data.txt', 'w')                   # make a new file in output mode
	      2. f.write('hello\n');  			     # write strings
	      3. f.close();
	      4. text = f.read();
              5. Binary Bytes Files
	            1. import struct
	      	    2. packed = struct.pack('>i4sh', 7, b'spam', 8)              # create packed binary data
	      	    3. data = open('data.bin', 'rb').read()	   		   # open/read binary data file
	      6. Unicode Text Files
	            1. file = open('unidata.txt', 'w', encoding='utf-8');


---
~~~
log: $1. Note of Python	--- Fri Jan 24, 2014;
~~~

---
### Refs:
- [**Packet Guide to Core Network Protocols**](http://book.douban.com/subject/6520010/)

---
### TOC:
- Preface
- Networking Models
- Ethernet
- Internet Protocol
- Address Resolution Protocol
- Network Equipment
- Internet Control Message Protocol
- Subnetting and Other Masking Acrobatics

---
~~~
                                  Run, Forest, Run
~~~
#### Preface

1. Why **Packet** Guide to Core Network Protocols
 - Packets have many qualities, but one thing they never do is **lie**. If a packet is present, it is there because some device or network host put it there.

---
#### §1. Networking Models
> **Good Starting Point**:
Basic network architecture and construction
**How to**:
focuses on the practical TCP/IP model,
using the OSI model as a reference point.

1. **What is a Model**
 - A model is a way to organize a system’s functions and features to define its structural design.
 - A design can help us understand how a communication system accomplishes tasks to form a protocol suite.

- **Why Use Models**

- **OSI Models**
 - four parts:
   - Part 1 – The Basic Model
   - Part 2 – Security Architecture
   - Part 3 – Naming and Addressing
   - Part 4 – Management Framework
 - OSI—Beyond the Layers
   - The architects of this model spent a lot of time thinking about and enumerating those items demanded at each layer and what is necessary to communicate with the layers immediately above and below.
 - OSI/ITU-T Protocols, used in VoIP, etc

4. **TCP/IP**
 - Introducing TCP/IP
 - TCP/IP and the RFCs
    - Application
```
Support flexibility (naming and length) in hostnames; Map domain names appropriately; Handle DNS errors. e.g.
```
    - Transport
```
provides end-to-end communication services based either on TCP(connection-oriented) or UDP(connectionless)
```
    - Internet
```
specify the use of IP, ICMP, and Internet Group Management Protocol. Operationally, this is a connectionless “best effort” protocol concerned with addressing, type of service, security, and fragmentation. It relies on upper-layer protocols for accurate delivery.
```
    -  Link Layer
```
This is the network interface,  and includes framing and media access to communicate directly with the network to which it is attached.
```
    - Physical
```
Typically, the network interface card or port defines the Physical Layer
```
 - The Practical Side of TCP/IP
 - Encapsulation
```
Encapsulation is the method by which the various layers interact and pass information up and down the protocol stack.
```
 - Addressing
 - Equipment

- **Review Questions**
```
Q: What is the name of the process by which an upper-layer protocol is wrapped up in a lower-layer protocol?
A: Encapsulation
Q: Name four communication models.
A: TCP/IP, OSI, SNA, Appletalk, Novell (IPX/SPX)
Q: What two documents specify the standardization of the OSI model?
A: ISO/IEC 7498 and ITU-T X.200
Q: How many layers are in the OSI and TCP/IP models, respectively?
A: 7, 5
Q: Name the layers of the OSI model.
A: Application, Presentation, Session, Transport, Network, Data Link, Physical
Q: Name the layers of the TCP/IP model.
A: Application, Transport, Internet, Data Link, Physical
```

- **Lab Exercises**
 - Activity 1—Examining Encapsulation
`airmon-ng start mon0`, then `wireshark&`, choose interface **mon0**, then **start a new live capture**
 - Activity 2—Protocol Distribution
 - Activity 3—Developing a Protocol/Architecture


---
#### [**§2. Ethernet**]()
1. **Remember the Models**

- **Structure**
 - **preamble**
`a series of alternating 1s and 0s: provide timing for the receiving interface. `
   - Ethernet II: 8 bytes of `1-0-1-0` s
   - 802.3 frame: 7 bytes preamble `1-0-1-0` s + **SFD**
`SFD - Start Frame Delimiter, 10101011`
   - Preamble and SFD are invisible to packet analyzer
 - **Source and Destination MAC Addresses**
    - MAC address, or hardware / Ethernet / physical address: 6 bytes
    - encoded into NIC (Network Interface Card)
    - used in BSSID
 - **Control Field (Type)**
   - describes what is contained in the data field
   - most commonly: `0x0800`, for IP packet is encapsulated
 - **Data Field**
   - payload: 46 - 1500 bytes
 - **Frame Check Sequence**
   - for **error checking**
   - 32-bit cyclical redundancy check (CRC-32)
   - error detection, but **not error correction**
   - Bit error rate (BER): 1 in 10⁹(early days) bits to less than 1 in 10¹²

- **Ethernet Type II vs. 802.3**
 - Ethernet Type II: the standard used for **IP-based data packets**.
 - IEEE 802.3: used with **management protocols** like spanning tree.
 - control field:
```
   - more than 0x0600(1536): Ethernet Type II
   - less than 0x0600(1536): 802.3, as length field, MTU: 1492
```
 - **LLC**
```
   - Destination Service Access Point (DSAP): "AA" for Subnetwork Access Protocol
   - Source Service Access Point (SSAP): All zeros is a null address.
   - Control:
   - Information: This field is the data carried by the frame, Spanning Tree is a standard management protocol used on Ethernet networks.
```
![](http://gnat-tang-shared-image.qiniudn.com/blogScreenshot%20from%202014-02-09%2020:52:47.png)
> 再不用微博的图床了~ 可恶的水印！！！
本来有很多插图，都显示不出来了，全删掉了。现在用[七牛](http://www.qiniu.com/)。

- **MAC Addresses—Another Look**
 - MAC(6) = [**vendor code**](http://standards.ieee.org/develop/regauth/oui/public.html)(3) + **hostID**(3)
 - **3 types** of MAC addr on an Ethernet network
   - unicast
![](http://gnat-tang-shared-image.qiniudn.com/blogunicast_frame.png)
   - broadcast
![](http://gnat-tang-shared-image.qiniudn.com/blogbroadcast_frame.png)
   - multicast: e.g. a spanning tree frame(a bridge protocol data unit)
![](http://gnat-tang-shared-image.qiniudn.com/blogmulticast_frame.png)

- **Ethernet Operation**
  - **MAC** to identify and distinguish
  - Preamble frame to **negotiates an acceptable data rate**
  - **CSMA/CD** & truncated binary exponential random **backoff algorithm**
`CSMA/CD: Carrier sense multiple access with collision detection`

- **Shared Media**
 - The media: Coaxial Cable => Unshielded Twisted Pair (UTP)
but still a **bus**
```
10Base-T naming convension:
   - 10: 10 Mbps » 100, 1000 Mbps
   - Base: type of transmission is baseband » boardband
   - T: type of media or distance, T for twisted pair
```
![](http://gnat-tang-shared-image.qiniudn.com/blog-ethernet_minimum_frame_size.png)

- **Physical Layer**
 - Cabling
   - UTP Wiring
`VoIP phones, Token Ring, FDDI(光纤分布数据接口), Ethernet, and many others`
   - RJ45, (see below for the male and female jack)
![](http://gnat-tang-shared-image.qiniudn.com/blog-rj45_male_and_female.png)
 - Encoding
`# Connector type and media—RJ45, UTP`
   - **Manchester**: for `10Base-T`
   - **NRZI**: for `100Base-T`(aka fast ethernet or 802.3u Ethernet)
   - **4D, PAM5**: for `1000Base-T`
PAM5: five-level Pulse Amplitude Modulation
 - Other Types of Signaling

   - **Link Pulse**
`NLP (normal link pulse)`: indicate link status
a [**blip**](http://dict.youdao.com/search?le=eng&q=blip&keyfrom=dict.top) sent every 16±8ms while the link is idle
   - **Autonegotiation**
uses the same NLP, but for a different purpose
`FLP (fast link pulse)`

- **Final Thoughts on Ethernet**

- **Summary**
 - most used LAN standard
 - layer 1 & 2 of our network models
 - UTP for end nodes wired in switched star or tree configurations
 - fiber typically reserved for network backbones
 - standardized in the IEEE 802.3 series

- **Review Questions**
```
Q: What are the two sublayers for Ethernet at Layer 2?
A: Logical link control (LLC) and media access control (MAC)
Q: What are the three type of destination MAC address?
A: Unicast, broadcast, multicast
Q: A collision domain ends at what device?
A: Switch or router
Q: What are two differences between Ethernet II and 802.3 frames?
A: Preamble (preamble and start frame delimiter) and control (length)
Q: What is the name of the Ethernet access method and the “wait” algorithm?
A: Carrier sense multiple access with collision detection (CSMA/CD), truncated binary exponential random backoff
```

- **Lab Exercises**
 - Activity 1—Basic Framing
```
wlan0     Link encap:Ethernet  HWaddr e0:b9:a5:ac:ab:f4
          inet addr:192.168.1.100  Bcast:192.168.1.255  Mask:255.255.255.0
          inet6 addr: fe80::e2b9:a5ff:feac:abf4/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:589943 errors:0 dropped:0 overruns:0 frame:0
          TX packets:450039 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:759940800 (724.7 MiB)  TX bytes:91686661 (87.4 MiB)
```
![](http://gnat-tang-shared-image.qiniudn.com/blog-icmp_frame.png)
 - Activity 2—Control Field Values
 - Activity 3—Addressing
 - Activity 4—Destination Addresses
 - Activity 5—Logical Link Control


---
#### [**§3. Internet Protocol**]()
1.








#### [**§4. Address Resolution Protocol**]()
#### [**§5. Network Equipment**]()
#### [**§6. Internet Control Message Protocol**]()
#### [**§7. Subnetting and Other Masking Acrobatics**]()



---
~~~
log: $1. created on Sunday, February 09 2014; $2. modified at Wed Apr  9 11:43:46 CST 2014;
~~~


--------------------------------------------------------------------------------

### Refs

- [Pro Git][progit-douban]
- Git man page: `man git`
- [豆瓣书评: 最好的Git进阶材料][best-git-tutorials]
- [try.github.io][try-git-io]
- [Github Help][github-help]
- [Author-maintained website][author-maintained-webpage], or [中文][author-maintained-webpage-zh]


[progit-douban]: http://book.douban.com/subject/3420144/
[best-git-tutorials]: http://book.douban.com/review/6465637/
[try-git-io]: http://try.github.io
[github-help]: https://help.github.com/
[author-maintained-webpage]: http://git-scm.com/book
[author-maintained-webpage-zh]: http://git-scm.com/book/zh






--------------------------------------------------------------------------------

### TOC

- Preface
- §1. Getting Started
- §2. Git Basics
- §3. Git Branching
- §4. Git on the Server
- §5. Distributed Git
- §6. Git Tools
- §7. Customizing Git
- §8. Git and Other Systems
- §9. Git Internals
- Index of Commands





--------------------------------------------------------------------------------

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                Run, Forest, Run
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#### Preface

- E-book available(en): [PDF][progit-pdf], [mobi][progit-mobi], or [ePub][progit-epub]


[progit-pdf]: https://github.s3.amazonaws.com/media/progit.en.pdf
[progit-mobi]: https://github.s3.amazonaws.com/media/pro-git.en.mobi
[progit-epub]: https://github.s3.amazonaws.com/media/progit.epub


--------------------------------------------------------------------------------

#### [§1. Getting Started][getting-started]

1. About Version Control
    -  Version control is a system that **records changes** to a file or set of files over time so that **you can recall specific versions later**.
    - Version Control System (VCS) allows you
        - **revert _files_ back** to a previous state
        - **revert _the entire project_ back** to a previous state
        - **review changes** made over time
        - etc.
    - [Local][vc-local] / [Centralized][vc-centralized] / [Distributed][vc-distributed] Version Control Systems

- A Short History of Git
    - Linux Kernel Project:
        - 1991–2002: patches and archived files
        - 2002-2005: DVCS:BitKeeper
        - 2005-Now: Git

- **Git Basics**
    - [Snapshots][snapshots], Not [Differences][differences](直接记录快照，而非差异比较)
    - Nearly Every Operation Is Local (offline is ok)
    - Git Has Integrity (check-summed before stored, mechanism: SHA-1 hash.)
    - Git Generally Only Adds Data
    - The Three States: [**modified, staged, committed**][modified-staged-committed]
        - **working directory**: checkout of one version of your project, to use and modify
        - **staging area**: simple file, as an index
> 1. If a particular version of a file is in the Git directory, it’s considered **committed**.
> - If it’s modified but has been added to the staging area, it is **staged**.
> - And if it was changed since it was checked out but has not been staged, it is **modified**.

- Installing Git
    - Installing from Source
dependencies: curl, zlib, openssl, expat, libiconv, etc
`apt-get install libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev`
```
# compile from source
cd <git-sourcedir>
make prefix=/usr/local all
sudo make prefix=/usr/local install
```
 - Installing on Linux
`apt-get install git-core # or yum install git-core`
 - Installing on Mac
 - Installing on Windows

- First-Time Git Setup: `git config`
    - configuration stored in three places:
        - `/etc/gitconfig`
        - `~/.gitconfig`
        - config file in the git directory(that is `.git/config`)
    - Your Identity
`git config --global user.name "Gnat TANG"`
`git config --global user.email gnat_tang@yeah.net`
 - Your Editor
`git config --global core.editor "emacs -nw"`
 - Your Diff Tool
`git config --merge.tool vimdiff`
 - Checking Your Settings
`git config --list` # check all
`git config user.name` # check something explicitely

- Getting Help
```
git help <verb>,         e.g. git help commit
git <verb> --help,       e.g. git commit --help
man git-<verb>,          e.g. man git-commit
```

- Summary





[getting-started]: http://git-scm.com/book/en/Getting-Started
[vc-local]: http://git-scm.com/figures/18333fig0101-tn.png
[vc-centralized]: http://git-scm.com/figures/18333fig0102-tn.png
[vc-distributed]: http://git-scm.com/figures/18333fig0103-tn.png
[snapshots]: http://git-scm.com/figures/18333fig0105-tn.png
[differences]: http://git-scm.com/figures/18333fig0104-tn.png
[modified-staged-committed]: http://git-scm.com/figures/18333fig0106-tn.png







--------------------------------------------------------------------------------

#### [§2. Git Basics]

1. Getting a Git Repository
    - Init a repo in an existing dir
```
git init # create a git skeleton
git add *.c # add some files
git add README
git commit -m "initial project version" # commit it
```
    - Cloning an existing repo
```
git clone [url] # not `git checkout`, really it will CLONE one
git clone git://github.com/schacon/grit.git mygrit # specify a name
```

- Recording Changes to the Repository
    - checking the status of you files:
```
git status
touch README
git status
```
    - tracking new files
```
git add README
git status
```
    - staging modified files
```
echo "hello" > README
git status
git add README
git status
```
    - ignoring files
```
echo -e "*.[ao]\n*~" > .gitignore # ignore *.a *.o *~ files
# .gitignore file example="""
*.a # no *.a file
!lib.a # but git should track lib.a
/TODO # ignore file TODO
build/ # ignore all files in dir build
doc/*.txt # ignore doc/readme.txt but track doc/html/readme.txt"""
```
    - viewing your staged and unstaged changes
```
git diff # not to stage
git diff --cached # now to commit
git diff --staged # now to commit
```
    - committing your changes
```
git commit # not recommended, ur editor will jump out, maybe suitable for a long msg
git commit -m "your message"
```
    - skipping the staging area（一步到位的意思）
```
git commit -a -m "commit without add it manually"
```
    - removing files
```
rm <file>
git rm <file>
git commit -m "removed file"
# or rm from git repo, but not from working dir
git rm --cached readme.txt
# more example
git rm log/\*.log # remove log file
git rm \*~ # remove editor cached file
```
    - moving files ( pay some attention here)
```
git mv file_from file_to && git commit -m "renamed file_from to flie_to"
# or try this
mv file_from file_to && git rm file_from && git add file_to && git commit -m "some job in a different way"
```
    - viewing the commit history
```
git log # in a chronological order
git log -p -2 # -p: with diff-show option, -2: only last two commit
git log --stat # with abbreviated stats
git log --pretty=oneline # other options: --pretty={short, full, fuller}
######### or more customization: pretty.format
git log --pretty=format:"%h - %an, %ar : %s"
%H: commit hash, %h abbreviated commit hash
%T: tree hash,   %t abbreviated tree hash
%P: parent hashes, %p: abbr parent hash
%an: author name, %ae: author email
%ad: author date (format respects the -date=option)
%ar: author date, relative
%cn: commit name
%ce: commit email
%cd: commit date
%cr: commit date, reletive
%s: subject (commit message)
######### log options
-p: show patch
--stat, --shortstat
--name-only, --name-status
--abbrev-commit
--relative-date
--graph
--pretty
--since=2.weeks, --after
--until, --before
--author, --committer
# You can also visualization it in a GUI way
```
 - **undoing things**
```
# changing your last commit
git commit --amend
```
 - **unstaging a staged file**
```
git reset HEAD <file>
```
 - **unmodifing a modified file**
```
git checkout -- README.txt
```

- Working with romotes
```
git remote # git remote -v, show your remotes
git remote add [shortname] [url] # git remote add dvpe git://github.com/district10/extended-programmer-dvorak.git
git fetch dvpe # fetch from remote, but not merge until you manually do it
git push [remote-name] [branch-name] # push if you have remote accessibility
# inspecting a remote
git remote show origin
git remote rename [branchname-before] [branchname-after]
git remote rm [branch-name]
```
In github, we use ssh clone url, not https clone url,
when clone our own repo
![](http://gnat-tang-shared-image.qiniudn.com/district10%20neo_keyboard_layout.png)

- Tagging
```
git tag # listing your tags
git tag -l v1.4.2.*
# creating tags: lightweight or annotated
# -a, --annotated: Make an unsigned, annotated tag object
git tag -a v1 -m "message"
git show v1
# -s, --sign, Make a GPG-signed tag, using the default e-mail address’s key.
git tag -s v2 -m "another-commit-message" # signed tag
git tag v3 # lightweight tag
# verify tags (only for signed tag)
git tag -v v2
# tagging later
# sharing tags
```

- Tips and Tricks
 - auto-completion (Gnat recommend you [**zsh**](http://jianshu.io/p/7a8f80e6840a) )
 - git alias:
```
git config --global alias.co checkout # => git co
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.last 'log -1 HEAD'
git config --global alias.unstage 'reset HEAD --'
git config --global alias.vdir '!vdir' # other commands(from sys)
# show all your alias
git config --list | grep alias
```

- Summary





[git-basics]: http://git-scm.com/book/en/Git-Basics

























---
#### [§3. Git Branching](http://git-scm.com/book/en/Git-Branching)
Some people refer to the branching model in Git as its “killer feature”. Unlike many other VCSs, Git encourages a workflow that branches and merges often, even multiple times in a day. Understanding and mastering this feature gives you a powerful and unique tool and can literally change the way that you develop.

1. [**What a Branch Is**](http://git-scm.com/book/en/Git-Branching-What-a-Branch-Is) (better check this site yourself)
```
# Follow me, in bash(zsh has some trouble with the comments)
mkdir branching && cd branching && git init
touch README test.rb LICENSE
git add README test.rb LICENSE
git commit -m 'initial commit of my project'
git branch testing && git checkout testing # switch to branch:testing
echo "hello world from testing" > test.rb
git commit -a -m 'commit from testing'
git checkout master && echo "hello world from master" > test.rb
git commit -a -m "commit from master"
```
[how it looks now? check me](http://git-scm.com/figures/18333fig0309-tn.png)
**`HEAD`** pointer to show your working branch
Creating a new branch is **as quick and simple as writing 41 bytes**
cost of a branch: `40 characters(SHA-1 checksum)` and `a newline`

- **Basic Branching and Merging**
 - Basic Branching
```
# cd branching
git checkout -b iss53 # same like: git branch iss53 && git checkout iss53
echo "hello world from iss53" > README && git commit -a -m "commit from iss53"
cat README #                                                          [0]
git checkout master && cat README #                                   [1]
git checkout -b hotfix && echo "added by hotfix" >> README
git commit -a -m "hotfix added that line" && cat README #             [2]
git checkout master && cat README #                                   [3]
git merge hotfix && cat REAMDE # fast forwarding                      [4]
# cat output [0], [1], [2], [3], [4], take some time to understand it, Git!
# git branch -d hotfix
```
[how it looks now? check me](http://git-scm.com/figures/18333fig0314-tn.png)

 - Basic Merging
```
git checkout master
git merge iss53 # Auto-merging
```
[how it looks now? check me](http://git-scm.com/figures/18333fig0316-tn.png)

 - Basic Merging Conflicts
```
git mergetool
```
- **Branch Management**
```
git branch # show all branches and current branch
git branch -v
git branch --merged
git branch --no-merged
```
- [**Branching Workflows**](http://git-scm.com/book/en/Git-Branching-Branching-Workflows)
 - Long-Running Branches
   - More stable branches: farther down the **c**ommit history.
![](http://git-scm.com/figures/18333fig0318-tn.png)
   - It’s generally easier to think about them as work [silos](http://dict.youdao.com/search?q=silos&keyfrom=dict.plugin), where sets of commits graduate to a more stable silo when they’re fully tested
![](http://git-scm.com/figures/18333fig0319-tn.png)
 - Topic Branches

- Remote Branches
[remote branches pics](http://git-scm.com/figures/18333fig0322-tn.png)
- Rebasing
`merge` and `rebase`

- Summary

---
#### [§4. Git on the Server](http://git-scm.com/book/en/Git-on-the-Server)
1. **The Protocols**
 - **Local Protocol**
```
git clone /opt/git/project.git
git clone file:///opt/git/project.git
git remote add local_proj /opt/git/project.git
```
 - **The SSH Protocol**
```
git clone ssh://user@server/project.git
git clone user@server:project.git # Or use the shorter scp-like syntax
```
 - **The Git Protocol** (fastest, but hard to set up)

 - **The HTTP/S Protocol** (dumb, but not efficient)

- **Getting Git on a Server**
```
git clone: git init && git fetch
scp -r my_project.git user@git.example.com:/opt/git
```
- [**Generating Your SSH Public Key**](https://help.github.com/articles/generating-ssh-keys)
`id_dsa / id_dsa.pub` or `id_rsa / id_rsa.pub`
```
ssh-keygen && ssh-add
#####################
$ ssh -T git@github.com
>> Hi district10! You've successfully authenticated, but GitHub does not provide shell access.
```
- Setting Up the Server
- Public Access
- GitWeb
- Gitosis







- §5. Distributed Git
- §6. Git Tools
- §7. Customizing Git
- §8. Git and Other Systems
- §9. Git Internals
- Index of Commands


--------------------

~~~
log: $1. 读了N天还没完。。。, Friday, March 07 2014; $2. reviewed, Mar 24, 2014;
~~~

--------------------------------------------------------------------------------

#### Refs

- [Python 3 Web Development Beginner's Guide][python3-web-dev-beginners-guide]

[python3-web-dev-beginners-guide]: http://book.douban.com/subject/6525823/







--------------------------------------------------------------------------------

#### TOC

- Preface
- §1: Choosing Your Tools
- §2: Creating a Simple Spreadsheet
- §3: Tasklist I: Persistence
- §4: Tasklist II: Databases and AJAX
- §5: Entities and Relations
- §6: Building a Wiki
- §7: Refactoring Code for Reuse
- §8: Managing Customer Relations
- §9: Creating Full-Fledged Webapps: Implementing Instances
- §10: Customizing the CRM Application
- Appendix A: References to Resources
- Appendix B: Pop Quiz Answers


--------------------------------------------------------------------------------
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                Run, Forest, Run
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


#### Preface

1. **What you need for this book**
 - Python 3.2, CherryPy 3.2.0, jQuery 1.4.4, jQuery UI 1.8.6
 - misc: editor, web browser, etc

- **Downloading the example code for this book**
 - Go [packtpub][packtpub], need to register an account
 - or my archive: [**example-code-zip-file**][sample-code-zip]


[packtpub]: http://www.PacktPub.com/support
[sample-code-zip]: http://gnat-tang-archive.qiniudn.com/bookcode-Python%203%20Web%20Development%20Beginner's%20Guide.zip





--------------------------------------------------------------------------------

#### §1: Choosing Your Tools

1. **Identifying the components of a web application**

![][client-server]

- **Choosing suitable tools**
 - choosing a `delivery framework` (aka Web Server): **CherryPy**
 - choosing a `server-side scripting language`:  **Python**
   - Why Python 3X?
Although not all third party modules are (yet) ported to this new version, it is the best version to use if you want to develop in a future proof way.
 - choosing a `database engine`: **SQLite**
 - deciding on `object relational mappers`: SQLAlchemy, etc
    - map between DB(tables) and Python Objects
 - choosing a `presentation framework`: HTML
   - need 2 more JavaScript libs: **jQuery** and **jQuery UI**
   - jQuery provides the functionality to select and manipulate HTML elements on a page
   - jQuery UI provides a number of sophisticated widgets and effects.

- **Designing for maintainability and usability**
 - **Testing:** using python module `unittest`
 - **Version management: ** `git` or `svn`
 - **Usability:**
   - for users, not developers. so we adhering to `common GUI paradigms`
   - **themable**
   - **Cross-browser compatible**
   - **Cross-platform compatible**
 - **Maintainability**
   - Standards compliant
   - Security
 - ... **Help, I am confused!**
Reading this chapter, you may get the feeling that developing web applications is horribly complex, even if you use the right tools. So many things may play a role! **Do not despair** though.
See, it's so easy!

![][pic-01]![][pic-02]


[client-server]: http://gnat-tang-shared-image.qiniudn.com/blog-client_serer.png
[pic-01]: http://gnat-tang-shared-image.qiniudn.com/blog-A.png
[pic-02]: http://gnat-tang-shared-image.qiniudn.com/blog-B.png








--------------------------------------------------------------------------------

#### §2: Creating a Simple Spreadsheet

1. **Tools**
 - **Python 3**
    - [**Download**](http://www.python.org/download/)
    - **Install:** `./configure && make && sudo make install`
    -  Actually, I(Gnat) prefer using **Python 2.7** instead of **Python 3.3**
 - **CherryPy**
    - [**Download**](http://download.cherrypy.org/cherrypy/3.2.0/)
    - **Install:** `python3.3 setup.py install`
 - **Install(download) [jQuery](http://code.jquery.com/jquery-1.4.2.js) and [jQuery UI](http://jqueryui.com/download)**

- **Serving an application**
 - Move to dir: `cd "Chapter 2"`, Run it: `python nocontent.py`
 - visit [http://localhost:8080](http://localhost:8080) or [http://127.0.0.1:8080](http://127.0.0.1:8080)
 - You will see:
![](http://gnat-tang-shared-image.qiniudn.com/blog-first.png)
```
class Root(object):
        content = ''' <html code we serve> '''
        @cherrypy.expose # expose to CherryPy by the @cherrypy.expose decorator
        def index(self):
            return Root.content
# Only exposed methods will be called by CherryPy to produce content
```
 - CherryPy:
   - map a URL of a form `/name` to a method called `name()`, `/` to `index()`
   - This means we have now configured CherryPy to deliver dynamic content when the user directs his browser to http://127.0.0.1:8080/
`omit the final slash, for CherryPy ignores a trailing slash by default`

- **Who serves what: an overview**
![](http://gnat-tang-shared-image.qiniudn.com/blog-structure.png)
  - **top level dir Python files**
   - excute and start CherryPy server
 - **subdir: `static`**
dir `css` contains subdirectories with additional CSS stylesheets and
dir `images` for jQuery UI themes
 - **Note**: no HTML files seen, for `all HTML content is generated dynamically`
 - **From an application point of view**, the best way to comprehend a web application is to `see the application as distributed`, see
![](http://gnat-tang-shared-image.qiniudn.com/blog-distribution.png)
> when modified, the python server file will be reload after we saving it

- **Who Servers Who**
 - **HTML: form-based interaction**
 - **JavaScript: using jQuery UI widgets**
 - **jQuery selectors** - `concept: chaining`
   - `$("li")`: select all `<li>` elements
   - `$("li:first")`: select the first `<li>` elements
   - `$("#footer")`: select the `<div>` with an id equal to footer
   - `$("li").addClass("red-background")`: red bg to all `<li>` elements
   - `$("button").button()`: alters the appearance of our button element to the **stylized button widget** that jQuery UI provides
 - **CSS: applying a jQuery UI theme to other elements**

> Seems I need to know something about HTML, CSS, JavaScript...
> My Notes on HTML:
>
 - [Learning HTML | 简书](http://jianshu.io/p/c1ded91a49b3)
 - [Learning HTML5 | 简书](http://jianshu.io/p/51999687c151)

---
### Too Busy these days...

- §3: Tasklist I: Persistence
- §4: Tasklist II: Databases and AJAX
- §5: Entities and Relations
- §6: Building a Wiki
- §7: Refactoring Code for Reuse
- §8: Managing Customer Relations
- §9: Creating Full-Fledged Webapps: Implementing Instances
- §10: Customizing the CRM Application
- Appendix A: References to Resources
- Appendix B: Pop Quiz Answers



---
~~~
log: $1. created maybe ten days ago, today is Friday, February 28 2014; $2. modified at Wed Apr  9 11:24:23 CST 2014;
~~~


---
[**Main**](http://jianshu.io/p/a160816a18b2)[** » 读书笔记**](http://jianshu.io/p/d74b041f0ceb)

---
### [Refs]()
- [**Python Data Visualization Cookbook**](http://book.douban.com/subject/25796877/)

---
### [TOC]()
- Preface
- §1. Preparing Your Working Environment
- §2. Knowing Your Data
- §3. Drawing Your First Plots and Customizing Them
- §4. More Plots and Customizations
- §5. Making 3D Visualizations
- §6. Plotting Charts with Images and Maps
- §7. Using Right Plots to Understand Data
- §8. More on matplotlib Gems


---
~~~
                                  Run, Forest, Run
~~~
---
#### [Preface]()
1. What this book covers
 - installation recipes
 - read & write common data
CSV, JSON, XSL, or relational databases, etc
 - drawing plots
 - 3D Visualizations
 - image processing, creating CAPTCHA test images
 - advanced plotting techniques
 - Gantt charts, box plots, whisker plots, and
also explains how to use LaTeX for rendering text in matplotlib

- the example code
 - Go [**Packt Publishing**](http://www.packtpub.com/python-data-visualization-cookbook/book)
 - Or, my archive: [**Python...Cookbook_example code.zip**](http://gnat-tang-archive.qiniudn.com/file_Python%20Data%20Visualization%20Cookbook.zip)


---
#### [§1. Preparing Your Working Environment]()
1. Prepare your python & modules
 - Installing matplotlib, NumPy, and SciPy
 - Installing virtualenv and virtualenvwrapper (not recommended)
 - Installing Python Imaging Library (PIL) for image processing
 - Installing a requests module: `pip install requests`
- Customizing matplotlib's parameters in code
```
######### Customize matplotlib ###########
import matplotlib as mpl
## Method1: matplotlib.rcParams
mpl.rcParams['lines.linewidth'] = 2
mpl.rcParams['lines.color'] = 'r'
## Method2: matplotlib.rc()
mpl.rc('lines', linewidth=2, color='r')
```

- Customizing matplotlib's parameters per project
 - **matplotlibrc** configuration file
   - Current working directory: `matplotlibrc`
   - Per user .matplotlib/matplotlibrc: use `mpl.get_configdir()` to get it
`$ python -c 'import matplotlib as mpl; print mpl.get_configdir()'`
   - Per installation configuration file
 - configuration settings:
```
axes, backend, figure, font, grid, legend, lines
patch, savefig, text, verbose, xticks, yticks, etc
```

---
#### [§2. Knowing Your Data]()
1. Importing data from CSV
```
import csv
##### Read #####
csvfilepath='http://gnat-tang-shared-image.qiniudn.com/blog-ch02-data.csv'
f = open(csvfilepath)
reader = csv.reader(f)
print reader.next() # read the first line, maybe title
data = [row for row in reader] # read the other lines
print data
##### Write #####
with open(filename,'wb') as f:
    writer = csv.writer(f)
    for row in range(10):
        writer.writerow([row + 1, '2012-01-%s' % (19 + row)])
```
For more, see [**Python CSV File API**](http://legacy.python.org/dev/peps/pep-0305/)
For larger text files, better use `numpy.loadtxt()`,
or `numpy.genfromtxt()` (for better with missing data)
```
import numpy
data = numpy.loadtxt('ch02-data.csv', dtype='string', delimiter=',')
```
- [Importing data from Microsoft Excel files](www.python-excel.org)
`pip install xlrd # Firstly, install relative module`
```
# I have some trouble with xlrd.read(), this one doesn't work
import xlrd
from xlrd.xldate import XLDateAmbiguous
wb = xlrd.open_workbook(filename='ch02-xlsxdata.xlsx') # "on_demand=True"
ws = wb.sheet_by_name('Sheet1')
dataset = []
for r in range(ws.nrows):
    col = []
    for c in range(ws.ncols):
        col.append(ws.cell(r, c).value)
        if ws.cell_type(r, c) == xlrd.XL_CELL_DATE:
            try:
                print ws.cell_type(r, c)
                from datetime import datetime
                date_value = xlrd.xldate_as_tuple(ws.cell(r, c).value,
                                                  wb.datemode)
                print datetime(*date_value)
            except XLDateAmbiguous as e:
                print e
    dataset.append(col)
from pprint import pprint
pprint(dataset)
```
in the example code, another module `openpyxl` is used
```
from openpyxl import load_workbook
file = 'ch02-xlsxdata.xlsx'
wb = load_workbook(filename=file)
ws = wb.get_sheet_by_name('Sheet1')
dataset = []
for r in ws.rows:
    col = []
    for c in r:
        col.append(c.value)
    dataset.append(col)
from pprint import pprint
pprint(dataset)
```

- Importing data from fixed-width datafiles. Using **string** & [**struct**](http://docs.python.org/2/library/struct.html)
```
import string
import random
ROWS = 1000000
# SAMPLE = string.ascii_lowercase
SAMPLE = '012345678901234567890123456'
F1 = 9
F2 = F1 + 13
F3 = F2 + 4
# assert F1 + F2 + F3 == len(SAMPLE)
for r in range(ROWS):
    t = ''.join(random.sample(SAMPLE,len(SAMPLE)))
    print t[0:F1], t[F1:F2], t[F2:F3]
### or this ###
import struct
import string
datafile = 'ch02-fixed-width-1M.data'
# this is where we define how to understand line of data from the file
mask='9s14s5s' # 9chars | 14chars | 5chars
with open(datafile, 'r') as f:
	for line in f:
		fields = struct.Struct(mask).unpack_from(line)
		print 'fields: ', [field.strip() for field in fields]
```
- Importing data from tab-delimited files
```
with open(filename) as fr
     reader = csv.reader(fr, dialect=csv.excel_tab)
with open(filename, 'wb') as fw
     writer = csv.writer(fw, dialect=csv.excel_tab)
# 'r': reading, 'w': writing(truncate), 'b': binary, more robust
# 'r+', 'w+' and 'a+', updating
### work with dirty file ###
datafile = 'ch02-data-dirty.tab'
with open(datafile, 'r') as f:
    for line in f:
        # removed next comment to see line before cleanup
        print line.split('\t'), "____dirty way"
        # we remove any space in line start or end
        line = line.strip()
        # now we split the line by tab delimiter
        print line.split('\t')
```
more about [**open()**](http://docs.python.org/2/library/functions.html#open)

- Importing data from a JSON resource
```
import requests
url = 'https://github.com/timeline.json'
r = requests.get(url)
json_obj = r.json() # Error, list object is not callable... shit
repos = set() # we want just unique urls, so it's a set
for entry in json_obj:
    try:
        repos.add(entry['repository']['url'])
    except KeyError as e:
        print "No key %s. Skipping..." % (e)
from pprint import pprint
pprint(repos)
# this one works
# import json; json_obj = json.load('timeline.json')
```
[**Json RFC**](http://tools.ietf.org/html/rfc4627.html)

- Exporting data to JSON, CSV, and Excel
```
# this is really fantastic
import os, sys, argparse, struct, json, csv
try:
    import cStringIO as StringIO
except:
    import StringIO
def import_data(import_file):
    '''
    Imports data from import_file.
    Expects to find fixed width row
    Sample row: 161322597 0386544351896 0042
    '''
    mask = '9s14s5s'
    data = []
    with open(import_file, 'r') as f:
        for line in f:
            fields = struct.Struct(mask).unpack_from(line) # unpack line to tuple
            # strip any whitespace for each field
            # pack everything in a list and add to full dataset
            data.append(list([f.strip() for f in fields]))
    return data
def write_data(data, export_format):
    '''
    Dispatches call to a specific transformer
    and returns data set.
    Exception is xlsx where we have to save data in a file.
    '''
    if export_format == 'csv':
        return write_csv(data)
    elif export_format == 'json':
        return write_json(data)
    elif export_format == 'xlsx':
        return write_xlsx(data)
    else:
        raise Exception("Illegal format defined")
def write_csv(data):
    '''
    Transforms data into csv.
    Returns csv as string.
    '''
    # Using this to simulate file IO,
    # as csv can only write to files.
    f = StringIO.StringIO()
    writer = csv.writer(f)
    for row in data:
        writer.writerow(row)
    # Get the content of the file-like object
    return f.getvalue()
def write_json(data):
    '''
    Transforms data into json.
    Very straightforward.
    '''
    j = json.dumps(data)
    return j
def write_xlsx(data):
    '''
    Writes data into xlsx file
    '''
    from xlwt import Workbook
    book = Workbook()
    sheet1 = book.add_sheet("Sheet 1")
    row = 0
    for line in data:
        col = 0
        for datum in line:
            print datum
            sheet1.write(row, col, datum)
            col += 1
        row += 1
        # We have hard limit here of 65535 rows
        # that we are able to save in spreadsheet.
        if row > 65535:
            print >> sys.stderr, "Hit limit of # of rows in one sheet (65535)."
            break
    # XLS is special case where we have to
    # save the file and just return 0
    f = StringIO.StringIO()
    book.save(f)
    return f.getvalue()
if __name__ == '__main__':
    # parse input arguments
    parser = argparse.ArgumentParser()
    parser.add_argument("import_file", help="Path to a fixed-width data file.")
    parser.add_argument("export_format", help="Export format: json, csv, xlsx.")
    args = parser.parse_args()
    if args.import_file is None:
        print >> sys.stderr, "You myst specify path to import from."
        sys.exit(1)
    if args.export_format not in ('csv','json','xlsx'):
        print >> sys.stderr, "You must provide valid export file format."
        sys.exit(1)
    # verify given path is accesible file
    if not os.path.isfile(args.import_file):
        print >> sys.stderr, "Given path is not a file: %s" % args.import_file
        sys.exit(1)
    # read from formated fixed-width file
    data = import_data(args.import_file)
    # export data to specified format
    # to make this Unix-lixe pipe-able
    # we just print to stdout
    print write_data(data, args.export_format)
```
- Importing data from a database
`sudo apt-get install sqlite3`
```
import sqlite3, sys
if len(sys.argv) < 2:
    print "Error: You must supply at least SQL script."
    print "Usage: %s table.db ./sql-dump.sql" % (sys.argv[0])
    sys.exit(1)
script_path = sys.argv[1]
if len(sys.argv) == 3:
    db = sys.argv[2]
else:
    # if DB is not defined
    # create memory database
    db = ":memory:"
try:
    con = sqlite3.connect(db)
    with con:
        cur = con.cursor()
        with open(script_path,'rb') as f:
            cur.executescript(f.read())
except sqlite3.Error as err:
    print "Error occured: %s" % err
```
```
import sqlite3, sys
if len(sys.argv) != 2:
    print "Please specify database file."
    sys.exit(1)
db = sys.argv[1]
try:
    con = sqlite3.connect(db)
    with con:
        cur = con.cursor()
        query = 'SELECT ID, Name, Population FROM City ORDER BY Population DESC LIMIT 1000'
        con.text_factory = str # Create a new Unicode object from the given encoded string.
        cur.execute(query)
        resultset = cur.fetchall()
        # extract column names
        col_names = [cn[0] for cn in cur.description]
        print "%10s %30s %10s" % tuple(col_names)
        print "="*(10+1+30+1+10)
        for row in resultset:
            print "%10s %30s %10s" % row
except sqlite3.Error as err:
    print "[ERROR]:", err
```
- Cleaning up data from outliers
```
import numpy as np, matplotlib.pyplot as plt
def is_outlier(points, threshold=3.5):
    """
    Returns a boolean array with True if points are outliers and False otherwise.
    Data points with a modified z-score greater than this value will be classified as outliers.
    """
    # transform into vector
    if len(points.shape) == 1:
        points = points[:,None]
    # compute median value
    median = np.median(points, axis=0)
    # compute diff sums along the axis
    diff = np.sum((points - median)**2, axis=-1)
    diff = np.sqrt(diff)
    # compute MAD
    med_abs_deviation = np.median(diff)
    # compute modified Z-score
    # http://www.itl.nist.gov/div898/handbook/eda/section4/eda43.htm#Iglewicz
    modified_z_score = 0.6745 * diff / med_abs_deviation
    # return a mask for each outlier
    return modified_z_score > threshold
# Random data
x = np.random.random(100) # value between 0 and 1
buckets = 50 # histogram buckets
x = np.r_[x, -49, 95, 100, -100] # Add in a few outliers
# Keep inlier data points
# Note here that
# "~" is logical NOT on boolean numpy arrays
filtered = x[~is_outlier(x)]
# plot histograms
plt.figure()
plt.subplot(211), plt.hist(x,        buckets), plt.xlabel('Raw')
plt.subplot(212), plt.hist(filtered, buckets), plt.xlabel('Cleaned')
plt.show()
```
```
from pylab import *
# generate uniform data points
x = 1e6*rand(1000), y = rand(1000)
figure()
# make scatter plots
subplot(211), scatter(x, y), xscale('linear'),  xlim([1e-6, 1e6])
# this time, make x axis logarithmic
subplot(212), scatter(x,y), xscale('log'), xlim([1e-6, 1e6])
show()
```
```
from pylab import *
# fake up some data
spread= rand(50) * 100, center = ones(25) * 50
# generate some outliers high and low
flier_high = rand(10) * 100 + 100, flier_low = rand(10) * -100
# merge generated data set
data = concatenate((spread, center, flier_high, flier_low), 0)
# basic plot, 'gx' defining the outlier plotting properties
subplot(311), boxplot(data, 0, 'gx')
# compare this with similar scatter plot
subplot(312)
spread_1 = concatenate((spread, flier_high, flier_low), 0)
center_1 = ones(70) * 25
scatter(center_1, spread_1), xlim([0, 50])
# and with another that is more appropriate for scatter plot
subplot(313)
center_2 = rand(70) * 50
scatter(center_2, spread_1)
xlim([0, 50])
show()
```

- Reading files in chunks
```
import sys
filename = sys.argv[1]
with open(filename, 'rb') as hugefile:
    chunksize = 1000
    readable = ''
    # if you want to stop after certain number of blocks
    # put condition in the while
    while hugefile:
        # if you want to start not from 1st byte, do a hugefile.seek(skipbytes)
        # to skip skipbytes of bytes from the file start
        start = hugefile.tell()
        print "starting at:", start
        file_block = ''  # holds chunk_size of lines
        for _ in range(start, start + chunksize):
            line = hugefile.next()
            file_block = file_block + line
            print 'file_block', type(file_block), file_block
        readable = readable + file_block
        # tell where are we in file
        # file IO is usually buffered so tell() will not be precise for every read
        stop = hugefile.tell()
        print 'readable', type(readable), readable
        print 'reading bytes from %s to %s' % (start, stop)
        print 'read bytes total:', len(readable)
        raw_input()
```

- Reading streaming data sources
```
import time, os, sys
if len(sys.argv) != 2:
    print >> sys.stderr, "Please specify filename to read"
filename = sys.argv[1]
if not os.path.isfile(filename):
    print >> sys.stderr, "Given file: \"%s\" is not a file" % filename
with open(filename,'r') as file:
    # Move to the end of file
    filesize = os.stat(filename)[6]
    file.seek(filesize)
    # endlessly loop
    while True:
        where = file.tell()
        # try reading a line
        line = file.readline()
        # if empty, go back
        if not line:
            print "Holliday! take a nap"
            time.sleep(1)
            file.seek(where)
        else:
            # , at the end prevents print to add newline, as readline()
            # already read that.
            print line
```
**os.stat(filepath):**
```
posix.stat_result(st_mode=33279, st_ino=764, st_dev=2050L, st_nlink=1, st_uid=0, st_gid=0, st_size=91814, st_atime=1388984499, st_mtime=1383747999, st_ctime=1388912589)
```

- Importing image data into NumPy arrays
```
# "hello world" from Lena, Using SciPy
import scipy.misc, matplotlib.pyplot as plt
lena = scipy.misc.lena()
print lena.shape, lena.max(), lena.dtype
# => (512, 512) 245 int64(endian 64-bit long integer)
plt.gray(), plt.imshow(lena), plt.colorbar(), plt.show()
```
```
import numpy, Image, matplotlib.pyplot as plt
bug = Image.open('stinkbug.png')
arr = numpy.array(bug.getdata(), numpy.uint8).reshape(bug.size[1], bug.size[0], 3)
plt.gray(), plt.imshow(arr), plt.colorbar(), plt.show()
```
```
import matplotlib.pyplot as plt, matplotlib.image as mpimg, numpy as np
bugfile = 'stinkbug.png'
bug = mpimg.imread(bugfile)
imgplot = plt.imshow(bug)
```
```
import matplotlib.pyplot as plt, scipy, numpy
bug = scipy.misc.imread('stinkbug1.png') # seems not work
bug = bug[:,:,0] # convert to gray
plt.figure(), plt.gray()
plt.subplot(121), plt.imshow(bug)
# show 'zoomed' region
zbug = bug[100:350,140:350]
plt.subplot(122), plt.imshow(zbug)
plt.show()
```
`For large images we recommend using numpy.memmap for memory mapping of images.`

- Generating controlled random datasets
```
from pylab import *; from numpy import *
def moving_average(interval, window_size):
    '''
    Compute convoluted window for given size
    '''
    window = ones(int(window_size)) / float(window_size)
    return convolve(interval, window, 'same')
t = linspace(-4, 4, 100)
y = sin(t) + randn(len(t))*0.1
plot(t, y, "k.")
# compute moving average
y_av = moving_average(y, 10)
plot(t, y_av,"r")
#xlim(0,1000)
xlabel("Time"), ylabel("Value"), grid(True)
show()
```
`import pylab'` => `pylab.show()`
`from pylab import *` => `show()`
```
import pylab, random
SAMPLE_SIZE = 100
# seed random generator, if no argument provided, uses system current time
random.seed()
# store generated random values here
real_rand_vars = []
for _ in range(SAMPLE_SIZE):
    new_value = random.random()
    real_rand_vars.append(new_value)
# create histogram from data in 10 buckets
pylab.hist(real_rand_vars, 10)
# define x and y labels
pylab.xlabel("Number range")
pylab.ylabel("Count")
# show figure
pylab.show()
```

---
#### [§3. Drawing Your First Plots and Customizing Them]()
1. Defining plot types – bar, line, and stacked charts
```
ipython --pylab
plot([1,2,3,2,3,2,2,1]), plot([4,3,2,1],[1,2,3,4])
# {x, y} {axes, tickers, tick labels}, plotting area
from matplotlib.pyplot import *
x = [1,2,3,4]; y = [5,4,3,2]
figure()
subplot(231), plot(x, y)
subplot(232), bar(x, y)
subplot(233), barh(x, y) # horizontal bars
subplot(234), bar(x, y)
y1 = [7,8,5,3]
bar(x, y1, bottom=y, color = 'r')
subplot(235), boxplot(x)
subplot(236), scatter(x,y)
show()
```





§4. More Plots and Customizations
§5. Making 3D Visualizations
§6. Plotting Charts with Images and Maps
§7. Using Right Plots to Understand Data
§8. More on matplotlib Gems


---
~~~
log: $1. created three days ago, today is Friday, February 28 2014; $2. Thu Aug  6 18:28:19     2015;
~~~


- Protocol: The official procedure or system of rules governing affairs of state or diplomatic occasions.

- protocol, protocol suite
- architecture / reference model
- internetwork / catenet (“concatenated” network)
- bandwidth, capacity, latency
- packet switching
- multiplexing
- in a first-come-first-served (FCFS) fashion
- time-division multiplexing (TDM), static multiplexing
- virtual circuits (VCs)
- digital subscriber line (DSL)
- connection-oriented, connectionless
- datagram
-  message boundaries (record markers)
- End-to-end argument, Fate Sharing (dumb network with smart end hosts)
- best-effort delivery
- mandate
- implementation architecture
- Open Systems Interconnection (OSI)
- link, data-link
- ink-layer networks
- checkpointing
- protocol multiplexing
- protocol data unit (PDU), transport PDU (TPDU)
- demultiplexing (demux)
- intermediate system
- end-to-end protocols, hop-to-hop protocol
- multihomed (like a router)
- forwarding (unicast + broadcast + multicast)
- Internet Control Message Protocol (ICMP) (ICMPv4 + ICMPv6)
- Internet Group Management Protocol (IGMP)
- Datagram Congestion Control Protocol (DCCP)
- Stream Control Transmission Protocol (SCTP)
- Internet Assigned Numbers Authority (IANA)
- Uniform Resource Locators (URLs)
- p2p (the discovery problem)
- Denial-of-service (DoS)
- distributed DoS (DDoS)
- spoofing, zombie, bot, botnets, black/white hats
- Dynamic Host Configuration Protocol (DHCP)



 ---
~~~
log: $1 created at Wed Apr  9 11:58:17 CST 2014;
~~~






-

---
### Refs:
- [TCP/IP详解 卷1：协议（英文版）][tcpip]

[tcpip]: http://book.douban.com/subject/4707725/









---
### [TOC][toc]
- § 1. Introduction
- § 2. The Internet Address Architecture
- § 3. Link Layer
- § 4. ARP: Address Resolution Protocol
- § 5. The Internet Protocol (IP)
- § 6. System Configuration: DHCP and Autoconfiguration
- § 7. Firewalls and Network Address Translation (NAT)
- § 8. ICMPv4 and ICMPv6: Internet Control Message Protocol
- § 9. Broadcasting and Local Multicasting (IGMP and MLD)
- §10. User Datagram Protocol (UDP) and IP Fragmentation
- §11. Name Resolution and the Domain Name System (DNS)
- §12. TCP: The Transmission Control Protocol (Preliminaries)
- §13. TCP Connection Management
- §14. TCP Timeout and Retransmission
- §15. TCP Data Flow and Window Management
- §16. TCP Congestion Control
- §17. TCP Keepalive
- §18. Security: EAP, IPsec, TLS, DNSSEC, and DKIM

[toc]: http://my.safaribooksonline.com/book/networking/tcp-ip/9780132808200?bookview=overview






---
#### § 1. Introduction
1. **Architectural Principles**
 - Packets, Connections, and Datagrams
 - The End-to-End Argument and Fate Sharing
     - The end-to-end argument tends to support a design with a “**dumb**” network and “**smart**” systems connected to the network.
     - **Fate sharing** suggests placing all the necessary state to maintain an active communication association (e.g., virtual connection) at the same location with the communicating endpoints.
 - Error Control and Flow Control

- **Design and Implementation**
 - [Layering][osimodel]
    - Wi-Fi and Ethernet are examples of such multi-access link-layer networks.
 - Multiplexing, Demultiplexing, and Encapsulation in Layered Implementations

- **The Architecture and Protocols of the TCP/IP Suite**
 - [The ARPANET Reference Model][arpanetmodel]
 - Multiplexing, [Demultiplexing(demux)][dm], and Encapsulation in TCP
 - [Port Numbers][pn]
    - well-known port numbers (0–1023)
    - registered port numbers (1024–49151)
    - dynamic/private port numbers (49152–65535)
 - **Names, Addresses, and the DNS**

- **Internets, Intranets, and Extranets**
[**Notes** on routers: routers / ip router / gateway][noterouter]

- **Designing Applications**(设计一种实现方法）
 - Client/Server
 - Peer-to-Peer
 - Application Programming Interfaces (APIs)
     - sockets or Berkeley sockets

- **Standardization Process**
 - Request for Comments (RFC) from [IETF][ietf]
    - **All RFCs are not standards.** (不是所有的都是）
    - Only so-called **standards-track category RFCs** are considered to be official standards.
 - Other Standards
    - [IEEE][ieee]
    - [W3C][w3c]
    - [ITU][itu]

- **Implementations and Software Distributions**
 - The historical **de facto**(fr. 实际上) standard TCP/IP implementations were from the **Computer Systems Research Group (CSRG)** at the University of California, Berkeley.
[BSD implementation hierarchy.png][bsd]
 - Today, each popular operating system **has its own implementation**.

- **Attacks Involving the Internet Architecture**
 - [DoS][dos], [distributed DoS (DDoS)][ddos], [spoofing][spoofing],
 - [zombie][zombie], [bot][bot], [botnets (robot + network)][botnets]

- **Summary**
 - it's a whirlwind tour
![][whirlwind_tour]

[dm]: http://gnat-tang-shared-image.qiniudn.com/201404-demux.png
[pn]: http://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers
[ietf]: http://www.ietf.org/
[ieee]: http://www.ieee.org/
[w3c]: http://www.w3.org/
[itu]: https://www.itu.int/en/Pages/default.aspx
[bsd]: http://gnat-tang-shared-image.qiniudn.com/201404-bsd_implementation.png
[osimodel]: http://gnat-tang-shared-image.qiniudn.com/201404-tcp.png
[arpanetmodel]: http://gnat-tang-shared-image.qiniudn.com/201404-arpa.png
[noterouter]: http://gnat-tang-shared-image.qiniudn.com/201404-notes_on_routers.png
[dos]: http://en.wikipedia.org/wiki/Denial-of-service_attack
[ddos]: http://www.digitalattackmap.com/understanding-ddos/
[spoofing]: http://en.wikipedia.org/wiki/Spoofing_attack
[zombie]: http://en.wikipedia.org/wiki/Zombie_(computer_science)
[bot]: http://netsecurity.about.com/od/frequentlyaskedquestions/qt/pr_bot.htm
[botnets]: http://en.wikipedia.org/wiki/Botnet
[whirlwind_tour]: http://gnat-tang-shared-image.qiniudn.com/201404-whirlwind_tour.png








---
#### § 2. The Internet Address Architecture
1. **Introduction**

- **Expressing IP Addresses**
 - IPv4: [`dotted-quad and binary notation`][dqbr]
 - IPv6: [`5f05:2000:80ad:5800:0058:0800:2023:1d71`][ipv6]
 - IPv4  -> IPv6: `10.0.0.1` -> `::ffff:10.0.0.1`

- **Basic IP Address Structure**
 - [Classful Addressing][abcde]
 - [Subnet Addressing][subnet]
 - Subnet Masks: [v4][smask], [v6][smask6]
 - Variable-Length Subnet Masks (VLSM)
 - Broadcast Addresses
    - [subnet broadcast][broadcast]
    - local net broadcast(limited broadcast): `255.255.255.255`
 - IPv6 Addresses and Interface Identifiers

- **CIDR and Aggregation**

- **Special-Use Addresses**

- **Allocation**

- **Unicast Address Assignment**

- **Attacks Involving IP Addresses**

- **Summary**

[dqbr]: http://gnat-tang-shared-image.qiniudn.com/201404-dotted_quad_bin_rep.png
[ipv6]: http://gnat-tang-shared-image.qiniudn.com/201404-ipv6.png
[abcde]: http://gnat-tang-shared-image.qiniudn.com/201404-abcde.png
[subnet]: http://gnat-tang-shared-image.qiniudn.com/201404-subnet.png
[smask]: http://gnat-tang-shared-image.qiniudn.com/201404-submask.png
[smask6]: http://gnat-tang-shared-image.qiniudn.com/201404-submask6.png
[broadcast]: http://gnat-tang-shared-image.qiniudn.com/201404-broadcast.png









---
#### § 3. Link Layer
1. **Introduction**

- **Ethernet and the IEEE 802 LAN/MAN Standards**

- **Full Duplex, Power Save, Autonegotiation, and 802.1X Flow Control**

- **Bridges and Switches**

- **Wireless LANs—IEEE 802.11(Wi-Fi)**

- **Point-to-Point Protocol (PPP)**

- **Loopback**

- **MTU and Path MTU**

- **Tunneling Basics**

- **Attacks on the Link Layer**

- **Summary**












---
#### § 4. ARP: Address Resolution Protocol
1. **Introduction**

- **An Example**

- **ARP Cache**

- **ARP Frame Format**

- **ARP Examples**

- **ARP Cache Timeout**

- **Proxy ARP**

- **Gratuitous ARP and Address Conflict Detection (ACD)**

- **The arp Command**

- **Using ARP to Set an Embedded Device’s IPv4 Address**

- **Attacks Involving ARP**

- **Summary**












---
#### § 5. The Internet Protocol (IP)
1. Introduction
- IPv4 and IPv6 Headers
- IPv6 Extension Headers
- IP Forwarding
- Mobile IP
- Host Processing of IP Datagrams
- Attacks Involving IP
- Summary









---
#### § 6. System Configuration: DHCP and Autoconfiguration
1. Introduction
- Dynamic Host Configuration Protocol (DHCP)
- Stateless Address Autoconfiguration (SLAAC)
- DHCP and DNS Interaction
- PPP over Ethernet (PPPoE)
- Attacks Involving System Configuration
- Summary












---
#### § 7. Firewalls and Network Address Translation (NAT)
1. Introduction
- Firewalls
- Network Address Translation (NAT)
- NAT Traversal
- Configuring Packet-Filtering Firewalls and NATs
- NAT for IPv4/IPv6 Coexistence and Transition
- Attacks Involving Firewalls and NATs
- Summary








---
#### § 8. ICMPv4 and ICMPv6: Internet Control Message Protocol
1. Introduction
- ICMP Messages
- ICMP Error Messages
- ICMP Query/Informational Messages
- Neighbor Discovery in IPv6
- Translating ICMPv4 and ICMPv6
- Attacks Involving ICMP
- Summary









---
#### § 9. Broadcasting and Local Multicasting (IGMP and MLD)
1. Introduction
- Broadcasting
- Multicasting
- The Internet Group Management Protocol (IGMP) and Multicast Listener Discovery Protocol (MLD)
- Attacks Involving IGMP and MLD
- Summary







---
#### §10. User Datagram Protocol (UDP) and IP Fragmentation
1. Introduction
- UDP Header
- UDP Checksum
- Examples
- UDP and IPv6
- UDP-Lite
- IP Fragmentation
- Path MTU Discovery with UDP
- Interaction between IP Fragmentation and ARP/ND
- Maximum UDP Datagram Size
- UDP Server Design
- Translating UDP/IPv4 and UDP/IPv6 Datagrams
- UDP in the Internet
- Attacks Involving UDP and IP Fragmentation
- Summary






---
#### §11. Name Resolution and the Domain Name System (DNS)
1. Introduction
- The DNS Name Space
- Name Servers and Zones
- Caching
- The DNS Protocol
- Sort Lists, Round-Robin, and Split DNS
- Open DNS Servers and DynDNS
- Transparency and Extensibility
- Translating DNS from IPv4 to IPv6 (DNS64)
- LLMNR and mDNS
- LDAP
- Attacks on the DNS
- Summary








---
#### §12. TCP: The Transmission Control Protocol (Preliminaries)
1. Introduction
- Introduction to TCP
- TCP Header and Encapsulation
- Summary









---
#### §13. TCP Connection Management
1. Introduction
- TCP Connection Establishment and Termination
- TCP Options
- Path MTU Discovery with TCP
- TCP State Transitions
- Reset Segments
- TCP Server Operation
- Attacks Involving TCP Connection Management
- Summary








---
#### §14. TCP Timeout and Retransmission
1. Introduction
- Simple Timeout and Retransmission Example
- Setting the Retransmission Timeout (RTO)
- Timer-Based Retransmission
- Fast Retransmit
- Retransmission with Selective Acknowledgments
- Spurious Timeouts and Retransmissions
- Packet Reordering and Duplication
- Destination Metrics
- Repacketization
- Attacks Involving TCP Retransmission
- Summary









---
#### §15. TCP Data Flow and Window Management
1. Introduction
- Interactive Communication
- Delayed Acknowledgments
- Nagle Algorithm
- Flow Control and Window Management
- Urgent Mechanism
- Attacks Involving Window Management
- Summary





---
#### §16. TCP Congestion Control
1. Introduction
- The Classic Algorithms
- Evolution of the Standard Algorithms
- Handling Spurious RTOs—the Eifel Response Algorithm
- An Extended Example
- Sharing Congestion State
- TCP Friendliness
- TCP in High-Speed Environments
- Delay-Based Congestion Control			     -
- Buffer Bloat
- Active Queue Management and ECN
- Attacks Involving TCP Congestion Control
- Summary









---
#### §17. TCP Keepalive
1. Introduction
- Description
- Attacks Involving TCP Keepalives
- Summary




---
#### §18. Security: EAP, IPsec, TLS, DNSSEC, and DKIM
1. Introduction
- Basic Principles of Information Security
- Threats to Network Communication
- Basic Cryptography and Security Mechanisms
- Certificates, Certificate Authorities (CAs), and PKIs
- TCP/IP Security Protocols and Layering
- Network Access Control: 802.1X, 802.1AE, EAP, and PANA
- Layer 3 IP Security (IPsec)
- Transport Layer Security (TLS and DTLS)
- DNS Security (DNSSEC)
- DomainKeys Identified Mail (DKIM)
- Attacks on Security Protocols
- Summary






---
~~~
log: $1 created at Wed Apr  9 11:58:17 CST 2014;
~~~


---
[**Main**](http://jianshu.io/p/a160816a18b2)[** » 读书笔记**](http://jianshu.io/p/d74b041f0ceb)

---
### [Refs]()
- [**Ubuntu Skills**](http://wiki.ubuntu.org.cn/UbuntuSkills)

---
### [TOC]()
- 1 前言
- 2 安装升级
- 3 系统
- 4 硬盘
- 5 进程
- 6 ADSL
- 7 网络
- 8 iptables
- 9 安全
- 10 服务
- 11 用户管理
- 12 设置
- 13 中文
- 14 文件管理
- 15 影像
- 16 压缩
- 17 Nautilus
- 18 日期和时间
- 19 工作区
- 20 控制台
- 21 数据库
- 22 控制
- 23 统计
- 24 编辑器
- 25 编译和打包
- 26 其它
- 27 More
---
~~~
                                  Run, Forest, Run
~~~
---
#### [1 前言]()
shell, console, #, $, sudo
> 不完全，乃摘抄
For more, see my other post:
[**Linux Shell Scripting Cookbook, Second Edition**](http://jianshu.io/p/87eefaf092c5)

---
#### [2 安装升级]()
```
apt-cache search <正则表达式> # or: aptitude search <RegExpr>
apt-cache stats # 显示系统安装包的统计信息
apt-cache pkgnames # 显示系统全部可用包的名称
apt-cache show cmatrix # 显示cmatrix包的信息
apt-cache  depends <xxx>
apt-cache rdepends <xxx>
sudo apt-cdrom add # 增加一个光盘源
sudo apt-get update # (这一步更新包列表)
sudo apt-get dist-upgrade # (这一步安装所有可用更新)
sudo apt-get upgrade # (这一步安装应用程序更新，不安装新内核等)
dpkg -L <xxx> # 查看软件xxx安装内容
dpkg -S <filename> # 查找文件属于哪个包, or: apt-file search <filename>
dpkg -l | less # 查看已经安装了哪些包
# 清除所有已删除包的残馀配置文件
dpkg -l |grep ^rc|awk '{print $2}' |sudo xargs dpkg -P
```

```
sudo auto-apt run ./configure # 编译时缺少h文件的自动处理, fantastic!
ls /var/cache/apt/archives # 查看安装软件时下载包的临时存放目录
dpkg --get-selections | grep -v deinstall > ~/somefile # 从上面备份的安装包的列表文件恢复所有包
dpkg --set-selections < ~/somefile # 从上面备份的安装包的列表文件恢复所有包
sudo dselect # Debian package management frontend
sudo apt-get autoclean # 清理旧版本的软件缓存
sudo apt-get clean # 清理所有软件缓存
sudo apt-get autoremove # 删除系统不再使用的孤立软件
sudo apt-get autoremove --purge
     apt-get -qq --print-uris install ssh | cut -d\' -f2 # 查看包在服务器上面的地址
sudo apt-get --purge remove liborbit2 # Remove Gnome
sudo apt-get --purge remove libqt3-mt libqtcore4 # Remove KDE
sudo tasksel install lamp-server # 一键安装 LAMP 服务
sudo aptitude purge ~ilinux-image-.*\(\!\(`uname -r`\|generic-.*\)\) # 删除旧内核
```

---
#### [3 系统]()
```
uname -a # system information:all
getconf LONG_BIT # 查看系统是32位还是64位
file /sbin/init # uname -m
# 查看Ubuntu版本, LSB, Linux Standard Base
lsb_release -a # `cat /etc/lsb-release` doesn't work
lsmod # Show the status of modules in the Linux Kernel
lspci # list all PCI devices
lsusb # list USB devices, better choice: lsusb -v
ethtool eth0
ethtool -s eth0 wol g # activate Wake on LAN
dmidecode -t memory # 查看内存型号
free # check memory usage
ulimit -a
ipcs -l # provide information on ipc facilities
xrandr # primitive command line interface to RandR extension, about DISPLAY
```

---
###  [4 硬盘]()
```
lsblk
sudo mount -t smbfs -o  username=xxx,password=xxx,iocharset=utf8 //192.168.1.1/share /mnt/share
hdparm
du -hs <folder> # fantastic
```

---
###  [5 进程]()
```
top # 动态显示进程执行情况
ps -AFL
w # better than who
xkill # select window to be killed
lsof # list open files
nohup
```

---
### [6 ADSL]()
```

```

---
### [7 网络]()
```
arping IP地址 # 根据IP查网卡地址
nmblookup -A IP地址 # 根据IP查电脑名, I don't have that
ifconfig eth0 |awk '/inet/ {split($2,x,":");print x[2]}' # check your ip address
lsof -i :80
# check you MAC address
ifconfig eth0 | head -1 | awk '{print $5}' # or
cat /sys/class/net/eth0/address # I prefer `ifconfig wlan0`
# 立即让网络支持nat
echo 1 | sudo tee /proc/sys/net/ipv4/ip_forward
sudo iptables -t nat -I POSTROUTING -j MASQUERADE
# 查看路由信息
netstat -rn
route -n
# 修改网卡MAC地址的方法
sudo ifconfig eth0 down #关闭网卡
sudo ifconfig eth0 hw ether 00:AA:BB:CC:DD:EE #然后改地址
sudo ifconfig eth0 up #然后启动网卡
whois baidu.com
traceroute baidu.com
dhclient # 重新从服务器获得IP地址, Dynamic Host Configuration Protocol Client
# 如何查看HTTP头
w3m -dump_head http://www.example.com
# 或 curl --head http://www.example.com
# curl - transfer a URL
python -m SimpleHTTPServer # 进入目录后运行, to share this folder, fantastic !!!
```

---
### [8 iptables]()
```
# 防止外网用内网IP欺骗
# 查看 / 取消 filter规则
# 阻止一个IP连接本机
# 开启 / 关闭 端口
# 限制访问80端口的外部IP最大只有50个并发
# 禁止一个IP或者一个IP段访问服务器端口服务
```

---
### [9 安全]()
```
# 检查本地是否存在安全隐患: rkhunter
# 如何安装杀毒软件: clamav
# Linux下可以使用的商业杀毒软件: kaspersky, avast, BitDefender
# 防止服务器被暴力破解ssh密码: denyhosts
# 查看系统
last # and, `lastlog`
```

---
### [10 服务]()
```
# 添加 / 删除 一个服务
sudo update-rc.d 服务名 defaults 99
# 临时 启动 / 重启 / 关闭 一个服务
```
---
### [11 用户管理]()
```
adduser, deluser # 但是最好不要真删除一个用户，把他的密码弄的登不进去就行
passwd， chfn
# 禁用/启用某个帐户
usermod -L/-U <userid>
passwd  -l/-u <userid>
usermod -G admin -a 用户名
```

---
### [12 设置]()
```
# configure Java
update-alternatives --config java
# 设置系统http / https代理
xport http_proxy=http://xx.xx.xx.xx:xxx # same for ${https_proxy}
# 修改系统登录信息
```

---
### [13 中文]()
```
im-switch -c # switch input method
# check encoding
enca <file> # file <file>
# 转换文件名由GBK为UTF8
convmv -r -f cp936 -t utf8 --notest --nosmart *
iconv -f GBK -t UTF-8 gbkfile.txt -o utf8file.txt
iconv -f gbk -t utf8 $i > newfile
# 转换 mp3 标签编码 #
# 控制台下显示中文 #
# lftp 登录远程Windows中文FTP #　
# 乱码
apt-get install poppler-data # PDF 乱码
# unzip 中文文件名乱码
apt-get install p7zip-full # install 7zip
export LANG=zh_CN.GBK  #临时在控制台修改环境为zh_CN.GBK，然后解压缩即可
7za / 7zr / 7z e doc.zip # unzip it
# 查看具体字体名称
fc-match monospace #=>: LiberationMono-Regular.ttf: "Liberation Mono" "Regular"
```

---
### [14 文件管理]()
```
> file.txt # or `touch file.txt`, I recommend `> file.txt`, you can try it
cat, more, less, nl, cut, grep, find, tail, tailf, sed
# 上面这些工具还是要系统的看一下，不能只学几个Skills #
# 快速查找某个文件
whereis <file> # whereis cat
find <目录> -name <文件名>
locate 文件名 # run `updatedb` first
vimdiff <file1> <file2>
# Important!
apropos <xxx>
man -t <xxx>
# 通过ssh传输文件
scp -rp /path/filename username@remoteIP:/path #将本地文件拷贝到服务器上
rsync -avh /path/to/file/or/dir user@host:/path/to/dir/or/file
# rename
rename 's/.rm$/.rmvb/' *  # rm改为rmvb\
rename 'tr/A-Z/a-z/' *
rm -- --help.txt 或者 rm ./--help.txt # 删除特殊文件名的文件，如文件名：--help.txt
ls -d */ 或 echo */ # Gnat: echo 用得也太雕了。。。
find, rsync, lftp
# dos2unix
ex "+:%s/[Ctrl+V][Enter]//g" "+:wq"  filename  # ...Dont understand
dos2unix filename
tr -d '\15\32' < dosfile.txt > unixfile.txt
awk '{ sub("\r$", ""); print }' dosfile.txt > unixfile.txt
# unix2dos
awk 'sub("$", "\r")' unixfile.txt > dosfile.txt
# Important
mkisofs # out of date
genisoimage # instead, recommend you use this
# pdf processing, recommand use `unoconv`, see: http://jianshu.io/p/037fb6b33985
# 给文件增加行号
nl HelloWorld.java > HelloWorldCode.java
cat -n file > file_with_line_num # I prefer this, my method
```

---
### [15 影像]()
```
sudo apt-get install swfmill # decode swf
# 如何保存串流视频(mms/rtsp)
mencoder -vf harddup -oac mp3lame -lameopts vbr=3 -ovc xvid -xvidencopts fixed_quant=4 -of avi foo.rmvb bar.avi # rmvb » avi
mencoder -oac mp3lame -lameopts aq=7:vbr=2:q=6 -srate 44100 -ovc xvid -xvidencopts fixed_quant=4 -of avi foo.vob bar.avi # DVD » avi
ffmpeg2theora --optimize --deinterlace <film> # any format to ogv
# CD 抓轨为 mp3 (有损)/Flac (无损)
abcde -o mp3 -b
abcde -o flac -b
# 批量缩小图片到30%
for i in *.jpg; do convert -resize 30%x30% "$i" "sm-$i"; done
# 批量转换jpg到png （通常都是png2jpg吧，省空间）
for i in *.jpg; do convert $i `echo $i | sed -e 's/jpg$/png/'`; done
# text2img
convert -size 200x30 xc:transparent -font /usr/share/fonts/truetype/wqy/wqy-microhei.ttc -fill red -pointsize 16 -draw "text 5,15 '测试中文转为图片'" test.png # fantastic!
optipng, pngcrush, convert *.jpg out.pdf
# pdf2txt, pdf2png, jpg info(identify -verbose), mkv info(mkvtoolnix, `mkvinfo`)
# 抓取桌面操作的视频
ffmpeg -f x11grab -s wxga -r 25 -i :0.0 -sameq /tmp/out.mpg
# 命令行读出文本
espeak -vzh "从前有座山"
# 命令行抓屏, both two utils cant be used in tty1
scrot -s screenshot.png
gnome-screenshot
```

---
### [16 压缩]()
```
apt-get install p7zip p7zip-full p7zip-rar, unrar, zip, unzip, lha, cabextract
7z, 7za, 7zr
```

---
### [17 Nautilus - 就是 file explorer]()
```
# Ctrl+h
# Ctrl+l
# 特殊 URI 地址
* computer:/// - 全部挂载的设备和网络
* network:/// - 浏览可用的网络
* burn:/// - 一个刻录 CDs/DVDs 的数据虚拟目录
* smb:/// - 可用的 windows/samba 网络资源
* x-nautilus-desktop:/// - 桌面项目和图标
* file:/// - 本地文件
* trash:/// - 本地回收站目录
* ftp:// - FTP 文件夹
* ssh:// - SSH 文件夹
* fonts:/// - 字体文件夹，可将字体文件拖到此处以完成安装
* themes:/// - 系统主题文件夹
##############################################
fc-list |grep 文 # installed fonts, in [~/.fonts] or [/usr/share/fonts]
```

---
### [18 日期和时间]()
```
cal, date, hwclock, ntpdate (ntpdate time.nist.gov)
# sudo apt-get install lunar
date '+%Y %m %d %H' |xargs lunar --utf8
dpkg-reconfigure tzdata
date "+%s" #=> 1393332744
date -d@1393332744 #=> Tue Feb 25 20:52:24 CST 2014
```

---
### [19 工作区]()
```
# Ctrl + ALT + ←
# Ctrl + ALT + →
# 或者，将滚轮鼠标放在工作区图标上滚动
```
---
**on the top: workspace switcher**
![](http://gnat-tang-shared-image.qiniudn.com/blog-screen.png)

---
**on the right: a bigger workspace switcher**
![](http://gnat-tang-shared-image.qiniudn.com/blog-screen2.png)

---
### [20 控制台]()
```
### Menu: Edit » Keyboard Shortcuts
# File
Control_Shift_T: New Tab
Control_Shift_N: New Window
Control_Shift_W: Close Tab
Control_Shift_Q: Close Window
# Edit, View
Control_Shift_C: Copy
Control_Shift_V: Paste
F11, Zoom In, Zoom Out, Normal Size(Control_O)
# Tabs
Control_PageUp: Previous Tab
Control_PageDn: Next     Tab
# 控制台下滚屏
Shift_PageUp / Shift_PageDn
# very fantastic!
setterm -dump n(n:1~7)
sudo !! # 执行something权限不够，用`sudo !!` 以root的身份执行上一条命令
```

---
### [21 数据库]()
```
# mysql的数据库存放路径: /var/lib/mysql
# 从mysql中导出和导入数据
# 忘了mysql的root口令怎么办
# 修改mysql的root口令
```

---
### [22 控制]()
```
# Fantastic: 关闭显示器
xset dpms force off
# sudo apt-get install cpufrequtils
cpufreq-info
cpufreq-set -g {powersave, userspace, ondemand, conservative, performance} # choose mode
# Shutdown
halt, shutdown -h now
shutdown -h 20:00, shutdown -h +60 # 60 mins later
reboot, shutdown -r now, init 3
# Customize SSH connection prompt / TTY1 prompt
emacs -nw /etc/motd
synclient touchpadoff=1 # turn off touchpad, don't work on my computer...
# apt-get install libnotify-bin
notify-send "hello world"
```

---
### [23 统计]()
```
# 统计最常用的10条命令
history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl | head -n10

```
works in `bash`, but not `zsh`
![](http://gnat-tang-shared-image.qiniudn.com/blog-count.png)
```
# calc words frequency
awk '{arr[$1]+=1 }END{for(i in arr){print arr[i]"\t"i}}' FILE_NAME | sort -rn
```

---
### [24 编辑器]()
```
# Too much Vim skills
```
- [Emacs 常见问题及其解决方法](http://forum.ubuntu.com.cn/viewtopic.php?t=13560)

---
### [25 编译和打包]()
```
sudo apt-get install build-essential
./configure && make && make install
# get source
sudo apt-get source mysql-server
# 安装编译打包环境
sudo apt-get build-dep mysql-server
# 重新编译并打包Debian化的源码
dpkg-buildpackage -rfakeroot
# 获得源码并重新打包
apt-get source php5-cgi
#或手工下载源码后使用 dpkg-source -x  php5_5.2.6.dfsg.1-3ubuntu4.1.dsc 解开源码
sudo apt-get build-dep php5-cgi
cd php5-5.2.6.dfsg.1
dpkg-buildpackage -rfakeroot -uc -b
```

---
### [26 其它]()
```
# right click menu with "open terminal here"
sudo apt-get install nautilus-open-terminal
# 清除桌面挂载硬盘图标
gconftool-2 --set /apps/nautilus/desktop/volumes_visible 0 --type bool
# man 如何显示彩色字符, zsh already has it
```

---
### [27 More]()
`long command` <C-j> `other command` <enter> `#=> back to long command`

---
| [**建议/意见**](http://jianshu.io/p/63a956887fd4) | [**Errata**](http://jianshu.io/p/e1e05fa9e0a3) |  [**闲话废话**](http://jianshu.io/p/2d3d4348074f) |  |
| :---: | :---: | :---: | :---: |
| | | | | |
~~~
log: $1. finished at Wednesday, February 26 2014; $2. modified Thursday, March 06 2014;
~~~








--------------------------------------------------------------------------------

#### Refs

* [巴朗口袋指南 (豆瓣)][balang]

[balang]: http://book.douban.com/subject/10544865/






--------------------------------------------------------------------------------

#### 前言

* 拼写很重要
* 拼写理应得到重视
* 掌握拼写技巧很重要 (我注: 其实我看这本书是为了打字时能更好地"断字")





--------------------------------------------------------------------------------

#### 如何成为一个更好的拼写者

1. 要知道, 拼写学习是个一辈子的事
2. 拼写和发音可以有很多种, 但不总是对的
3. 通过发音记单词拼写
4. 美式发音的历史决定了它总有发音的例外
5. 一些拼写策略:
    1. 学新词 (多读多写, 形象记忆)
    2. 用听觉/视觉学习新词
    3. 列举自己常查的词, 规则
    4. 尝试新方法, 不断探索更有效学习策略
    5. 使用一些辅导书籍, 比如这本



--------------------------------------------------------------------------------

#### 拼写规则

1. 复数 (p.4-19)

2. 特殊词尾
    - able/ible
        1) 完整单词 (depend, dependable), (break, breakable)
           不完整单词(aud, audible), (ed, edible)
        2) 以不发音的 e 结尾
           前有 c,g 则 + able (manage,  manageable)
           否则, 去掉 e + ible (love, lovable), (use, usable)

3. 前缀及其同化

同化: 根据单词发音改变前缀拼写, 这种调整成为同化

4. 复合名词和复合形容词

hip-hop


--------------------

#### 两万四千词即时查询

(本书主要的部分)


-------------------

#### 同音词: 经常混淆和拼错的词


1. 同形词和同音词
homograph  ( homonym (一词多意) + 第二类如: schedule, 各地发音可能不一样)
homophone:

2. 同音异形词

| 美式英语| 英式英语|
| :---: | :---: |
| e, encyclopedia | ae, encyclopaedia |
| e, fetus| oe, foetus|
| er, meter| re, metre |
| f, draft | ugh, draught |
| ize, apologize | ise, apologise |
| l, traveler | ll, traveller |
| o, color | ou, colour |
| se, defense | ce, defence |
| ment, judgment | ment, judgement |


3.

同音词表

a          ,ay/aye     ,eh   ;
ac.cept    ,ex.cept    ,     ;
ac.ci.dence,ac.ci.dents,     ;
ad         ,add        ,     ;
adds       ,ads        ,adze ;
adieu      ,ado        ,     ;
ae.rie/aery,ai.ry      ,     ;




#### A, An, The

- Boys often like dogs very much. **The** animals can listen to their masters.
- Silicon does not occur in **the** free state in nature, and very few people have seen the pure substance.
- **the** Republic of France, ~~the China~~
- **the** Pacific, **the** Mediterranean, **the** moon, **the** most important problem
- The roof will collapse at **a** blow.
- The roof will collapse at **one** blow.
- **the** red and white flower
- **the** red and **the** white flower
- **little** water
- **a little** water
- three of us
- **the** three of us
- out of question
- out of **the** question
- **the** building materials, **the** moving water, **the** wasted energy
- **The** oil and **the** textile industry have exceeded the plan.
- He is **an** engineer and manager.
- **The** telephone was invented in 1876.
- **Many a** student speaks English well.
- **Both the** answers are wrong.
- China soccer youth to train in (the) cities. （没看懂。。。）
- the careless use of gun accident
- **a piece of** furniture
- **a cake of** soap
- **various branches of** knowledge
- **a** pressure of three atmospheres


#### About, Around, Round

- There is a white fence **about** the house.
- There is a strange smell **about** him.
- go about
- get about / around / round
- kick about / around
- look about
- a book **about** Asia
- a book **on** Asia
- He set **about** writing his report. (start doing)
- She is **about** to speak.
- Few people seemed **about**
- go a long way **about**
- bring about, come about
- play about, play around, play round
- nose **about** for information
- leave something **about**
- order sb. **about**


#### Above

- above the sea
- He may think himself **above** others
- He may get **above** himself
- Our physics laboratory is just **above**
- What type of error is similar to **the above**?


#### Across

- across the world, across the years
- across the river
- come across her mind
- go / move / run / walk across
- sail far across the sea
- be across the street
- the music from **across the street**
- a tree lies across the railway
- be connected across, pass across
- come across
- drop across
- fall across sb.
- ran across sb.
- run across the field
- run sb. across the field
- be across at 8 (o'clock)
- The river is one kilometer across (in width)
- bring sb. across
- glance across at sb.
- put ... across
- row across （划船过河）
- saw a plank across
- tear the letter across
- He put himself across (to the voters) as a suitable leader.
- cut across the field （走捷径）
- cut across the plan （打乱计划）
- put this deal across
- If your idea is put across well, the students will understand it.


#### After

- After you
- They went there after natural gas.
- Soon after she arrived she began to work at Bank of China.
- That happened long after.
- go / run after a girl
- follow after sth.
- keep after sb.
- hunger/thirst after/for sth.
- pant/pine after/for knowledge
- feel after/for the switch (of lights)
- take after sb. （长得像）
- Read after me

---

这是很久以前的笔记。那时候的策略有误。在选择正确打开方式后，终于 ... 把本书读完了。

看书，尤其是单词书、语法书之类，应该先看前一百页的第一个十页，再看第二个一百页的第一个十页。知道看到本书最后，再回去看回顾第一个十页，接着看每一百页的第二个十页。以此看完全书。

图示：

这有一本五百页的书，还没读

~~~
[==================================================](100%)
|---100----|---200---|---300---|---400---|----500--|
~~~

第一天读了前十页

~~~
[>=================================================](100%)
~~~

五天就刷到了最后 [^five]

~~~
[>=========>=========>=========>=========>=========](100%)
~~~

十天、二十天

~~~
[>>========>>========>>========>>========>>========](100%)
~~~
~~~
[>>>>======>>>>======>>>>======>>>>======>>>>======](100%)
~~~

五十天，大功告成

~~~
[>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>](100%)
~~~

当然，我可不建议一本书用了五十天才看完。越快刷一遍越好，多复习，多反复。通常用五天刷一本书为好。不好的内容直接用笔涂掉，绝不再看。

切记：

> 一鼓作气，再而衰，三而竭


---

~~~
log: $1. Wed Jul  9 21:56:04     2014; $2. Fri Nov 28 23:50:03     2014;
~~~

[^five]: 不知道你有没有书，看了头每次拿起都在重复读前几十页。此法可以避了一本书死活读不到最后一页的悲剧。


---
###Refs
- 新东方 [魔男][gexu] 的 [西方文明简史导读资料集][guide]
- [孤独的阅读者](http://www.gexu.org/)
- [Online Practice: cengage][online_practice]

[gexu]: http://weibo.com/gexucn?from=page_100505_home&wvr=5.1&mod=myfollow
[guide]: http://pan.baidu.com/share/link?shareid=3172824343&uk=2284823654










---
### Misc
1. **阅读前须知**
 - 阅读顺序：乱序 + 逆序：按照兴趣来，引发疑问。
 - 必读：章前开篇，章后总结。
 - 思考: 5W1H
    - **What**, **Why**, **How** (high level)
    - Who, When, Where (low level)

- **Effectiveness vs. Efficiency**
 - 所有的方法都有效
 - 不是所有的方法都有效率
 - 时间是宝贵的

- [阅读辅助: Online Practice][online_practice]

 -  glossary 把知识固定下来
 - Table of Contents 有助于看清话题的走向
 - Maps, Chronology

- 一些观点
 - 不要贪多，不要妄想
 - 纵向思考
 - Extraction of Key Words
 - 硬技能， 软实力
 - 要好玩。愿意“梅花香自苦寒来”那就苦着吧。

[online_practice]: http://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&flag=student&product_isbn_issn=9780495571476&discipline_number=21






---
~~~
log: $1. Sat Apr 12 20:39:52 CST 2014: created days ago;
~~~






---

#### Refs

- [鳥哥的 Linux 私房菜 - 基礎學習篇目錄][vbird]
- [Linux Shell Scripting Cookbook, Second Edition][linux-shell]

[vbird]: http://linux.vbird.org/linux_basic/
[linux-shell]: http://jianshu.io/p/87eefaf092c5



---

#### TOC

- 第一部份：Linux的規劃與安裝
- 第二部份：Linux檔案、目錄與磁碟格式
- 第三部份：學習Shell與Shell Scripts
- 第四部份：Linux使用者管理
- 第五部份：Linux系統管理員
- 第六部份：其他備份文章






~~~
                             第一部份：Linux的規劃與安裝
~~~

---

#### [第零章、计算器概论][basic]

1. 计算机硬件癿五大单元
 - **输入单元**
 - **输出单元**
 - CPU 内部的 **控制单元**、**算数逻辑单元** 与 **主存储器**
     - **CISC**: Complex Instruction Set Computer
     - **RISC**: Reduced Instruction Set Computer

关键词：

- [外围设备][peripheral]：打印机、显示器等
- 电脑分类：
 - 超級電腦(Supercomputer)
 - 大型電腦(Mainframe Computer)
 - 迷你電腦(Minicomputer)
 - 工作站(Workstation)
 - 微電腦(Microcomputer)
- 单位转化

| 進位制 | K | M | G | T | P |
| :--: | :--: | :--: | :--: | :--: | :--: |
| 二進位 | 1024 | 1024K | 1024M | 1024G | 1024T |
| 十進位 | 1000 | 1000K | 1000M | 1000G | 1000T |

- Hz，Mbps，南北桥，南桥（快），北桥（慢）， CPU，内存，RAM，ROM，BIOS，VGA（显卡），PCI，硬盘，Cylinder，Track，Sector，IDE，SATA，编译器，作业系统（操作系统），Kernel，System Call，驱动，应用程序。


[basic]: http://linux.vbird.org/linux_basic/0105computers.php
[peripheral]: http://baike.baidu.com/link?url=jLp6KwT3RT1Psz5q06ErUamX56w6DUZ28eumNr2G9jGJa_WoonlNZ6RDCRrMez2U






---

#### [第一章、Linux是什麼？][linux-intro]

1. Linux就是一套作業系統
![][linux-arch]

- Linux之前，Unix的歷史
 - 1969年以前：一個偉大的夢想，Bell,MIT與GE的『**Multics**』系統
 - 1969年：[**Ken Thompson**][kt] 的小型 file server system (Unix的原型)
 - 1973年：[**Ritchie**][ritchie] 等人以C語言寫出第一個正式 Unix 核心
 - 1977年：重要的 Unix 分支--[BSD][bsd] 的誕生
 - 1979年：重要的 [System V][system-v] 架構與版權宣告， 可以在個人電腦上面安裝與運作了
 - 1984年之一：x86 架構的 [Minix][minix] 作業系統誕生
 - 1984年之二：[GNU][gnu] 計畫與 FSF 基金會的成立
 - 1988年：圖形介面 XFree86 計畫
 - 1991年：芬蘭大學生 [Linus Torvalds][linus-torvalds] 的一則簡訊

- Linux
 - Linux的核心版本
    - 主、次版本為奇數：發展中版本(development)
    - 主、次版本為偶數：穩定版本(stable)
 - Linux distributions
![][distro]
 - 各大Linux Distributions的主要異同：支援標準！
    - [LSB: Linux Standard Base][lsb]
    - [FHS: File system Hierarchy Standard][fhs]
    - [POSIX: Portable Operating System Interface][posix]
 - Linux的優缺點

[linux-intro]: http://linux.vbird.org/linux_basic/0110whatislinux.php
[linux-arch]: http://linux.vbird.org/linux_basic/0110whatislinux/os_01.gif
[kt]: http://en.wikipedia.org/wiki/Ken_Thompson
[ritchie]: http://en.wikipedia.org/wiki/Dennis_Ritchie
[bsd]: http://en.wikipedia.org/wiki/Berkeley_Software_Distribution "Berkeley Software Distribution"
[system-v]: http://en.wikipedia.org/wiki/System_V
[minix]: http://zh.wikipedia.org/wiki/MINIX
[linus-torvalds]: http://en.wikipedia.org/wiki/Linus_Torvalds
[distro]: http://linux.vbird.org/linux_basic/0110whatislinux/distribution.gif
[lsb]: http://en.wikipedia.org/wiki/Linux_Standard_Base
[fhs]: http://en.wikipedia.org/wiki/Filesystem_Hierarchy_Standard
[posix]: http://en.wikipedia.org/wiki/POSIX
[gnu]: https://en.wikipedia.org/wiki/GNU_Project





---

#### [第二章、如何正確有效的學習 Linux][how-to-learn-linux]

1. Linux當前的應用角色
 - 企业用作服务器，科学计算
 - 个人桌面电脑，微型系统，嵌入式，手机，PDA

- 鸟哥的学习之路：从不得道到遇到好老师：[Study Area(酷學園)][study-area]

- 学习心态
 - 假设服务器
 - 学习 X Window 系统
 - Shell Script

- 有心朝 Linux 作業系統學習者的學習態度
 - 從頭學習 Linux 基礎
    - 計算機概論與硬體相關知識
    - 先從 Linux 的安裝與指令學起
    - Linux 作業系統的基礎技能
    - 務必學會 vi 文書編輯器
    - Shell 與 Shell Script 的學習
    - 一定要會軟體管理員
    - [網路基礎][network-basics]
- 亲自动手操作很重要

- 發生問題怎麼處理啊？建議流程是這樣..
 - 查资料
   - `man`, `info`
   - [Google][google]
   - [The Linux Documentation Project][the-linux-documentation-project]
 - 注意错误的输出信息
 - 与人讨论

- 成就感，提高学习信心


[how-to-learn-linux]: http://linux.vbird.org/linux_basic/0120howtolinux.php
[study-area]: http://www.study-area.org/menu1.htm
[network-basics]: http://www.study-area.org/network/network.htm
[google]: https://www.google.com.sg/
[the-linux-documentation-project]: http://www.tldp.org/






---

#### [第三章、主機規劃與磁碟分割][disks]

1. Linux與硬體的搭配
 - [Linux 与硬件设备（图）][linux-hardware]
 - [硬件设备在 Linux 上的挂载][linux-hardware2]

- 磁碟分割
 - [磁盘结构 （HDD）][linux-hardware3]
 - [**Partition Table**][p-table]: [pic][partition-img]
 - [GUID 磁碟分割表][GUID]

- Linux安裝模式下， 磁碟分割的選擇(極重要)
 - 目錄樹結構 (directory tree)
![][directory-tree]

- 安裝Linux前的規劃
 - 选择合适的 distro
 - 规划磁盘

关键词：

- File System
- Partion Table
- MBR
- WWW
- DHPC
- Proxy


[disks]: http://linux.vbird.org/linux_basic/0130designlinux.php
[linux-hardware]: http://linux.vbird.org/linux_basic/0130designlinux/computer_coms.png
[linux-hardware2]: http://gnat-tang-shared-image.qiniudn.com/201404-linux-hardware.png
[linux-hardware3]: http://linux.vbird.org/linux_basic/0130designlinux/harddisk.jpg
[p-table]: http://en.wikipedia.org/wiki/Partition_table
[partition-img]: http://www.partitionwizard.com/images/tu/tuu/resize-gpt-disk-partition.jpg
[directory-tree]: http://linux.vbird.org/linux_basic/0130designlinux/dirtree.gif
[GUID]: http://zh.wikipedia.org/wiki/GUID%E7%A3%81%E7%A2%9F%E5%88%86%E5%89%B2%E8%A1%A8





---

#### [第四章、安裝 CentOS 5.x 與多重開機小技巧][centos]

关键词：

- Boot Loader，Grub
- 磁盘分割
- 文件系统，ext2，ext3，ext4, vfat，Swap，LVM，RAID
- MAC，SSID，BSSID，ESSID
- SELinux（Security Enhanced Linux）


[centos]: http://linux.vbird.org/linux_basic/0157installcentos5.php






---

#### [第五章、首次登入與線上求助 man page][man-page]

关键词：

- X Window，Gnome，KDE
- tty1-6
- bash，ls，pwd，echo，date，cal，bc
- Tab 补全，c-c，c-d
- man，info，zsh
- less，more
- nano
- sync，reboot，shutdown，init，halt，poweroff
- passwd

[man-page]: http://linux.vbird.org/linux_basic/0160startlinux.php




~~~
                             第二部份：Linux檔案、目錄與磁碟格式
~~~

---

#### [第六章、Linux 的檔案權限與目錄配置][权限]

关键词：

- `-rwx`，`d-lbc`，chgrp，chown，chmod
- FHS
- absolute / relative path

[权限]: http://linux.vbird.org/linux_basic/0210filepermission.php


---

#### [第七章、Linux 檔案與目錄管理][directory]

关键词：

- cd，pwd，mkdir，rmdir
- $PATH，su，mv，cp，rm
- `\rm`，在指令前加上反斜線，可以忽略掉 alias 的指定選項喔！
- basename，dirname
- cat，tac，less，more
- head，tail，od
- umask，touch
- chattr，lsattr
- SUID（Set UID），SGID（Set GID），SBIT（Sticky Bit）
- file，which，whereis，locate，find

[directory]: http://linux.vbird.org/linux_basic/0220filemanager.php





---

#### [第八章、Linux 磁碟與檔案系統管理][manage]

关键词：

- 文件系统：ext2
- `dev/sd[a-p][1-15], dev/hd[a-d][1-63]`
- block，superblock，blockbitmap，inode bitmap，inode
- dump
- mount point
- VFS
- df，df -h
- du，ln
- fdisk
- mount，umount
- mknod
- 、




[manage]: http://linux.vbird.org/linux_basic/0230filesystem.php



---
## 第三部份：學習Shell與Shell Scripts





---
## 第四部份：Linux使用者管理




---
## 第五部份：Linux系統管理員



---
## 第六部份：其他備份文章




---
~~~
log: $1. Apr 19, 2014: created long time ago; $2. Apr 19, 2014: modified;
~~~

---

var.h

```cpp
osg::MatrixTransform *joint{1..6}
osg::MatrixTransform *currentJoint
osg::ref_ptr<osg::ShapeDrawable> capsule_arm3
bool showAxis;
osg::TessellationHints *hints;
```

KeyboradEventHandler.h

键盘

```cpp
class KeyboardEventHandler : public osgGA::GUIEventHandler
osgGA::GUIEventAdapter::KEYDOWN := ea.getEventType()
'q' := ea.getKey()
```


ArmMovement.h

```cpp
class ArmMovement:public QWidget
rotateX, rotateY, rotateZ, rotateXZ, translate

stretchArm: step{1..6}: move six joints, j
closeArm: step{6..1}: move six joints, i
xCarMove: currentPosition, lastPosition
plusArm3, reduceArm3: 这部分比较难
```

OSGDisplayer.h

```cpp
class OSGDisplayer : public QWidget, public osgViewer::CompositeViewer

createShaps( double length, int beamNum );
buildBase( osg::MatrixTransform *prev )
buildArm{1..3}( osg::MatrixTransform *prev )
buildCar( vector<float> *data, osg::MatrixTransform *prev )

// translate -> scale -> translate back

void paintEvent( QPaintEvent * event )
```

Bridge.h

```cpp
class Bridge : public QMainWindow
private:
    Ui::Bridge *ui; // 啥都没有

ui->gridLayout->addWidght( displayer )
```


Note

```cpp
osg::Matrix::
    * makeScale( v1, v2, v3)
    * makeRotate(angle, x, y, z): rotateZ = makeRotate(angle, 0, 0, 1)
    * makeTranslate( x, y, z)
osg::Matrix::scale/rotate/translate

osg::Node::
    * getBound().center().x()
    * getBound().radius()

osg::Camera::
    * setProjectionMatrixAsPerspective( fov, ratio, znear, nfar)
    * setProjectionMatrixAsOrtho( left, right, bottom, top, znear, zfar );
    * setViewMatrixAsLookAt( eyePoint, center, upDirection );
osgViewer::compositeViewer::
    * getView( uint idx )->addEventHandler( new KeyboardEventHandler )
```


- [TED 爆红课程：如何在6个月内学会一门外语][learn-a-language-in-6-month]

[learn-a-language-in-6-month]: http://edu.sina.com.cn/en/2014-04-10/155579829.shtml


---


![][01]
![][02]
![][03]
![][04]
![][05]
![][06]
![][07]
![][08]
![][09]
![][10]
![][11]
![][12]
![][13]
![][17]
![][18]
![][14]
![][15]
![][16]



[01]: http://gnat-tang-shared-image.qiniudn.com/pictures/learn-a-language-in-6-month/00-learn-a-language-in-6-month.png
[02]: http://gnat-tang-shared-image.qiniudn.com/pictures/learn-a-language-in-6-month/01-principle-01.png
[03]: http://gnat-tang-shared-image.qiniudn.com/pictures/learn-a-language-in-6-month/01-principle-02.png
[04]: http://gnat-tang-shared-image.qiniudn.com/pictures/learn-a-language-in-6-month/01-principle-03.png
[05]: http://gnat-tang-shared-image.qiniudn.com/pictures/learn-a-language-in-6-month/01-principle-04.png
[06]: http://gnat-tang-shared-image.qiniudn.com/pictures/learn-a-language-in-6-month/01-principle-05-a.png
[07]: http://gnat-tang-shared-image.qiniudn.com/pictures/learn-a-language-in-6-month/01-principle-05-b.png
[08]: http://gnat-tang-shared-image.qiniudn.com/pictures/learn-a-language-in-6-month/01-principle-05-c.png
[09]: http://gnat-tang-shared-image.qiniudn.com/pictures/learn-a-language-in-6-month/02-action-01.png
[10]: http://gnat-tang-shared-image.qiniudn.com/pictures/learn-a-language-in-6-month/02-action-02-a.png
[11]: http://gnat-tang-shared-image.qiniudn.com/pictures/learn-a-language-in-6-month/02-action-02-b.png
[12]: http://gnat-tang-shared-image.qiniudn.com/pictures/learn-a-language-in-6-month/02-action-03.png
[13]: http://gnat-tang-shared-image.qiniudn.com/pictures/learn-a-language-in-6-month/02-action-04-steps-week04.png
[14]: http://gnat-tang-shared-image.qiniudn.com/pictures/learn-a-language-in-6-month/02-action-05.png
[15]: http://gnat-tang-shared-image.qiniudn.com/pictures/learn-a-language-in-6-month/02-action-06.png
[16]: http://gnat-tang-shared-image.qiniudn.com/pictures/learn-a-language-in-6-month/02-action-07.png
[17]: http://gnat-tang-shared-image.qiniudn.com/pictures/learn-a-language-in-6-month/02-action-4-steps-week01.png
[18]: http://gnat-tang-shared-image.qiniudn.com/pictures/learn-a-language-in-6-month/02-action-4-steps-week02-03.png



---

P.S. 没想到这个摘抄还有几个人喜欢。但是当时的截屏弄的不好。有时间我会重新处理一下。就像这篇文章：[【向大鱼致敬 （多图）】][big-fish]
一样用脚本把图片处理的规范点。

P.P.S. 之前没有加 Log，现在补上（充分说明了这是一篇老文章）


[big-fish]: http://jianshu.io/p/30b13d0be678


---

~~~
log: $1. Tue Aug 12 13:27:49     2014;
~~~

- [Portrait of an INTP - Introverted iNtuitive Thinking Perceiving (Introverted Thinking with Extraverted Intuition)][portrait-intp]



[portrait-intp]: http://www.personalitypage.com/INTP.html

---



Portrait of an INTP - Introverted iNtuitive Thinking Perceiving
(Introverted Thinking with Extraverted Intuition)

The Thinker


As an INTP, your primary mode of living is focused internally, where you deal with things rationally and logically. Your secondary mode is external, where you take things in primarily via your intuition.

INTPs live in the world of theoretical possibilities. They see everything in terms of how it could be improved, or what it could be turned into. They live primarily inside their own minds, having the ability to analyze difficult problems, identify patterns, and come up with logical explanations. They seek clarity in everything, and are therefore driven to build knowledge. They are the "absent-minded professors", who highly value intelligence and the ability to apply logic to theories to find solutions. They typically are so strongly driven to turn problems into logical explanations, that they live much of their lives within their own heads, and may not place as much importance or value on the external world. Their natural drive to turn theories into concrete understanding may turn into a feeling of personal responsibility to solve theoretical problems, and help society move towards a higher understanding.

INTPs value knowledge above all else. Their minds are constantly working to generate new theories, or to prove or disprove existing theories. They approach problems and theories with enthusiasm and skepticism, ignoring existing rules and opinions and defining their own approach to the resolution. They seek patterns and logical explanations for anything that interests them. They're usually extremely bright, and able to be objectively critical in their analysis. They love new ideas, and become very excited over abstractions and theories. They love to discuss these concepts with others. They may seem "dreamy" and distant to others, because they spend a lot of time inside their minds musing over theories. They hate to work on routine things - they would much prefer to build complex theoretical solutions, and leave the implementation of the system to others. They are intensely interested in theory, and will put forth tremendous amounts of time and energy into finding a solution to a problem with has piqued their interest.

INTPs do not like to lead or control people. They're very tolerant and flexible in most situations, unless one of their firmly held beliefs has been violated or challenged, in which case they may take a very rigid stance. The INTP is likely to be very shy when it comes to meeting new people. On the other hand, the INTP is very self-confident and gregarious around people they know well, or when discussing theories which they fully understand.

The INTP has no understanding or value for decisions made on the basis of personal subjectivity or feelings. They strive constantly to achieve logical conclusions to problems, and don't understand the importance or relevance of applying subjective emotional considerations to decisions. For this reason, INTPs are usually not in-tune with how people are feeling, and are not naturally well-equiped to meet the emotional needs of others.

The INTP may have a problem with self-aggrandizement and social rebellion, which will interfere with their creative potential. Since their Feeling side is their least developed trait, the INTP may have difficulty giving the warmth and support that is sometimes necessary in intimate relationships. If the INTP doesn't realize the value of attending to other people's feelings, he or she may become overly critical and sarcastic with others. If the INTP is not able to find a place for themself which supports the use of their strongest abilities, they may become generally negative and cynical. If the INTP has not developed their Sensing side sufficiently, they may become unaware of their environment, and exhibit weakness in performing maintenance-type tasks, such as bill-paying and dressing appropriately.

For the INTP, it is extremely important that ideas and facts are expressed correctly and succinctly. They are likely to express themselves in what they believe to be absolute truths. Sometimes, their well thought-out understanding of an idea is not easily understandable by others, but the INTP is not naturally likely to tailor the truth so as to explain it in an understandable way to others. The INTP may be prone to abandoning a project once they have figured it out, moving on to the next thing. It's important that the INTP place importance on expressing their developed theories in understandable ways. In the end, an amazing discovery means nothing if you are the only person who understands it.

The INTP is usually very independent, unconventional, and original. They are not likely to place much value on traditional goals such as popularity and security. They usually have complex characters, and may tend to be restless and temperamental. They are strongly ingenious, and have unconventional thought patterns which allows them to analyze ideas in new ways. Consequently, a lot of scientific breakthroughs in the world have been made by the INTP.

The INTP is at his best when he can work on his theories independently. When given an environment which supports his creative genius and possible eccentricity, the INTP can accomplish truly remarkable things. These are the pioneers of new thoughts in our society.



---

~~~
log: $1. Wed Aug 13 10:54:12     2014;
~~~

* [USTC: Centos镜像使用帮助](https://lug.ustc.edu.cn/wiki/mirrors/help/centos)

---

# 超萌大法：

```
yum install apt
```

然后整个世界就美好了～


# data
```
41 286 357 71 298 426 39 241 350 47 283 399 22 201 449 70 239 363 87 290 449 62 209 417 39 265 415 55 229 363 12 294 442 1 296 378 39 270 380 7 228 379 5 277 385 71 215 442 75 243 424 13 280 414 40 244 380 80 234 429 55 268 435 1 275 434 2 296 433 45 204 446 51 226 389 78 279 370 79 217 407 54 273 426 48 247 400 41 252 423 50 276 362 22 283 444
```

# code
```c
#include<stdio.h>
#include<stdlib.h>
#include<stdarg.h>
#include<math.h>

#define DONE NULL
#define THRESHOLD 0.01

enum {
    N_CLUSTERS = 3,
    MAX_ITERATIONS = 25,
    MAX_DISTANCE = 100,
};

typedef struct _kmeans_t {
    size_t n;
    size_t k;
    double *X;
    double *C;
    size_t *A;
    FILE *ifp;
    FILE *ofp;
} kmeans_t;

/* funcs */
void bye (void);

size_t belongs_to (double *c, size_t nc, double *v);

FILE *getifp (const char *fn);
FILE *getofp (const char *fn);

/* tasts */
void do_tasks (kmeans_t *km, ...);

void km_pipein (kmeans_t *km);
void km_init_clusters (kmeans_t *km);
void km_reassignment (kmeans_t *km);
void km_reclustering (const kmeans_t *km, double *c);
void km_loop (kmeans_t *km);
void km_pipeout (kmeans_t *km);
void km_freeall (kmeans_t *km);


/* main */
int main (void)
{
    atexit (bye); /* we must say goodbye before we exit */

    kmeans_t km = {
        .n = 0,
        .k = 3,
        .X = NULL,
        .A = NULL,
        .ifp = getifp ("data2.txt"),
        .ofp = getofp ("data-out.txt")
    };

    /* task to do */
    do_tasks (&km,
              km_pipein,
              km_init_clusters,
              km_loop,
              km_pipeout,
              km_freeall,
              DONE
             );

    /* exit */
    exit (EXIT_SUCCESS);
}


/* funcs */
void bye (void)
{
    printf ("bye bye\n");
    getc (stdin);
    printf ("bye~\n");
}

size_t belongs_to (double *c, size_t nc, double *v)
{
    size_t i;
    size_t a; /* anchor */

    for (i = 1, a = 0; i < nc; ++i) {
        if ( fabs (*(c+i)-*v) < fabs (*(c+a)-*v) ) {
           a = i;
        }
    }

    return a;
}


FILE *getifp (const char *fn)
{
    FILE *ifp = fopen (fn, "r");
    if (NULL == ifp) {
        fprintf (stderr, "cannot open %s for reading", fn);
        exit (EXIT_FAILURE);
    }
    return ifp;
}

FILE *getofp (const char *fn)
{
    FILE *ofp = fopen (fn, "w");
    if (NULL == ofp) {
        fprintf (stderr, "cannot open %s for writing\n", fn);
        exit (EXIT_FAILURE);
    }
    return ofp;
}

/* tasts */
void do_tasks (kmeans_t *km, ...)
{
    void (*task)() = NULL;

    va_list tasks;
    va_start (tasks, km);
    while (DONE != (
                    task = va_arg ( tasks, void(*)() )
                   )
          ) {
        (*task)(km);
    }
    return;
}

void km_pipein (kmeans_t *km)
{
    double tmp;
    size_t n;

    while (fscanf (km->ifp, "%lf", &tmp) == 1) ++(km->n);
    rewind (km->ifp);

    km->X = (double *) malloc (km->n*sizeof(double));
    for (n = 0; n < km->n; ++n) {
        fscanf (km->ifp, "%lf", km->X+n);
    }
    return;
}

void km_init_clusters (kmeans_t *km)
{
    size_t k;

    km->C = (double *)  malloc (km->k*sizeof(double));
    km->A = (size_t *)  malloc (km->n*sizeof(size_t));

    for (k = 0; k < km->k; ++k) {
        *(km->C+k) = *(km->X+k);
    }
    return;
}

void km_reassignment (kmeans_t *km)
{
    size_t n;

    for (n = 0; n < km->n; ++n) {
        *(km->A+n) = belongs_to (km->C, km->k, km->X+n);
    }
}


void km_reclustering (const kmeans_t *km, double *c)
{
    size_t n, k;

    for (k = 0; k < km->k; ++k) {
        *(c+k) = 0.0;
    }

    for (n = 0; n < km->n; ++n) {
        *(c+*(km->A+n)) += *(km->X+n);
    }

    for (k = 0; k < km->k; ++k) {
        *(c+k) /= (double)km->k;
    }

    return;
}

void km_loop (kmeans_t *km)
{
    size_t n;
    size_t k;
    size_t i;

    double diff;

    double *c = (double *) malloc (km->k*sizeof(double));

    km_reassignment (km);

    /* loops */
    for (i = 0; i < MAX_ITERATIONS; ++i) {
        km_reclustering (km, c);
        diff = 0.0;
        for (k = 0; k < km->k; ++k) {
            diff += fabs (*(km->C+k) - *(c+k));
        }

        if (diff < THRESHOLD) {
            break;
        }

        km_reassignment (km);
    } // end for

    free (c);

    return;
}

void km_pipeout (kmeans_t *km)
{
    size_t n;
    size_t k;

    fprintf (km->ofp, "--overall:\n");
    for (n = 0; n < km->n; ++n) {
        fprintf (km->ofp, "%10sP[%2d]: %10.4lf, cluster: %4d\n", "",
                 n,
                 *(km->X+n),
                 *(km->A+n)
                );
    }

    for (k = 0; k < km->k; ++k) {
        fprintf (km->ofp, "%10sC[%2d]: center: %10.4lf\n", "",
                 k,
                 *(km->C+k)
                );
    }

    return;
}

void km_freeall (kmeans_t *km)
{
    fclose (km->ifp);
    fclose (km->ofp);

    free (km->X);
    free (km->A);
    free (km->C);

    return;
}
```

# GCC 编译结果
```
--overall:
          P[ 0]:    41.0000, cluster:    0
          P[ 1]:   286.0000, cluster:    1
          P[ 2]:   357.0000, cluster:    2
          P[ 3]:    71.0000, cluster:    0
          P[ 4]:   298.0000, cluster:    1
          P[ 5]:   426.0000, cluster:    2
          P[ 6]:    39.0000, cluster:    0
          P[ 7]:   241.0000, cluster:    1
          P[ 8]:   350.0000, cluster:    2
          P[ 9]:    47.0000, cluster:    0
          P[10]:   283.0000, cluster:    1
          P[11]:   399.0000, cluster:    2
          P[12]:    22.0000, cluster:    0
          P[13]:   201.0000, cluster:    1
          P[14]:   449.0000, cluster:    2
          P[15]:    70.0000, cluster:    0
          P[16]:   239.0000, cluster:    1
          P[17]:   363.0000, cluster:    2
          P[18]:    87.0000, cluster:    0
          P[19]:   290.0000, cluster:    1
          P[20]:   449.0000, cluster:    2
          P[21]:    62.0000, cluster:    0
          P[22]:   209.0000, cluster:    1
          P[23]:   417.0000, cluster:    2
          P[24]:    39.0000, cluster:    0
          P[25]:   265.0000, cluster:    1
          P[26]:   415.0000, cluster:    2
          P[27]:    55.0000, cluster:    0
          P[28]:   229.0000, cluster:    1
          P[29]:   363.0000, cluster:    2
          P[30]:    12.0000, cluster:    0
          P[31]:   294.0000, cluster:    1
          P[32]:   442.0000, cluster:    2
          P[33]:     1.0000, cluster:    0
          P[34]:   296.0000, cluster:    1
          P[35]:   378.0000, cluster:    2
          P[36]:    39.0000, cluster:    0
          P[37]:   270.0000, cluster:    1
          P[38]:   380.0000, cluster:    2
          P[39]:     7.0000, cluster:    0
          P[40]:   228.0000, cluster:    1
          P[41]:   379.0000, cluster:    2
          P[42]:     5.0000, cluster:    0
          P[43]:   277.0000, cluster:    1
          P[44]:   385.0000, cluster:    2
          P[45]:    71.0000, cluster:    0
          P[46]:   215.0000, cluster:    1
          P[47]:   442.0000, cluster:    2
          P[48]:    75.0000, cluster:    0
          P[49]:   243.0000, cluster:    1
          P[50]:   424.0000, cluster:    2
          P[51]:    13.0000, cluster:    0
          P[52]:   280.0000, cluster:    1
          P[53]:   414.0000, cluster:    2
          P[54]:    40.0000, cluster:    0
          P[55]:   244.0000, cluster:    1
          P[56]:   380.0000, cluster:    2
          P[57]:    80.0000, cluster:    0
          P[58]:   234.0000, cluster:    1
          P[59]:   429.0000, cluster:    2
          P[60]:    55.0000, cluster:    0
          P[61]:   268.0000, cluster:    1
          P[62]:   435.0000, cluster:    2
          P[63]:     1.0000, cluster:    0
          P[64]:   275.0000, cluster:    1
          P[65]:   434.0000, cluster:    2
          P[66]:     2.0000, cluster:    0
          P[67]:   296.0000, cluster:    1
          P[68]:   433.0000, cluster:    2
          P[69]:    45.0000, cluster:    0
          P[70]:   204.0000, cluster:    1
          P[71]:   446.0000, cluster:    2
          P[72]:    51.0000, cluster:    0
          P[73]:   226.0000, cluster:    1
          P[74]:   389.0000, cluster:    2
          P[75]:    78.0000, cluster:    0
          P[76]:   279.0000, cluster:    1
          P[77]:   370.0000, cluster:    2
          P[78]:    79.0000, cluster:    0
          P[79]:   217.0000, cluster:    1
          P[80]:   407.0000, cluster:    2
          P[81]:    54.0000, cluster:    0
          P[82]:   273.0000, cluster:    1
          P[83]:   426.0000, cluster:    2
          P[84]:    48.0000, cluster:    0
          P[85]:   247.0000, cluster:    1
          P[86]:   400.0000, cluster:    2
          P[87]:    41.0000, cluster:    0
          P[88]:   252.0000, cluster:    1
          P[89]:   423.0000, cluster:    2
          P[90]:    50.0000, cluster:    0
          P[91]:   276.0000, cluster:    1
          P[92]:   362.0000, cluster:    2
          P[93]:    22.0000, cluster:    0
          P[94]:   283.0000, cluster:    1
          P[95]:   444.0000, cluster:    2
          C[ 0]: center:    41.0000
          C[ 1]: center:   286.0000
          C[ 2]: center:   357.0000
```

# VS2010 编译

没有结果，已花样作死，死绝。

我不应该乱玩函数指针。。。



---
~~~
log: $1: 考研复试阶段；
~~~


一个比狂扁小朋友还叼的小游戏：Portal Defenders

![1411753387.png](http://upload-images.jianshu.io/upload_images/29284-7edd08f3b5c33596.png)

有朋友说这就是【传送门】，看了下，是挺像。

~~~
A W D - movement
Q - launch a blue portal.
E - launch a yellow portal.
R - Close both portals.
F - pick up an object.
~ - open up console (enable through the options)
O - quick quality adjust.
Esc/P - pause game.
~~~

游戏就要这样规则简单，趣味无穷。

我这么好，当然提供下载，（原下载于 NewGround），地址：

http://vdisk.weibo.com/s/tiF3xcrqjHYxV/1411793455

用浏览器打开即可。


---

~~~
log: $1. Sat Sep 27 12:54:32     2014;
~~~


``` plain
% VicPad, 2015
%
% author: Tangzhixiong
% padsize: 800 x 600


% #VicPad Introduction

% @<pos int>
# VicPad
is blend of Vim & Markdown,
and with a great GUI support.

% @<pos int>
# Vic Grammer
    % comment, meta data
    % padsize: canvas size of pad
    % #<TITLE>
    % @<pos int>

% @<pos int>
# Vic Concept
vim gene: a, i, A, I, m, v, `
and more: <space>, [Scope], [color]
alse: mouse interaction

% @<pos int>
# More about [Scope]
1. doc scope
2. pad scope
3. sec scope (section)
4. txt scope (all file, in text sense)

% @<pos int>
# More about [color]
color in #RGB,
color in name: red, green, blue, etc.
color refer: % defcolor shit yellow


% #Why VicPad

% @<pos int>
# Markdown & Vim
md: good, but not enough,
    no color support,
    no GUI, no block concept,
    no...
Vim, really powerful
    why not use it in a special GUI application?

% @<pos int>
# more to do
...
```

The goal of VicPad is: **parse the above text file, then generate beautiful slides.**

1. easy to write,
2. easy to share
3. fun to explore
4. hard to live without it

Tools I need:

* JavaScript 2015
* CSS
* a lot more knowledge to make it real, and really good.

---

睡覺！！！



#### Refs

- [M.C. Escher - Life and Work][mc-escher]
- [M.C. Escher - Image Categories – Most Popular][mc-escher-categories]
- [哥德尔、艾舍尔、巴赫书：集异璧之大成（豆瓣）][geb]





[mc-escher]: http://www.nga.gov/content/ngaweb/features/slideshows/mc-escher-life-and-work.html#
[mc-escher-categories]: http://www.mcescher.com/gallery/most-popular/
[geb]: http://book.douban.com/subject/1291204/



---

Gnat:

> 从 GEB 里知道了 Escher，你可能没听过 Escher，但你一定见过他的作品。


### 01-mc-escher
![][01]
### 02-eschers-father
![][02]
### 03-wild-west
![][03]
### 04-eight-heads
![][04]
### 05-the-second-day-of-creation
![][05]
### 06-self-portrait
![][06]
### 07-castrovalva
![][07]
### 08-italian-town
![][08]
### 09-atrani
![][09]
### 10-still-life-with-mirror
![][10]
### 11-hand-with-reflecting-sphere
![][11]
### 12-still-life-and-street
![][12]
### 13-metamorphosis-i
![][13]
### 14-development-i
![][14]
### 15-day-and-night-1938
![][15]
### 16-reptiles-1943
![][16]
### 17-balcony-1945
![][17]
### 18-three-spheres-ii
![][18]
### 19-other-world-1947
![][19]
### 20-gallerty-1946
![][20]
### 21-drawing-hands-1948
![][21]
### 22-contrast-1950
![][22]
### 23-relativity-1953
![][23]
### 24-waterfall-1961
![][24]
### 25-snakes-1969
![][25]


[01]: http://gnat-tang-shared-image.qiniudn.com/img/01-mc-escher.jpg
[02]: http://gnat-tang-shared-image.qiniudn.com/img/02-eschers-father.jpg
[03]: http://gnat-tang-shared-image.qiniudn.com/img/03-wild-west.jpg
[04]: http://gnat-tang-shared-image.qiniudn.com/img/04-eight-heads.jpg
[05]: http://gnat-tang-shared-image.qiniudn.com/img/05-the-second-day-of-creation.jpg
[06]: http://gnat-tang-shared-image.qiniudn.com/img/06-self-portrait.jpg
[07]: http://gnat-tang-shared-image.qiniudn.com/img/07-castrovalva.jpg
[08]: http://gnat-tang-shared-image.qiniudn.com/img/08-italian-town.jpg
[09]: http://gnat-tang-shared-image.qiniudn.com/img/09-atrani.jpg
[10]: http://gnat-tang-shared-image.qiniudn.com/img/10-still-life-with-mirror.jpg
[11]: http://gnat-tang-shared-image.qiniudn.com/img/11-hand-with-reflecting-sphere.jpg
[12]: http://gnat-tang-shared-image.qiniudn.com/img/12-still-life-and-street.jpg
[13]: http://gnat-tang-shared-image.qiniudn.com/img/13-metamorphosis-i.jpg
[14]: http://gnat-tang-shared-image.qiniudn.com/img/14-development-i.jpg
[15]: http://gnat-tang-shared-image.qiniudn.com/img/15-day-and-night-1938.jpg
[16]: http://gnat-tang-shared-image.qiniudn.com/img/16-reptiles-1943.jpg
[17]: http://gnat-tang-shared-image.qiniudn.com/img/17-balcony-1945.jpg
[18]: http://gnat-tang-shared-image.qiniudn.com/img/18-three-spheres-ii.jpg
[19]: http://gnat-tang-shared-image.qiniudn.com/img/19-other-world-1947.jpg
[20]: http://gnat-tang-shared-image.qiniudn.com/img/20-gallerty-1946.jpg
[21]: http://gnat-tang-shared-image.qiniudn.com/img/21-drawing-hands-1948.jpg
[22]: http://gnat-tang-shared-image.qiniudn.com/img/22-contrast-1950.jpg
[23]: http://gnat-tang-shared-image.qiniudn.com/img/23-relativity-1953.jpg
[24]: http://gnat-tang-shared-image.qiniudn.com/img/24-waterfall-1961.jpg
[25]: http://gnat-tang-shared-image.qiniudn.com/img/25-snakes-1969.jpg


---

老习惯，上面的源码：（Markdown 就是好，随便拷贝）

~~~
---

#### Refs

- [M.C. Escher - Life and Work][mc-escher]
- [M.C. Escher - Image Categories – Most Popular][mc-escher-categories]
- [哥德尔、艾舍尔、巴赫书：集异璧之大成（豆瓣）][geb]

[mc-escher]: http://www.nga.gov/content/ngaweb/features/slideshows/mc-escher-life-and-work.html#
[mc-escher-categories]: http://www.mcescher.com/gallery/most-popular/
[geb]: http://book.douban.com/subject/1291204/



---

Gnat:

> 从 GEB 里知道了 Escher，你可能没听过 Escher，但你一定见过他的作品。

### 01-mc-escher
![][01]
### 02-eschers-father
![][02]
### 03-wild-west
![][03]
### 04-eight-heads
![][04]
### 05-the-second-day-of-creation
![][05]
### 06-self-portrait
![][06]
### 07-castrovalva
![][07]
### 08-italian-town
![][08]
### 09-atrani
![][09]
### 10-still-life-with-mirror
![][10]
### 11-hand-with-reflecting-sphere
![][11]
### 12-still-life-and-street
![][12]
### 13-metamorphosis-i
![][13]
### 14-development-i
![][14]
### 15-day-and-night-1938
![][15]
### 16-reptiles-1943
![][16]
### 17-balcony-1945
![][17]
### 18-three-spheres-ii
![][18]
### 19-other-world-1947
![][19]
### 20-gallerty-1946
![][20]
### 21-drawing-hands-1948
![][21]
### 22-contrast-1950
![][22]
### 23-relativity-1953
![][23]
### 24-waterfall-1961
![][24]
### 25-snakes-1969
![][25]


[01]: http://gnat-tang-shared-image.qiniudn.com/img/01-mc-escher.jpg
[02]: http://gnat-tang-shared-image.qiniudn.com/img/02-eschers-father.jpg
[03]: http://gnat-tang-shared-image.qiniudn.com/img/03-wild-west.jpg
[04]: http://gnat-tang-shared-image.qiniudn.com/img/04-eight-heads.jpg
[05]: http://gnat-tang-shared-image.qiniudn.com/img/05-the-second-day-of-creation.jpg
[06]: http://gnat-tang-shared-image.qiniudn.com/img/06-self-portrait.jpg
[07]: http://gnat-tang-shared-image.qiniudn.com/img/07-castrovalva.jpg
[08]: http://gnat-tang-shared-image.qiniudn.com/img/08-italian-town.jpg
[09]: http://gnat-tang-shared-image.qiniudn.com/img/09-atrani.jpg
[10]: http://gnat-tang-shared-image.qiniudn.com/img/10-still-life-with-mirror.jpg
[11]: http://gnat-tang-shared-image.qiniudn.com/img/11-hand-with-reflecting-sphere.jpg
[12]: http://gnat-tang-shared-image.qiniudn.com/img/12-still-life-and-street.jpg
[13]: http://gnat-tang-shared-image.qiniudn.com/img/13-metamorphosis-i.jpg
[14]: http://gnat-tang-shared-image.qiniudn.com/img/14-development-i.jpg
[15]: http://gnat-tang-shared-image.qiniudn.com/img/15-day-and-night-1938.jpg
[16]: http://gnat-tang-shared-image.qiniudn.com/img/16-reptiles-1943.jpg
[17]: http://gnat-tang-shared-image.qiniudn.com/img/17-balcony-1945.jpg
[18]: http://gnat-tang-shared-image.qiniudn.com/img/18-three-spheres-ii.jpg
[19]: http://gnat-tang-shared-image.qiniudn.com/img/19-other-world-1947.jpg
[20]: http://gnat-tang-shared-image.qiniudn.com/img/20-gallerty-1946.jpg
[21]: http://gnat-tang-shared-image.qiniudn.com/img/21-drawing-hands-1948.jpg
[22]: http://gnat-tang-shared-image.qiniudn.com/img/22-contrast-1950.jpg
[23]: http://gnat-tang-shared-image.qiniudn.com/img/23-relativity-1953.jpg
[24]: http://gnat-tang-shared-image.qiniudn.com/img/24-waterfall-1961.jpg
[25]: http://gnat-tang-shared-image.qiniudn.com/img/25-snakes-1969.jpg
~~~

P.S. 让我写评论太为难我了，我只是 GTD，留个备份。


---

~~~
log: $1. 2014‎年‎6‎月‎15‎日; $2. Mon Aug 11 10:35:18     2014;
~~~

---

还在复习考研，又看到了重积分、累次积分、线面积分这部分。之前一直不明白为什么球坐标变换后的比例我就是算不对。今天终于发现了这个错误。


### 1. 极坐标变换

从简单开始，看极坐标变换的比例因子怎么算。当我说比例因子我说的是 `dxdy = [比例因子] dρdθ` 这样的比例因子。这里也就是 `dxdy = ρdρdθ`。还没有 Get 到 LostAbaddon 的徒手用 LaTeX 打草稿的技能，就用手写了。（图书馆的扫面仪不错）

![极坐标变换](http://upload-images.jianshu.io/upload_images/29284-10f81b6d1895d79b.jpg)

这个很简单，分分钟搞定，绝对不会出错。

### 2. 坑人的球坐标变换

同样的方法，应该能求出球坐标变换后的比例因子，也就是 `ρ^2*sin(phi)`。但我算了很多次，都没有成功，我这么做的：

![球坐标变换（有错误）](http://upload-images.jianshu.io/upload_images/29284-4f7cf00409bebf8a.jpg)

展开的妙。。。不能更二。真是无法理解为什么每次都犯同样的错误。而且就在这儿犯，平时也没有这么玩（自己）的。以后看到行列式里有 0，要多开心（小心）了。

改改就正确了。

![修正。啊。。。这种错误](http://upload-images.jianshu.io/upload_images/29284-ec1da149194a7a7b.jpg)

Jacobian 这种神器以前提过：
* [003. Jacobian 和 Determinant - 简书](http://www.jianshu.com/p/57f992a2c87f?search_token=638fe296e79e78d2adf5f07637e035707ce1bac30644d2460f3426d41f36ef06)


看到 [感恩记录（2014年7月10日）][thanks-giving]，一激动就成了 豆瓣FM Pro 用户。

[thanks-giving]: http://jianshu.io/p/97f64f76b4c0

---

爱吐槽，爱挑刺，在很多人看来我是个一直愤怒着的人。

但我不是。

喷，是一种态度，它的另一面是中庸。在我看来，如果你觉得怎么都可以，那就是耍流氓。（想象一下女朋友问你这件衣服好看还是那件衣服好看，你说“随便”。她是不是想抽你？）


没有态度的人往往没有追求。对丑无动于衷的人怎么会去追寻美？

至于那些被社会打磨得不再尖锐的人，我理解你们。我也尽力远离你们。做我的刺头，我觉得挺好。

**爱喷不代表不懂生活。**

---

现在，国内我最爱的两个网站是 简书 和 豆瓣FM。我曾在朋友圈里多次赞美 豆瓣FM，说 “等我有钱了，就赞助 豆瓣FM”。今天，我成为了 Pro 用户~ 希望这些美好的事物能长久。简书有 Pro 的时候我也尽力支持。

P.S. 豆瓣FM Pro 的音质，对我的耳朵来说是太奢侈了。但是感觉是要好点，一定是心理作用。


~~~
log: $1. Thu Jul 10 20:49:37     2014;
~~~


#### Refs

- [我的书 (封面翻拍:  167 本)][my-books-pic]
- [我的书 (目录: txt 文件，编码有点问题，目录已附在本页面下方) ][my-books-txt]


[my-books-pic]: http://www.douban.com/photos/album/132368875/
[my-books-txt]: http://gnat-tang-shared-image.qiniudn.com/01.txt






--------------------------------------------------------------------------------

> 最大的阻力是快递费，实在太桑心，现在看看当当的包邮策略其实够厚道了


看到 [闲置书籍交换活动（大家一起来蹭书） | 简书][books] , 就来凑热闹。

我早想卖书来着，本想趁毕业季到跳蚤市场上假装学长卖书，结果宅多日后发现，他们都卖完收工了。。。（今天他们又出来了。。。）

想到如果明年我没有考上研（希望别）或者考到别的地方，那我还得处理这些书，我就无比蛋疼，还是电子书好。前几天整理了一下，发现我的书实在太多了，我正在想我怎么看完它们。今天我来开个好头吧。（我觉得我的书整理的还是挺有条理的，简直可以作为本站发帖标准模板）



#### 注：

- 中文书名，差不多是中文书
- 英文书名，差不多就是英文书
- 图书（封面照片）顺序和我的 txt 目录文档顺序一致
- 我这不是全送人，当初是为了管理自己的财产。。。

#### 有几类我不需要的：

- 史记，红楼梦，这种古汉语的
- 走夜路，要放声歌唱，这种小清新的
- 中文的计算机类书籍
- 大学课本
- 其他


#### 有几类我还需要的：

- 英文原版书（我还要努力看完）
- 英文计算机类书籍
- 数学相关
- 考研相关（我还要考研。。。）


#### 一些说明：

- 做了笔记的书原则上不送
- 如果你不介意我撕掉几页或者涂掉写内容，第一条可以不考虑
- 教科书不受前两条限制




--------------------------------------------------------------------------------

如果有需要，可以赠送，邮费自理
（当然我也不介意交换，如果有我想看的 ，但现在我是要去物质化。。。。别诱惑我。而且现在我偏好电子书。外，问上研究生的学长要不要书，他问我要不要来几本，他那也有很多。。。）



[books]: http://jianshu.io/p/f384b41352df






--------------------------------------------------------------------------------

##### 还是在这里直接把目录贴出来吧：

（右侧缩进的书已经被人订了）
（我把我不会送的也缩进掉，手机看起来可能比较麻烦，因为我缩进了 60 个字符，会很混乱）

~~~
【还可以送】                   【已预订】                     【我要留着的】
                                                            001: Algorithms
002: An-Integrated-English-Course-4
003: ArcGIS-Server-开发从入门到精通
                                                            004: ArcUser-Esri
                                                            005: A-Thousand-Splended-Suns
006: BEC-真题集
                                                            007: Blink-the-power-of-thinking-without-thinking
                                                            008: Common-Lisp
009: Communicating-English-in-Culture-文化交流英语-学生实用手册 (武大口语暑期辅导班专用教材）
                              010: C#入门经典
                              011: C程序设计
                              012: C语言程序设计
                              013: C++面向对象程序设计
                                                            014: Discrete-Mathematics-and-its-Applications
                                                            015: Eat-Pray-Love
016: Fast-Reading
017: Geographic-Information-System
018: GIS空间分析理论与方法
019: GIS设计与实现
020: Gone-With-The-Wind
                                                            021: GRE词汇精选
                                                            022: Introduction-to-Linear-Algebra
                                                            023: Mastering-Regular-Expressions
024: Open-GL-编程指南 （OpenGL 红宝书）
025: Pass-BEC-口试必备手册
                                                            026: Pattern-Classification
                                                            027: Structure-and-Implementation-of-Computer-Programs
                                                            028: The-Art-of-Public-Speaking
                                                            029: The-C-Programming-Language
030: The-Importance-of-Living （林语堂经典）
                                                            031: The-Kite-Runner
                                                            032: The-Lexus-and-the-Oliver-Tree
                                                            033: The-Little-Schemer
                                                            034: The-Lord-of-the-Rings
                                                            035: The-Tipping-Point
036: Twenty-Thousand-Leagues-Under-the-Sea （海底两万里英文版）
                                                            037: Understanding-Poetry
038: Visual-C++-面向对象编程教程
                              039: 一个人的村庄
                              040: 一九八四-Nineteen-Eighty-Four
041: 一本数学书
                              042: 万物有灵且有美
                              043: 世界如此险恶-你要内心强大
                              044: 中国近现代史纲要
                              045: 乌合之众-大众心理研究
                              046: 云计算
047: 全国计算机等级考试-三级网络技术
048: 全国计算机等级考试-四级网络工程师
049: 兄弟
050: 别停下追求的脚步
                              051: 动物性食品卫生学
052: 北大英文写作教程
                                                            053: 十天突破雅思口语
                                                            054: 十天突破雅思口语-必备掌中宝
                              055: 古代诗词名句赏析
                              056: 古文观止-鉴赏词典
                              057: 古汉语常用字字典
                              058: 史记
059: 启功体-硬笔书法-技法训练
060: 园丁集
                                                            061: 围城
                              062: 地图学原理
063: 地理信息系统原理
064: 大学国防教育
065: 大学基础物理
066: 大学物理学-学习辅导与习题解答
067: 大学物理实验教程
068: 大学生体质与健康
069: 大学生安全教程
070: 大学英语创意阅读
071: 大学英语听说2345
072: 大学英语阅读教程
073: 大学语文
                              074: 奥巴马演讲集
                              075: 奥普拉演讲访谈录
                                                            076: 如何阅读一本书
077: 学习ASP.Net2.0和AJAX
078: 学习OpenCV-中文版
                              079: 小小汉英词典-外研社
                              080: 弘一大师说佛
081: 影响你一生的47部电影
082: 思想道德修养与法律基础
                              083: 思维的乐趣
                                                            084: 标准日本语
085: 情商
086: 我为演讲狂
087: 截拳道断棍-基础入门
                              088: 把栏杆拍遍
089: 数字图像处理
090: 数字测图-原理与方法
                                                            091: 数学之美
092: 数学物理方法
093: 数学物理方法-学习指导
094: 数据库系统概论
095: 数据结构-C语言版
096: 新手学五笔打字
097: 新编大学英语
                                                            098: 暗时间
099: 朝花夕拾-野草
                                                            100: 柯林斯高阶英语学习词典
                                                            101: 概率论与数理统计
                                                            102: 概率论与数理统计-习题全解指南
103: 武汉大学学生手册
104: 毛泽东思想和中国特色社会主义理论体系概论
105: 沉思录-Meditation
                                                            106: 沉默的大多数
107: 测绘学概论
                                                            108: 浪潮之巅
                                                            109: 渴望之书
110: 现代文经典评读
111: 现代素描肖像
                              112: 环境学导论
                              113: 男女内参
                              114: 病隙碎笔
                              115: 百年孤独
116: 空间数据库
117: 精通Matlab-R2011a
                              118: 红楼梦
                                                            119: 线性代数
120: 网络地理信息系统-原理与技术
121: 置身于苦难与阳光之间
122: 美丽失败者
                              123: 美国种族简史
                                                            124: 美国英语口语词典
125: 美音-纠音-透析与突破
126: 考拉小巫的英语学习日记
                                                            127: 考研政治
                                                            128: 考研数学-习题
                                                            129: 考研数学复习全书
130: 考研词汇速记指南
131: 耻辱者手记 （有两本）
                                                            132: 肢体行为
133: 自由在高处
                                                            134: 英语中级听力2
                                                            135: 英语单词拼写攻略
136: 英语学习策略-从理论到实践
137: 英语电影欣赏
                                                            138: 英语词根词典
                                                            139: 英语词汇速记大全-词根-词缀记忆法
                              140: 莫言精选集
                              141: 西西弗神话
142: 计算机图形学
143: 计算机网络
                                                            144: 误差处理与可靠性理论
                                                            145: 误差理论与可靠性理论
                                                            146: 误差理论与测量平差基础
                              147: 走夜路-请放声歌唱
148: 跟卡耐基学人际交往
149: 跟卡耐基学当众讲话
150: 软件工程
151: 遥感原理与应用
152: 遥感图像解译
153: 钱学森 （钱学森那是很帅啊）
154: 钢笔字体学与练-楷行-毛泽东诗词
                              155: 阿勒泰的角落
156: 雅思倒计时-写作
157: 雅思口语
158: 雅思机经
                                                            159: 雅思词汇
160: 高中物理-基础知识手册
                                                            161: 高等数学-同济
162: 高等数学学习与提高
163: 高等数学-武大
                                                            164: 高级美语听力特训30天
165: 高级英语阅读
166: 鲁迅散文
                                                            167: 黑客与画家
~~~








--------------------------------------------------------------------------------

#####实况
~~~
➜  to-send  tree
.
├── 01-JiangJY-done （已收到）
│   ├── address.txt
│   ├── 一个人的村庄.png
│   ├── 一九八四-Nineteen-Eighty-Four.png
│   ├── 云计算.png
│   └── 百年孤独.png
├── 02-WangSY-done （已收到）
│   ├── local
│   └── 西西弗神话.png
├── 03-ChenYM-done（已收到）
│   ├── address.txt
│   ├── C#入门经典.png
│   ├── C程序设计.png
│   ├── C语言程序设计.png
│   ├── C++面向对象程序设计.png
│   ├── 世界如此险恶-你要内心强大.png
│   ├── 中国近现代史纲要.png
│   ├── 乌合之众-大众心理研究.png
│   ├── 古代诗词名句赏析.png
│   ├── 古文观止-鉴赏词典.png
│   ├── 古汉语常用字字典.png
│   ├── 史记.png
│   ├── 奥巴马演讲集.png
│   ├── 小小汉英词典-外研社.png
│   ├── 沉默的大多数.png
│   ├── 男女内参.png
│   ├── 红楼梦.png
│   ├── 美国种族简史.png
│   └── 阿勒泰的角落.png
├── 04-LiuYL-done （已收到）
│   ├── local
│   ├── 万物有灵且有美.png
│   ├── 动物性食品卫生学.png
│   ├── 把栏杆拍遍.png
│   ├── 环境学导论.png
│   └── 走夜路-请放声歌唱.png
├── 05-XueS-done （已收到）
│   ├── address.txt
│   ├── address.txt~
│   ├── 奥普拉演讲访谈录.png
│   ├── 思维的乐趣.png
│   ├── 病隙碎笔.png
│   └── 莫言精选集.png
└── 06-LiuJT-done （已收到）
    ├── address.txt
    ├── 地图学原理.png
    └── 弘一大师说佛.png

6 directories, 41 files
~~~





--------------------------------------------------------------------------------

~~~
log: $1. 2014-06-08; $2. 2014-06-09;
~~~

![][001]
![][002]
![][003]
![][004]
![][005]
![][006]
![][007]
![][008]
![][009]
![][010]
![][011]
![][012]
![][013]
![][014]
![][015]
![][016]
![][017]
![][018]
![][019]
![][020]
![][021]
![][022]
![][023]
![][024]
![][025]
![][027]
![][028]
![][029]
![][030]
![][031]
![][032]
![][033]
![][034]
![][035]
![][036]
![][037]
![][038]
![][039]
![][040]
![][041]
![][042]
![][043]
![][044]
![][045]
![][046]
![][047]
![][048]
![][049]
![][050]
![][051]
![][052]
![][053]
![][054]
![][055]
![][056]
![][057]
![][058]
![][059]
![][060]
![][061]
![][062]
![][063]
![][064]
![][065]
![][066]
![][067]
![][068]
![][069]
![][070]
![][071]
![][072]
![][073]
![][074]
![][075]
![][076]
![][077]
![][078]
![][079]
![][080]
![][081]
![][082]
![][083]
![][084]
![][085]
![][086]
![][087]
![][088]
![][089]
![][090]
![][091]
![][092]
![][093]
![][094]
![][095]
![][096]
![][097]
![][098]
![][099]
![][100]
![][101]
![][102]
![][103]
![][104]
![][105]
![][106]
![][107]
![][108]
![][109]
![][110]
![][111]
![][112]
![][113]
![][114]
![][115]





[001]: http://gnat-tang-shared-image.qiniudn.com/octocat/adventure-cat.png
[002]: http://gnat-tang-shared-image.qiniudn.com/octocat/agendacat.png
[003]: http://gnat-tang-shared-image.qiniudn.com/octocat/andycat.jpg
[004]: http://gnat-tang-shared-image.qiniudn.com/octocat/baracktocat.jpg
[005]: http://gnat-tang-shared-image.qiniudn.com/octocat/bear-cavalry.png
[006]: http://gnat-tang-shared-image.qiniudn.com/octocat/benevocats.png
[007]: http://gnat-tang-shared-image.qiniudn.com/octocat/bouncercat.png
[008]: http://gnat-tang-shared-image.qiniudn.com/octocat/carlostocat.gif
[009]: http://gnat-tang-shared-image.qiniudn.com/octocat/chellocat.jpg
[010]: http://gnat-tang-shared-image.qiniudn.com/octocat/cherryontop-o-cat.png
[011]: http://gnat-tang-shared-image.qiniudn.com/octocat/class-act.png
[012]: http://gnat-tang-shared-image.qiniudn.com/octocat/cloud.jpg
[013]: http://gnat-tang-shared-image.qiniudn.com/octocat/codercat.jpg
[014]: http://gnat-tang-shared-image.qiniudn.com/octocat/collabocats.jpg
[015]: http://gnat-tang-shared-image.qiniudn.com/octocat/constructocat2.jpg
[016]: http://gnat-tang-shared-image.qiniudn.com/octocat/daftpunktocat-guy.gif
[017]: http://gnat-tang-shared-image.qiniudn.com/octocat/daftpunktocat-thomas.gif
[018]: http://gnat-tang-shared-image.qiniudn.com/octocat/deckfailcat.png
[019]: http://gnat-tang-shared-image.qiniudn.com/octocat/defunktocat.png
[020]: http://gnat-tang-shared-image.qiniudn.com/octocat/doctocat-brown.jpg
[021]: http://gnat-tang-shared-image.qiniudn.com/octocat/dodgetocat.jpg
[022]: http://gnat-tang-shared-image.qiniudn.com/octocat/dodgetocat_v2.png
[023]: http://gnat-tang-shared-image.qiniudn.com/octocat/dojocat.jpg
[024]: http://gnat-tang-shared-image.qiniudn.com/octocat/dolla-dolla-bill-yall.jpg
[025]: http://gnat-tang-shared-image.qiniudn.com/octocat/droctocat.png
[027]: http://gnat-tang-shared-image.qiniudn.com/octocat/droidtocat.png
[028]: http://gnat-tang-shared-image.qiniudn.com/octocat/drunktocat.jpg
[029]: http://gnat-tang-shared-image.qiniudn.com/octocat/dunetocat.png
[030]: http://gnat-tang-shared-image.qiniudn.com/octocat/electrocat.png
[031]: http://gnat-tang-shared-image.qiniudn.com/octocat/father_timeout.jpg
[032]: http://gnat-tang-shared-image.qiniudn.com/octocat/femalecodertocat.png
[033]: http://gnat-tang-shared-image.qiniudn.com/octocat/forktocat.jpg
[034]: http://gnat-tang-shared-image.qiniudn.com/octocat/founding-father.jpg
[035]: http://gnat-tang-shared-image.qiniudn.com/octocat/foundingfather_v2.png
[036]: http://gnat-tang-shared-image.qiniudn.com/octocat/front-end-conftocat.png
[037]: http://gnat-tang-shared-image.qiniudn.com/octocat/gangnamtocat.png
[038]: http://gnat-tang-shared-image.qiniudn.com/octocat/goretocat.png
[039]: http://gnat-tang-shared-image.qiniudn.com/octocat/grim-repo.jpg
[040]: http://gnat-tang-shared-image.qiniudn.com/octocat/grinchtocat.gif
[041]: http://gnat-tang-shared-image.qiniudn.com/octocat/heisencat.png
[042]: http://gnat-tang-shared-image.qiniudn.com/octocat/herme-t-crabb.png
[043]: http://gnat-tang-shared-image.qiniudn.com/octocat/hipster-partycat.jpg
[044]: http://gnat-tang-shared-image.qiniudn.com/octocat/homercat.png
[045]: http://gnat-tang-shared-image.qiniudn.com/octocat/hubot.jpg
[046]: http://gnat-tang-shared-image.qiniudn.com/octocat/inspectocat.jpg
[047]: http://gnat-tang-shared-image.qiniudn.com/octocat/ironcat.jpg
[048]: http://gnat-tang-shared-image.qiniudn.com/octocat/jean-luc-picat.jpg
[049]: http://gnat-tang-shared-image.qiniudn.com/octocat/jenktocat.jpg
[050]: http://gnat-tang-shared-image.qiniudn.com/octocat/kimonotocat.png
[051]: http://gnat-tang-shared-image.qiniudn.com/octocat/labtocat.png
[052]: http://gnat-tang-shared-image.qiniudn.com/octocat/linktocat.jpg
[053]: http://gnat-tang-shared-image.qiniudn.com/octocat/Mardigrastocat.png
[054]: http://gnat-tang-shared-image.qiniudn.com/octocat/maxtocat.gif
[055]: http://gnat-tang-shared-image.qiniudn.com/octocat/megacat-2.png
[056]: http://gnat-tang-shared-image.qiniudn.com/octocat/megacat.jpg
[057]: http://gnat-tang-shared-image.qiniudn.com/octocat/minion.png
[058]: http://gnat-tang-shared-image.qiniudn.com/octocat/momtocat.png
[059]: http://gnat-tang-shared-image.qiniudn.com/octocat/monroe.jpg
[060]: http://gnat-tang-shared-image.qiniudn.com/octocat/motherhubbertocat.png
[061]: http://gnat-tang-shared-image.qiniudn.com/octocat/mummytocat.gif
[062]: http://gnat-tang-shared-image.qiniudn.com/octocat/murakamicat.png
[063]: http://gnat-tang-shared-image.qiniudn.com/octocat/notocat.jpg
[064]: http://gnat-tang-shared-image.qiniudn.com/octocat/nyantocat.gif
[065]: http://gnat-tang-shared-image.qiniudn.com/octocat/octdrey-catburn.jpg
[066]: http://gnat-tang-shared-image.qiniudn.com/octocat/octobiwan.jpg
[067]: http://gnat-tang-shared-image.qiniudn.com/octocat/octocat-de-los-muertos.jpg
[068]: http://gnat-tang-shared-image.qiniudn.com/octocat/octoclark-kentocat.jpg
[069]: http://gnat-tang-shared-image.qiniudn.com/octocat/octofez.png
[070]: http://gnat-tang-shared-image.qiniudn.com/octocat/octoliberty.png
[071]: http://gnat-tang-shared-image.qiniudn.com/octocat/octonaut.jpg
[072]: http://gnat-tang-shared-image.qiniudn.com/octocat/octotron.jpg
[073]: http://gnat-tang-shared-image.qiniudn.com/octocat/okal-eltocat.jpg
[074]: http://gnat-tang-shared-image.qiniudn.com/octocat/oktobercat.png
[075]: http://gnat-tang-shared-image.qiniudn.com/octocat/orderedlistocat.png
[076]: http://gnat-tang-shared-image.qiniudn.com/octocat/original.png
[077]: http://gnat-tang-shared-image.qiniudn.com/octocat/pacman-ghosts.jpg
[078]: http://gnat-tang-shared-image.qiniudn.com/octocat/plumber.jpg
[079]: http://gnat-tang-shared-image.qiniudn.com/octocat/poptocat.png
[080]: http://gnat-tang-shared-image.qiniudn.com/octocat/poptocat_v2.png
[081]: http://gnat-tang-shared-image.qiniudn.com/octocat/Professortocat_v2.png
[082]: http://gnat-tang-shared-image.qiniudn.com/octocat/puppeteer.png
[083]: http://gnat-tang-shared-image.qiniudn.com/octocat/pusheencat.png
[084]: http://gnat-tang-shared-image.qiniudn.com/octocat/pythocat.png
[085]: http://gnat-tang-shared-image.qiniudn.com/octocat/red-polo.png
[086]: http://gnat-tang-shared-image.qiniudn.com/octocat/repo.png
[087]: http://gnat-tang-shared-image.qiniudn.com/octocat/riddlocat.png
[088]: http://gnat-tang-shared-image.qiniudn.com/octocat/Robotocat.png
[089]: http://gnat-tang-shared-image.qiniudn.com/octocat/saint-nicktocat.jpg
[090]: http://gnat-tang-shared-image.qiniudn.com/octocat/saritocat.png
[091]: http://gnat-tang-shared-image.qiniudn.com/octocat/scarletteocat.jpg
[092]: http://gnat-tang-shared-image.qiniudn.com/octocat/scottocat.jpg
[093]: http://gnat-tang-shared-image.qiniudn.com/octocat/setuptocat.jpg
[094]: http://gnat-tang-shared-image.qiniudn.com/octocat/shoptocat.png
[095]: http://gnat-tang-shared-image.qiniudn.com/octocat/skitchtocat.png
[096]: http://gnat-tang-shared-image.qiniudn.com/octocat/snowoctocat.png
[097]: http://gnat-tang-shared-image.qiniudn.com/octocat/socialite.jpg
[098]: http://gnat-tang-shared-image.qiniudn.com/octocat/spectrocat.png
[099]: http://gnat-tang-shared-image.qiniudn.com/octocat/spidertocat.png
[100]: http://gnat-tang-shared-image.qiniudn.com/octocat/spocktocat.png
[101]: http://gnat-tang-shared-image.qiniudn.com/octocat/steroidtocat.png
[102]: http://gnat-tang-shared-image.qiniudn.com/octocat/stormtroopocat.png
[103]: http://gnat-tang-shared-image.qiniudn.com/octocat/strongbadtocat.png
[104]: http://gnat-tang-shared-image.qiniudn.com/octocat/supportcat.png
[105]: http://gnat-tang-shared-image.qiniudn.com/octocat/swagtocat.png
[106]: http://gnat-tang-shared-image.qiniudn.com/octocat/thanktocat.png
[107]: http://gnat-tang-shared-image.qiniudn.com/octocat/topguntocat.png
[108]: http://gnat-tang-shared-image.qiniudn.com/octocat/total-eclipse-of-the-octocat.jpg
[109]: http://gnat-tang-shared-image.qiniudn.com/octocat/trekkie.png
[110]: http://gnat-tang-shared-image.qiniudn.com/octocat/twenty-percent-cooler-octocat.png
[111]: http://gnat-tang-shared-image.qiniudn.com/octocat/visionary.jpg
[112]: http://gnat-tang-shared-image.qiniudn.com/octocat/waldocat.png
[113]: http://gnat-tang-shared-image.qiniudn.com/octocat/wilson.jpg
[114]: http://gnat-tang-shared-image.qiniudn.com/octocat/xtocat.jpg
[115]: http://gnat-tang-shared-image.qiniudn.com/octocat/yaktocat.png



--------------------------------------------------------------------------------

~~~
log: $1. 2014-06-09;
~~~


| 我不是三年前的我，
| 我不是两年前的我，
| 我不是一年前的我；
| 我比那过去更强
|
| 我不是一年后的我，
| 也不是两年后的我，
| 更不是三年后的我；
| 一想将来，浑身充满力量


---

#### Refs

- [MathJax Basic Tutorial and Quick Reference][mathjax-guide]
- ~~[Help: Displaying a formula (Wikipedia)][wiki-latex-math]~~


[mathjax-guide]: http://meta.math.stackexchange.com/questions/5020/mathjax-basic-tutorial-and-quick-reference
[wiki-latex-math]: http://en.wikipedia.org/wiki/Help:Formula



---

简书上不能使用 MathJax 编辑公式，估计以后也没有。这是多么遗憾的事，我们不能在文中简单地使用：

~~~
第一个矩阵
---------
$$
        \begin{bmatrix}
        1 & x & x^2 \\
        1 & y & y^2 \\
        1 & z & z^2 \\
        \end{bmatrix}
$$
~~~

来书写一个矩阵。但是，只要我们想，总还是有方法，只不过要麻烦一点。比如你可以这样：

~~~
第二个矩阵
---------
![][matrix]
[matrix]: http://latex.codecogs.com/svg.latex?\begin{bmatrix}1&x&x^2\\1&y&y^2\\1&z&z^2\\\end{bmatrix}
~~~

就有：![][00]，一个矩阵出现了。

不过好累。。。不人性。。。你得把公式用 LaTeX 写出来，就像上面的【第一个矩阵】一样，把其中 $$ 符号里多余的空格删除，拷贝出来，在前面加上 `http://latex.codecogs.com/svg.latex?`，然后才能当成一个图片链接使用。

为节约人力，还可以用脚本简单处理，比如在我的 Git Bash 里（最近用瘟逗死）：

~~~
cat formula.txt | tr -d ' \r\n' | clip
~~~

`formula.txt` 是你的公式代码，`tr` 语句把其中的空格和换行去掉，然后传到剪贴板里，只等你粘贴。

这样简书里也能方便（有点牵强地。。。）书写公式了。



---

### 公式示例：

01: ![][01]

02: ![][02]

03: ![][03]

04: ![][04]

05: ![][05]

06: ![][06]

07: ![][07]




[00]: http://latex.codecogs.com/png.latex?\begin{bmatrix}1&x&x^2\\1&y&y^2\\1&z&z^2\\\end{bmatrix}
[01]: http://latex.codecogs.com/png.latex?sh(x)=\frac{e^x+e^{-x}}{2}}
[02]: http://latex.codecogs.com/png.latex?C_n^k=\frac{n(n-1)\ldots(n-k+1)}{k!}
[03]: http://latex.codecogs.com/svg.latex?\begin{align}\sqrt{37}&=\sqrt{\frac{73^2-1}{12^2}}\\&=\sqrt{\frac{73^2}{12^2}\cdot\frac{73^2-1}{73^2}}\\&=\sqrt{\frac{73^2}{12^2}}\sqrt{\frac{73^2-1}{73^2}}\\&=\frac{73}{12}\sqrt{1-\frac{1}{73^2}}\\&\approx\frac{73}{12}\left(1-\frac{1}{2\cdot73^2}\right)\end{align}
[04]: http://latex.codecogs.com/svg.latex?\begin{array}{c|lcr}n&\text{Left}&\text{Center}&\text{Right}\\\hline1&0.24&1&125\\2&-1&189&-8\\3&-20&2000&1+10i\\\end{array}
[05]: http://latex.codecogs.com/svg.latex?\mathbb{N,Z,Q,R,C}
[06]: http://latex.codecogs.com/svg.latex?\left\{\begin{array}{ll}a_1x+b_1y+c_1z&=d_1+e_1\\a_2x+b_2y&=d_2\\a_3x+b_3y+c_3z&=d_3\end{array}\right.
[07]: http://latex.codecogs.com/svg.latex?f\left(\left[\frac{1+\left\{x,y\right\}}{\left(\frac{x}{y}+\frac{y}{x}\right)\left(u+1\right)}+a\right]^{3/2}\right)


---

### 附：上文蛋疼的源码

~~~~~~

---

#### Refs

- [MathJax Basic Tutorial and Quick Reference][mathjax-guide]
- ~~[Help: Displaying a formula (Wikipedia)][wiki-latex-math]~~


[mathjax-guide]: http://meta.math.stackexchange.com/questions/5020/mathjax-basic-tutorial-and-quick-reference
[wiki-latex-math]: http://en.wikipedia.org/wiki/Help:Formula



---

简书上不能使用 MathJax 编辑公式，估计以后也没有。这是多么遗憾的事，我们不能在文中简单地使用：

~~~
第一个矩阵
---------
$$
        \begin{bmatrix}
        1 & x & x^2 \\
        1 & y & y^2 \\
        1 & z & z^2 \\
        \end{bmatrix}
$$
~~~

来书写一个矩阵。但是，只要我们想，总还是有方法，只不过要麻烦一点。比如你可以这样：

~~~
第二个矩阵
---------
![][matrix]
[matrix]: http://latex.codecogs.com/svg.latex?\begin{bmatrix}1&x&x^2\\1&y&y^2\\1&z&z^2\\\end{bmatrix}
~~~

就有：![][00]，一个矩阵出现了。

不过好累。。。不人性。。。你得把公式用 LaTeX 写出来，就像上面的【第一个矩阵】一样，把其中 $$ 符号里多余的空格删除，拷贝出来，在前面加上 `http://latex.codecogs.com/svg.latex?`，然后才能当成一个图片链接使用。

为节约人力，还可以用脚本简单处理，比如在我的 Git Bash 里（最近用瘟逗死）：

~~~
cat formula.txt | tr -d ' \r\n' | clip
~~~

`formula.txt` 是你的公式代码，`tr` 语句把其中的空格和换行去掉，然后传到剪贴板里，只等你粘贴。

这样简书里也能方便（有点牵强地。。。）书写公式了。



---

### 公式示例：

01: ![][01]

02: ![][02]

03: ![][03]

04: ![][04]

05: ![][05]

06: ![][06]

07: ![][07]


[00]: http://latex.codecogs.com/png.latex?\begin{bmatrix}1&x&x^2\\1&y&y^2\\1&z&z^2\\\end{bmatrix}
[01]: http://latex.codecogs.com/png.latex?sh(x)=\frac{e^x+e^{-x}}{2}}
[02]: http://latex.codecogs.com/png.latex?C_n^k=\frac{n(n-1)\ldots(n-k+1)}{k!}
[03]: http://latex.codecogs.com/svg.latex?\begin{align}\sqrt{37}&=\sqrt{\frac{73^2-1}{12^2}}\\&=\sqrt{\frac{73^2}{12^2}\cdot\frac{73^2-1}{73^2}}\\&=\sqrt{\frac{73^2}{12^2}}\sqrt{\frac{73^2-1}{73^2}}\\&=\frac{73}{12}\sqrt{1-\frac{1}{73^2}}\\&\approx\frac{73}{12}\left(1-\frac{1}{2\cdot73^2}\right)\end{align}
[04]: http://latex.codecogs.com/svg.latex?\begin{array}{c|lcr}n&\text{Left}&\text{Center}&\text{Right}\\\hline1&0.24&1&125\\2&-1&189&-8\\3&-20&2000&1+10i\\\end{array}
[05]: http://latex.codecogs.com/svg.latex?\mathbb{N,Z,Q,R,C}
[06]: http://latex.codecogs.com/svg.latex?\left\{\begin{array}{ll}a_1x+b_1y+c_1z&=d_1+e_1\\a_2x+b_2y&=d_2\\a_3x+b_3y+c_3z&=d_3\end{array}\right.
[07]: http://latex.codecogs.com/svg.latex?f\left(\left[\frac{1+\left\{x,y\right\}}{\left(\frac{x}{y}+\frac{y}{x}\right)\left(u+1\right)}+a\right]^{3/2}\right)

~~~~~~

P.S. 据 `log` 说这篇文章在草稿里已经一个多月了。大部分还是刚才敲的，充分说明一鼓作气有多重要。

P.P.S. 作业部落支持的东西就很丰富：MathJax，脚注，目录，Tags，流程图，以及 Vim Emacs 编辑模式等。不过，它完全定位成了笔记本。



---

~~~
log: $1. 2014-06-12; $2. Tue Jul 22 18:12:20     2014;
~~~

Cold Turkey 是一种策略。比如你要戒烟，可以采用逐步过渡的方式（比如今天 20 支烟，明天 18，后天 15，逐步减为 0），大多数人认为这样更加自然，也很靠谱。Cold Turkey 是一种极端的戒断方式，从戒烟初始就完全摒弃，知道这种杜绝变得自然，不让你心还痒痒。

感觉我的表达能力有限，直接贴[维基](https://en.wikipedia.org/wiki/Cold_turkey)上的解释吧：

> "**Cold turkey**" describes the abrupt cessation of a [substance dependence](https://en.wikipedia.org/wiki/Substance_dependence) and the resulting unpleasant experience, as opposed to gradually easing the process through reduction over time or by using replacement [medication](https://en.wikipedia.org/wiki/Medication).

Cold turkey method 是我比较喜欢的策略之一[^1]，干脆、没有退路，背水一战！

今天想到 Cold Turkey，是因为看了一篇文章：[我节约时间的五大妙法](http://www.douban.com/note/510890331/)，有人回复说，有个软件叫“[Cold Turkey](http://getcoldturkey.com/)”。哈哈，这个软件名字很贴切。

我决定用这个方法把微博、豆瓣和 QQ 空间先戒了。

[^1]: 还有一个是“森田疗法”

|         祈祷词
|
|                *席慕容*
|
| 我知道这世界不是绝对的好
| 我也知道它有离别　有衰老
| 然而我只有一次的机会
| 上主啊　请俯听我的祈祷
|
| 请给我一个长长的夏季
| 给我一段无暇的回忆
| 给我一颗温柔的心
| 给我一份洁白的恋情
|
| 我只能来这世上一次　所以
| 请再给我一个美丽的名字
| 好让他能在夜里呼唤我
| 在奔驰的岁月里
| 永远记得我们曾经相爱的事



---

---

### [XCAPE READEME.md](https://github.com/alols/xcape/blob/master/README.md)

~~~
XCAPE
=====

xcape allows you to use a modifier key as another key when pressed and
released on its own. Note that it is slightly slower than pressing the
original key, because the pressed event does not occur until the key is
released. The default behaviour is to generate the Escape key when Left
Control is pressed and released on its own. (If you don't understand why
anybody would want this, I'm guessing that Vim is not your favourite text
editor ;)

Minimal building instructions
-----------------------------

    $ sudo apt-get install git gcc make pkg-config libx11-dev libxtst-dev libxi-dev
    $ mkdir xcape
    $ cd xcape
    $ git clone https://github.com/alols/xcape.git .
    $ make

Usage
-----
    $ xcape [-d] [-t <timeout ms>] [-e <map-expression>]

### `-d`

Debug mode. Does not fork into the background.

### `-t <timeout ms>`

If you hold a key longer than this timeout, xcape will not generate a key
event. Default is 500 ms.

### `-e <map-expression>`

The expression has the grammar `'ModKey=Key[|OtherKey][;NextExpression]'`

The list of key names is found in the header file `X11/keysymdef.h` (remove
the `XK_` prefix). Note that due to limitations of X11 shifted keys *must*
be specified as a shift key followed by the key to be pressed rather than
the actual name of the character. For example to generate "{" the
expression `'ModKey=Shift_L|bracketleft'` could be used (assuming that you
have a key with "{" above "[").

You can also specify ModKey in decimal (prefix `#`), octal (`#0`), or
hexadecimal (`#0x`). It will be interpreted as a keycode unless no corresponding
key name is found.

#### Examples

+   This will make Left Shift generate Escape when pressed and released on
    it's own, and Left Control generate Ctrl-O combination when pressed and
    released on it's own.

        xcape -e 'Shift_L=Escape;Control_L=Control_L|O'

+   In conjugation with xmodmap it is possible to make an ordinary key act
    as an extra modifier. First map the key to the modifier with xmodmap
    and then the modifier back to the key with xcape. However, this has
    several limitations: the key will not work as ordinary until it is
    relased, and in particular, *it may act as a modifier unintentionally if
    you type too fast.* This is not a bug in xcape, but an unavoidable
    consequence of using these two tools together in this way.
    As an example, we can make the space bar work as an additional ctrl
    key when held (similar to
    [Space2ctrl](https://github.com/r0adrunner/Space2Ctrl)) with the
    following sequence of commands.

        # Map an unused modifier's keysym to the spacebar's keycode and make it a
        # control modifier. It needs to be an existing key so that emacs won't
        # spazz out when you press it. Hyper_L is a good candidate.
        spare_modifier="Hyper_L"
        xmodmap -e "keycode 65 = $spare_modifier"
        xmodmap -e "remove mod4 = $spare_modifier" # hyper_l is mod4 by default
        xmodmap -e "add Control = $spare_modifier"

        # Map space to an unused keycode (to keep it around for xcape to
        # use).
        xmodmap -e "keycode any = space"

        # Finally use xcape to cause the space bar to generate a space when tapped.
        xcape -e "$spare_modifier=space"


Note regarding xmodmap
----------------------

If you are in the habit of remapping keycodes to keysyms (eg, using xmodmap),
there are two issues you may encounter.

1. You will need to restart xcape after every time you modify the mapping from
   keycodes to keysyms (eg, with xmodmap), or xcape will still use the old
   mapping.

2. The key you wish to send must have a defined keycode. So for example, with
   the default mapping `Control_L=Escape`, you still need an escape key defined
   in your xmodmap mapping. (I get around this by using 255, which my keyboard
   cannot send).

Contact
-------

Find the latest version at
https://github.com/alols/xcape

The author can be reached at
albin dot olsson at gmail dot com
~~~

~~这种变态的对齐应该是编辑器自动调整得把（总不能写好手动来吧。。。），谁知道怎么办到的？是 Vim，Emacs 里的什么操作？~~

Vim 里先 `set tw=80`（text width），再 `gq$` 把接下来的一段自动 word wrap 到 80 个字符。

还有这个：https://github.com/vim-ruby/vim-ruby/blob/master/README
应该是 Vim 弄的。

---

**Refs**

* http://vim.wikia.com/wiki/Automatic_word_wrapping

---

~~~
log: $1. Mon Sep  1 23:38:55     2014;
~~~

done-唐氏大猜想

这次要把简书当微博使，占个位先。

>说个认真的，人类进化史和科技发展史的的两大里程碑应该是**口语和文字的消失**，它们从远古走来伴随人类这么多年，想想就有点小激动。我死之前应该能看到新生的孩子都是"哑巴"。恩，这是唐氏猜想，License 是 GPL, 受 CopyLeft 保护。

恩，这就是唐氏大猜想的全部内容。想想就有点小激动。






--------------------------------------------------------------------------------

~~~
log: $1. 2014-06-04;
~~~



---

因为单位矩阵是 Identity matrix，通常用 I 表示（虽然国内教材通常用 E 表示）。I 的读法就是 eye[^eye]。

---

这篇是不是有点冷……同理：

Command | Meaning | Why
:---: | :---: | :---:
eps | 浮点数最小间距 | epsilon，ɛ

[^eye]: [Identity matrix - MATLAB eye - MathWorks 中国](http://cn.mathworks.com/help/matlab/ref/eye.html)


作为正常人看到广告通常都要咬牙切齿，浪费我宝贵的网速，让人没法舒舒服服看点东西。但有些广告确实做的赏心悦目，播完还给我一种恋恋不舍的感觉。


--------------------------------------------------------------------------------

#### [01. 人为什么活着？][why-to-live]

![][ads-01]

一个很热血的广告。讲，人为什么活着。音乐也很棒。但最后给我们的答案却不那么让我满意。梦？梦。（not 梦？梦！）

* 其中的背景音乐：[On Your Mark (Music)][on-your-mark]
* 宫崎骏的一个短片
    * [豆瓣页面（8.4 分）][on-your-mark-douban]
    * [维基百科][on-your-mark-wikipedia]
    * [在线观看（6分钟）][on-your-mark-mv]

[why-to-live]: http://v.youku.com/v_show/id_XMjQyMzAyMjU2.html
[on-your-mark]: http://t.cn/hgmUTu "豆瓣FM"
[on-your-mark-mv]: http://v.youku.com/v_show/id_XNTYyOTY1MTk2.html
[on-your-mark-douban]: http://movie.douban.com/subject/1432701/
[on-your-mark-wikipedia]: http://en.wikipedia.org/wiki/On_Your_Mark
[ads-01]: http://gnat-tang-shared-image.qiniudn.com/pictures/ads-01.png



--------------------------------------------------------------------------------


#### [02. 士力架，横扫饥饿][ads-02-ref]

![][ads-02]
太经典了。。。
[][snikers]


[ads-02-ref]: http://v.youku.com/v_show/id_XNDQ4MTE2MDg4.html
[snikers]: http://v.youku.com/v_show/id_XNDQ4MTE2MDg4.html
[ads-02]: http://gnat-tang-shared-image.qiniudn.com/pictures/ads-02.png


-----


#### [Happy Christmas][christmas]



[christmas]: http://v.youku.com/v_show/id_XNzAyMTA5MTEy.html?f=19404765

----

- [more][more]


[more]: http://www.youku.com/playlist_show/id_19404765.html


--------------------------------------------------------------------------------

* 欢迎推荐





--------------------------------------------------------------------------------

~~~
log: 2014-05-05, created this post;
~~~

无关爱情，只是记得

【文】梁珊珊 【转录自】武汉大学图书馆，馆刊？


前不久，偶尔在网上碰见失去联系的中学同学，一通电话打过去，聊得很是兴奋。

嘘寒问暖道过近况之后，便开始把老同学一个个数过去，谁谁谁去了哪里念书，谁谁谁开始打工创业，各有各的境遇，各有各的悲喜，赞叹的唏嘘的偶尔还有点酸酸的小嫉妒间或弥漫在电话两端。

末了，我问，你还记得那谁么？那谁是对方追过的女孩子，老同学满脸羞涩、偷偷把巨大的绒毛乌龟玩偶塞进她抽屉的场景在记忆里新鲜得还如在眼前。

电话那端沉默许久，才回答，怎么可能不记得。语气跟开头有些许异样，好像那个名字有魔力一般，打开了通往过去的阀门，将他带到了另一个时空。

我接着问他还有没有再联系。

有啊，这次他倒是答得很快，时不时会在 qq 上聊天。

我说，那样啊，她有男朋友了没，若是没有，还是可以再追她的。

不知道，没有问过；而且，我已经有女朋友了，我们很好，没有想过再和她怎么样，只不过，最初的喜欢，忘不掉啊。

之后聊起他女朋友，说起两人相遇的情境，他的声音里满满的都是甜蜜和温柔。我知道他的爱情已经给了现在的这个女孩，关于曾经求而不得的那个人，不过是一段回忆，记录着青春活力，记录着年少轻狂，太过美好因而割舍不掉。

我觉得我很能理解他，自己也曾在懵懂的年岁里近乎执迷地喜欢过人，之后高考求学，各奔各的前程，散落在祖国的大江南北，有着他的联系方式，却很少有联系，开始的时候每次看见他上线，都要克制自己别太过急切地过去打招呼，日子久了便也逐渐习惯。偶尔有一搭没一搭地闲聊几句，大都是没什么盐水的废话，最关心的那句总是哽在喉咙里出不去：你过得好不好？太简单，可又太沉重，于是干脆不说，插科打诨里了解到些许近况就是全部了。

不知道他过着什么样的生活，不知道他交着什么样的朋友，不知道这些年的光阴将对方磨练成了什么样的人，其实曾经的执着早就失去了具体的对象。之所以念念不忘，与其说是为了那一个人，倒不如说是为了曾经那个自己，那个被一段无果爱恋所牵扯的青春岁月。

忘或者不忘，都与爱情没有什么关系了，被记得的是当年年少。


---

发现一个特别牛逼的网站[^vertex42]，提供一些靠谱的 Excel 表格下载。

[^vertex42]: http://www.vertex42.com/ Excel Templates, Calendars, Calculators and Spreadsheets by Vertex42

比如刚才我下载了 [weekly-calendar-template.xlsx](http://gnat.qiniudn.com/meta/week.xlsx)，在 Excel 里输入好当前周的开始日期，居然可以自动生成周历！如图：

![weekly-calendar-2015-11-01](http://upload-images.jianshu.io/upload_images/29284-68d647efe7602b57.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

效果还特别赞：
![header of weekly-calendar-2015-11-01](http://upload-images.jianshu.io/upload_images/29284-746f674f21f78952.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

好好学习，天天向上。


* 去掉重复的实现（要简洁，不是玩虐）
    * 加粗只留下 `**加粗**`
    * 列表只留下 `*`，去掉 `-`，`+`
* 链接与图片的区别放到后面，比如这样：`[text](url)` 和 `[img]!(url)`
* `[a] and b` 解析后变成 `a and b` 而不是 `[a] and b` ，这样我就可以：

~~~
# 一个在无法用 Sort 自动排好序的列表
| Key | Value |
| :---: | :---: |
| foo | fool |
| bar | barbaric |
| ![][ass] | shit... |

# 这个就可以排序了
| Key | Value |
| :---: | :---: |
| [foo] | fool |
| [bar] | barbaric |
| [ass]!(url) | shit... | # 后缀表达式多么好，注意这个图片。我觉得这个要求挺合理，UTC 时间的缩写都不是 CUT。。。
~~~
* 预留一些宏，在文章开头自定义
* MathJax 什么的，参考作业部落的功能吧，如果有网页编辑最好提供 Vim 模式（在网页里，Emacs 就算了）

刚发了条说说：

> 程序语言（的设计）应当多用【前缀表达】，比如 `3 + 2` 变成 `+ 3 2`。
> 标记语言（的设计）则应当多用【后缀表达】，比如 Markdown 的图片链接 `![](url)`最好设计成 `[]!(url)`
> 前者操作优先，后者内容优先。

---

~~~
log: $1. Fri Aug 29 00:57:59     2014;
~~~


---

首先這是一款鍵盤：

![](http://gnat.qiniudn.com/kbd/massdrop-infinity-side-2.jpg?imageView2/2/w/400)

當然，作爲一個鍵盤控而不是鍵盤燈控，我才不 care 鍵盤長什麼樣。這款鍵盤的牛逼之處在於能定製（所以我現在用的是 Poker II）：

> **1. Open Source Design**
> **2. No Upfront Tooling Costs**
> **3. Fully Programmable Keys**（這才是關鍵）
> **4. Dual Cherry MX / Alps Switch Compatibility**

還可以直接產生中文……我的 [Gat 輸入發](https://github.com/district10/gat) 不是正好爲此而生的……還有 Dvorak……我使用的就是 Dovark 啊……所以這鍵盤簡直滿足了我對鍵盤的一切想法（除了我覺得空格鍵應該短一點）。

![[TheInfinity Keyboard](https://www.massdrop.com/buy/infinity-keyboard-kit)](http://upload-images.jianshu.io/upload_images/29284-11de45742ab908e3.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

> The Infinity earned its name from **the infinite layers** with which the keyboard **can be programmed**, making it more configurable than any other circuit board on the market.

---

> To program your keyboard, all you have to do is use the handy Infinity Configurator and select exactly where you want your keys to be.

---

## GitHub: [kiibohd/controller](https://github.com/kiibohd/controller)

---

# 題外話

Infinity 60% FAQ

> **Does the Infinity 60% Kit have backlighting? Are there plans for backlighting?**
> No, the Infinity 60% Kit does not support backlighting.
> No, There are no plans for the Infinity 60% to support backlighting.

一直覺得鍵盤燈很傻馬特（當然晚上確實有**點**實際作用）。

> **Does the Infinity 60% Kit have NKRO?**
> Yes. The Infinity 60% Kit has NKRO by default on most operating systems including Mac OSX.
> The 6KRO compatibility mode may be explicitly toggled via the firmware if needed.
> 6KRO is very sufficient for me. 

這個是必須的。牛逼的是它可以從硬件上 toggle 這個特性……

> **Is the Infinity 60% programmable? How do I reprogram my Infinity 60% to a different layout?**
> Yes, the Infinity 60% is fully programmable.
> Use the web [configurator](http://configurator.input.club/) to download the hex files
> and flash it on to the keyboard or download and compile KLL on your own.
> [TMK firmware](https://github.com/tmk/tmk_keyboard) is also compatible with the Infinity 60%.

定製界面：[KII Keyboard Configurator](http://configurator.input.club/)

順手我把自己的 DVPE Level1 給配置了一下：

![我現在在使用的 DVPE 鍵盤佈局](http://upload-images.jianshu.io/upload_images/29284-5936890cbac0843b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

（我發縣“`k`”被唔達成了“`p`”，left hand upper row）

> **What microchip does the Infinity 60% Kit use?**
> The Infinity 60% Kit uses the MK20DX128VLF5  The datasheets can be found [here](http://cache.freescale.com/files/32bit/doc/data_sheet/K20P48M50SF0.pdf) and [here](http://cache.freescale.com/files/32bit/doc/ref_manual/K20P48M50SF0RM.pdf).

---

### Refs

* [Kiibohds!](http://kiibohd.com/)
* [Infinity 60% Keyboard Kit | Input Club](http://input.club/devices/keyboards/infinity-keyboard)
* [The Story Behind Infinity: a Community-Designed Keyboard - Massdrop](https://www.massdrop.com/article/the-story-behind-infinity-a-community-designed-keyboard?utm_source=Sailthru&utm_medium=email&utm_campaign=09-24-15%20New%20User&utm_term=09-24-15%20New%20Users)
* [infinity-keyboard-kit](https://www.massdrop.com/buy/infinity-keyboard-kit)
* [Infinity Configurator - Massdrop](https://keyboard-configurator.massdrop.com/keyboard/infinity?keyboardType=hacker)

---

如果一个人说的东西你死活看不懂，除了讨论的内容涉及太多你不理解的概念之外，极有可能是对方没说清。

除此，智商，逻辑，思维不差太多的情况下，你好好说，人还能好好听不懂？

年轻的时候老师叫我们多用排比：把一句话说成三句，会显得很有气势。我如获至宝。现在想想，那气势有点像吵架，我不禁要问：嗓门儿大就有理了？

有些人写了 800 字也只说了我喜欢你。没有你也没有我，只有我喜欢你。还比不上这十来个字：我喜欢你，因为你是我男神。

把事物描述复杂很容易，只要堆砌各种花哨的无聊的有关无关的形容词，以及 @#$%…& 的动词。以及一些尤其让我难以理解的细节，比如 45 度仰望天空。45 度？？？

把事物描述简单却很难，你要能拎清楚事物内在的逻辑，顺着一条主线有条不紊地说，听的人就容易懂。如果写文章像饭后吹牛，脑子里突然想到一点，就啪啪啪敲上去，慢慢地，你照顾了太多细节，却忘记了主线，把别人和自己都带沟里去了。

~~举个例子，[偷书贼][the-book-thief] 里严厉的老师让小女主人公自我介绍：~~

~~“Chalk，Name，Board（粉笔，名字，黑板）”。~~

~~真是太简洁了~ 如果换成是“用粉笔把你的名字写在黑板上”，那就完全没有味道了。~~

 


总之，语言简洁的好处，就是简洁。![][joke-you]

（才 ~~389~~ ~~469~~ 个字。）



[the-book-thief]: http://movie.douban.com/subject/21348876/
[joke-you]: http://assets.jianshu.io/assets/emojis/scream.png



~~~
log: $1. Wed Jul 16 22:01:30     2014;
~~~


**中文舉例**：這個人氣宇非凡 -- 一看就不是傻逼。

**英文舉例**：This man is awesome--in a strange way.


[OpenGL to OpenSceneGraph Lookup](http://www.openscenegraph.org/index.php/documentation/knowledge-base/116-opengl-to-openscenegraph-lookup)

Lookup table for helping people with converting OpenGL code to OpenSceneGraph code.
**OpenGL function**
**OpenSceneGraph implementation**

glClear( GLbitfield mask )
osg::Camera::setClearMask(GLbitfield mask)osg::GraphicsContext::setClearMask(GLbitfield mask)osg::ClearNode::setClearMask(GLbitfield mask)osg::RenderStage::setClearMask(GLbitfield mask)

glClearColor(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha)
osg::Camera::setClearColor(const osg::Vec4& color)osgUtil::SceneView::setClearColor(const osg::Vec4& color)

glClearDepth
osg::Camera::setClearDepth(double depth)

glClearStencil
osg::Camera::setClearStencil(int stencil)

**State Attributes**

glAlphaFunc( GLenum func, GLclampf ref )
osg::AlphaFunc(ComparisonFunction func, float ref)

glBlendColor(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha)
osg::BlendColor(const osg::Vec4& constantColor)

glBlendFunc( GLenum sfactor, GLenum dfactor)
osg::BlendFunc(GLenum source, GLenum destination, GLenum source_alpha, GLenum destination_alpha)

glBlendEquation(GLenum mode)
osg::BlendEquation(Equation equation)

glClampColor(GLenum target, GLenum mode)
osg::ClampColor(GLenum vertexMode, GLenum fragmentMode, GLenum readMode);

glColorMask( GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha )
osg::ColorMask(bool red, bool green, bool blue, bool alpha);

glMatrixMode( GL_COLOR )
osg::ColorMatrix()

glCullFace(GLenum mode)
osg::CullFace(Mode mode)

glDepthFunc( GLenum func)glDepthRange( GLclampd zNear, GLclampd zFar )glDepthMask( GLboolean flag )
osg::Depth(Function func, double zNear, double zFar, bool writeMask)

glFog*( GLenum pname, GLfloat param )glFog*v(GLenum pname, const GLfloat *params )
osg::Fog();

glFogf( GL_FOG_MODE, GLfloat param )
osg::Fog::setMode( Mode mode )

glFogf( GL_FOG_DENSITY, GLfloat param )
osg::Fog::setDensity( float density )

glFogf( GL_FOG_START, GLfloat param )
osg::Fog::setStart( float start )

glFogf( GL_FOG_END, GLfloat param )
osg::Fog::setEnd( float end )

glFogf( GL_FOG_INDEX, GLfloat param )
Color indexing not supported

glFogfv(GL_FOG_COLOR, const GLfloat *params )
osg::Fog::setColor( const Vec4 &color )

glFogi(GL_FOG_COORDINATE_SOURCE, GLenum mode)
osg::Fog::setFogCoordinateSource(GLint source)

glFrontFace( GLenum mode )
osg::FrontFace(Mode face)

glHint( GLenum target, GLenum mode )
osg::Hint(GLenum target, GLenum mode)

glLight*(GLenum light, GLenum pname, GLfloat param )glLight*v( GLenum light, GLenum pname, const GLfloat *params)
osg::Light(unsigned int lightnum)

glLightfv( GLenum light, GL_AMBIENT, const GLfloat *params)
osg::Light::setAmbient( const Vec4& ambient )

glLightfv( GLenum light, GL_DIFFUSE, const GLfloat *params)
osg::Light::setDiffuse( const Vec4& diffuse )

glLightfv( GLenum light, GL_SPECULAR, const GLfloat *params)
osg::Light::setSpecular( const Vec4& specular )

glLightfv( GLenum light, GL_POSITION, const GLfloat *params)
osg::Light::setPosition( const Vec4& position )

glLightfv( GLenum light, GL_SPOT_DIRECTION, const GLfloat *params)
osg::Light::setDirection( const Vec3& direction )

glLightf(GLenum light, GL_CONSTANT_ATTENUATION, GLfloat param )
osg::Light::setConstantAttenuation( float constant_attenuation )

glLightf(GLenum light, GL_LINEAR_ATTENUATION, GLfloat param )
osg::Light::setLinearAttenuation ( float linear_attenuation )

glLightf(GLenum light, GL_QUADRATIC_ATTENUATION, GLfloat param )
osg::Light::setQuadraticAttenuation ( float quadratic_attenuation )

glLightf(GLenum light, GL_SPOT_EXPONENT, GLfloat param )
osg::Light::setSpotExponent( float spot_exponent )

glLightf(GLenum light, GL_SPOT_CUTOFF, GLfloat param )
osg::Light::setSpotCutoff( float spot_cutoff )

glLightModel*( GLenum pname, GLfloat param )glLightModel*v( GLenum pname, const GLfloat *params )
osg::LightModel()

glLightModelfv( GL_LIGHT_MODEL_AMBIENT, const GLfloat *params )
osg::LightModel::setAmbientIntensity(const osg::Vec4& ambient)

glLightModeli(GL_LIGHT_MODEL_COLOR_CONTROL, GLint param)
osg::LightModel::setColorControl(ColorControl cc)

glLightModeli( GL_LIGHT_MODEL_LOCAL_VIEWER, GLint param )
osg::LightModel::setLocalViewer(bool localViewer)

glLightModeli( GL_LIGHT_MODEL_TWO_SIDE, GLint param )
osg::LightModel::setTwoSided(bool twoSided)

glLineStipple( GLint factor, GLushort pattern )
osg::LineStipple(GLint factor, GLushort pattern)

glLineWidth( GLfloat width )
osg::LineWidth(float width=1.0f)

glLogicOp( GLenum opcode )
osg::LogicOp(Opcode opcode)

glMaterialf(GLenum face, GLenum pname, GLfloat param )
osg::Material()

 
osg::Multisample()

 
osg::PolygonMode(Face face,Mode mode)

 
osg::PolygonOffset(float factor, float units)

 
osg::PolygonStipple(const GLubyte* mask)

 
osg::Scissor(int x,int y,int width,int height)

 
osg::ShadeModel(Mode mode)

glStencilFunc( GLenum func, GLint ref, GLuint mask )
osg::Stencil::setFunction(Function func,int ref,unsigned int mask)

glStencilMask( GLuint mask )
osg::Stencil::setOperation(Operation sfail, Operation zfail, Operation zpass)

glStencilOp( GLenum fail, GLenum zfail, GLenum zpass )

 
osg::StencilTwoSided()

glTexEnvi( GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, ...)glTexEnvfv( GL_TEXTURE_ENV, GL_TEXTURE_ENV_COLOR, ...)
osg::TexEnv(Mode mode)

glTexEnvi( GL_TEXTURE_ENV, ...)Texture combiners extension
osg::TexEnvCombine()

glTexEnvf(GL_TEXTURE_FILTER_CONTROL_EXT, GL_TEXTURE_LOD_BIAS_EXT, ...)
osg::TexEnvFilter(float lodBias)

glTexGen_( GLenum coord, GLenum pname, GLdouble param )
osg::TexGen()osg::TexGenNode()

glMatrixMode( GL_TEXTURE )
osg::TexMat(const Matrix& matrix)

glTexImage1D( GL_TEXTURE_1D, ...)
osg::Texture1D()

glTexImage2D( GL_TEXTURE_2D, ...)
osg::Texture2D(Image* image)

glTexImage3D( GL_TEXTURE_2D_ARRAY_EXT, ...)
osg::Texture2DArray()

glTexImage3D( GL_TEXTURE_3D, ...)
osg::Texture3D()

glTexImage2D( GL_TEXTURE_CUBE_MAP_POSITIVE_X, ...)glTexImage2D( GL_TEXTURE_CUBE_MAP_NEGATIVE_X, ...)glTexImage2D( GL_TEXTURE_CUBE_MAP_POSITIVE_Y, ...)glTexImage2D( GL_TEXTURE_CUBE_MAP_NEGATIVE_Y, ...)glTexImage2D( GL_TEXTURE_CUBE_MAP_POSITIVE_Z, ...)glTexImage2D( GL_TEXTURE_CUBE_MAP_NEGATIVE_Z, ...)
osg::TextureCubeMap()

glTexImage2D( GL_TEXTURE_RECTANGLE, ...)
osg::TextureRectangle(Image* image)

glViewport( GLint x, GLint y, GLsizei width, GLsizei height )
osg::Viewport(value_type x,value_type y,value_type width,value_type height)

[< Prev](http://www.openscenegraph.org/index.php/documentation/knowledge-base/41-matrix-transformations)
[Next >](http://www.openscenegraph.org/index.php/documentation/knowledge-base/75-perspective-transformation)


- [A* search algorithm - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/A*_search_algorithm)
- [Introduction to A*](http://theory.stanford.edu/~amitp/GameProgramming/AStarComparison.html)
- [Non-Contiguous Cartogram](http://bl.ocks.org/mbostock/4055908)
- [Choropleth](http://bl.ocks.org/mbostock/4060606)
- [mbostock.github.io/d3/talk/20111116/airports.html](http://mbostock.github.io/d3/talk/20111116/airports.html)
- [The Wealth & Health of Nations](http://bost.ocks.org/mike/nations/)
- [Les Misérables Co-occurrence](http://bost.ocks.org/mike/miserables/)
- [OMG Particles!](http://bl.ocks.org/mbostock/1062544)
- [Force-based label placement](http://bl.ocks.org/MoritzStefaner/1377729)
- [click-to-zoom via transform](http://bl.ocks.org/mbostock/2206590)
- [Urban Bus Races](http://busrac.es/)
- [d3.js airport data from Google Fusion - ramblings.mcpher.com](http://xliberation.com/googlecharts/d3flights.html)
- [Example of d3-ForceEdgeBundling on US airline routes graph.](http://bl.ocks.org/upphiminn/6515478)
- [WhoDoTheyServe.com](http://www.whodotheyserve.com/#/graph)

- 唉, 又学习一批高端关键词。。。
    - porn
    - eHarmony (eHarmony为一国外婚恋交友网站), Match.com
    - xvideos
    - call girl
    - escort (援交)

https://en.wikipedia.org/wiki/Wikipedia:Graphics_tutorials

https://en.wikipedia.org/wiki/Wikipedia:How_to_create_graphs_for_Wikipedia_articles

https://en.wikipedia.org/wiki/Wikipedia:SVG_Help

https://en.wikipedia.org/wiki/Scalable_Vector_Graphics


#### [Animated SVG][animated-svg]

![](http://gnat-tang-shared-image.qiniudn.com/pictures/demo.svg)


https://commons.wikimedia.org/wiki/Category:Animated_SVG

http://wiki.inkscape.org/wiki/index.php/SVG_Animation

http://www.w3.org/TR/SVG/animate.html

https://developer.mozilla.org/en-US/docs/Web/SVG

[animated-svg]: https://en.wikipedia.org/wiki/Wikipedia_talk:WikiProject_Mathematics/Graphics

g++ -ggdb `pkg-config --cflags opencv` -o `basename $1 .cpp` $1 `pkg-config --libs opencv`;
