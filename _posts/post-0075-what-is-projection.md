% 什么是投影？
% TANG ZhiXiong
% 2015-12-08

什么是投影？
===========

<!--
:%s/\s\+$//
-->

今天矩阵论讲的是广义逆，也就是伪逆。一想到伪逆我就觉得我们院的教材特别垃圾，
测量平差的最最最简单的最小二乘就是用伪逆来表达，那本教材对此却一点不提及。
与此相关，今天我想扯的是投影。

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

但通常 A 都不长这样（长这样怎么平差？……）

通常 A 的形状都像是竖起来的长方形（如“|”），这就需要用投影的方式求一个 $x$ 的最佳估计值 $\hat x$。这个 $\hat x$ 就是在
A 的列空间（Column Space）里的一个向量，满足 $A\hat x$ 和 $b$ 的距离最近。注意注意，这里有两个线性空间了，
一个是 A 的列空间（里面有 $\hat x$），我们把它记作 Col(A)，
一个是 A 的行空间（里面有 $b$），我们把它记作 Row(A)。

投影就是把 Row(A) 中的 $b$ 对应的 Col(A) 中的 $\hat x$ 找到。如果 A 可逆，Row(A) 和 Col(A) 是 isomorphism（同态），
那 $\hat x$^[当然，这里其实是真值 $x$ 而不是估计值 $\hat x$。（`h`at &rarr; `h`ypothesis）] 的值就是 $A^{-1}b$，直接求解。
如果不可逆，就需要找到最小误差 $e = b - p$（这里 $p$ 是 Row(A) 中 $b$ 在 Col(A) 中投影）情况下的投影。
平差的任务就是找到这个投影，使得这个 error 值最小。

先从简单的二维空间的两个向量开始，如下图，向量 $\vec b$ 在向量 $\vec a$ 上的投影为向量 $\vec p$，误差为 $\vec e$。

![](http://gnat.qiniudn.com/pics/projection.png)

要想 $\vec e$ 最小，只要 $\vec e \perp \vec a$ 即可，即

$$\begin{align}
\vec a^T(\vec b - x \vec a) &= 0 \\
x\vec a^T\vec a &= \vec a^T \vec b \\
x &= \frac{\vec a^T b}{\vec a^T \vec a}
\end{align}
$$

最后这个系数为 $x = a^Tb / a^Ta$，$\vec b$ 在 $\vec a$ 上投影为 $\vec p = x\vec a = \frac{{\vec a}^T \vec b}{{\vec a}^T \vec a} \vec a$。

从最简单二维空间回到平差，对应地，$a^T e = 0$ 变为 $Ax = b$，类似得到 $A^T(b - A \hat x) = 0$，求得 $p = A \hat x = A(A^TA)^{-1}A^T b$。

这里的 $$A(A^TA)^{-1}A^T$$ 记作投影矩阵 $P$，有性质

#. $P^2 = P$
#. $P^T = P$

下面这张图很重要，能给你很大的 intuitiion，其中 $\vec b$ 在 Row(A) 中，投影到了 Row(A) 为 $\vec p$，误差为 $\vec e$，
其中误差存在于 A 的 nullspace 中，平差的时候只要把这个 e 的各个分量平均分配给 nullspace 的各个维度即可，也就是最小二乘。

![](http://gnat.qiniudn.com/pics/projection2.png)

最后，投影是什么？

#. 投影是变换，可能存在信息丢失；
#. 我们希望投影能尽可能减少信息的丢失，这就有了最小二乘。

---

Refs

#. 我的笔记本（笔记本参考 MIT Linear Algebra 课程）。
