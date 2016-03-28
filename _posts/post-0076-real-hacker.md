---
title: 膜拜大神
date: 2015-12-13
key-words:
tags:
    - hacker
    - pandoc
    - type setting
...

膜拜大神
========

用 Pandoc 的时候感到其一个地方不爽，于是去 Pandoc 的 GitHub 上提了一个 Issue：
[Text Layout Requirements When Encountered East Asian Languages · Issue #2586 · jgm/pandoc](https://github.com/jgm/pandoc/issues/2586)

<div class="tzx-paste"><small>

> 更好地混排东亚文字和西文 | Text Layout Requirements When Encountered East Asian Languages

Pandoc 确实有这么一个扩展： | Pandoc does have a relevant extension:

`ignore_line_breaks`

:   Causes newlines within a paragraph to be ignored, rather than being treated
    as spaces or as hard line breaks. This option is intended for use with East
    Asian languages where spaces are not used between words, but text is
    divided into lines for readability.

`中`：但这个扩展实际不可用，因为当我用东亚文字的时候我总也会用到英文。这样一来，
如果不加这个扩展，合并行的时候东亚文字（比如中文）会多出很多空格，不美观；
如果加入这个扩展，合并行的时候西文（如英文）会混作一团，不仅不美观，内容都变了。

`En`: But this extension cannot work as expected, for we also use some English when
writing in East Asian languages. In that case, if we not turn on this extension,
Asian character lines will be joined together with extra spaces, pretty ugly;
But if turning on this extension, Western character lines will join into
a mess (e.g. several pairs of words turned into one).

For example, there is a demo file `demo.md` with content:

```plain
## Case 1: only East Asian Characters

我能吞下玻璃，
而不伤身体。我能吞下玻璃
而不伤身体。

## Case 2: Only Western Characters

The quick brown fox,
jumps over the lazy dog. The quick brown fox
jumps over the lazy dog.

## Case 3: Blended

我能吞下玻璃而不伤身体，
the quick brown fox jumps over the lazy dog.

The quick brown fox jumps over the lazy dog,
我能吞下玻璃而不伤身体。

中文和
English 混合排版。

English blended with
中文.
```

Using `pandoc` to convert it to html:

```bash
pandoc -f markdown -s -S demo.md -o demo-ext-off.html
pandoc -f markdown+ignore_line_breaks -s -S demo.md -o demo-ext-on.html
```

Without extension: (red marks point out pitfalls, I highlighted spaces in browser simply with Control+F)

![](http://gnat.qiniudn.com/github/a.png)

With extension:

![](http://gnat.qiniudn.com/github/b.png)

I think `Pandoc` should be more intelligent so as to only insert space

1. between two western chars, e.g. `apple\n` + `pie` &rarr; `apple pie`,
2. between asian char and western char, e.g. `豆瓣\n` + `FM` &rarr; `豆瓣 FM`

and no extra spaces in others cases.

---

Or make it more simply:

Always add a space when join lines **except** when the previous line ends with
an East Asia Character and this line starts with another.

---

Pandoc 作者 [jgm (John MacFarlane)](https://github.com/jgm) 的回复：

> One approach would be to implement this option using an AST filter (internal
> to pandoc), instead of in the Markdown parser. The AST contains Space
> elements for spaces and soft line breaks (though it doesn't currently
> distinguish between the two---that may change soon). The filter could look
> for and remove Space elements when they occur between two Chinese characters.
> Note that (unlike the current approach) this would also affect line-internal
> spaces -- they would be collapsed too. Let me know if that's not desirable.

> Are spaces every used between two Chinese characters, or would it be safe for
> pandoc to avoid this by default?

我：

> Better not "affect line-internal spaces".
>
> Spaces are not ever used between two Chinese characters.
>
> Of course there would be someone in some cases to use "注 意 ！ ！ " (A T T E
> N T I O N ! ! !), but that's not normal. And I recommend they use fullwidth
> space (*i.e.* "　") instead of typical space (*i.e.* " "): `注 意 ！ ！`
> &rarr; `注　意　！　！ `.
>
> So it would be safe for pandoc to avoid this by default.

> For your information, adding a space between Chinese character and western
> character is not adopted by everyone, its more like a common rule for those
> who care typesetting. (see
> <https://github.com/sparanoid/chinese-copywriting-guidelines/blob/master/README.en.md#place-one-space-before--after-english-words>).
>
> But this: `fox\n` + `jumps` &rarr; `foxjumps` is bad, should be agreed by
> everyone.

额……我就回去睡了个觉，jgm 就把这个问题弄好了……：[Implemented `east_asian_line_breaks` extension. · jgm/pandoc@44120ea](https://github.com/jgm/pandoc/commit/44120ea7165546152af88fd442c52ab0f201052e#diff-c47c7c7383225ab55ff591cb59c41e6bR3227)

</small></div>

大神的 commit message 里写道：

> **Implemented `east_asian_line_breaks` extension.**
>
> Text.Pandoc.Options: Added `Ext_east_asian_line_breaks` constructor to
> `Extension` (API change).
>
> This extension is like `ignore_line_breaks`, but smarter -- it
> only ignores line breaks between two East Asian wide characters.
> This makes it better suited for writing with a mix of East Asian
> and non-East Asian scripts.

> Closes [#2586](https://github.com/jgm/pandoc/issues/2586).

大神修改后的代码：

```haskell
parseMarkdown :: MarkdownParser Pandoc
parseMarkdown = do
  -- markdown allows raw HTML
  updateState $ \state -> state { stateOptions =
                let oldOpts = stateOptions state in
                    oldOpts{ readerParseRaw = True } }
  optional titleBlock
  blocks <- parseBlocks
  st <- getState
  let meta = runF (stateMeta' st) st
  let Pandoc _ bs = B.doc $ runF blocks st
  eastAsianLineBreaks <- option False $
                    True <$ guardEnabled Ext_east_asian_line_breaks
  return $ (if eastAsianLineBreaks
               then bottomUp softBreakFilter
               else id) $ Pandoc meta bs

softBreakFilter :: [Inline] -> [Inline]
softBreakFilter (x:SoftBreak:y:zs) =
  case (stringify x, stringify y) of
        (xs@(_:_), (c:_))
          | charWidth (last xs) == 2 && charWidth c == 2 -> x:y:zs
        _ -> x:SoftBreak:y:zs
softBreakFilter xs = xs
```

我现在是五体投地！

P.S. Emacs Org-mode 导出 HTML 的时候也有这个问题，Coldnew 给出了修正代码：[^pangu-spacing]

<div style="font-size:80%">
```lisp
(defadvice org-html-paragraph (before org-html-paragraph-advice
                                      (paragraph contents info) activate)
  "Join consecutive Chinese lines into a single long line without
unwanted space when exporting org-mode to html."
  (let* ((origin-contents (ad-get-arg 1))
         (fix-regexp "[[:multibyte:]]")
         (fixed-contents
          (replace-regexp-in-string
           (concat
            "\\(" fix-regexp "\\) *\n *\\(" fix-regexp "\\)") "\\1\\2" origin-contents)))

    (ad-set-arg 1 fixed-contents)))
```
</div>

见：[去除 org-mode 輸出 HTML 時產生多餘的空格 | coldnew's blog](http://coldnew.github.io/blog/2013/12-17_03349/)。

[^pangu-spacing]: Coldnew 还是 pangu-spacing 的作者。
    大赞我处女座。

    ![pangu-spacing 效果](http://whudoc.qiniudn.com/pangu-spacing.gif)

<!--
我要好好学习科学文化知识，像 jgm 一样精通数学和计算机。
-->
