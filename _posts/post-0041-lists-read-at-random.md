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

（感觉自己弄这个博客的时候居然没用 jQuery，既牛逼，又错过了学习它的机会。）

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

:   * adj. 强制的；托管的；命令的
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

Just [featuring][feat]. This is used when there is an invited artist on a track.

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

注意不要和 mime 弄混，那是 mime（`maim`），这是 meme（`meem`，“两个我”）。
mime 引申出去一个词叫 mimic。MIME 还代表互联网文本格式（比如 `text/javascript`）。

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
我是一个 天天吃-大盘鸡-从不厌烦 的人。

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
Commands, being attested as early as 1712

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

[公知][gongzhi]从字面可认为是公共知识分子（The Public Intellectual）的缩略词，
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

注：在 Peter D. Lax 的 [线性代数][algebra-lax] 中，对 Isomorphism 定义大致是说，
两个线性空间（Linear Space）如果在操作上不可区分（Indistinguishable by means of operations available in linear spaces），则称他们为 Isomorphism。这个定义就很容易理解。

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
