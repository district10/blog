---
title: 什么是投影？
date: 2015-12-08
key-words:
tags:
    - math
    - linear algebra
    - projection
    - koan
...

什么是投影？
===========

投影是什么？简单地说是从一个线性空间中一个点（向量）映射到另一个线性空间的一个点。
最简单的例子是把 O~xy~ 平面上的点 (x, y) 投影到 x 轴变为 (x, 0)。

投影是一种变换，会导致信息丢失，这里 (x, y) &rarr; (x, 0) 就是“砍掉” y 轴方向上的信息的过程。
当然，“丢失”的特殊情况是“不丢失”，这针对的是 x 轴上面的点（怎么投影都不变，还在 x 轴）。

用线性代数来表达上面的情况，原向量为 $v = (x, y)$，投影是一种线性变换用 P = $\begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix}$
表示，投影后的向量为 $v' = P v = (x, 0)$。

让我们从平差引入投影的概念。有等式 $A x = b$。

如果变换矩阵 $A$ 是可逆方阵，$x$ 就十分好求，有唯一解：$x = A^{-1} b$，
但通常 A 都不可逆。

如果 A 形如躺着的长方形（如“---”），列数特别多，那么很有可能 x 有很多组解。因为 x 就是对 A 的列向量进行组合拼造一个 b，如果
A 的列向量很多，当然更容易拼出来。这个拼，就是

$$Ax =
\begin{bmatrix}  1 & 2 \\ 3 & 4 \end{bmatrix}
\begin{bmatrix} 5 \\ 6 \end{bmatrix} =
\begin{bmatrix} 1 \\ 3\end{bmatrix} \times 5 +
\begin{bmatrix} 2 \\ 4\end{bmatrix} \times 6 =
\begin{bmatrix} 5 \\ 15\end{bmatrix} +
\begin{bmatrix} 12 \\ 24\end{bmatrix} =
\begin{bmatrix} 17 \\ 39\end{bmatrix}$$

但通常 A 都不长这样。[^tmp-koan]

[^tmp-koan]: 长这样怎么平差？……

    多说点废话，刚才看到 Cramer's rule（克拉默法则）的 [维基页面](https://en.wikipedia.org/wiki/Cramer%27s_rule)，里面居然有个 Geometric interpretation，特别赞：

    Consider the linear system

    $$\left\{\begin{matrix}a_1x+b_1y&={\color{red}c_1}\\ a_2x + b_2y&= {\color{red}c_2}\end{matrix}\right.$$

    which in matrix format is

    $$\begin{bmatrix} a_1 & b_1 \\ a_2 & b_2 \end{bmatrix}\begin{bmatrix} x \\ y \end{bmatrix}=\begin{bmatrix} {\color{red}c_1} \\ {\color{red}c_2} \end{bmatrix}.$$

    Assume $a1b2 − b1a2$ nonzero. Then, with help of determinants $x$ and $y$ can be found with Cramer's rule as

    $$\begin{align}
    x &= \frac{\begin{vmatrix} {\color{red}{c_1}} & b_1 \\ {\color{red}{c_2}} & b_2 \end{vmatrix}}{\begin{vmatrix} a_1 & b_1 \\ a_2 & b_2 \end{vmatrix}} = { {\color{red}c_1}b_2 - b_1{\color{red}c_2} \over a_1b_2 - b_1a_2} \\
    y &= \frac{\begin{vmatrix} a_1 & {\color{red}{c_1}} \\ a_2 & {\color{red}{c_2}} \end{vmatrix}}{\begin{vmatrix} a_1 & b_1 \\ a_2 & b_2 \end{vmatrix}}  = { a_1{\color{red}c_2} - {\color{red}c_1}a_2 \over a_1b_2 - b_1a_2}
    \end{align}$$

    几何图解如下（这就是上面所说的“拼”）：

    ![](http://gnat.qiniudn.com/pics/cramer.jpg)

    其中

    #. （b）和（c）的面积（这里都说的阴影部分）一样
    #. （b）的面积比上（a）的面积为 $x_1$

    所以（c）的面积比上（a）面积的也是 $x_1$。再结合
    “The determinant of the matrix A is the signed volume of the image of the unit cube.”（见另一篇：[雅各比行列式和矩阵的秩](post-0015-jacobian-and-determinant.html)），就有

    $$x_1 = \frac{\operatorname{Area}(Shadow_3)}{\operatorname{Area}(Shadow_1)} = \frac{\begin{vmatrix} b_1 & a_{12} \\ b_2 & a_{22} \end{vmatrix}}{\begin{vmatrix} a_{11} & a_{12} \\ a_{21} & a_{22} \end{vmatrix}}$$

    &nbsp;

通常 A 的形状都像是竖起来的长方形（如“|”），这就需要用投影的方式求一个 $x$ 的最佳估计值 $\hat x$。这个 $\hat x$ 就是在
A 的行空间（Row Space）里的一个向量（通常都在），满足 $A\hat x$ 和 $b$ 的距离最近。注意注意，这里有两个线性空间了，
一个是 A 的行空间，我们把它记作 Row(A)；
一个是 A 的列空间，我们把它记作 Col(A)，里面有 $A\hat x$，可能有 $b$。
说“可能”，是因为 Ax = b 不一定有唯一解。没有唯一解的时候，$b$ 在一个和 Col(A) 同样维度的线性空间 A' 中，此时 A 是 A' 的子空间。

**投影就是在空间 Col(A) 中找到空间 A' 中的 $b$ 对应的 $A\hat x$ 的过程**。如果 A 可逆，Row(A) 和 Col(A) 是 isomorphism（同态），它们同时和 A' 也同态。直接求解，$\hat x$ 的值就是 $A^{-1}b$。^[当然，这里其实是真值 $x$ 而不是估计值 $\hat x$。（`h`at &rarr; `h`ypothesis）]
如果不可逆，就需要找到最小误差 $e = b - p$（这里 $p$ 是 $b$ 在 Col(A) 中投影，也就是 $A\hat x$）情况下的投影。
平差的任务就是找到这个投影，使得这个 error 值最小。

先从简单的二维空间的两个向量开始，如下图，向量 $\vec b$ 在向量 $\vec a$ 上的投影为向量 $\vec p$，误差为 $\vec e$。

![](http://gnat.qiniudn.com/pics/projection.png)

要想 $\vec e$ 最小，只要 $\vec e \perp \vec a$ 即可，即

$$\begin{align}
\vec a^T\vec e &= 0 \\
\vec a^T(\vec b - x \vec a) &= 0 \\
x\vec a^T\vec a &= \vec a^T \vec b \\
x &= \frac{\vec a^T b}{\vec a^T \vec a}
\end{align}
$$

最后这个系数为 $x = a^Tb / a^Ta$，$\vec b$ 在 $\vec a$ 上投影为 $\vec p = x\vec a = \frac{{\vec a}^T \vec b}{{\vec a}^T \vec a} \vec a$。

再多说下上面的图（虽然我画得有点丑）。原来那个 Ax = b 在这里是 $x\vec a = \vec b$，就是在直线 a 上找一条和向量 b 最近似的向量，x 是一个常系数，比如像 0.5，1.3 什么的。
Ax = b 有唯一解的情况对应到这里，就是 a 和 b 在一条直线上。但现在它们不在一条直线，所以我们要找“近似”，所以要投影。最后投影到
$\vec a$ 上的 $\vec p$ 即是我们要的。下面还有一幅图，里面的 e 和这里的 e 对应。那个 e 处在 A 的 nullspace 中，也和这里一样（二维空间中一个方向的 nullspace 就是它的垂直方向）。在最小二乘中，要求 e 最小，但 e 是矢量你知道，所以我们需要要一种 metric 来衡量这个 e 的“大小”，最后选用 e^^2^^，就成了最小“二乘”。这里 e 只有一个维度，所以只要长度最小即可，所以只能是做垂线。

从最简单二维空间回到平差，对应地，$a^T e = 0$ 变为 $A^T(b - A \hat x) = 0$，求得 $p = A \hat x = A(A^TA)^{-1}A^T b$。

这里的 $$A(A^TA)^{-1}A^T$$ 记作投影矩阵 $P$，有性质

#. $P^2 = P$
#. $P^T = P$

下面这张图很重要，能给你很大的 intuition。
假定 $A^{m\times n}$ 是数域 $F$ 上 m &times; n 维矩阵。$\vec b$ 在线性空间 $F^n$ 中，投影到了 Col(A) 为 $\vec p$，误差为 $\vec e$，
其中误差存在于 A 的 nullspace 中，平差的时候只要把这个 e 的各个分量平均分配给 nullspace 的各个维度即可，也就是最小二乘。

![](http://gnat.qiniudn.com/pics/projection2.png)

最后，投影是什么？

#. 投影是变换，可能存在信息丢失；
#. 我们希望投影能尽可能减少信息的丢失，这就有了最小二乘。

---

Refs

#. 我的笔记本（笔记本参考 MIT Linear Algebra 课程）。
