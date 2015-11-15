% More About Vim | Vim 杂记
% TANG ZhiXiong
% 2014-03-28

More About Vim | Vim 杂记
=========================

接触 Linux 后不得不面对的选择是 `Emacs 还是 Vim？`，
那时我选了 Emacs，后来我皈依了 Vim。

正如 Dvorak 从设计上完虐 QWERTY，Vim 从设计上也超越了 Emacs。[^vimacs]
尤其一点，Vim 不占用 <kbd>Control</kbd>，所以一般不会和其他体系冲突，所以所以
它能在 Visual Studio 里配合 Visual Studio、在 Qt Creator 里配合 Qt Creator，
在浏览器里配合一般的文本编辑框[^ace]。

下面是几篇 Vim 文章。

[^vimacs]: 当然，还谈不上完虐。
[^ace]: 如果你不知道 ACE 编辑器，可以去查查。

补补不够用的 Vim[^morevim]
--------------------------

[^morevim]: 本文最初的本意是要黑 Vim。罪过罪过，感谢 Vim 拯救我的小拇指。
            Vim 是个伟大的编辑器，我不该黑它。

有些东西是逃不掉的，比如在 Linux 上就要用 Vim。

通常我用 Emacs 或者 Geany、Gedit，但那天跑到刚装机的 Debian 上，
一下就 2 了：没有 Emacs、Geany、或者 Gedit，只有 vi……
又加上我用 [Neo-extended DVPE][dvpe] 键盘布局，居然没法删除字符！！！

最后只能用 `echo`{.bash}，`>>`{.bash} 追加的方式给
`sources.list` 添加了几个源。

看来，只知道 Vim 的三个状态是不够的。

[dvpe]: https://github.com/district10/neo_keyboard_layout

那就多学一点，Here is a cheat sheet, [**vim-brain**][cheatsheet]

* `ESC`
* Navigation: `h`, `j`, `k`, `l`
* `D`, `dd`, `dw`: delete to end of line, delete current line, delete current word
* `x`, `X`: delete current char, delete previous char
* `y`, `yy`: yank, yank line
* `p`, `P`: paste after, paste before
* `r`: replace current char
* `u`, `Ctrl + r`: undo, redo
* `~`, `g~iw`, `gUiw`, `guiw`: switch case

Vim 补习完毕，目测三年之内够用了。(我这是在黑 vim 吗？）

[cheatsheet]: http://overapi.com/static/cs/vim-brain.png

2014-03-28

Vim 拾遗
--------

### `ESC`, `:`

* `ESC` (stop insert)
* `:` (command)
* `u` (undo)
* `<c-r>` (undo undo)
* `:wq`, `:q`, `:cq`, `q!`, `ZZ`, `ZQ` (quit)
* `:e` (rewind)

### `D`, `C`, `Y`

* `d` (delete)
* `c` (change)
* `y` (yank (copy))

### `X`, `P`

* `x` (delete a char)
* `p` (paste)

### `W`, `B`

* `w` (word, forword word)
* `b` (word, backword word)

### `F`, `T`, `I`, `;`, `.`

* `f` (move forward on)
* `t` (move forward to)
* `i` (scope)

* `;` (repeat same direction)
* `,` (opposite direction)
* `.` (repeat change)

### `G`, `|`, `0`, `^`, `$`, `H`, `M`, `L`, `(`, `)`, `{`, `}`, `[[`, `]]`

* `G` (last(or *n*th) line)
* `|` (column) 
* `0` (line begin)
* `^` (char begin)
* `$` (line end)

* `H` (high, window top)
* `M` (middle)
* `L` (low)

* `(` (sentence)
* `{` (paragraph)
* `[[` (section)

* `+` (next line beg)
* `-` (previous line beg)

### `/`, `?`

* `/` (reg query forward)
* `?` (reg query backward)
* `#` (query current word, backward)
* `*` (query current word, forward)
* `n` (next)
* `N` (previous)

### `m`, ` ` `, `'`

* `m` (mark a position, tag it)
* ` ` ` (move back on last change)
* `''` (move back to line beginning of last change)

### MISC

`:s/old/new`

My Emacs will come back soon with Evil-mode INSIDE~

外，简单的修改一个文档，用 `vim -u NONE`{.bash}，这样启动更快。

2015-01-02

你想要几个剪贴板，Vim 就给你几个
--------------------------------

### 1. 从 `yy`，`dd` 进阶到 `"xyy` `"xdd`

其中的 x 是“剪贴板”名称，单字母。用这个，就可以随处粘贴至少 26 段代码片段。配合 mark 使用，效果更佳。

### 2. 一定记住系统（窗口管理器）的剪贴板：`+`

从浏览器复制，直接用 `"+p` 就可以粘贴到 vim 终端，复制出去用 `"+yy`。

于是可以快乐地复制粘贴了。

### 3. 从 `"xyy` 到 `"Xyy`

前者把当前行 `>`{.bash} 到 `x`，后者把当前行 `>>`{.bash} 到 `X`。这就是大小写的区别！

但注意 `x` 和 `X` 其实是一个 register，因为 `"xp` 和 `"Xp` 是一样的。

`"0p`：忽略那些 d 掉的东西（我真的不是想粘贴它们），专注于粘贴 `y` 了的内容。

一定记得看这个：

```plain
 ID  Df  %Dev    Lambda
    1   0   0.000000    0.313682
    2   1   0.023113    0.304332
    3   1   0.044869    0.295261
    4   1   0.065347    0.286460
    5   1   0.084623    0.277922
    6   1   0.102767    0.269638
    7   1   0.119845    0.261601
```

在 Refs 的链接里，naught101 说：

>  This is totally key. I haven't noticed until now that 
> registers are the same as macro buffers. This means you 
> can just **store all your macros in text, yank them, and run them**. 
> Pretty cool, and a little bit weird. Very Vim. 

### 4. 从 `+` 到 `*`

加号寄存器里存了 <kbd>Control-C</kbd> 的内容，
乘号寄存器里存了鼠标选中的内容。

你或许疑问乘号有什么用，我举个例子：

用 Vim 编辑一段文字的时候，不移动光标，
用鼠标选择当前文档里你想要 copy 的文字直接粘贴。

2015-02-13

---

Refs

* [vi - How to use vim registers? - Stack Overflow](http://stackoverflow.com/questions/1497958/how-to-use-vim-registers)

---

不像 Emacs，Vim 几乎不需要配置就能很好地使用。但也有一个地方，确实需要配置：

![](http://gnat.qiniudn.com/pics/vim-default.png)

除此之外，Vim 很完美。

杂七杂八技能
------------

```plain
;; set text width
;; ;    :set tw=80
gq[motion]
```

---

Refs

#. [天下绝技，唯一需要 default 而不是 default 的东西，所以你得记住！](http://dvorak4tzx.lofter.com/post/1d4021c8_84b3717)