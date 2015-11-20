% Pretty Diff | 听歌学英语
% TANG ZhiXiong
% 2015-11-18

Pretty Diff | 听歌学英语
========================

昨晚一个想法击中了我。既然要练听力（虽然寡人水平已经很高[^fallback]），为什么不每天在
虾米上听一首歌，然后把歌词 dictate 出来呢？

[^fallback]: 只要不是摇滚还能听个大概。

这是一个好主意，但我们需要一点自动化：

1. 能够显示我听对和听错的部分
2. 能够分享第一点
3. 第二点要足够好看

如果只满足前两点
----------------

那就用脚本里常用的一个叫 diff 的 Util 就行，

比如这里有两个测试文档 `_a.txt` 和 `_b.txt`，如下：（respectively）

```plain
What do you mean?（这行被删除）
When you nod your head yes（单词改变）
But you wanna say no（单词添加）
What do you mean?（删除单词）
When you don't want me to move（这行不变）
```

```plain
When you nod your haydes（单词改变）
But you wanna say me no（单词添加）
What you mean?（删除单词）
When you don't want me to move（这行不变）
But you tell me to go（这行新添加）
```

命令行下运行 `diff _a.txt _b.txt`{.bash}，结果就出来了：

```diff
1,4c1,3
< What do you mean?（这行被删除）
< When you nod your head yes（单词改变）
< But you wanna say no（单词添加）
< What do you mean?（删除单词）
---
> When you nod your haydes（单词改变）
> But you wanna say me no（单词添加）
> What you mean?（删除单词）
5a5
> But you tell me to go（这行新添加）
```

其实我也不熟悉 diff 出来的东西，我猜你也不懂。可以看到，前两点愿望实现了而第三点还差得远。

为了满足第三点我找了很多资料
----------------------------

然后我就必应、GitHub、百度、StackOverflow 各种搜，用到的关键词有

#. pretty diff
#. diff html output
#. git diff pretty print
#. kompare
#. git diff not show hash tag
#. git diff not show header
#. git diff status
#. *etc*

先是找到一个 jsdifflib，但效果很糟糕。

![diff via jsdifflib][jsdifflib]

然后想到了 GitHub，上面的代码 diff 可是极其赞的。我本想它能 diff 出这种效果：

![][github-diff]

结果却是：

![][github-diff-terrible]

大失所望，大失所望。

继续查。

据说用 [Pygments](http://pygments.org/)[^pygments] 可以，我没有试，因为这东西也太大了！
之前还是写毕业论文的时候用过，作为 LaTeX 代码高亮的引擎。我才不喜欢这么
点 diff 工作还要再装它。

[^pygments]: `diff -U9999999 -y _a.txt _b.txt | pygmentize -l diff -f html -O full -o file_diff.html`{.bash}

搜着搜着我就锁定了 `git diff`{.bash}。这个 diff 很好看，效果好，而且我有 git（本博客就是用 Git 版本控制的）。

用 `git diff --no-index --color-words _a.txt _b.txt`{.bash}，效果很满意：

![][git-diff]

Git 我也不熟，又去查文档，看到

#. `--no-index` 是说 diff 的是文件系统里的文件，而不是 Git Repository 里的文件
#. `--color-words` 是说按照单词来显示 diff 结果，而不是行

这个指令出来的结果在命令行下是彩色，其实用的是 "ANSI" 颜色表示法，输出的文本为（文件里的 ESC 字符被替换为 ＥＳＣ）：

```plain
ＥＳＣ[1mdiff --git a/_a.txt b/_b.txtＥＳＣ[m
ＥＳＣ[1mindex 0cb3b2a..d540f3f 100644ＥＳＣ[m
ＥＳＣ[1m--- a/_a.txtＥＳＣ[m
ＥＳＣ[1m+++ b/_b.txtＥＳＣ[m
ＥＳＣ[36m@@ -1,5 +1,5 @@ＥＳＣ[m
ＥＳＣ[31mWhat do you mean?（这行被删除）ＥＳＣ[mWhen you nod your ＥＳＣ[31mhead yes（单词改变）ＥＳＣ[mＥＳＣ[32mhaydes（单词改变）ＥＳＣ[m
But you wanna say ＥＳＣ[32mmeＥＳＣ[m no（单词添加）
WhatＥＳＣ[31mdoＥＳＣ[m you mean?（删除单词）
When you don't want me to move（这行不变）ＥＳＣ[m
ＥＳＣ[32mBut you tell me to go（这行新添加）ＥＳＣ[m
```

在 [Linux Shell 脚本菜谱 | Linux Shell Scripting Cookbook](post-0024-linux-shell-scripting-cookbook.html) 这篇笔记了也讲到过。^[虽然那时没说这是 ANSI 颜色表示法。]

最后问题转化为如何把 ANSI 标记的文本转化为 HTML。我到 GitHub 上一搜，结果就出来了：[theZiz/aha](https://github.com/theZiz/aha)。

我 fork 了他的 repo，稍微一改（[district10/aha](https://github.com/district10/aha)）就能用。

`git diff --color-words --no-index _a.txt _b.txt | aha > diffed.md`{.bash} 的
运行结果是 diffed.md：

```html
<pre class="diffed">
<span style="font-weight:bold;">diff --git a/_a.txt b/_b.txt</span>
<span style="font-weight:bold;">index 0cb3b2a..d540f3f 100644</span>
<span style="font-weight:bold;">--- a/_a.txt</span>
<span style="font-weight:bold;">+++ b/_b.txt</span>
<span style="color:teal;">@@ -1,5 +1,5 @@</span>
<span style="color:red;">What do you mean?（这行被删除）</span>When you nod your <span style="color:red;">head yes（单词改变）</span><span style="color:green;">haydes（单词改变）</span>
But you wanna say <span style="color:green;">me</span> no（单词添加）
What<span style="color:red;">do</span> you mean?（删除单词）
When you don't want me to move（这行不变）
<span style="color:green;">But you tell me to go（这行新添加）</span>
</pre>
```

加点 CSS：

<pre class="diffed">
<span style="font-weight:bold;">diff --git a/_a.txt b/_b.txt</span>
<span style="font-weight:bold;">index 0cb3b2a..d540f3f 100644</span>
<span style="font-weight:bold;">--- a/_a.txt</span>
<span style="font-weight:bold;">+++ b/_b.txt</span>
<span style="color:teal;">@@ -1,5 +1,5 @@</span>
<span style="color:red;">What do you mean?（这行被删除）</span>When you nod your <span style="color:red;">head yes（单词改变）</span><span style="color:green;">haydes（单词改变）</span>
But you wanna say <span style="color:green;">me</span> no（单词添加）
What<span style="color:red;">do</span> you mean?（删除单词）
When you don't want me to move（这行不变）
<span style="color:green;">But you tell me to go（这行新添加）</span>
</pre>

不错不错，可以安安静静地每天 dictation 了。现在我得去主页新开一个 bucket，放每天的 dictation 工作。

以后把 dictation 放在 [Lyrics | 听写](lyrics.html)，
试用了一次效果相当赞。

![基本上是个合格的纠错小助手](http://gnat.qiniudn.com/dictation.png)

---

Refs

#. [theZiz/aha](https://github.com/theZiz/aha)
#. [Coloured Git diff to HTML - Stack Overflow](http://stackoverflow.com/questions/2013091/coloured-git-diff-to-html)
#. [diff to html (diff2html) program - Stack Overflow](http://stackoverflow.com/questions/641055/diff-to-html-diff2html-program)
#. [读懂 diff - 阮一峰的网络日志](http://www.ruanyifeng.com/blog/2012/08/how_to_read_diff.html)
#. [Terminal colour highlights](http://www.pixelbeat.org/docs/terminal_colours/)
#. [git-diff(1)](https://www.kernel.org/pub/software/scm/git/docs/git-diff.html)

[jsdifflib]: http://gnat.qiniudn.com/diffed/jsdifflib.png
[github-diff]: http://gnat.qiniudn.com/diffed/github-diff.png
[github-diff-terrible]: http://gnat.qiniudn.com/diffed/github-diff-terrible.png
[git-diff]: http://gnat.qiniudn.com/diffed/git-diff.png