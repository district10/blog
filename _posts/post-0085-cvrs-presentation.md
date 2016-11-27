---
title: 组会分享：RAMP 是什么？
date: 2016-02-24
key-words:
    - cvrs
tags:
    - cvrs
    - presentation
...

组会分享：RAMP 是什么？
======================

<!--
cssfile:
    - asciinema-player.css
jsfile:
    - asciinema-player.js
before-after: |
    <script>
        asciinema_player.core.CreatePlayer('player-container', 'demo.json');
    </script>
[asciinema - Record and share your terminal sessions, the right way](https://asciinema.org/)
<div id="player-container"></div>
-->

这是组会上的一点分享。

只分享一点使用场景，不深入展开讨论。

![幻灯片1](http://whudoc.qiniudn.com/ramp/幻灯片1.JPG)

RAMP 是我自己造的词。Nothing special。Take the ramp 有走斜坡的意思，这里引申为
循序渐进，蒸蒸日上。

![幻灯片2](http://whudoc.qiniudn.com/ramp/幻灯片2.JPG)

![幻灯片3](http://whudoc.qiniudn.com/ramp/幻灯片3.JPG)

搜索神器，每天必用。

![幻灯片4](http://whudoc.qiniudn.com/ramp/幻灯片4.JPG)

类似 Everything 的一段命令行脚本。

![幻灯片5](http://whudoc.qiniudn.com/ramp/幻灯片5.JPG)

上古程序员的一点点 grep，才能拿到自己想要的资料。
真是要极大的耐心。

![幻灯片6](http://whudoc.qiniudn.com/ramp/幻灯片6.JPG)

`ag` 和 `pt` 都是和 `grep` 类似的工具。

![幻灯片7](http://whudoc.qiniudn.com/ramp/幻灯片7.JPG)

即使 nodepad++，也可以进行正则化的搜索。老师还特地说了，
nodepad++ 也可以在整个文件夹下搜，同时说这时候替换操作可能很坑，
因为一下就会修改很多文件，很可能把代码改残了。

![幻灯片8](http://whudoc.qiniudn.com/ramp/幻灯片8.JPG)

Vim 里有正则，但真正的正则高手都应该学习 Perl。处理文本的最佳工具。

![幻灯片9](http://whudoc.qiniudn.com/ramp/幻灯片9.JPG)

异步概念的引入。作用是什么，解决了什么问题？引入了什么问题？怎么解决？

![幻灯片10](http://whudoc.qiniudn.com/ramp/幻灯片10.JPG)

风格上的借鉴，是最直接但也最低层次的借鉴。

![幻灯片11](http://whudoc.qiniudn.com/ramp/幻灯片11.JPG)

![幻灯片12](http://whudoc.qiniudn.com/ramp/幻灯片12.JPG)

接口上的借鉴是更高层次的借鉴。很多情况下，问题都不是这个编程语言能不能做到（因
为通常都能），而是你想要什么样的功能。实现起来不会很复杂，但好的接口用起来真是
让人心情舒畅。这里用了 d3 的一点例子，其实用 jQuery 代码做例子可能效果更好。

![幻灯片13](http://whudoc.qiniudn.com/ramp/幻灯片13.JPG)

![幻灯片14](http://whudoc.qiniudn.com/ramp/幻灯片14.JPG)

C++ 中的异步，Facebook 的实践。

![幻灯片15](http://whudoc.qiniudn.com/ramp/幻灯片15.JPG)

![幻灯片16](http://whudoc.qiniudn.com/ramp/幻灯片16.JPG)

![幻灯片17](http://whudoc.qiniudn.com/ramp/幻灯片17.JPG)

管道的好处是什么？首先你得了解 stdin，stdout，stderr。

![幻灯片18](http://whudoc.qiniudn.com/ramp/幻灯片18.JPG)

举例说明，好处就是自己只做一部分处理。一个更复杂的操作就是把简单操作串起来。

![幻灯片19](http://whudoc.qiniudn.com/ramp/幻灯片19.JPG)

实例，我们在长沙的项目中，用到了什么。

![幻灯片20](http://whudoc.qiniudn.com/ramp/幻灯片20.JPG)

![幻灯片20](http://whudoc.qiniudn.com/ramp/幻灯片20.JPG)

好处和不好的地方在哪儿？

![幻灯片21](http://whudoc.qiniudn.com/ramp/幻灯片21.JPG)

更好的解决方案？

![幻灯片22](http://whudoc.qiniudn.com/ramp/幻灯片22.JPG)

还可以更好。

![幻灯片23](http://whudoc.qiniudn.com/ramp/幻灯片23.JPG)

好到完全不改变既有代码，又不用担心日志丢失（未来得及存储）。

![幻灯片24](http://whudoc.qiniudn.com/ramp/幻灯片24.JPG)

Make 就是一种异步。你能体会一下么？

![幻灯片25](http://whudoc.qiniudn.com/ramp/幻灯片25.JPG)

Make 和脚本的对比。这是两种完全不同的思考角度。

![幻灯片26](http://whudoc.qiniudn.com/ramp/幻灯片26.JPG)

还是以长沙项目中的一段小代码（和主要工程代码无关），说明 Makefile 相比
Shell 脚本的优势。GitHub：[district10/raw2pts: Raw file (of C2 camera) 2 point cloud file](https://github.com/district10/raw2pts)。

![幻灯片27](http://whudoc.qiniudn.com/ramp/幻灯片27.JPG)

![幻灯片28](http://whudoc.qiniudn.com/ramp/幻灯片28.JPG)

![幻灯片29](http://whudoc.qiniudn.com/ramp/幻灯片29.JPG)

总结。RAMP 分别是什么，解决了什么问题。有什么优缺点。

![幻灯片30](http://whudoc.qiniudn.com/ramp/幻灯片30.JPG)

Take the RAMP，and ROCK！

![幻灯片31](http://whudoc.qiniudn.com/ramp/幻灯片31.JPG)

---

不是组会分享的内容，只作一点补充：

1. Turtoise SVN 也可以 diff。

![幻灯片32](http://whudoc.qiniudn.com/ramp/幻灯片32.JPG)

![幻灯片33](http://whudoc.qiniudn.com/ramp/幻灯片33.JPG)

2. Visual Studio 的一些插件，尤其是 Productivity Powertools
的 Vertical tabs 很赞。

![幻灯片34](http://whudoc.qiniudn.com/ramp/幻灯片34.JPG)

![幻灯片35](http://whudoc.qiniudn.com/ramp/幻灯片35.JPG)

3. 本地的 HTML 文档（当然苹果系统的 Dash 也是必买 app，比 HTML 搜文档赞）。

![幻灯片36](http://whudoc.qiniudn.com/ramp/幻灯片36.JPG)

4. Pandoc，文章转化工具，我几乎所有文字都是在 Vim 里写 Markdown，然后用 Pandoc 转
成各种格式如 HTML，DOCX。

![幻灯片37](http://whudoc.qiniudn.com/ramp/幻灯片37.JPG)

---

Vertical Tabs 在 Firefox 浏览器里也有，插件下载：

-   VimFX, [backup](http://whudoc.qiniudn.com/2016/VimFx@akhodakivskiy.github.com.xpi)
-   [Tree Style Tab :: Add-ons for Firefox](https://addons.mozilla.org/en-US/firefox/addon/tree-style-tab/)
-   [Auto Reload :: Firefox 附加组件](https://addons.mozilla.org/zh-CN/firefox/addon/auto-reload/?src=api)

Chrome

-   cVim

Firefox & Chrome

-   Huaban
-   Copy as Markdown

---

refs and see also

-   [Futures for C++11 at Facebook - June 19, 2015](https://code.facebook.com/posts/1661982097368498)
-   [Everything Searching Options](http://www.voidtools.com/support/everything/searching/)
-   [BASH Programming - Introduction HOW-TO: All about redirection](http://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO-3.html)
-   [Flow (psychology) - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Flow_(psychology))
