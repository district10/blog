% GIS Spatial Analysis and Application Modeling | GIS 空间分析与应用建模
% TANG ZhiXiong
% 2015-11-23

GIS 空间分析与应用建模
======================

空间分析操作
------------

空间分析操作包括三个方面：

#. 矢量数据空间分析
#. 栅格数据空间分析
#. 三维数据空间分析

可参考 [GIS 理论与技术 – 作业 2：GIS 研究综述#空间分析](http://tangzx.qiniudn.com/post-0050-gis-overall.html#空间分析)，这里不赘述。

空间数据统计分析
----------------

### 一般统计分析

GIS 属性数据的一般统计分析

:   指对 GIS 地理空间数据库中的属性数据进行常规统计分析。

    #. 先对数据进行【描述性统计分析】，以发现其内在规律
    #. 再选择进一步分析的方法

    描述性统计分析
      ~ 空间数据分析的第一步，通过描述性分析，提取有价值的空间信息，便于后续的空间分析和处理。

    相关概念
    
    #. 频数
    #. 频率
    #. 频率分布图
    #. 频率直方图

    数据集中趋势分析

    ![数据的集中趋势](https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Comparison_mean_median_mode.svg/300px-Comparison_mean_median_mode.svg.png)
    
    #. 平均值
        * 算数：$\frac{1}{n}\sum_{i=1}^{n} a_i.$
        * 加权：$\int_{-\infty}^{\infty} xf(x)\,dx$
        * 调和平均数
        * 加权调和平均数
        * 几何平均数
    #. 中位数
        * the median satisfies: $\operatorname{P}(X\leq m) = \operatorname{P}(X\geq m)=\int_{-\infty}^m f(x)\, dx=\frac{1}{2}.$
        * ![](https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Visualisation_mode_median_mean.svg/100px-Visualisation_mode_median_mean.svg.png)
    #. 众数

    数据的离散程度分析
    
    #. 方差
        * mean square error: $$\operatorname{MSE}(\overline{X})=\operatorname{E}((\overline{X}-\mu)^2)=\left(\frac{\sigma}{\sqrt{n}}\right)^2= \frac{\sigma^2}{n}$$
          where $\sigma^2$ is the population variance.
    #. 标准差
    #. 极差
    #. 离差
    #. 平均离差
        * mean absolute deviation: $\frac{1}{n}\sum_{i=1}^n |x_i-m(X)|.$
    #. 离差平方和
    #. 变差系数
    
    数据的分布
    
    #. 偏度（skewness）
        * skewness is a measure of the asymmetry of the probability distribution of a real-valued random variable about its mean. The skewness value can be positive or negative, or even undefined.
        * The skewness is also sometimes denoted $\operatorname{Skew}[X]$.
          The formula expressing skewness in terms of the non-central moment $\operatorname E[X^3]$ can be expressed by expanding the previous formula, $$
          \begin{align}
                \gamma_1
                 &= \operatorname{E}\left[\left(\frac{X-\mu}{\sigma}\right)^3 \right] \\
                 & = \frac{\operatorname{E}[X^3] - 3\mu\operatorname E[X^2] + 3\mu^2\operatorname E[X] - \mu^3}{\sigma^3}\\
                 &= \frac{\operatorname{E}[X^3] - 3\mu(\operatorname E[X^2] -\mu\operatorname E[X]) - \mu^3}{\sigma^3}\\
                 &= \frac{\operatorname{E}[X^3] - 3\mu\sigma^2 - \mu^3}{\sigma^3}.
          \end{align}$$
        * ![](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/Negative_and_positive_skew_diagrams_%28English%29.svg/446px-Negative_and_positive_skew_diagrams_%28English%29.svg.png)
    #. 峰度（Peakness/Kurtosis `[kɝ'tosɪs]`）：$\beta=\frac{V_4}{\sigma^4}=\frac{\frac{\sum(X_\bar{X})^4f}{\sum f}}{\sigma^4}$

    图形表达数据
    
    #. 柱状图
    #. 扇形图
    #. 直方图
    #. 折线图
    #. 散点图

### 探索性空间数据分析

探索性空间数据分析 (Exploratory Spatial Data Analysis, ESDA)

![John Tukey](https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/John_Tukey.jpg/220px-John_Tukey.jpg)

统计学是数据分析的主要工具，大量的统计分析方法以数据总体满足正态假设为依据，并在此基础上建立模型和推演。
然而，实践中大量的数据不能满足正态假设，并且基于均值、方差等的模型在实际数据分析中缺乏稳健性，于是导致很多统计分析方法不能满足海量数据分析的
要求。19 世纪 60 年代的 [Tukey] 面向数据分析的主题，提出了探索性数据分析（exploratory data analysis, EDA）的新思路。

探索性数据分析(EDA)的特点：对数据来源的总体不作假设，并且假设检验也经常被排除在外。这一技术使用统计图表、图形和统计概括方法对数据的特征进行分析和描述。
EDA 技术的核心：

> “让数据说话”

在探索的基础上再对数据进行更为复杂的建模分析。

#. 计算 EDA 方法
:   包括从简单的统计计算到高级的用于探索分析多变量数据集中模式的多元统计分析方法。
#.  图形 EDA 方法
:   可视化的探索数据分析。

    常用的图形方法有
    
    * 直方图(histogram)

        + ![ordinary histogram & cummulative histogram](https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Cumulative_vs_normal_histogram.svg/350px-Cumulative_vs_normal_histogram.svg.png)

    * 茎叶图(stem leaf)

        ```plain
         4 | 4 6 7 9
         5 |
         6 | 3 4 6 8 8
         7 | 2 2 5 6
         8 | 1 4 8
         9 | 
        10 | 6
        key: 6|3=63
        leaf unit: 1.0
        stem unit: 10.0
        ```

    * 箱线图(box plot)
        + The "interquartile range", abbreviated "IQR", is just the width of
          the box in the box-and-whisker plot. That is, IQR = Q3 – Q1. The IQR
          can be used as a measure of how spread-out the values are. Statistics
          assumes that your values are clustered around some central value. The
          IQR tells how spread out the "middle" values are; it can also be used
          to tell when some of the other values are "too far" from the central
          value. These "too far away" points are called "outliers", because they
          "lie outside" the range in which we expect them.
        + ![](http://www.purplemath.com/modules/stats/boxwhisk08.gif)
        + (Why one and a half times the width of the box? Why does that
          particular value demark the difference between "acceptable" and
          "unacceptable" values? Because, when [John Tukey][Tukey] was inventing the
          box-and-whisker plot in 1977 to display these values, he picked 1.5×IQR
          as the demarkation line for outliers. This has worked well, so we've
          continued using that value ever since.)
        + ![](https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Boxplot_vs_PDF.svg/220px-Boxplot_vs_PDF.svg.png)
        + Adjusted box plots are intended for skew distributions. They rely on
          the medcouple（？？） statistic of skewness. For a medcouple value of MC, the
          lengths of the upper and lower whiskers are respectively defined to be
          $$1.5 \times IQR \times e^{3 MC}, ~\qquad~ 1.5 \times IQR \times e^{-4 MC} \text{if} MC \geq 0$$ and
          $$1.5 \times IQR \times e^{4 MC}, ~\quad~ 1.5 \times IQR \times e^{-3 MC} \text{if} MC \leq 0.$$
          Observe that for symmetrical distributions, the medcouple will be
          zero, and this reduces to Tukey's boxplot with equal whisker lengths
          of $1.5 \times IQR$ for both whiskers.
    * 散点图(scatter plot)
        + ![](http://www.itl.nist.gov/div898/handbook/eda/section3/gif/spmatr2.gif)
        + Given a set of variables X~1~, X~2~, ... , X~k~, the scatter plot matrix
          contains all the pairwise scatter plots of the variables on a single
          page in a matrix format. That is, if there are k variables, the scatter
          plot matrix will have k rows and k columns and the ith row and ~j~th
          column of this matrix is a plot of X~i~ versus X~j~.
        + Matlab 的 `plotmatrix` 函数
            - `plotmatrix(X,Y)`{.python} creates a matrix of subaxes containing scatter plots of the columns of X against the columns of Y. 
              If X is p-by-n and Y is p-by-m, then plotmatrix produces an n-by-m matrix of subaxes.
            - ![](http://cn.mathworks.com/help/releases/R2015b/examples/graphics/CreateScatterPlotMatrixwithTwoMatrixInputsExample_01.png)
    * 平行坐标图(parallel coordinate plot)

[Tukey]: https://en.wikipedia.org/wiki/John_Tukey

探索性空间数据分析(ESDA)：探索性数据分析(EDA)在空间数据分析(SDA: Spatial Data Analysis)领域的推广。将数据的统计分析和地图定位紧密结合在一起。
ESDA = EDA + SDA

ESDA：

1)概括空间数据的性质;
2)探索空间数据中的模式;
3)产生和地理数据相关的假设;
4)在地图上识别异常数据的分布位置;
5)发现是否存在热点区域(hotspots)。
地图能够定位案例及其空间关系，并能在分析、检验
和表示模型的结果中发挥重要作用。

read more

#. [探索性数据分析 (豆瓣)](http://book.douban.com/subject/1551897/)

### 空间点模式分析
### 格网或面状数据空间统计分析
### 地统计分析
### ArcGIS地统计分析

空间分析应用建模
----------------
]






Refs

#. GIS 理论与技术，第七章 GIS 空间分析与应用建模，Slides，秦昆，武汉大学
#. [Mean squared error - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Mean_squared_error)
#. [Mean - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Mean)
#. [峰度 - MBA智库百科](http://wiki.mbalib.com/wiki/%E5%B3%B0%E5%BA%A6)
#. [Exploratory data analysis - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Exploratory_data_analysis)
#. [Average absolute deviation - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Average_absolute_deviation)
#. [Median - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Median)
#. [Stem-and-leaf display - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Stem-and-leaf_display)
#. [Box-and-Whisker Plots: Interquartile Ranges and Outliers](http://www.purplemath.com/modules/boxwhisk3.htm)
#. [Box plot - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Box_plot)
#. [Mode (statistics) - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Mode_(statistics))
#. [Mean squared error - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Mean_squared_error)
#. [Medcouple - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Medcouple)
#. [Robust statistics - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Robust_statistics)
#. [Skewness - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Skewness)
#. [Histogram - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Histogram)
#. [1.3.3.26.11. Scatter Plot Matrix](http://www.itl.nist.gov/div898/handbook/eda/section3/scatplma.htm)
#. [Matrix of scatter plots by group - MATLAB gplotmatrix - MathWorks 中国](http://cn.mathworks.com/help/stats/gplotmatrix.html)
