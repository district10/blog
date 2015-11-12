% DuckDuckGo：另一个搜索引擎
% TANG ZhiXiong
% 2014-07-15

DuckDuckGo：另一个搜索引擎
==========================

> Notice:
>
> 由我意译自 DuckDuckGo 英文维基页面。

![DuckDuckGo][ddg-pic]

DuckDuckGo 是一个互联网搜索引擎，它强调保护搜索者的隐私，
且能避免 Filter Bubble 的影响（在不同国家不同地区搜索结果不同）。
DuckDuckGo 和别的搜索引擎的主要不同在于它不存储使用者信息，
而且对统一搜索关键词提供完全全球一致的搜索结果。
DuckDuckGo 还强调从优质的信息提供者获取内容，
其搜索内容来自一些值得信赖的站点比如 Wikipedia 以及其他搜索引擎合作伙伴，
比如 Yandex（俄罗斯搜索引擎），雅虎，必应，WolframAlpha 等。

DuckDuckGo 公司成立于美国宾夕法尼亚州（Pennsylvania）的 Paoli，
位于大费城区（Greater Philadelphia），有 20 名员工。
DuckDuckGo 的命名源自儿童游戏 [Duck Duck Goose][duckduckgoose]（类似丢手绢）。

[ddg-pic]: http://gnat-tang-shared-image.qiniudn.com/pictures/DuckDuckGo_Logo.svg
[duckduckgoose]: https://en.wikipedia.org/wiki/Duck%2C_duck%2C_goose

DuckDuckGo 的部分代码开源在 GitHub，使用 Perl 5 许可证。
但是代码核心（Core）不开源（Closed-Source）。

在 2014 年 5 月 21 日，DuckDuckGo 发布了一个全系设计的版本，
关注于更智能的搜索答案，也引入了一个改良了的外观。
新版的 DuckDuckGo 加入了搜图片，本地搜索，关键词提示（补全）等等新特性。

DuckDuckGo 历史
---------------

DuckDuckGo 由 Gabriel Weinberg 创立。Gabriel Weinberg 是一个企业家，
其 Names Database 在 2006 年被 United Online （~~美国在线？~~ 联合在线）以一千万美元收购。
DuckDuckGo 原本是 Weinberg 个人砸钱运营，现在部分靠广告收入。
这个搜索引擎用 Perl 写成，依靠 Nginx，Linux 和 FreeBSD。

DuckDuckGo 其实是在调用各大搜索引擎的搜索函数开放接口 （Search API）。
所以，TechCrunck 把 DuckDuckGo 称为一个组合搜索引擎（“Hybrid” Search Engine）。
但现在，它也提供自己的内容，有点类似 Mahalo，Kosmix 和 SearchMe。

DuckDuckGo 被 Read Write Web 网站的 Fredric Lardinois 称为有点傻（Silly）。
Weinberg 解释说这个名字源自 Duck Duck Goose，他说那天这个想法突然从脑子里窜出来，
发现还不错于是采用了。虽然源自 Duck Duck Goose，但除此没有别的内涵（Metaphor），只是一个名字罢了。

DuckDuckGo 参加了 TechCrunch 的周五电梯三十秒演讲（Elevator Pitch Friday），
还是 雅虎 BOSS Mashable 挑战赛的决赛选手（Finalist）

我们创立 DuckDuckGo 不是指望它能战胜 Google，而是看到了对 private search engine 的客观需求，
尤其是对那些互联网无政府主义者（Internet Anarchists），以及那些整天逛 Reddit 和 Hacker News 的人。

2010 年 7 月，Weinberg 创办了 DuckDuckGo 社区，以方便使用者报告问题，
分享搜索引擎使用攻略，请求新功能，讨论 DuckDuckGo 开源相关问题等。

2011 年 9 月，DuckDuckGo 招了第一个员工，Caine Tighe。一个月后，
Union Squares 投资了 DuckDuckGo。其合伙人（Partner）Brad Burnham 说，
“我们投资 DuckDuckGo，不只是因为它能改变搜索行业，还是因为现在正是改变的好时机”。
十一月，DuckDuckGo 承包了 Linux Mint 操作系统的浏览器默认搜索服务。
除此，Trisquel 和 Midori（译注：下片神器，Linux 上的硕鼠）
也开始使用 DuckDuckGo 作为其默认搜索引擎。

到 2012 年 3 月，这个搜索引擎每天有 15 亿的搜索量。
Weinberg 宣称 DuckDuckGo 在 2011 年总获利为 1.15 万美元
（US$115,000 in Revenue in 2011），有三名员工（Employees），
还有少量零时工（？Contractors）。

2012 年 8 月，Compete.com 估计每月有 27 万多人访问这个网站。
在 2011 年 4 月 12 日，Alexa 报告显示 DuckDuckGo 一季度的增长率为
51%（a 3-Month Growth Rate of 51%）。DuckDuckGo 自己的流量显示 2012 年 8 月，
平均每天有 1,393,644 次访问，而 2010 年4 月（最早数据）每天访问量才 39,406。

2012 年 11 月，从华盛顿邮报（Washington Post）一份冗长的剖析（a Lengthy Profile）
中可以发现 2012 年 11 月，DuckDuckGo 的搜索量一下增长到了 45,000,000
（Searches on DuckDuckGo Numbered Up to 45,000,000 Per Month in October 2012）。
文章总结到，“Weinberg DuckDuckGo 定位奇特，但俨然已是互联网界一个危险的竞争者。
Google 和 Bing 由于受商业模式的制约，很多事不能做，但 DuckDuckGo 就不存在这种问题。
如果用户发现他们更喜欢 DuckDuckGo，Weinberg 可以破坏这些搜索巨头的统治地位，
哪怕他根本没有想过这回事。这是不对称的数字对抗（Asymmetrical Digital Warfare），
来自 Union Square Ventures 的 DuckDuckGo 支持者说 Google 已经岌岌可危了
（Backers at Union Square Ventures Say Google is Vulnerable）。

2013 年 9 月 26 日，新发布的 GNOME 默认浏览器 Web 3.10 版本默认使用
DuckDuckGo 搜索引擎，而不是 Google。 

2014 年 6 月 2 日，苹果 WWDC 大会上，库克宣布 iOS 8 和 OS X Yosemite
（译注：怎么看都像是日本词汇）的搜索引擎提供了 DuckDuckGo 选项。

2014 年 5 月的全新设计
----------------------

2014 年 5 月，DuckDuckGo 通过 DuckDuckHack 发布了一个全新设计的 Beta 测试版。

2014 年 5 月 21 日，DuckDuckGo 正式发布了这个全新设计，
有着更美外观（a More Refined Look），
且专注于正确搜索结果（Smarter Answers）的新版本。
加入了很多全新特性，比如图片，当地搜索（Local Search），
关键词提示（Auto-Suggest），天气，菜谱等等。

DuckDuckGo 特性
---------------

DuckDuckGo 的搜索结果来自将近 50 个“源”，包括 Yahoo！Search BOSS，Wikipedia，
Wolfram Alpha，Bing，DuckDuckBot（自家爬虫）等等。
它还使用 Wikipedia 等站点的众包数据（Crowdsourced）
提供免点击搜索结果（“Zero-click Info”，译注：如下截图）。
它会抽取搜索内容的基本信息。
还提供各大购物网站的直接搜索服务（译注：类似地，新版 Chrome 浏览器支持网站 URL 上直接 Tab 键搜索）。

![Zero-Click Info][zero-click-graybox]

[zero-click-graybox]: http://gnat-tang-shared-image.qiniudn.com/pictures/duckduckgo-graybox.png

在定位上，DuckDuckGo 强调不侵害用户隐私，即不储存 IP 地址，不记录用户信息，
必要时才使用 Cookies。Weinberg 强调，“DuckDuckGo 默认不收集和分享个人信息。
这就是我们原生的隐私策略（That is our Privacy Policy in a Nutshell）。

Weinberg 通过删除一些“无聊”数据（Content Mills）来提高搜索引擎的质量。
比如 Demand Media's eHow，这个站点每天雇佣自由作家写 4000 多篇文章，
Weinberg 对此的评价是 “无语。。。完全是一个稀烂质量的内容，
却企图通过迎合 Google 搜索策略（Google's Search Index）来提高排名”。
DuckDuckGo 还会过滤夹杂太多广告（with Substantial Advertising）的网页。

在 2010 年 8 月，DuckDuckGo 引入了匿名搜索，包括一个特殊出口（an Exit Enclave），
使得其搜索引擎的流量可以走洋葱网络（Tor Network），
而且可以开通获取洋葱隐蔽服务（a Tor Hidden Service），
这样流量就可以通过一些加密的中继（译注： Routing Traffic Through a Series of Encrypted Relays，实在不好翻译）。
Weinberg 说：“我觉得这正好跟我们的隐私策略配套。使用 Tor 洋葱路由和 DuckDuckGo，
你端到端的整个搜索都匿名了。如果你用我们加密的主页，那就正是端到端的加密。

2011 年，DuckDuckGo 引入了声音搜索，Google Chrome 浏览器“Voice Search”插件使用者可以考虑试用。

DuckDuckGo 还引入了所谓的 “！Bang” 指令。这样用户可以参与指导一个搜索关键词到指定页面。

媒体评价（Reception）
---------------------

2011 年 6 月，Harry McCracken 在时代杂志（Time Magazine）上的一篇文章
写到了 DuckDuckGo，把它和他最爱的汉堡店 In-N-Out Burger 做了类比：
“DuckDuckGo 有着精简的主页（Stripped-Down），很像早期的 Google。
就像 In-N-Out 汉堡店没有拿铁咖啡（Lattes），亚洲沙拉，圣代（Sundaes）
以及煎蛋（Scrambled Eggs），DuckDuckGo 也没有新闻，博客，读书和图片。
它也没有搜索提示（Auto-Completion）和同步显示（Instant Reluts）。
它只提供核心的 Web 搜索，通常也就是一些蓝色的超链接，不过还确实有用，
不管有些人怎么评论。至于质量，我当然不能说 Weinberg 找到了一种神奇的方法，
能够对抗 Google 超强的搜索团队（Mighty Search Team）。
但它确实做的挺好。就像一盘菜，整体上看起来鲜美多汁（Meaty），
简洁粗暴（Straightforward），货真价实（Filler-Free）。”
McCracken 还把它列为 2011 年 最好的 50 个网站之一。

Thom Holwerda，他为 OSNews 带来了对这个搜索引擎的自己的看法（Review）。
他称赞了 DuckDuckGo 的隐私特性和指定站点搜索（Site-Specific Searches），
同时质疑（Criticizing）了 Google 跟踪用户几乎一切操作。
尤其让人担心的是这些信息可能被美国政府强制获得
（Particularly Because Of the Risk of Such Information Being Subject to a U.S. Government Subpoena）。

2012 年，被指垄断（Accusations that it was a Monopoly），
Google 才把 DuckDuckGo 列为竞争者。Weinberg 表示被这样称（by that Acknowledgement）很荣幸 。

2013 年 6 月，DuckDuckGo 流量大增。通过其 Twitter 账户了解到，17 号当天有三百万直接搜索。
而整个 5 月份也才不到二百万（1.8 million）搜索量。这很有可能和棱镜门（the Exposure of PRISM）
和 NSA（National Security Agency）操纵一些程序被斯诺登（Edward Snowden）泄密（Leaked）有关。
Danny Sullivan 在 Search Engine Land 上写到，虽然 DuckDuckGo 搜索量暴增，
但它还不能说明什么（It's NOT Grown Anywhere Near the Amount to Reflect Any Substantial），
也没半点证据表明有多少人会因为隐私而换一个搜索引擎
（or Even Mildly Notable Switching by the Searching Public for Reasons Due to Privacy），
他还总结道，没人在意什么 “Private” Search。

与此相反，旧金山地方志（San Francisco Chronicle）的 Caleb Garling，
则觉得 Sullivan 的理论（Thesis）有几处逻辑错误（a few Key Failures in Logic），
因为流量确实增长了。而且以前大家确实不了解这个有着特殊隐私策略的搜索引擎 DuckDuckGo。
2013 年 9 月，DuckduckGo 达到了每天四百万的搜索量。

作家 Julia Angwin，在她的书中，研究了互联网隐私（Examining Internet Privacy），
从 Google 转向 DuckDuckGo 并比较两者在搜索质量和隐私上的不同。Angwin 在一次采访中说道（Remarked）：
DuckDuckGo 什么都没有记录，但你找到了你想要的东西。当然你也可以问
Google 他到底记录了你的什么，他会提供你一份超级复杂详细（Comprehensive）的答案。
（我这样做了，）看到了自己从 2006 年的大量搜索记录（Conducted Since 2006）。
看上去，我一个月搜索 26000 次 Google。
我可以按照日期查看，按照搜索类型排序，按购物，按地图等等，简直太详尽了（Revealing）。
我可以看到何时的自己如何在头脑中构建一些疯狂的飞跃（Crazy Leaps），不管哪一天。
我还知道哪一分钟自己在哪本书上，而下一分钟我是为女儿去买鞋或者别的什么，都可以看到。
Google 知道我在什么，知道我在想什么，这太让人不安了（Disturbing）。

翻译易错点分享
--------------

**We didn’t** invest in it **because** we thought it would beat Google. **We** invested in it **because** there is a need for a private search engine.

The article concluded "Weinberg's non-ambitious goals make him a particularly odd and dangerous competitor online. He can do almost everything that Google or Bing can’t because it could damage their business models, and if users figure out that they like the DuckDuckGo way better, Weinberg could damage the big boys without even really trying. It's asymmetrical digital warfare, and his backers at Union Square Ventures say Google is vulnerable."

---

Refs

#. [DuckDuckGo - Wikipedia（英文原文）][ddg-wiki]
#. [DuckDuckGo - 官方介绍][ddg-about]
#. [DuckDuckGo Community][duckduckgo-community]
#. [DuckDuckHack][duckduckhack-intro]

[ddg-wiki]: https://en.wikipedia.org/wiki/DuckDuckGo
[ddg-about]: https://duckduckgo.com/about?t=i&kl=cn-zh
[duckduckhack-intro]: https://duck.co/duckduckhack/ddh-intro
[duckduckgo-community]: https://duck.co/