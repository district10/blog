---
title: 遵守规则还是符合逻辑？
date: 2014-09-03
key-words:
tags:
    - rule
    - hack
    - type setting
...

遵守规则还是符合逻辑？
=====================

规则里可能有逻辑
----------------

从小到大上过无数节语文课，里面的 `“”` 符号总是令我费解。问过老师
也没有什么靠谱的解释。后来翻到一个网页，正好解答了我多年的疑惑。

### Q

> The answer to this question clearly explains the standard rule that
> when you have multiple quoted paragraphs,
> **each** new paragraph starts with an opening quotation mark,
> **but only the final** quoted paragraph has a closing quotation mark at its end.
>
> This [Wikipedia article on Quotation Marks](http://en.wikipedia.org/wiki/Quotation_mark) agrees:
>
>> Quotation marks are used for multiple-paragraph quotations
>> in some cases, especially in narratives.
>> The convention in English is to give opening quotation marks
>> to the first and each subsequent paragraph,
>> using closing quotation marks only for the final paragraph of the quotation
>
> However, neither explains **why** this is the standard practice.
> What good does it do?
> What is it trying to avoid?
> What harm would occur if it were ignored and
> people put both opening and closing quotation marks
> on each adjacent quoted paragraph?

简单地中文解释：
为什么用双引号引用的时候，在每个段落开头用`“`，
但是在几个段落最后才用 `”`？

为什么是

```plain
他说：“哔哔哔@#￥%……
哔哔哔……哔哔哔……哔哔哔告一段落。

“继续哔哔哔……哔哔哔完成。”
```

而不是

```plain
他说：“哔哔哔@#￥%……
哔哔哔……哔哔哔……哔哔哔告一段落。”（这里多了一个引号）

“继续哔哔哔……哔哔哔完成。”
```

### A

下面是引用的答案：

“That seems like an odd way to use punctuation,” Tom said. “What harm would there be in using quotation marks at the end of every paragraph?”

“Oh, that’s not all that complicated,” J.R. answered. “If you closed quotes at the end of every paragraph, then you would need to reidentify the speaker with every subsequent paragraph.

“Say a narrative was describing two or three people engaged in a lengthy conversation. If you closed the quotation marks in the previous paragraph, then a reader wouldn’t be able to easily tell if the previous speaker was extending his point, or if someone else in the room had picked up the conversation. By leaving the previous paragraph’s quote unclosed, the reader knows that the previous speaker is still the one talking.”

“Oh, that makes sense. Thanks!”

一个例子：

~~~
他站起来，对她说

“很好”

“但是”
~~~
（这样无法区分是谁说的“但是”）


~~~
他站起来，对她说

“很好。

“但是”
~~~
（这样你就知道，分段是停顿，他还没说完）

**规则里有逻辑，或许要仔细体会才能发现其中的奥妙。**

改变不合逻辑的规则
------------------

文法规则里还有一个有意思的地方，那就是规范认为 `他说“你去死吧。”` 是对的。而 `他说“你去死吧”。` 是错的。[^mychoice]
我记得这和早期字体的宽度（typesetting）有关，大概是前种方式在打字机上
效果好点，后一种则很糟糕，这个规则一直遗留到现在，还传到了各个国家。哪怕我们
用的中文标点完全跟这不着边。

[^mychoice]: 我更倾向于使用 `他说“你去死吧。”。`。

一些黑客则认为这很愚蠢[^hack-writing-style]，所以他们都不守规矩地用第二种，这也是
所有 Linux man page 等文档的标准。

我们应该选第一种方式吗？按照文法的规范，是。按照逻辑和 clearity 的需求，否。

**改变规则里不合逻辑和自身需求的地方，是进步。**

[^hack-writing-style]: 参考 Eric Raymond 的 [Hacker Dictionary: Hacker Writing Style](http://www.eps.mcgill.ca/jargon/html/Hacker-Writing-Style.html)：

    > Consider, for example, a sentence in a vi tutorial that looks like this:
    >
    >> Then delete a line from the file by typing “dd”.
    >
    > Standard usage would make this
    >
    >> Then delete a line from the file by typing “dd.”
    >
    > but that would be very bad — because the reader would be prone to type the string d-d-dot,
    > and it happens that in vi, dot repeats the last command accepted. The net result would be to delete two lines!

---

Refs

#. [punctuation - Why does the multi-paragraph quotation rule exist? - English Language & Usage Stack Exchange](http://english.stackexchange.com/questions/96608/why-does-the-multi-paragraph-quotation-rule-exist)
