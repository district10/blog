---
title: 雅各比行列式和矩阵的秩
date: 2014-06-20
keywords:
    - jacobian
tags:
    - jacobian
    - linear algebra
    - math
...

雅各比行列式和矩阵的秩
======================

最近看了一些数学书，才发现一些之前没有理解的东西（深深觉得被大学教育坑了）。

一本 [英文书][math-book]，讲到 Determinant（矩阵的秩），画了个图

![determinant][det]

> The determinant of the matrix A is the **signed volume** of the image of the unit cube.

哎，早怎么没人告诉我？！这样理解了，你大概也明白了为什么：

$$\det{AB} = \det{A} \times \det{B} =  \det{B} \times \det{A}$$

这个直觉很有用，因为它说明了秩的大小的意义。外，秩等于各个特征值的乘积，且看这句话：

>   If the weights in this matrix are small (or, more formally, if the leading
>   eigenvalue of the weight matrix is smaller than 1.0), it can lead to a
>   situation called **vanishing gradients** where the gradient signal gets so
>   small that learning either becomes very slow or stops working altogether.

这句话其实是说矩阵的秩小于 1，多次用乘这个矩阵（对应一个操作）结果就是，向量趋向 0，
坍缩了！

Jacobian 则是导数概念的拓展，之前也不知道。

昨天跟 TJG 说，数学应该先给我们一个美感，让我们先有个形象的定性的理解，以后再谈
完整的严密的定义。但他不赞同。嗨，我觉得我实在是太对了。

P.S. 中文（数学）书，毁一生。

-   定义太多，不说来源。一页十个概念。
-   符号没法记忆。（不知道是什么单词）
-   喜欢弄得让人看不懂，写得无比简洁，严谨得让你想扇人。
-   可能由于国内出版社不懂 $\LaTeX$，排版稀烂。
-   废话，世界范围内牛逼的东西多，还是中国牛逼的东西多？还有，漂洋过海本身也是个
    筛选过程。（这也导致一些人觉得【外国就是好】之类的偏见）

[math-book]: http://book.douban.com/subject/1797658/
[det]: http://gnat-tang-shared-image.qiniudn.com/math/determinant.png

P.P.S. 关于数学符号：

-   `P`，$\pi$（<kbd>p</kbd>i）。可以表示投影（<kbd>P</kbd>rojection），概率
    （<kbd>P</kbd>robability），多项式（<kbd>P</kbd>olynomials）。
-   `Q`。可以表示比值（Quotient），二次齐次式（Quodraic）
-   类似的例子很多。对我这种记忆力不好的人，太必须了。

P.P.P.S. 偶然看到孟言的 [博文][mengyan-blog]：

>   对于线性代数的类似上述所提到的一些直觉性的问题，两年多来我断断续续地反复思
>   考了四、五次，为此阅读了好几本国内外线性代数、数值分析、代数和数学通论性书
>   籍，其中像前苏联的名著《数学：它的内容、方法和意义》、龚昇教授的《线性代数
>   五讲》、前面提到的 *Encounter with Mathematics（《数学概观》）*以及 *Thomas
>   A. Garrity* 的《数学拾遗》都给我很大的启发。

原来上文说的那本书中文版叫[《数学拾遗》][math-you-missed-zh]。初步扫完一遍，脑洞大开。

[mengyan-blog]: http://blog.163.com/jmun_math/blog/static/26769008200941683851930/
[math-you-missed-zh]: http://book.douban.com/subject/1256358/
[jacobian-determint]: https://en.wikipedia.org/wiki/Jacobian_matrix

相关概念：

-   simplex，单纯形

refs and see also

  - [Jacobian matrix and determinant][jacobian-determint]
  - [All the Mathematics You Missed （数学拾遗）][math-book]
