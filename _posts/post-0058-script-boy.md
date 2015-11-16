% 一些脚本（豆瓣，etc）
% TANG ZhiXiong
% 2015-11-16

一些脚本（豆瓣，etc）
==================

豆瓣脚本
--------

我把自己在豆瓣上想看/看过/在看的书和电影都导出了，用的是自己
写的两个 JavaScript 脚本。

<div id="buckets"><div>[豆瓣读书](javascript:document.getElementsByTagName('body')[0].appendChild(document.createElement('script')).setAttribute('src','http://tangzx.qiniudn.com/doubanBook.js');)</div><div>[豆瓣电影](javascript:document.getElementsByTagName('body')[0].appendChild(document.createElement('script')).setAttribute('src','http://tangzx.qiniudn.com/doubanMovie.js'))</div></div>

把上面两个按钮拖到自己的书签栏，在【豆瓣电影】和【豆瓣读书】的电影/书籍页面点击按钮，
页面下方就会输出当前页面的电影/书籍的 Markdown 格式的列表。

比如：

![在豆瓣读书运行【豆瓣读书】脚本后](http://gnat.qiniudn.com/doubanBook.png)

```markdown
[![](http://img4.douban.com/mpic/s9233126.jpg)](http://book.douban.com/subject/3004255/ "编程之美")
[![](http://img3.douban.com/mpic/s28049911.jpg)](http://book.douban.com/subject/25863979/ "民主的阴暗面")
[![](http://img3.douban.com/mpic/s28110752.jpg)](http://book.douban.com/subject/19973015/ "Operating Systems")
[![](http://img3.douban.com/mpic/s2254394.jpg)](http://book.douban.com/subject/1126207/ "斯巴达克斯")
[![](http://img4.douban.com/mpic/s3865447.jpg)](http://book.douban.com/subject/3826899/ "布鲁克林有棵树")
```

这样的 Markdown 代码放到本站，就是这样：

[![](http://img4.douban.com/mpic/s9233126.jpg)](http://book.douban.com/subject/3004255/ "编程之美")
[![](http://img3.douban.com/mpic/s28049911.jpg)](http://book.douban.com/subject/25863979/ "民主的阴暗面")
[![](http://img3.douban.com/mpic/s28110752.jpg)](http://book.douban.com/subject/19973015/ "Operating Systems")
[![](http://img3.douban.com/mpic/s2254394.jpg)](http://book.douban.com/subject/1126207/ "斯巴达克斯")
[![](http://img4.douban.com/mpic/s3865447.jpg)](http://book.douban.com/subject/3826899/ "布鲁克林有棵树")

怎么弄的？

按钮的 href 是 `javascript:document.getElementsByTagName('body')[0].appendChild(document.createElement('script')).setAttribute('src','http://tangzx.qiniudn.com/hello.js')`{.json}。

代码你在 <http://tangzx.qiniudn.com/hello.js> 写好就行。

这个技能是从 Mendeley 的浏览器插件学得。