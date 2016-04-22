---
title: 小波变换在图像处理分析中的应用
date: 2015-12-14
key-words:
tags:
    - wavelet
    - image processing
...

小波变换在图像处理分析中的应用
==============================

<div class="tzx-drawer" shy>
这是课程作业（[PDF 版本](http://whudoc.qiniudn.com/tzx-paperwork-wavelet.pdf)，[$\LaTeX$ 源码](http://whudoc.qiniudn.com/paperwork-wavelet.7z)）

:   LaTeX 模板来自 [武汉大学黄正华老师](http://aff.whu.edu.cn/huangzh/)。

    注意：PDF 中有动画内容需要用“高级”点的 PDF 阅读器查看（SumatraPDF 不行）。

    编译说明

    #. 要先安装 [Adobe fonts](http://whudoc.qiniudn.com/2016/adobe-fonts.7z) 字体；
    #. 再从 [CTeX](http://www.ctex.org/CTeXDownload) 下载完全 LaTeX 安装包；
    #. 再下载安装 [GitBash](http://7xjdjw.com1.z0.glb.clouddn.com/Git-1.9.5-preview20150319.exe)
       （调用编译脚本）和 [Pandoc](http://7xjdjw.com1.z0.glb.clouddn.com/pandoc-1.13.2-windows.msi)
       （Markdown 转换为 TeX）；
    #. 双击 `_pdf.sh`{.bash} 即可编译出 PDF。

    | TANG ZhiXiong 唐志雄
    | 2016 年 01 月 17 日
    | 武汉大学遥感信息工程学院
</div>

## 历史的小波

小波分析（wavelet analysis）或小波转换（wavelet transform）是指用有限长或快速衰
减的、称为母小波（mother wavelet）的震荡波形来表示信号的方法。该波形被缩放和平移以匹
配输入的信号，是一种强大通用的信号处理方法。

但说到小波变换，不得不先讲讲傅立叶变换。

### 傅立叶变换

傅立叶变换能够将信号在空间域和频率域之间变换，在物理学和工程学中有许多应用。
因其基本思想首先由法国学者约瑟夫·傅立叶（Joseph Fourier）系统地提出，所以以其名字来命名以示纪念。
这个基本思想看上去很简单，却构建起来一个坚实的傅立叶分析理论：一些函数能够用无限个简谐波的和来
表示^[Some functions could be written as an infinite sum of harmonics.]。

经过傅立叶变换而生成的函数 ${\hat {f}}$ 称作原函数 $f$ 的傅立叶变换，亦或其频谱。
在许多情况下，傅立叶变换是可逆的，即可通过 ${\hat {f}}$ 得到其原函数 $f$。通常情况下，
$f$ 是实数函数，而 ${\hat {f}}$ 则是复数函数，用一个复数来表示振幅和相位。

![](http://gnat.qiniudn.com/fourier3.gif)

需要注意的是 N 个实数经过傅立叶变换变成了 N 个复数，但信息量并没有增多，
因为这些复数里

#. 第一个复数和最后一个复数分别只有实部和虚部
#. 其它的复数存在两两共轭关系

所以这 N 个复数的实部和虚部共 2N 个实数其实净数量依旧是 N。

定义

:   傅立叶变换将可积函数 f: $\mathbb {R} \rightarrow \mathbb {C}$ 表示成复指数函数的积分或级数形式：

    $${\hat {f}}(\xi )=\int _{-\infty }^{\infty }f(x)\ e^{-2\pi ix\xi }\,dx$$，$\xi$ 为任意实数。

![](http://gnat.qiniudn.com/fourier1.jpg)

傅立叶变换一般时序信号处理，图像压缩、去噪等方面有广泛应用，都因为它具有一些良好的数学意义上的性质。

线性性质

:   两函数之和的傅立叶变换等于各自变换之和。数学描述是：若函数 $f\left(x\right)$ 和 $g\left(x\right)$ 的
    傅立叶变换 ${\mathcal {F}}[f]$ 和 ${\mathcal {F}}[g]$ 都存在，$\alpha$ 和 $\beta$ 为任意常系数，则
    ${\mathcal {F}}[\alpha f+\beta g]=\alpha {\mathcal {F}}[f]+\beta {\mathcal {F}}[g]$；
    傅立叶变换算符 ${\mathcal {F}}$ 可经归一化成为幺正算符。

平移性质

:   若函数 $f\left(x\right)$ 存在傅立叶变换，则对任意实数 $\omega _{0}$，函数 $f(x)e^{i\omega _{0}x}$ 也存在傅立叶变换，
    且有 ${\mathcal {F}}[f(x)e^{i\omega _{0}x}]=F(\omega -\omega _{0})$。式中花体 ${\mathcal {F}}$ 是傅立叶变换的作用算子，
    平体 $F$ 表示变换的结果（复函数），$e$ 为自然对数的底，$i$ 为虚数单位 ${\sqrt {-1}}$。

微分关系

:   若函数 $f\left(x\right)$ 当 $|x|\rightarrow \infty$ 时的极限为 0，而其导函数 $f'(x)$ 的傅立叶变换存在，
    则有 ${\mathcal {F}}[f'(x)]=i\omega {\mathcal {F}}[f(x)]$，即导函数的傅立叶变换等于原函数的傅立叶变换乘以因子 $i\omega$。
    更一般地，若 $f(\pm \infty )=f'(\pm \infty )=\ldots =f^{(k-1)}(\pm \infty )=0$，且 ${\mathcal {F}}[f^{(k)}(x)]$ 存在，
    则 ${\mathcal {F}}[f^{(k)}(x)]=(i\omega )^{k}{\mathcal {F}}[f]$，即 k 阶导数的傅立叶变换等于原函数的傅立叶变换乘以因子 $(i\omega )^{k}$。

卷积特性

:   若函数 $f\left(x\right)$ 及 $g\left(x\right)$ 都在 $(-\infty ,+\infty )$ 上绝对可积，
    则卷积函数 $f*g=\int _{-\infty }^{+\infty }f(x-\xi )g(\xi )d\xi$（或者 $f*g=\int _{-\infty }^{+\infty }f(\xi )g(x-\xi )d\xi$）
    的傅立叶变换存在，且 ${\mathcal {F}}[f*g]={\mathcal {F}}[f]\cdot {\mathcal {F}}[g]$。
    卷积性质的逆形式为 ${\mathcal {F}}^{-1}[F(\omega )*G(\omega )]=2\pi {\mathcal {F}}^{-1}[F(\omega )]\cdot {\mathcal {F}}^{-1}[G(\omega )]$，
    即两个函数卷积的傅立叶逆变换等于它们各自的傅立叶逆变换的乘积乘以 $2\pi$。

帕塞瓦尔定理

:   若函数 $f\left(x\right)$ 可积且平方可积，则 $\int _{-\infty }^{+\infty }f^{2}(x)dx={\frac {1}{2\pi }}\int _{-\infty }^{+\infty }|F(\omega )|^{2}d\omega$。
    其中 $F\left(\omega \right)$ 是 $f\left(x\right)$ 的傅立叶变换。更一般化而言，若函数 $f\left(x\right)$ 和 $g\left(x\right)$ 皆为平方可积方程，
    则 $\int _{-\infty }^{+\infty }f(x)g^{*}(x)dx={\frac {1}{2\pi }}\int _{-\infty }^{+\infty }F(\omega )G^{*}(\omega )d\omega$。
    其中 $F\left(\omega \right)$ 和 $G\left(\omega \right)$ 分别是 $f\left(x\right)$ 和 $g\left(x\right)$ 的傅立叶变换, $^*$ 代表复共轭。

![](http://gnat.qiniudn.com/fourier4.gif)

在计算机领域，还有一种快速傅立叶变换（Fast Fourier Transform，FFT），是计算序列
的离散傅立叶变换（DFT）或其逆变换的一种算法。傅立叶分析将信号从空间域转换到频率
域的表示或者逆过来转换。FFT 会通过把 DFT 矩阵分解为稀疏（大多为零）因子之积来快
速计算此类变换。因此，它能够将计算 DFT 的复杂度从只用 DFT 定义计算需要的
$O(n^{2})$，降低到 $O(n\log n)$，其中 $n$ 为数据大小。快速傅立叶变换广泛的应用
于工程、科学和数学领域。
早在 1805 年 FFT 就已被推导出来，但直到 1965 年得到才普及。
1994 年吉尔伯特·斯特朗把 FFT 描述为“我们一生中最重要的数值算法”，它还
被 IEEE 科学与工程计算期刊列入 20 世纪十大算法。

长期以来，傅立叶分析一直被认为是最完美的数学理论和最实用的方法之一。知道小波变
换出现人门才逐步发现傅立叶变换除了运算速度慢之外别的不足之处。

### 小波变换

傅立叶分析能够获取信号的主要成分，但正对的是信号的整个频谱，
难以获得信号的局部特性，特别是对于突变信号和非平稳信号难以获得希望的结果。
因为傅立叶变换从本质上是线性空间中一种特殊的基变换，能够有效地保持信号的主要成分，
能够获取一段信号总体上包含哪些频率的成分。
但是对各成分出现的时刻并无所知。因此时域相差很大的两个信号，可能频谱图一样。
这导致了对非平稳过程，傅立叶变换有局限性。

可见，傅立叶变换处理非平稳信号有天生缺陷。

然而现实中的大多数信号都是非平稳，平稳的信号通常都是人造的 artifact。
开始人们通过把这个线性空间分割的方式，将时间信息编码在信号中，这就
产生了短时傅立叶变换（Short-time Fourier Transform，STFT），
把整个时域过程分解成无数个等长的小过程，每个小过程近似平稳，再傅立叶变换，就知
道在哪个时间点上出现了什么频率了。但这个方法不得不面对窗口大小选择的麻烦。
窄窗口时间分辨率高、频率分辨率低，宽窗口时间分辨率低、频率分辨率高，对于时变的
非稳态信号，高频适合小窗口，低频适合大窗口。然而 STFT 的窗口是固定的，在一次 STFT
中宽度不会变化，所以 STFT 还是无法满足非稳态信号变化的频率的需求。如图 \ref{stftwtpic}。

![SFTF 怎么选择窗口都比不上小波分析“天然”的窗口](http://gnat.qiniudn.com/stft-wt.jpg)

于是小波变换出现了，
与 STFT 给信号加窗，分段做 FFT 不同的是，小波直接把傅立叶变换的基从
无限长的三角函数基换成了有限长的会衰减的小波基。
这样不仅能够获取频率，还可以定位到时间了。
我们简直可以说，这是把地理学第一定律（Tobler's First Law）^[任何事物都与其他事物相联系，但邻近的事物比较远事物联系更为紧密。]
的思想应用到傅立叶变换，于是就有了小波变换。

可以看到，小波变换的出现，有效地补充了傅立叶变换的不足之处。下一章将讲述不同小波变换，以及各自的性质，分析小波变换这一系列
信号处理方法各自的优缺点。
小波变换分成两个大类：离散小波变换（DWT） 和连续小波变换（CWT）。两者的主要区别
在于，连续变换在所有可能的缩放和平移上操作，而离散变换採用所有缩放和平移值的特
定子集。

最后再补充一下小波变换的发展历史。

第一个小波转换是 Alfred Haar 在 1909 年提出来的哈尔小波（Haar wavelet），但是当
时小波的概念并不存在，直到 1981 年地球物理学家 Jean Morlet 才提出小波的概念，且
小波转换变成分析地震波的新工具。

之后在 1984 年 Morlet 和 物理学家 Alex Grossman 发明了“wavelet”一词，并且对于连
续小波转换和其各种应用有比较详尽的数学研究。

在 1985 年之前，大家所熟知的正交小波（orthogonal wavelet）只有哈尔小波，然而数
学家 Yves Meyer 在 1985 年建立了第二种正交小波，即 Meyer小波。接著越来越多人投
入这个领域并在 1987 年法国办了第一届国际研讨会。

1988 年, Stephane Mallat 和 Meyer 提出了多解析度的概念，同年，英格丽·多贝西（
Ingrid Daubechies）建立了紧支撑正交小波（compact support orthogonal wavelet），隔
年（1989）Mallat 提出了快速小波转换。

接着有了快速小波转换 FWT（1989）、离散小波变换 DWT、方向小波转换，
然后有了应用广泛的 JPEG2000。可见，随著快速小波转换的发展，许多小波转换的应用得
以实现。小波变换已经深入到生活的方方面面。

## 数学的小波

小波一词由 Morlet 和 Grossman 在 1980 年代早期提出。他们用的是法语词 ondelette
（"小波"）。后来在英语里，“onde”被改为“wave”而成了“wavelet”，这个词生动地说明了
小波变换和傅立叶变换的不同：小波变换的基从傅立叶的无限长的三角函数基换成了有限
长的会衰减的小波基。

### 小波变换相对傅立叶变换的优点和进步

我们把两者的公式放在一起对比一下：

变换（Transformation） | 公式（Representation） | 输入（Input）
傅立叶变换 & $f(\xi )=\int _{-\infty }^{\infty }f(x)e^{-2\pi ix\xi }\,dx$ & $\xi$: frequency
小波变换 & $X(a,b)={\frac {1}{\sqrt {a}}}\int _{-\infty }^{\infty }{\overline {\Psi \left({\frac {t-b}{a}}\right)}}x(t)\,dt$ &

从公式可以看出，不同于傅立叶变换，变量只有频率 $ξ$，
小波变换有两个变量：尺度（scaling）$a$ 和平移量（时间偏移）$b$。尺度 $a$ 控制小波
函数的伸缩，平移量 $b$ 控制小波函数的平移。尺度 $a$ 就对应于频率（反比），平移
量 $b$ 就对应于时间。

当伸缩、平移到这么一种重合情况时，也会相乘得到一个大的值。这时候和傅立叶变换不同的是，这不仅可以知道信号有这样频率的成分，而且知道它在时域上存在的具体位置。
而当我们在每个尺度下都平移着和信号乘过一遍后，我们就知道信号在每个位置都包含哪些频率成分。
可以得出结论：傅立叶变换能得到一个频谱；而小波变换可以得到一个时频谱！

![小波变换可以“编码”信号的时间点](http://gnat.qiniudn.com/wavelet1.png)

小波还有一些好处：

1. 可以避免傅立叶变换存在吉布斯效应（Gibbs effect），如图 \ref{fourierpic5}

![Gibbs effect](http://gnat.qiniudn.com/fourier5.png)

2. 小波可以实现正交化，短时傅立叶变换不能^[MIT 的 Gilbert Strang 在其网络公开课 Linear Algebra 上曾用线性代数基底概念讲过傅立叶变换。]。

### 小波变换的性质

小波变换分成两个大类：离散小波变换（DWT） 和连续小波转换（CWT）。两者的主要区别
在于，连续变换在所有可能的缩放和平移上操作，而离散变换採用所有缩放和平移值的特
定子集。

#### 哈尔小波变换

哈尔小波转换是于 1909 年由 Alfréd Haar 所提出，是小波转换（Wavelet transform）中最简单的一种转换，也是最早提出的小波转换。他是多贝西小波的于 $N=2$ 的特例，可称之为 `D2`。

##### 数学表达

哈尔小波的母小波（mother wavelet）可表示为：

$$\psi(t) = \begin{cases}1 \quad & 0 \leq t < 1/2,\\ -1 & 1/2 \leq t < 1,\\0 &\mbox{otherwise.}\end{cases}$$

且对应的尺度函数（scaling function）可表示为：

$$\phi(t) = \begin{cases}1 \quad & 0 \leq t < 1,\\0 &\mbox{otherwise.}\end{cases}$$

其滤波器（filter）$h[n]$ 被定义为

$$h[n] = : \begin{cases}\frac{1}{\sqrt{2}}&\mbox{if n = 0,1}\\0 &\mbox{otherwise}\end{cases}$$

当 $n = 0$ 与 $n = 1$ 时，有两个非零系数，因此，我们可以将它写成

\begin{align}
\frac{1}{\sqrt{2}}\psi(\left( \frac{t}{2} \right)) & = \sum_{n=-\infty}^{\infty} (-1)^{1-n} h[1-n] \phi(t-n) \nonumber \\
  & = \frac{1}{\sqrt{2}}(\phi(t-1) - \phi(t)) \nonumber
\end{align}

在所有正交性（orthonormal）小波转换中哈尔小波转换（Haar wavelet）是最简单的一种
转换，但它并不适合用于较为平滑的函数，因为它只有一个消失矩（Vanishing Moment）。

##### 性质

哈尔小波具有如下的特性：

#. 任一函数都可由 $\phi(t), \phi(2t),\phi(4t),\dots,\phi(2^k t),\dots$ 及它们的位移函数组成；
#. 一函数都可由常函数，$\psi(t),\psi(2t),\psi(4t),\dots,\psi(2^k t),\dots$ 及它们的位移函数组成；
#. 正交性（Orthogonal）

    即满足：

    $$\int_{-\infty}^{\infty}2^m\psi(2^{m_1}t-n_1)\psi(2^mt-n)\, dt=\delta(m,m_1)\delta(n,n_1)$$

    其中 $\delta(i,j) = \begin{cases}1&i = j,\\0&\mbox{i≠j.}\end{cases}$。

#. 不同宽度的（不同 $m$）的 wavelet/scaling functions 之间会有一个关系

    \begin{align}
    \phi(t) &=\phi(2t)+\phi(2t-1) \nonumber \\
    \phi(t-n) &=\phi(2t-2n)+\phi(2t-2n-1) \phi(2^{m}t-n) \nonumber \\
    &=\phi(2^{m+1}t-2n)+\phi(2^{m+1}t-2n-1) \nonumber \\
    \psi(t) &=\phi(2t)-\phi(2t-1) \nonumber \\
    \psi(t-n) &=\phi(2t-n)-\phi(2t-2n-1) \psi(2^{m}t-n) \nonumber \\
    &=\phi(2^{m+1}t-n)-\phi(2^{m+1}t-2n-1) \nonumber \\
    \end{align}

#### 连续小波变换

##### 数学表达

以数学来说，小波变换是一个有连续时间性质且可积分的函数 $x(t)$，可以用下面的积分来表示

$$X_w(a,b)=\frac{1}{\sqrt{|(b)|}} \int_{-\infty}^{\infty} x(t)\psi(\frac{t-a}{b})\, dt$$

$\psi(t)$ 为小波母函数（Mother Wavelet），一个在时间领域和频率领域都有连续性质的函数，
$a$ 为平移位置而 $b$ 为缩放因子。小波母函数的用途在于提供一个可以产生子波（Daughter Wavelet）的根源函数，
而子波是小波母函数平移过或缩放过（或两者都有）的版本。如果要将已知且存在的讯号 $x(t)$ 恢复原来的形式，
我们可以用反转连续小波转换（Inverse Continuous Wavelet Transform）

$$x(t)=\int_{0}^{\infty}\int_{-\infty}^{\infty} \frac{1}{b^2}X_w(a,b)\frac{1}{\sqrt{|(b)|}} \psi_1(\frac{t-a}{b})\, dadb$$

$\psi_1(t)$ 为 $\psi(t)$ 的对偶（Dual Function）^[实在不明白为什么台湾维基用“双效”这个字来翻译。]。而这个对偶函数必须满足

$$\int_{0}^{\infty}\int_{-\infty}^{\infty} \frac{1}{|b^3|}\psi(\frac{t_1-a}{b})\psi_1(\frac{t-a}{b})\, dadb=\boldsymbol{\delta}(t-t_1)$$

有时 $\psi_1(t)=C^-1\psi(t).$。

##### 性质

输入与输出的性质关系

:   基本上，连续小波转换是输入资料序列和一组由小波母函数所产生函数的卷积。这个
    卷积可以用快速傅立叶变换来计算。除非小波母函数为虚数函数，在正常的情况下，
    输出信息 $X_w(a,b)$ 会是一个实数函数。在小波母函数是虚数函数的情况下，连续
    小波转换会造成一个虚数函数。连续小波转换的功率谱可以以 $\|X_w(a,b)\|^2$ 的数
    学型式来表示。通常在设计小波母函数时，为了应用上的目的会将小波母函数设计为
    实数函数。

时间轴上的位移

:   输入函数 $x(t)$ 与输出函数 $X_w(a,b)$ 之间具有相对的位移关系：若 $x(t)$ 经
    过小波转换后的输出函数为 $X_w(a,b)$，则 $x(t-\tau)$ 经过小波转换后的输出函
    数为$X_w(a-\tau,b)$。

时间轴上的缩放

:   当进行小波转换的函数在时间轴上拉长或压缩时，输出函数也会有相对应的变化：

    若 $x(t)$ 经过小波转换后的输出函数为 $X_w(a,b)$
    则 $x(t/\sigma)$ 经过小波转换后的输出函数为 $\sqrt{\sigma}X_w(a/\sigma,b/\sigma)$

帕瑟伐定理（Parseval’s Theory）

:   在 $\varphi(t)=C^-1\psi(t)$ 的条件下，满足

    $$\int {|x(t)|}^2\,dt = \frac{1}{C}\,\int_{0}^{\infty}\int_{-\infty}^{\infty} \frac{1}{b^2} {|X_w(a,b)|}^2\,da\,db$$

### 离散小波变换

离散小波变换（Discrete Wavelet Transform）在数值分析和时频分析中很有用。第一个
离散小波变换由匈牙利数学家发明，离散小波转换顾名思义就是离散的输入以及离散的输
出，但是这裡并没有一个简单而明确的公式来表示输入及输出的关系，只能以阶层式架构
来表示，因为太复杂这里略过。

## 应用的小波

哲学上说，性质决定用途。正是小波变换的各种优良性质决定了其用途的广泛。
通常来讲，DWT（离散小波变换）用于信号编码而 CWT（连续小波变换）用于信号分析，所
以，DWT 通常用于工程和计算机科学，而 CWT 经常用于科学研究。

小波变换现在被大量不同的应用领域采纳，有时甚至会取代了傅立叶变换的位置，在许多
领域都有这样的转变。例如很多物理学的领域亦经历了这个转变，包括分子动力学，天文
物理学，地球物理学，光学和量子力学。其他经历了这种变化的学科有图像处理，血压，
心率和心电图分析，DNA 分析，蛋白质分析，气象学，通用信号处理，
语言识别，计算机图形学，和多分形分析，
影像分割，影像融合。

下面具体说说小波变换在影像压缩、边缘检测、音乐信号处理等领域的应用。

### 小波变换在各个领域的应用

#### 影像压缩

小波转换最常见的应用是用于影像压缩。和其他变换一样，小波变换可以用于原始影像（
例如图像），然后将变换后的数据编码，得到有效的压缩。影像压缩通常可分为三大步骤，
分别是转换（Transform）、量化（Quantization）和编码（Coding）。其中转换这个步
骤是将原始资料转换成另一种表示法，可经由逆转换得到原始讯号。转换的目的在于除去
讯号取样的相关性，也就是去除取样间的累赘。在对影像资料转换时，通常是将影像先分
割成不重叠小区块，再对小区块进行单位转换，而单位转换是一种可逆的转换，其演算的
核心为正交的基底函数。

讯号可以分为规则性讯号与非规则性讯号两类，所谓规则性讯号即是讯号中所有组成物是
同时发生的；而非规则性讯号其组成物并非是同时发生。**对于规则的讯号，理想且有效的
转换方式是傅立叶转换。而适用于非规则性信号的工具就是小波转换。**较为知名的影像压
缩档案格式 JPEG 2000 就是采用小波的图像标准，演算法细节见下小结。

#### 边缘侦测

小波转换亦常应用于影像的边缘侦测（edge detection），传统的影像边缘检测采用二维
差分运算子以检测影像边缘，是假设影像边缘上和边缘旁之影像灰阶值必然不同，当取微
分时，在边缘上会呈现非常大梯度值，藉由调整影像灰阶值的临界值参数可强化边缘，但
二维小波转换则是一种效果较佳的影像边缘侦测方法，当取小波转换时，在影像边缘上亦
会呈现非常大的梯度值。在电脑视觉或影像处理上经常使用动态轮廓或蛇行模式来侦测物
体的边界或边缘。

在物体纹路及表面瑕疵检测上亦有其应用，由于小波转换有**局部性处理的能力**，对于
小区域之瑕疵能有效凸显，其频率特性使得在处理瑕疵上不易受环境影响。相对于频率域
之转换方法，小波转换处理速度快，因不须事先训练与也无需复杂数学计算的参与，使得
小波转换在速度处理上获得不错效果，其具有多解析（Multi-resolution）与多尺度（
Multi-scale）能力，使得在处理纹路瑕疵上不会产生锯齿效应。小波转换不会变动影像物
体的相对位置，且保留纹路与瑕疵的空间关系与影像大小。

#### 遥感影像分析

连续小波转换常应用于遥感影像分析上，如海底地形的解析，利用具有分析非均匀讯号的
高维连续小波转换理论作为遥测影像的分析工具，从中求取影像波浪谱，再从影像波浪谱
中反算出观测区域的水深值。传统的研究多将海洋遥测影像假设为均匀（homogeneous）的
海面影像，并採用被分析影像为均匀性前提所发展出的方法进行谱转换，其分析所得之影
像谱实际上为整个遥测影像波数谱的平均值。然而自然界的讯号常存在有非均匀的特性，
近岸海域的波浪亦不例外。为能从分析非均匀影像讯号中分析得到合理且准确的水深资讯
，可引入非均匀讯号分析理论---小波转换。如高维小波转换理论可应用在分析海洋遥测影
像之研究，藉以从中计算出底床地形的资讯，透过小波转换的非定常讯号的解析能力，可
将整张遥测影像分解为不同的子影像，每一块子影像区域的波场理论上具有一定程度之均
匀性，再进而从各子影像中求解水深值，藉以描绘出观测海域的水深资讯。

#### 医疗卫生领域应用

离散小波转换亦常应用在生医领域中，因为其具有较低的复杂度与较佳的时域-频域分析之特性，
而被选择作为分析生医讯号的方法。心电图（Electrocardiography）与脑波图
（Electroencephalography）是两项常见的医疗卫生应用。

一般而言，病患之心电图时常需要全天候的观察与分析，因此资料量相当庞大，此时便需
要很大的储存空间来储存这些资料，因此有必要将心电图之资料加以压缩，才可有效减少
所需之储存设备成本。信号的压缩可分为无损压缩和有损压缩两种，
若是依传统医学观念，或许应该使用无失真压缩，才可避免因资讯不完整而造成误诊等医
疗疏失，但由于传送资讯之网路频宽有限且资料庞大，因此使用有损压缩以达到更
大的压缩效率已成必然，在增大压缩效率的同时，亦可保证其重建讯号之可靠度，以避免
不必要的医疗疏失便是一重要课题，小波转换便可达到此项目标。

而小波转换亦有去除不必要杂讯之功用，以正确判读心电图，此方法称为小波系数临界法
(wavelet coefficients thresholding)，讯号经小波转换后，杂讯会成为较小的讯号(low
scale)，因此将较小scale的讯号去除，即可去除杂讯，一般的做法为设立一临界值，将低
于此临界值的讯号捨弃，高于临界值的讯号保留。而选择临界值的方式有两种，一种为硬
式临界值(hard threshold)，其临界值为一常数，不随输入讯号改变而改变，此法优点为
设计简单，但得到的结果并不理想，若改由不同输入讯号形成不同临界值，则称为软式临
界值，将经小波转换后每一频带之变异数(variance)开根号后形成标准差，而后以标准差
当作参数作为临界值，此法产生之临界值会因输入讯号长度的不同而改变。

小波变换在癌症细胞的检测中也有应用 。

另一个小波转换在生医领域的应用则是应用在脑电图上，早期脑电图讯号分析技术，普遍
以傅立叶转换为主，近年来，小波转换技术逐渐被採用，其特性在对于未知讯号的频率分
佈，在时间轴上可以得到很好的解析度，适合应用于脑波的不稳定讯号分析处理。再配合
类神经网路非线性分辨能力，可有效分辨 α 波、β 波。

亦有一个应用是在于脑电图中正常的背景讯号与不正常的尖峰讯号之区分，患有癫痫的病
人其不正常的尖峰讯号其形状会类似一个凸起的尖峰，故此讯号壳称为尖峰讯号（spike），
多重解析变换的小波转换（multi-resolution wavelet transform）可用来分析这类型
态类似、但大小区间变异很大的癫痫讯号。

### 再谈影像压缩

因为影像压缩和遥感领域最贴近，这一节讨论两种小波变换应用在影像压缩中的实例。

##哈尔小波变换应用于图像压缩

信息时代带来了“信息爆炸”，使数据量大增，因此，无论传输或存储都需要对数据进行有效的压缩，
在遥感技术中，各种航天探测器都会采用压缩编码技术，将获取的巨大信息送回地面。
图像压缩的基本概念为将图像存成到一个矩阵，矩阵中每一个元素对应图像的一个像素值，介于 0 到 255 之间。
JPEG 影像压缩的概念是先把图像切成 8 &times; 8 大小的区域，每一区域对应一个矩阵。下面用哈尔小波变换来对这个矩阵压缩。

先考虑 8 &times; 1 的情况，对这个矩阵 $r=\begin{bmatrix}1.2\\1.2\\1.8\\0.8\\2\\2\\1.9\\2.1 \end{bmatrix}$ 作哈尔小波变换。

首先 8 阶的 Harr 变换矩阵为 $$H_8=\begin{bmatrix}
\frac{1}{\sqrt{8}} & \frac{1}{\sqrt{8}} & \frac{1}{\sqrt{8}} & \frac{1}{\sqrt{8}} & \frac{1}{\sqrt{8}} & \frac{1}{\sqrt{8}} & \frac{1}{\sqrt{8}} & \frac{1}{\sqrt{8}}\\
\frac{1}{\sqrt{8}} & \frac{1}{\sqrt{8}} & \frac{1}{\sqrt{8}} & \frac{1}{\sqrt{8}} & \frac{-1}{\sqrt{8}} & \frac{-1}{\sqrt{8}} & \frac{-1}{\sqrt{8}} & \frac{-1}{\sqrt{8}}\\
\frac{1}{2} & \frac{1}{2} & \frac{-1}{2} & \frac{-1}{2} & 0 & 0 & 0 & 0\\
0 & 0 & 0 & 0 & \frac{1}{2} & \frac{1}{2} & \frac{-1}{2} & \frac{-1}{2}\\
\frac{1}{\sqrt{2}} & \frac{-1}{\sqrt{2}} & 0 & 0 & 0 & 0 & 0 & 0\\
0 & 0 & \frac{1}{\sqrt{2}} & \frac{-1}{\sqrt{2}} & 0 & 0 & 0 & 0\\
0 & 0 & 0 & 0 & \frac{1}{\sqrt{2}} & \frac{-1}{\sqrt{2}} & 0 & 0\\
0 & 0 & 0 & 0 & 0 & 0 & \frac{1}{\sqrt{2}} & \frac{-1}{\sqrt{2}}\\
\end{bmatrix}$$

应用到 $r$，并将足够小的项置为零来实现数据压缩，有 $$r'=H_8r=\begin{bmatrix}
13/\sqrt{8}\times (4.596) \\
-3/\sqrt{8}\times (-1.061) \\
-0.1\times (-0.1) \\
0 \\
0 \\
1/\sqrt{2}\times (0.707) \\
0 \\
-0.2/\sqrt{2}\times (-0.141)
\end{bmatrix}\approx \begin{bmatrix}
13/\sqrt{8}\\
-3/\sqrt{8}\\
0\\
0\\
0\\
1/\sqrt{2}\\
0\\
0
\end{bmatrix}$$

对 8 &times; 8 的二维矩阵 A 做哈尔小波转换，由于 $AH_8$ 是对 A 的每一行做哈尔小波变换，做完后还要对 A 的每一列做哈尔小波变换，因此公式为 $H_8^TAH_8$。

简单的例子：

$$A=\begin{bmatrix}576 & 704& 1152 & 1280 & 1344 & 1472 & 1536 & 1536\\ 704 & 640 & 1156 & 1088 & 1344 & 1408 & 1536 & 1600\\ 768 & 832 & 1216 & 1472 & 1472 & 1536 & 1600 & 1600\\ 832 & 832 & 960 & 1344 & 1536 & 1536 & 1600 & 1536\\ 832 & 832 & 960 & 1216 & 1536 & 1600 & 1536 & 1536\\ 960 & 896 & 896 & 1088 & 1600 & 1600 & 1600 & 1536\\ 768 & 768 & 832 & 832 & 1280 & 1472 & 1600 & 1600\\ 448 & 768 & 704 & 640 & 1280 & 1408 & 1600 & 1600\\\end{bmatrix}$$

列哈尔小波变换（row Haar wavelet transform）

$$L=AH_8=\begin{bmatrix} 1200 & -272 & -288 & -64 & -64 & -64 & -64 & 0\\ 1185 & -288 & -225 & -96 & 32 & 34 & -32 & -32\\ 1312 & -240 & -272 & -48 & -32 & -128 & -32 & 0\\ 1272 & -280 & -160 & -16 & 0 & -192 & 0 & 32\\ 1256 & -296 & -128 & 16 & 0 & -128 & -32 & 0\\ 1272 & -312 & -32 & 16 & 32 & -96 & 0 & 32\\ 1144 & -344 & -32 & -112 & 0 & 0 & -96 & 0\\ 1056 & -416 & -32 & -128 & 160 & 32 & -64 & 0\\ \end{bmatrix}$$

行哈尔小波变换（column Haar wavelet transform）

$$S=H_8^TL=\begin{bmatrix}1212 & -306 & -146 & -54 & -24 & -68 & -40 & 4\\ 30 & 36 & -90 & -2 & 8 & -20 & 8 & -4\\ -50 &-10 & -20 & -24 & 0 & 72 & -16 & -16\\ 82 & 38 & -24 & 68 & 48 & -64 & 32 & 8\\ 8 & 8 & -32 & 16 & -48 & -48 & -16 & 16\\ 20 & 20 & -56 & -16 & -16 & 32 & -16 & -16\\ -8 & 8 & -48 & 0 & -16 & -16 & -16 & -16\\ 44 & 36 & 0 & -8 & 80 & -16 & -16 & 0\\ \end{bmatrix}$$

由以上例子可以看出哈尔小波转换的效果，原本矩阵中变化量不大的元素经过转换后会趋
近零，再配合适当量化便可以达到压缩的效果了。此外若一矩阵作完哈尔小波转换后所含
的零元素非常多的话，称此矩阵叫**稀疏矩阵**。通常矩阵越稀疏压缩效果越好。因此可选定一临
界值 $\epsilon$，若矩阵中元素的绝对值小于此临界值 $\epsilon$，可将该元素置为零，以获取更大的压缩率。
当然，$\epsilon$ 选取过大会造成图像严重失真，因此如何取适当的 $\epsilon$ 也是值得讨论的议题。

和用于 JPEG 2000 的离散小波变换相比，哈尔变换的压缩率低，但是哈尔变换能更快的执行。
下面是一个转换速度的对比：

& 运行时间 & 标准均方根误差 $< 10^{-5}$ \\
\toprule
离散傅立叶变换 & 9.5 秒 & 43 \\
哈尔小波变换 & 0.3 秒 & 128 \\
\bottomrule
\end{tabular}
\vspace{10pt}

可以看到，失真较为严重的基于哈尔小波变换的图像压缩方法要快得多。

## 用于 JPEG 2000 的 DWT

JPEG 2000 是基于离散小波变换的图像压缩标淮，由 Joint Photographic Experts Group 组织创
建和维护。JPEG 2000 通常被认为是未来取代 JPEG（基于离散余弦变换）的下一代图像压缩
标淮。JPEG 2000 文件的副档名通常为 `.jp2`，MIME 类型是 image/jp2。

JPEG 2000 的压缩比更高，而且不会产生原先的基于离散余弦变换的 JPEG 标淮产生的块状模
糊瑕疵。**JPEG 2000 同时支持有损数据压缩和无损资料压缩。**另外，JPEG 2000 也支持更复
杂的**渐进式显示**和下载。

JPEG 2000 是国际标淮化组织（ISO）发布的标淮，文档代码为 ISO/IEC 15444-1：2000。虽
然 JPEG 2000 在技术上有一定的优势，但网络上采用 JPEG 2000 技术制作的图像文件数量仍然很少，
并且大多数的浏览器仍然不支持 JPEG 2000 图像文件的显示。但是，由于 JPEG 2000 在
无损压缩下仍然能有比较好的压缩率，所以 JPEG 2000 在图像品质要求比较高的医学图像
的分析和处理中已经有了一定程度的广泛应用。

在有损压缩下，JPEG 2000 一个比较明显的优点就是没有 JPEG 压缩中的马赛克失真效果。
JPEG 2000 的失真主要是模糊失真。模糊失真产生的主要原因是在编码过程中高频量一
定程度的衰减。传统的 JPEG 压缩也存在模糊失真的问题。

就图像整体压缩性能来说，目前有一些文章可能夸大 JPEG 2000 的性能。事实上，在低压
缩比情形下（比如压缩比小于 10：1），传统的 JPEG 图像质量有可能要比 JPEG 2000 要好。
JPEG 2000 在压缩比比较高的情形下，优势才开始明显。整体来说，和传统的 JPEG 相比，
JPEG 2000 仍然有很大的技术优势，通常压缩性能大概可以提高 20% 以上。一般在压缩比达
到 100：1 的情形下，采用 JPEG 压缩的图像已经严重失真并开始难以识别了，但 JPEG 2000 的
图像仍可识别。有损压缩图像质量或失真程度一般用峰值信噪比（PSNR）指标来衡量。虽
然峰值信噪比不能完全反映人类视觉效果，但是它仍是一个目前比较流行的量化指标。

---

Refs

#. [Dirac delta function - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Dirac_delta_function)
#. [Fourier Transform -- from Wolfram MathWorld](http://mathworld.wolfram.com/FourierTransform.html)
#. [Fourier transform - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Fourier_transform)
#. [INDEX TO SERIES OF TUTORIALS TO WAVELET TRANSFORM BY ROBI POLIKAR](http://users.rowan.edu/~polikar/WAVELETS/WTtutorial.html)
#. [JPEG 2000 - 维基百科镜像，不撞墙的百科全书](http://wiki.yooooo.us/d2lraS9KUEVHXzIwMDA=)
#. [Wavelet transform - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Wavelet_transform)
#. [傅立叶分析之掐死教程（完整版）更新于2014.06.06 - 与时间无关的故事 - 知乎专栏](http://zhuanlan.zhihu.com/wille/19763358)
#. [傅立叶变换 - 维基百科镜像，不撞墙的百科全书](http://wiki.yooooo.us/d2lraS8lRTUlODIlODUlRTklODclOEMlRTUlOEYlQjYlRTUlOEYlOTglRTYlOEQlQTI=)
#. [哈尔小波转换 - 维基百科，自由的百科全书](http://wiki.yooooo.us/d2lraS8lRTUlOTMlODglRTclODglQkUlRTUlQjAlOEYlRTYlQjMlQTIlRTglQkQlODklRTYlOEYlOUI=)
#. [图像压缩 - 维基百科，自由的百科全书](http://wiki.yooooo.us/d2lraS8lRTUlOUIlQkUlRTUlODMlOEYlRTUlOEUlOEIlRTclQkMlQTk=)
#. [小波分析 - 维基百科，自由的百科全书](http://wiki.yooooo.us/d2lraS8lRTUlQjAlOEYlRTYlQjMlQTIlRTUlODglODYlRTYlOUUlOTA=)
#. [小波变换 - Embed98 - 博客频道 - CSDN.NET](http://blog.csdn.net/socx2007/article/details/2989063)
#. [快速傅立叶变换 - 维基百科，自由的百科全书](http://wiki.yooooo.us/d2lraS8lRTUlQkYlQUIlRTklODAlOUYlRTUlODIlODUlRTklODclOEMlRTUlOEYlQjYlRTUlOEYlOTglRTYlOEQlQTI=)
#. [有损数据压缩 - 维基百科镜像，不撞墙的百科全书](http://wiki.yooooo.us/d2lraS8lRTYlOUMlODklRTYlOEQlOUYlRTYlOTUlQjAlRTYlOEQlQUUlRTUlOEUlOEIlRTclQkMlQTk=)
#. [离散小波变换 - 维基百科，自由的百科全书](http://wiki.yooooo.us/d2lraS8lRTklOUIlQTIlRTYlOTUlQTMlRTUlQjAlOEYlRTYlQjMlQTIlRTglQUUlOEElRTYlOEYlOUI=)
#. [能不能通俗的讲解下傅立叶分析和小波分析之间的关系？ - 傅立叶变换(Fourier Transform) - 知乎](http://www.zhihu.com/question/22864189)
#. [连续小波转换 - 维基百科镜像，不撞墙的百科全书](http://wiki.yooooo.us/d2lraS8lRTklODAlQTMlRTclQkElOEMlRTUlQjAlOEYlRTYlQjMlQTIlRTglQkQlODklRTYlOEYlOUI=)
