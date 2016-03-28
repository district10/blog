---
title: Complex Network Overall | 复杂网络及其应用
date: 2016-01-14
key-words:
    - complex network
tags:
    - complex network
    - note
...

Complex Network Overall | 复杂网络及其应用
==========================================

> LaTeX 模板来自[武汉大学黄正华老师](http://aff.whu.edu.cn/huangzh/)。

注意：PDF 中有动画内容需要用“高级”点的 PDF 阅读器查看（SumatraPDF 不行）。

## 编译说明

#. 要先安装 Adobe fonts 字体；
#. 再从 [CTeX] 下载完全 LaTeX 安装包；
#. 再下载安装 [GitBash]（调用编译脚本）和 [Pandoc]（Markdown 转换为 TeX）；
#. 双击 `_pdf.sh`{.bash} 即可编译出 PDF。

[CTeX]: http://www.ctex.org/CTeXDownload
[GitBash]: http://7xjdjw.com1.z0.glb.clouddn.com/Git-1.9.5-preview20150319.exe
[Pandoc]: http://7xjdjw.com1.z0.glb.clouddn.com/pandoc-1.13.2-windows.msi

| TANG ZhiXiong 唐志雄
| 2016 年 01 月 17 日
| 武汉大学遥感信息工程学院

\baselineskip=23pt

\begin{cnabstract}

具有自组织、自相似、吸引子、小世界、无标度中部分或全部性质的网络称为复杂网络。
复杂网络具有极强的交叉学科特色，一方面属于图论，一方面又包含概率，在计算机科学、生命科学、物理学中
与众多复杂问题紧密相连。本文简要介绍了复杂网络的各方面。

\end{cnabstract}
\par
\vspace*{2em}

\cnkeywords{
复杂网络；
小世界网络；
复杂网络拓扑性质；
复杂网络的控制；
}

\chapter{复杂网络研究引论}

顾名思义，“复杂网络”指的是复杂的网络。网络的复杂性体现在

#. 结构复杂性；
#. 节点复杂性；
#. 各种复杂性因素的互相影响。

复杂网络从图论发展而来。最开始是欧拉的七桥问题，开创了数学分支---图论；再是
20 世纪 60 年代，两位匈牙利数学家 Erdős\footnote{就是那个传奇的 Paul Erdős！}
和 Rényi 建立了随机图理论（Random Graph Theory），这被认为是在数学上开创了
复杂网络理论的系统性研究。到了 20 世纪末，相关研究从数学领域扩展到了物理学、生
物学等多门学科。\upcite{wangxiaofan}

# 复杂网络研究简史

## 从七桥问题谈起

\begin{figure}
\centering
\subfigure[]{ \label{seven-bridges-a} \includegraphics[height=3cm]{Konigsberg_bridges1} }
\subfigure[]{ \label{seven-bridges-b} \includegraphics[height=3cm]{Konigsberg_bridges2} }
\subfigure[]{ \label{seven-bridges-c} \includegraphics[height=3cm]{Konigsberg_bridges3} }
\caption{欧拉把七桥问题抽象为数学问题}
\label{seven-bridges}
\end{figure}

如图 \ref{seven-bridges}，七桥问题（Seven Bridges of Königsberg）说的是能否一次
散步走过七座桥，而且每个桥只经过一次。这个问题被欧拉抽象成数学问题，开创了数学
中的一个分支---图论。因此，欧拉被公认为图论之父，图 \ref{seven-bridges-c} 也被
成为欧拉图。事实上，今天人们关于复杂网络的研究与欧拉当年关于七桥问题的研究在某
种程度上是一脉相承的，即网络结构与网络性质密切相关。

## 随机图理论

## 小世界实验

小世界网络是一类特殊的复杂网络结构，在这种网络中大部份的节点彼此并不相连，但绝大部份节点之间经过少数几步就可到达。

### Milgram 的小世界实验

二十世纪 60 年代，美国哈佛大学社会心理学家斯坦利·米尔格伦（Stanley Milgram）做
了一个连锁信实验。他将一些信件交给自愿的参加者，要求他们通过自己的熟人将信传到
信封上指明的收信人手里，他发现，294 封信件中有 64 封最终送到了目标人物手中。而
在成功传递的信件中，平均只需要5次转发，就能够到达目标。也就是说，在社会网络中，
任意两个人之间的“距离”是 6。这就是所谓的“六度分隔”理论。尽管他的实验有不少缺陷，
但这个现象引起了学界的注意。

### Kevin Bacon 的小世界实验

继米尔格伦的实验后，为了检验六度分隔理论的真实性，人们又进行了一些其它实验。其
中一个著名的例子是“凯文·贝肯游戏”（game of Kevin Bacon）。这个游戏的主角是美国
电影演员凯文·贝肯，游戏的方法是通过不停地寻找共同出演同一电影的演员，最终“找到”
另一个“目标”演员。游戏里每一个演员都有一个“贝肯数”：如果一个演员与贝肯合作过电
影，那么他（她）的“贝肯数”就是 1。如果一个演员没有与贝肯合作过，但与某个“贝肯数”
为 1 的演员合作过，那么他（她）的贝肯数”就是 2，以此类推。比如说，吴彦祖在《80天环
游世界》中与卢克·威尔逊合作过，卢克·威尔逊在《家有跳狗》中与与贝肯合作过，所以
吴彦祖的“贝肯数”是2。对超过 133 万名世界各地的演员的统计得出，他们平均的“贝肯数”
是 2.981，最大的也仅仅是 8。

### Erdős 数

一个类似的结果是数学界中的“埃尔德什数”。Paul Erdős 就是随机图理论的开创者之一，
他是著名的数学家。与他一起发表过论文的学者的“埃尔德什数”是 1，与这些学者合作发
表过论文的学者的“埃尔德什数”是 2，以此类推。美国数学会的数据库中记录的超过 40
万名数学家们的“埃尔德什数”平均是 4.65，最大的是 13。

### Internet 上的小世界实验

## 弱连接的强度
## 复杂网络研究的新纪元

# 基本概念

在网络理论的研究中，复杂网络是由数量巨大的节点和节点之间错综复杂的关系共同构成
的网络结构。用数学的语言来说，就是一个有着足够复杂的拓扑结构特征的图。复杂网络
具有简单网络，如晶格网络、随机图等结构所不具备的特性，而这些特性往往出现在真实
世界的网络结构中。复杂网络的研究是现今科学研究中的一个热点，与现实中各类高复杂
性系统，如的网际网路、神经网络和社会网络的研究有密切关系。

## 网络的图表示

一个具体的网络可抽象为一个由点集 $V$ 和边集 $E$ 组成的图 $G = (V, E)$。
节点数记为 $N = |V|$，边数记为 $M = |E|$。

## 平均路径长度

平均路径长度也称为特征路径长度或平均最短路径长度，指的是一个网络中两点之间最短
路径长度（或称距离）的平均值。从一个节点 $s_i$ 出发，经过与它相连的节点，逐步“走”到
另一个节点 $s_j$ 所经过的路途，称为两点间的路径。其中最短的路径也称为两点间的距离，
记作 $\operatorname{dist}(i,j)$。而平均路径长度定义为：
$$
    \operatorname{dist}_c =
        \frac{2}{N(N+1)} \sum_{i \leqslant N} \sum_{j \geqslant i}
        \operatorname{dist}(i,j)
$$
这其中 $N$ 是节点数目，并定义节点到自身的最短路径长度为 0。如果不计算到自身的距离，那么平均路径长度的定义就变成：
$$
    \operatorname{dist}_c = \frac{2}{N(N-1)} \sum_{i \leqslant N} \sum_{j > i} \operatorname{dist}(i,j)
$$

## 聚类系数

聚类系数又叫集聚系数（也称群聚系数、集群系数），是用来描述图或网络中的顶点（节
点）之间结集成团的程度的系数。具体来说，是一个点的邻接点之间相互连接的程度。例
如在社交网络中，你的朋友之间相互认识的程度。一个节点 $s_i$ 的集聚系数 $C(i)$ 等
于所有与它相连的顶点相互之间所连的边的数量，除以这些顶点之间可以连出的最大边数。
显然 $C(i)$ 是一个介于 0 与 1 之间的数。$C(i)$ 越接近1，表示这个节点附近的点
越有“抱团”的趋势。

## 度与度的分布

图中，每个顶点（节点）连出的所有边（连结）的数量就是这个顶点（节点）的度。度分
布指的是对一个图（网络）中顶点（节点）度数的总体描述。对于随机图，度分布指的是
图中顶点度数的概率分布。

一个无向图 $G = G(V, E)$ 中某个顶点 $v_{i_0}$ 的度，是指所有与它相连的边的数目。
$$
    d(v_{i_0}) = \sum_{i = i_0 } e_{i, j}
$$
有向图中，根据连出边的数目和连入边的数目，分为出度 $d_{out}$ 和入度 $d_{in}$。
$$
    d_{out}(v_{i_0}) = \sum_{i = i_0 } e_{i, j}
    d_{in}(v_{i_0}) = \sum_{j = i_0 } e_{i, j}
$$
因此，一个无向图 $G = G(V, E)$ 中，$d$ 可以看成将每个顶点映射到一个非负整数的函数：
$$
    d : \, v_{i} \mapsto d(v_i) \quad i=1, 2, \cdots , n.
$$
而度分布则是对每个非负整数 $m$，考察度数是 $m$ 的顶点在所有顶点中占的比例：
$$
    \forall m \in \mathbb{N}, \, \, P : m \mapsto P(m) = \frac{\operatorname{Card}\{ v_i \, | \, d(v_i) = m \} }{n},
$$
因此满足：
$$
    \sum_{m \in \mathbb{N} } P(m) = 1.
$$
从顶点中等概率地随机抽取一个顶点，那么这个顶点度数为 $k$ 的概率就是 $P(k)$。

## 实际网络的统计性质

人们对不同领域的大量实际网络的拓扑特征进行了广泛的实证性研究，测量的性质包括：

又向或无向、节点总数 $N$、边的总数 $M$、平均度数 $k$、平均路径长度 $L$、聚类系数 $C$。
如果符合幂律，则给出幂指数 $\eta$。

\chapter{网络拓扑基本模型及其性质}

我们把两者的公式放在一起对比一下\upcite{Mutihac2006}：

在数学中，随机图是指由随机过程产生的图[1]。随机图的理论处于图论和概率论的交叉地带，主要研究各种经典随机图的性质。

<!--
可以避免傅立叶变换存在吉布斯效应（Gibbs effect），如图 \ref{fourierpic5}
\begin{figure}
\centering
\includegraphics[width=1.0\textwidth]{fourier5.png}
\caption{Gibbs effect}
\label{fourierpic5}
\end{figure}
-->

引言

# 规则网络

包括
全局耦合网络（globally coupled network），
最近邻耦合网络（nearest-neighbor coupled network）和
星型网络（star coupled network）。

# 随机图

随机图的“随机”二字体现在边的分布上。一个随机图实际上是将给定的顶点之间随机地连
上边。假设将一些纽扣散落在地上，并且不断随机地将两个纽扣之间系上一条线，这样就
得到一个随机图的例子。边的产生可以依赖于不同的随机方式，这样就产生了不同的随机
图模型。一个典型的模型是 Erdo和雷尼共同研究的 ER 模型。ER 模型是指在给定 $n$ 个
顶点后，规定每两个顶点之间都有 $p$ 的概率连起来（$0 \leqslant p \leqslant 1$），
而且这些判定之间两两无关。这样得到的随机图一般记作 $G_n^p$ 或 $ER_n(p)$。

什一种随机图模型叫做内积模型。内积模型的机制是对每一个顶点指定一个实系数的向量，
而两个顶点之间是否连接的概率则是它们的向量的内积的函数。

一般来说，可以定义任意两个顶点之间相连的概率，这个概率也被称为边概率。定义更广
泛的随机图模型的方法是定义所谓的网络概率矩阵。这个矩阵的系数就是边概率，因此详
细刻画了随机图的模型。

随机规则图是随机图中特殊的一类，它的性质可能会与一般的随机图不同。

# 小世界网络模型

由于小世界网络具有高集聚系数，它的结构中不可避免地会有许多团（彼此之间两两相连
的一小群节点）以及只比团差几个连接的节点群。另一方面，任两个结点大多会以至少一
条短路径连接着。这是要求有小的最短路径长度平均值的结果。此外，小世界网路常连带
地具有一些性质，不过这些性质并不是作为这类网路非有不可的。很典型的是这类网路常
常会出现“枢纽”（与很多节点都相连的节点）。

# 无标度网络模型

无标度网络（又称无尺度网络）是带有一类特性的复杂网络，其典型特征是在网络中的大
部分节点只和很少节点连接，而有极少的节点与非常多的节点连接。这种关键的节点（称
为“枢纽”或“集散节点”）的存在使得无尺度网络对意外故障有强大的承受能力，但面对协
同性攻击时则显得脆弱。现实中的许多网络都带有无尺度的特性，例如因特网、金融系统
网络、社会人际网络等等。

无尺度网络的特性，在于其度分布没有一个特定的平均值指标，即大多数节点的度在此附
近。在研究这个网络的度分布时，Barabási 等人发现其遵守幂律分布（也称为帕累托分布），
也就是说，随机抽取一个节点，它的度 $d$ 是自然数 $k$ 的概率：
$$
    \mathbb{P}(d=k) \propto \frac{1}{k^{\gamma}}
$$
也就是说 $d = k$ 的概率正比于 $k$ 的某个幂次（一般是负的，记为 $-\gamma$）。因
此 $k$ 越大，$d = k$ 的概率就越低。然而这个概率随 $k$ 增大而下降的“速度”是比较
缓慢的：在一般的随机网络中，下降的速度是指数性的，而在无尺度网络中只是以多项式
类的速度下降。

在现实中许多大规模的无尺度网络中，度分布的 $\gamma$ 值介于 2 与 3 之间。在对数
坐标系中，度分布将会是一条斜率介于 -2 至 -3 之间的直线。如左下图中，横坐标为
节点的度，从 $10^0$ 一直到 $10^3$ ；纵坐标为找到这样的节点的概率从 $10^{-8}$ 一直到 $10^0$。最
高度数的节点有 882 条连接。所有的蓝点大致成一条直线分布（绿色的直线）。

<!--
\begin{figure}
\centering
\animategraphics[height=2.8in,autoplay,controls]{12}{Barabasi_Albert_model_}{0}{17}
\caption{制造 BA 模型的过程：每次增加一个节点，两个连接}
\label{bamodel}
\end{figure}
-->

# 局域世界演化网络模型

本节说明复杂网络中存在局域世界，可以用局域世界演化网络（local-world evolving network）
模型来描述其变化，这个模型假设每个新节点在引入时并不能在全域进行优先连接。

# 模块性与网络等级

在设计领域，模块化是一个基本设计要求。
为了研究复杂网络的模块性，我们需要相应的工具和度量以确定一个网络是否是模块化的，
并且能够清晰地辨识一个既定网络的模块以及模块之间的联系。

Motif（模体）是复杂网络的基本模块。

为了说明许多实际系统中同时存在的模块性、局部聚类和无标度拓扑特性，需要假设
模块以某种迭代的方式生成一个等级网络（heirarchical network）。

# 复杂网络的自相似性

复杂网络中部分和整体有明显的相似性，即自相似性（self-similarity），这是分形（fractal）的一个基本特征。

\chapter{Internet 拓扑特性及其建模}

Internet 是一个人为设计的典型的复杂网络。

# Internet 的拓扑特性

Internet 的结构存在幂律分布特性。还存在层次性，按照层次可以将 Internet 分为 Tire-1 Transit 域，Tire-2 Transit 域，Stub 域。
还存在“富人俱乐部”（rich-club）特性。网络中有大量连接的节点被称为“富节点”（rich nodes），这些 rich nodes 彼此相连，构成 rich club。
除了“富人俱乐部”特性，Internet 还具有异配性，指的是度数高的节点的邻居，往往有更低的平均度。

一个图的 k-核（k-core）是指去掉度小于等于 k 的节点后，所剩的子图。
核数可以用来表示网络不同健壮度的轮廓。介数（betweenness centrality）衡量了通过网络中该节点的最短路径的数目。

# 随机图产生器

Waxman 提出了用来再现 ARPANET 网络的 Waxman 产生器。建模步骤为：

1. 在 $n \times n$ 的平面上均匀放置 N 个节点；
2. 两节点 $u$ 和 $v$ 之间建立边的概率为 $$\prod(u,v) = \alpha e^{\frac{-d(u,v)}{\beta L}}$$

即相距远的节点相连的可能性小。这个产生器是随机图产生器的典型代表，
后来的很多随机图模型都受其启发。

# 结构产生器

在随机图产生器出现后，人们发现网络除了随机性，还具有一定层次性，于是设计了结构产生器。
一种结构产生器叫 Tiers，用于产生广域网（WAN）、中域网（MAN）和局域网（LAN）这三个层次间关系
及内部联系。另一种）产生器叫 Transit-Stub，用于产生 Transit 域、Stub 域以及 LAN。

# 基于连接度的产生器

是结构产生器的一次进化，标志这方面研究进入新阶段。
主要有 Inet 产生器、AB 模型、BRITE 期望、GLP 模型、PFP 模型。DP（dynamic and preferencial）模型和 $\textsc{TANG}$ 模型。

# 多局域世界模型

将 Internet 抽象成不同等级的局部世界组成的整体，用多局域世界（multi-local-world）模型描述 Internet。

# 各类模型的定性比较

主要比较模型的动/静态，连接方式，以及建模过程的差异性。

\chapter{复杂网络上的传播机理与动力学分析}

以疾病和网络病毒的传播讨论复杂网络中的传播机理。

# 复杂网络的传播临界值理论

传播模型中，种群（population）被分为几种类型：

* 易染状态 S（susceptible），又称健康状态（healthy state）；
* 感染状态 I（infected）；
* 被移除状态 R（removed，recovered）。

用这些状态之间的转换过程来命名不同的传染模型。
传染模式主要分为
SIR 模型（S &rarr; I &rarr; R，即健康 &rarr; 感染 &rarr; 免疫）以及
SIS 模型（S &rarr; I &rarr; S，即健康 &rarr; 感染 &rarr; 健康）。
SIS 模型中“病人”可以再次得病。

临界值理论说的是，在传播率 $\lambda$ 小于临界值 $\lambda_c$ 时，传染病在
网络中处于吸收相态（absorbing phase），传染病会被控制在一定范围内无法大规模传播。
如果传播率 $\lambda$ 大于临界值 $\lambda_c$，传染病的传播处于激活状态（active phase），
传染病会稳定在一定比例的个体感染数，并在全网传播。

无标网络中，传播率大于零，病毒就能广泛传播，这表明了无标网络对抵抗病毒传播的脆弱性。

# 复杂网络的免疫策略

主要有三种免疫策略：

1. 随机免疫（random immunization），也称均匀免疫（uniform immunization）；
2. 目标免疫（targeted immunization），也称选择免疫（selected immunization）；
3. 熟人免疫（acquaintance immunization）。

# 复杂网络的传播动力学

讨论线性传播方程，以及其中的分形、混沌与分岔。

# 计算机病毒在 Internet 上的传播

通过介绍几种现实的计算机病毒的传播，以及应用不同模型对其传播结果的预测。
来说明模型的有效性。

# 复杂网络中的其他传播现象

解释了谣言的传播。

\chapter{复杂网络上的相继故障}

# 复杂网络相继故障的动态模型分析
# 基于耦合映象格子的相继故障模型

\chapter{复杂网络中的搜索}

即使网络具有小世界特性，也不一定能快速搜索。而搜索问题有极大世纪应用，包括
社会网络中两个人之间的最短关系链寻找、WWW 中网页的搜索和 P2P 网络中指定文件
或数据的搜索等。

# 社会网络搜索

## Kleinberg 网格模型
## 层次树结构网络模型

因 Kleinberg 网格模型中的分散式搜索算法不能以优于 O(logN) 的效率快速搜索网络。
Watts 等人在 2002 年提出了层次书结构网络模型。

# 几种复杂网络搜索策略分析

## 广度优先搜索策略

广度优先搜索是图论中一定涉及的内容。其策略是从根节点开始，沿着树的宽度遍历树的
节点。如果所有节点均被访问，则算法中止。广度优先搜索的实现一般采用 open-closed
表。

## 随机游走搜索策略

随机游走（Random Walk），是一种数学统计模型，它是一连串的轨迹所组成，其中每一次
都是随机的。它能用来表示不规则的变动形式，如同一个人酒后乱步，所形成的随机过程
记录。1905年，由卡尔·皮尔逊首次提出。

通常，我们可以假设随机漫步是以马尔可夫链或马可夫过程的形式出现，但是比较复杂的
随机漫步则不一定以这种形式出现。在某些限制条件下，会出现一些比较特殊的模式，如
醉汉走路（drunkard's walk）或莱维飞行（Lévy flight）。

随机游走搜索策略中涉及三种模型：

1. 最近邻耦合网络模型；
2. ER 随机图模型；
3. WS 小世界网络模型。

## 最大度搜索策略

# P2P 网络中的搜索

P2P（Peer-to-Peer）技术就是在个人计算机之间直接进行资源和服务的共享，而不需要服务器的介入，这些
共享的资源和服务包括文件的共享与交换，计算机资源如 CPU 的共享使用等。

P2P 网络中主要存在三种不同的基本结构：

1. 集中式的 P2P 系统；
2. 分散式的结构化 P2P 系统；
3. 分散式的非结构化 P2P 系统。

这里只讨论分散式的非结构化的 P2P 系统中的网络搜索策略：Gnutella 网格中的广播搜
索。Gnutella 的搜索策略是，客户端作为一个节点，先获取网络中节点的列表，然后与相
近的节点建立连接，形成一条新的边。网络搜索时，向周围邻居发送一个文件请求，并设
置好 TTL（time to live）。可见这利用了广度搜索策略，用户可以很容易找到文件，但
不足在于会形成网络流量拥塞。

对 Gnutella 网格搜索策略的改进主要有：

1. 迭代加深；
2. 有向广度优先搜索；
3. 本地索引；
4. k 遍历器随机行走；
5. 基于度分布的改进。

# 复杂网络中的搜索和拥塞

搜索和是一组矛盾，在以往相关研究都是分离的。Arenas 等人提出了一个能够同时处理搜索和拥塞
的网络通信模型。

\chapter{复杂网络中的社团结构}

# Kerninghan-lin 算法
# 谱平分法
# 分裂分法
# 凝聚方法

\chapter{复杂网络中的同步}

# 复杂网络中的完全同步判据
# 复杂动力网络的完全同步
# 连续时间时变耦合网络完全同步
# 其他网络完全同步判据
# 复杂网络中各个因子与完全同步的关系
# 改进复杂网络同步中方法
# 复杂网络的相位同步
# 复杂网络的相位同步

\chapter{复杂网络动态网络的控制}

#. 规则网络时空混沌的牵制控制
#. 无标度动态网络的牵制控制：鲁棒性与脆弱性
#. 一般复杂网络动态网络的牵制控制
#. 随机驱动下动态网络的有序性与动力学

Refs

:   #. [无尺度网络 - 维基百科，自由的百科全书](http://wiki.yooooo.us/wiki/%E6%97%A0%E5%B0%BA%E5%BA%A6%E7%BD%91%E7%BB%9C#.E5.B1.80.E5.9F.9F.E4.B8.96.E7.95.8C.E6.BC.94.E5.8C.96.E6.A8.A1.E5.9E.8B)
    #. [小世界網路 - 维基百科，自由的百科全书](http://wiki.yooooo.us/d2lraS8lRTUlQjAlOEYlRTQlQjglOTYlRTclOTUlOEMlRTclQjYlQjIlRTglQjclQUY=)
    #. [复杂网络 - 维基百科，自由的百科全书](http://wiki.yooooo.us/d2lraS8lRTUlQTQlOEQlRTYlOUQlODIlRTclQkQlOTElRTclQkIlOUM=)
    #. [网络科学 - 维基百科，自由的百科全书](http://wiki.yooooo.us/d2lraS8lRTclQkQlOTElRTclQkIlOUMlRTclQTclOTElRTUlQUQlQTY=)
    #. [图论 - 维基百科，自由的百科全书](http://wiki.yooooo.us/d2lraS8lRTUlOUIlQkUlRTglQUUlQkE=)
    #. [度分布 - 维基百科，自由的百科全书](http://wiki.yooooo.us/d2lraS8lRTUlQkElQTYlRTUlODglODYlRTUlQjglODM=)
    #. [随机图 - 维基百科，自由的百科全书](http://wiki.yooooo.us/d2lraS8lRTklOUElOEYlRTYlOUMlQkElRTUlOUIlQkU=#cite_note-2)
    #. [无尺度网络 - 维基百科，自由的百科全书](http://wiki.yooooo.us/d2lraS8lRTYlOTclQTAlRTUlQjAlQkElRTUlQkElQTYlRTclQkQlOTElRTclQkIlOUM=)
    #. [Greek alphabet - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Greek_alphabet)
    #. [Complex network - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Complex_network)
    #. [Regular graph - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Regular_graph)
    #. [Pulse-coupled networks - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Pulse-coupled_networks)
    #. [Small-world network - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Small-world_network)
    #. [Kleinberg 网格模型 - Google 学术搜索](http://scholar.glgoo.org/scholar?q=Kleinberg+%E7%BD%91%E6%A0%BC%E6%A8%A1%E5%9E%8B&btnG=&hl=zh-CN&as_sdt=0%2C5)
    #. [无尺度网络 - 维基百科镜像，不撞墙的百科全书](http://wiki.yooooo.us/d2lraS8lRTYlOTclQTAlRTUlQjAlQkElRTUlQkElQTYlRTclQkQlOTElRTclQkIlOUM=)
    #. [随机游走 - 搜索结果 - 维基百科，自由的百科全书](http://wiki.yooooo.us/w/index.php?title=Special%3A%E6%90%9C%E7%B4%A2&profile=default&search=%E9%9A%8F%E6%9C%BA%E6%B8%B8%E8%B5%B0&fulltext=Search)
    #. [广度优先搜索 - 维基百科，自由的百科全书](http://wiki.yooooo.us/d2lraS8lRTUlQjklQkYlRTUlQkElQTYlRTQlQkMlOTglRTUlODUlODglRTYlOTAlOUMlRTclQjQlQTI=)
    #. [隨機漫步 - 维基百科，自由的百科全书](http://wiki.yooooo.us/d2lraS8lRTklOUElQTglRTYlQTklOUYlRTYlQkMlQUIlRTYlQUQlQTU=)
