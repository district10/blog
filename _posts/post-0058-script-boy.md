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

豆瓣读书和豆瓣电影的两个脚本：

#. <http://tangzx.qiniudn.com/doubanBook.js>
#. <http://tangzx.qiniudn.com/doubanMovie.js>

这个技能是从 Mendeley 的浏览器插件学得。

Shell 脚本
----------

<!--

```bash
# /bin/bash

: '
4096 Jan 10 02:10 .
drwxr-xr-x 46 gnat gnat 28672 Jan 10 02:17 ..
lrwxrwxrwx  1 gnat gnat    45 Jan  6 00:50 c11 -> /home/gnat/git/mine/ring/scripts/gcc_cxx11.sh
lrwxrwxrwx  1 gnat gnat    44 Jan  6 00:52 doc -> /home/gnat/git/mine/ring/scripts/doc_host.sh
lrwxrwxrwx  1 gnat gnat    49 Jan  6 09:16 doc_index -> /home/gnat/git/mine/ring/scripts/gen_doc_index.sh
lrwxrwxrwx  1 gnat gnat    29 Jan  6 21:22 eclipse -> /home/gnat/bin/kepler/eclipse
lrwxrwxrwx  1 gnat gnat    47 Jan  6 01:18 feed -> /home/gnat/git/mine/ring/scripts/meta_gen_sl.sh
lrwxrwxrwx  1 gnat gnat    42 Jan  6 00:54 i -> /home/gnat/git/mine/ring/scripts/p_note.sh
lrwxrwxrwx  1 gnat gnat    47 Jan  6 09:13 make_x -> /home/gnat/git/mine/ring/scripts/meta_make_x.sh
lrwxrwxrwx  1 gnat gnat    39 Jan 10 02:10 neo -> /home/gnat/git/mine/ring/scripts/neo.sh
lrwxrwxrwx  1 gnat gnat    48 Jan  3 11:51 note -> /home/gnat/git/mine/ring/scripts/append_notes.sh
lrwxrwxrwx  1 gnat gnat    50 Jan  6 00:48 opencv -> /home/gnat/git/mine/ring/scripts/compile_opencv.sh
lrwxrwxrwx  1 gnat gnat    56 Jan  6 01:13 opencv11 -> /home/gnat/git/mine/ring/scripts/compile_opencv_c++0x.sh
'

ln -s /home/gnat/git/mine/ring/scripts/gcc_cxx11.sh c11
ln -s /home/gnat/git/mine/ring/scripts/doc_host.sh doc
ln -s /home/gnat/git/mine/ring/scripts/gen_doc_index.sh doc_index
ln -s /home/gnat/git/mine/ring/scripts/meta_gen_sl.sh feed
ln -s /home/gnat/git/mine/ring/scripts/p_note.sh i
ln -s /home/gnat/git/mine/ring/scripts/meta_make_x.sh make_x
ln -s /home/gnat/git/mine/ring/scripts/neo.sh neo
ln -s /home/gnat/git/mine/ring/scripts/append_notes.sh note
ln -s /home/gnat/git/mine/ring/scripts/compile_opencv.sh opencv
ln -s /home/gnat/git/mine/ring/scripts/compile_opencv_c++0x.sh opencv11

echo done
```

#/bis/bash


# GitHub
# ------

### Mine

git=(
neo_keybord_layout
gat
read
slides
Calibre-nongui
notes
wuhan-pubbike-project
hexo-blog
brain
gnat
pandoc-templates
new-repo
center
Sounds-of-Street-View-Framework
tucao
dotfiles
sample-codes
homework
codes
district10.github.io
Pattern_Classification
extended-programmer-dvorak
misc
codecombat
TranslateProject
)

for g in ${git[*]};
do
    echo 


### forked

HUST-Undergraduage-Thesis
Jsource
renren-relationship
Hyperlapse.js
algorithms
writings
xcape
sunpinyin
scikit-learn
ergoemacs-mode
chrome-app-samples
Keyboard-Heatmap
hexo
d3
gitbook
javascript
knitr-examples
InterImmBook
mastering-emacs-in-one-year-guide
CodeMirror
iqq
javascript-astar
StreetView

-->