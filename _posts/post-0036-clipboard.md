% 你的笔记本里有几个剪切板？
% TANG ZhiXiong
% 2015-10-16

你的笔记本里有几个剪切板？
=========================

我也不知道有多少个，但一定比你想得多。

复制粘贴的剪切板
----------------

也就是最常用的 <kbd>Ctrl+C</kbd> 和 <kbd>Ctrl+V</kbd>。

在 Vim 里是 `+` 寄存器。在 Shell 里可以把 stdin 剪切进 `xclip -selection clipboard`{.bash}，也可以从 `xclip -selection clipboard -o`{.bash} 获取 <kbd>Ctrl+C</kbd> 里的数据。

鼠标选中文字的剪切板
--------------------

在 Vim 里是 `*` 寄存器。这就是有道词典划词翻译的根本。[^vimonwindows]

[^vimonwindows]: 最近发现 Vim 的两个剪切板在 Windows 是没有区别，`*` 和 `+` 都是 `*`。不知道是不是我没有配置好。

其他
----

我只能说很多。比如 Windows 系统上，牛逼闪闪的 OneNote 可以把网页完美地粘贴，就
一定用了什么黑科技。

我猜测是有一个普通的剪切板记录复制了的 plain text，但还有一些剪切板可以记录
<kbd>Ctrl+C</kbd> 时所处的软件。方便系统把网页片段转化成 Word 能识别的格式，保
证样子不走形。

话说换回了 Ubuntu 现在又可以快乐地记录 log 了～可以把命令的输出返回到剪切板才是真好：

```bash
alias clip="xclip -selection clipboard"
```

Windows 系统在一点上超越了 Linux，那就是提供了一个自带的 `clip`{.bash} 可以用 pipe 往 <kbd>Ctrl+C</kbd> 传数据。

```plain
CLIP

描述:
    将命令行工具的输出重定向到 Windows 剪贴板。这个文本输出可以被粘贴
    到其他程序中。

参数列表:
    /?                  显示此帮助消息。

示例:
    DIR | CLIP          将一份当前目录列表的副本放入 Windows 剪贴板。

    CLIP < README.TXT   将 readme.txt 的一份文本放入 Windows 剪贴板。
```
