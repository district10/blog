% Pandoc 转成 Word
% TANG ZhiXiong
% 2015-10-23

Pandoc 转成 Word
================

Pandoc 是个通用的文件转换工具，支持扩展的 Markdown 以及 $\LaTeX$ 语法，
也就是说基本可以满足你的写作和写论文需求，还支持代码高亮，
所以你还可以用来写程序文档。

比较有意思的是维基百科，它用的是一种类 $\LaTeX$ 的标记语言，
而且复制的时候，可以比较完整地把公式源码拿到。如 [这个页面](https://en.wikipedia.org/wiki/Pythagorean_theorem#cite_ref-Macdonald_37-0) 的这部分：

![euclidean distance](http://gnat.qiniudn.com/pandoc-demo/01.png)

复制下来的内容是这样：

![copied text](http://gnat.qiniudn.com/pandoc-demo/00.png)

只要稍微修改成 Pandoc 接受的 Markdown 格式：

```markdown
# Euclidean distance in various coordinate systems

The distance formula in Cartesian coordinates is derived from the Pythagorean theorem.[^37] If $(x1, y1)$ and $(x2, y2)$ are points in the plane, then the distance between them, also called the Euclidean distance, is given by

$$\sqrt{(x_1-x_2)^2 + (y_1-y_2)^2}.$$

More generally, in Euclidean n-space, the Euclidean distance between two points, $A\,=\,(a_1,a_2,\dots,a_n)$ and $B\,=\,(b_1,b_2,\dots,b_n)$, is defined, by generalization of the Pythagorean theorem, as:

$$\sqrt{(a_1-b_1)^2 + (a_2-b_2)^2 + \cdots + (a_n-b_n)^2} = \sqrt{\sum_{i=1}^n (a_i-b_i)^2}.$$

[^37]: Jon Orwant, Jarkko Hietaniemi, John Macdonald (1999). "Euclidean distance". Mastering algorithms with Perl. O'Reilly Media, Inc. p. 426. ISBN 1-56592-398-7.
```

为了让你看明白我改了哪些，这是 diff 的结果：

![diff](http://gnat.qiniudn.com/pandoc-demo/02diff.png)

把上面修改后的文件命名为 `demo.md`，调用 pandoc 即可转化为 MS Word 的 `docx` 文件：

![pandoc 大法好](http://gnat.qiniudn.com/pandoc-demo/02.png)

得到的文件一定让你眼前一亮：

![docx output](http://gnat.qiniudn.com/pandoc-demo/03.png)

行内公式和整行公式都很完美。除此之外，你还应该注意到：

![公式可编辑，你可以把鼠标移过去直接修改](http://gnat.qiniudn.com/pandoc-demo/04.png)

![脚注不仅在脚注的位置，而且还可悬停显示](http://gnat.qiniudn.com/pandoc-demo/05.png)

除了 $\LaTeX$ 公式，pandoc 还可以高亮各种编程语言的代码。

---

demo 源文件和转化后的 docx 文件：

* <http://gnat.qiniudn.com/pandoc-demo/demo.md>
* <http://gnat.qiniudn.com/pandoc-demo/demo.docx>

预览：

![whole docx](http://gnat.qiniudn.com/pandoc-demo/06.png)