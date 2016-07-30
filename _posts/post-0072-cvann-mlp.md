---
title: 用 CvANN_MLP 进行路牌判别
date: 2015-11-30
key-words:
tags:
    - algorithm
...

用 CvANN_MLP 进行路牌判别
=========================

>   这原是智能计算课程大作业。

（有时候我真的不知道怎么措辞，应该用“分类识别”，还是“判别”，还是“断别”？不在意
这些细节。我说的是区分一张图片是不是路牌，就这么简单。）

使用 ANN-MLP（神经网络--多层感知器）方法。利用 Qt4、OpenCV2 程序库，进行路牌的抠取、分类和识别。
开源在 GitHub：[district10/SignProcessing: 路牌提取、分类](https://github.com/district10/SignProcessing)，
包括源码、文档、测试数据和可执行文件。其中的
[qt4cv3vs2015](https://github.com/district10/SignProcessing/tree/qt4cv3vs2015)
分支将 OpenCV 更新到了 OpenCV3，重新梳理、整合了各个模块。

## 快速入门

文档贴在这里，原载 [Issues · district10/SignProcessing](https://github.com/district10/SignProcessing/issues)。

下载二进制

:   **DLL 依赖**

    Qt 和 OpenCV 的 dll，以及 VS2015 的 runtime，[点此下载](http://whudoc.qiniudn.com/2016/sp-dlls.7z) （11.2 MB），和下面的二进制
    执行档放到一起即可。

    **二进制执行档**

    -   [Release 1, 2016-07-30](http://whudoc.qiniudn.com/2016/SignProcessing_Release-1.7z), 478 KB

如何用已训练模型来测试图片是否是路牌

:   **1）双击运行 SignClassifierDemo.exe**

    ![](http://whudoc.qiniudn.com/2016/2016-07-30_03-34-16.png)

    **2）加载模型**

    点击【Load Trained】选择 XML 文件（在 `data/output` 文件夹）。
    我这里选择了 `4.xml`。

    **3）选择想要测试的图片**

    点击【Unknown】，选择一些图片（在 `data/input/tests` 文件夹）。

    如下图，

    ![](http://whudoc.qiniudn.com/2016/2016-07-30_08-50-08.png)

    还没有预测的图片下面有“???”标记，它表示还未测试。

    然后点击【Predict】。

    有的标记变成了“Pos”（是路牌），有得标记变成了“Neg”（不是路牌），
    如下图：

    ![](http://whudoc.qiniudn.com/2016/SignClassifierDemo_2016-07-30_08-51-00.png)

如何从数据训练模型

:   **1）双击运行 SignClassifierDemo.exe**

    **2）添加正负样本**

    点击【Pos】，选择一些正样本。（可用 <kbd>Control+A</kbd> 全选）

    同理，点击【Neg】，选择一些负样本。（加载可能有点慢）

    **3）训练**

    点击【Train】，训练开始。训练完成后，会提示已经训练的量。

    记得点击【Save Trained】保存训练参数，下次就可以直接用【Load Trained】加载它了。

    试试加载一些 Unknown，测试一下它的判断是否正确。

    ---

    就是这样。

从源码编译

:   -   安装 VS2015 社区版
    -   配置 Qt4 和 OpenCV3
    -   下载源码：[【qt4cv3vs2015 分支源码压缩包】](https://github.com/district10/SignProcessing/archive/qt4cv3vs2015.zip)

    具体见 [代码编译 · Issue #3 · district10/SignProcessing](https://github.com/district10/SignProcessing/issues/3)。

更进一步
--------

可以看到，看到程序能基本准确地分辨哪些是路牌，哪些不是。现在我从数据采集、处理，
程序编写来把整个流程说一遍。

### 源数据的处理

源数据是我们在武汉街头拍摄的路牌图片。大概像这样：

![](http://whudoc.qiniudn.com/2016/sp-rawinput.jpg)

因为源图片里面有车牌之类的没有打码（哪有这空啊……），就不分享了。

从源图片中提取正负样本，用的是我们组写的 Sign Cutter（路牌切割）程序
（[源码](https://github.com/district10/SignProcessing/tree/qt4cv3vs2015/src/SignCutter)），

![Sign Cutter](http://whudoc.qiniudn.com/2016/annlau-ppt.png)

利用它可以很快速地导入源影像，并进行切片处理。【保存切片】操作会把框选区域
保存成一个切片图，作为我们人工选取的正样本。同时，正样本需要转化到 24 &times; 24 的 RGB 图像，
为保证图片不失真，还要将之存储为 BMP 格式。

![正样本为人工选取的路牌][cutbmp]

因为正样本的数量有限，需要通过平移、旋转、镜像（镜像后再平移旋转）等方式从一张正样本产生多张类似正样本。
在 SignCutter 中通过点击【生成正样本】实现。

![posnegclick]

负样本则是从图中非正样本区域，随机选取中心点和旋转角度，选取而来。
正负样本选取比例我们设置为 1:7。通过点击【生成负样本】来快速地生成一系列负样本。
结果就是，一张源图片，一个人工框选区域，生成了 87 张正样本，602 张负样本。
最终我们生成了 8 组共 25,230 张正样本，69,894 张负样本，用于训练和检测。

你可以下载 [图片索引](http://whudoc.qiniudn.com/2016/sp-all.csv)，每一行代表一个样本，
后面的 1 表示“是路牌”，0 表示“不是路牌”，大概长这样：

```
1/pos/0001-team7 (1)-___.bmp, 1
1/pos/0001-team7 (1)-___-r000.bmp, 1
1/pos/0001-team7 (1)-___-r030.bmp, 1
...
8/neg/0025-team7 (292)-rand-cx0469-cy2820-r108.bmp, 0
8/neg/0025-team7 (292)-rand-cx0471-cy2508-r232.bmp, 0
8/neg/0025-team7 (292)-rand-cx0473-cy2701-r358.bmp, 0
```

图片数据在这里下载：

-   [1.7z](http://gnat.qiniudn.com/sczip/1.7z) 8.9M
-   [2.7z](http://gnat.qiniudn.com/sczip/2.7z)  10M
-   [3.7z](http://gnat.qiniudn.com/sczip/3.7z)  13M
-   [4.7z](http://gnat.qiniudn.com/sczip/4.7z)  24M
-   [5.7z](http://gnat.qiniudn.com/sczip/5.7z)  13M
-   [6.7z](http://gnat.qiniudn.com/sczip/6.7z)  10M
-   [7.7z](http://gnat.qiniudn.com/sczip/7.7z) 8.5M
-   [8.7z](http://gnat.qiniudn.com/sczip/8.7z) 3.1M

![正样本 87 张 & 负样本 602 张][posneg]

为了保证得到的正样本足够好，我们不是在切片上进行这些操作，而是在源影像上，这就避免了
旋转平移后图片中存在空白。这通过一个 SignLogger 模块实现
（[源码](https://github.com/district10/SignProcessing/tree/qt4cv3vs2015/src/SignLogger)），
它记录了切片的源图片、归一化了的中心点、归一化了的宽度和高度。

![通过点击【查看切片记录】查看切片信息][cuttedoutinfo]

![这就是刚才那张路牌切片的 log 信息][posinfo]

整个正样本和负样本如图，红框内为切片区域，绿色矩形为正样本框（较密集），蓝色为负样本框（分散在源影像中非正样本区域）。

![signcutdemo]

从文件名也能看出每个切片的信息，这里是正负样本文件名的
Sample^[完整版可以在 <http://gnat.qiniudn.com/sc/info-all.txt> 下载。]

```tree
原图片 team7 (148).jpg 产生的正负样本

.
├── pos                            （正样本 87 张）
│   ├── 0041-team7 (148)-___.bmp                 原切片
│   ├── 0041-team7 (148)-___-r030.bmp            原切片旋转 30 度
│   ├──..............................
│   ├── 0041-team7 (148)-___-r330.bmp
│   ├── 0041-team7 (148)-L-R.bmp                 左右镜像
│   ├── 0041-team7 (148)-L-R-r030.bmp            左右镜像后，旋转 30 度
│   ├── 0041-team7 (148)-L-R-r060.bmp
│   ├── 0041-team7 (148)-L-R-r090.bmp
│   ├── .............................
│   ├── 0041-team7 (148)-L-R-r330.bmp
│   ├── 0041-team7 (148)-shift-sx000-sy003.bmp   平移左右 0%，上下 3%
│   ├── .............................
│   ├── 0041-team7 (148)-shift-sx-10-sy-10.bmp
│   ├── 0041-team7 (148)-U-D.bmp                 上下镜像
│   ├── .............................
│   └── 0041-team7 (148)-U-D-r330.bmp
├── neg                            （负样本 602 张）
│   ├── 0041-team7 (148)-rand-cx0057-cy1450-r305.bmp 随机中心点、旋转角度
│   ├── ............................................
│   └── 0041-team7 (148)-rand-cx2393-cy2979-r299.bmp
└── team7 (148)-demo.jpg           （展示了正负样本切片位置）

2 directories, 696 files
```

有了正负样本，就看用 OpenCV 提供的 ANN_MLP 进行基于神经网络方法的学习。这部分知识附在本文末尾。

从编码的角度，利用神经网络多层感知器分类的实际比图片预处理、正负样本的生成要简单，
代码量也少很多。所以我从代码大概说一下使用方法。

首先，引入 OpenCV3 相关头文件：

```cpp
#include <opencv2/core.hpp>
#include <opencv2/ml.hpp>
```

我封装了一个 MLP 类，提供简单的训练接口（[源码](https://github.com/district10/SignProcessing/blob/qt4cv3vs2015/src/MLP/MLP.h)）。
这里是精简了的类声明：

```cpp
class MLP
{
public:
    MLP();                                          // 构造函数，mlp 的初始化
    ~MLP() { }

    void loadXML( const QString &xml  );            // 加载已经训练好的模型
    void saveXML( const QString &xml  );            // 保存训练好的模型
    void loadCSV( const QString &csv );             // 加载正负样本用于训练
    void train();                                   // 训练

    // 最后，对图片进行判别：是否为路牌
    //  输入为一串图片路径
    //  输出为图片路径和一个标志，true 说明图片为路牌，false 说明不是
    QList<QPair<QString, bool> > predictImages( const QStringList &images );

private:
    cv::Ptr<cv::ml::ANN_MLP> mlp;                   // 存储了参数
};
```

其中在构造函数中，要实例化 mlp，还要对它进行配置：

```cpp
mlp = cv::ml::ANN_MLP::create();
// 五层比较常见
mlp->setLayerSizes( (cv::Mat)(cv::Mat_<int>(1,5)
                                << FEATURENUM, FEATURENUM / 2, FEATURENUM / 6, FEATURENUM / 24, 1) );

// 激活函数设置为 sigmoid
mlp->setActivationFunction( cv::ml::ANN_MLP::SIGMOID_SYM, 1.0, 1.0 );

// 训练方法为反向传播
mlp->setTrainMethod( cv::ml::ANN_MLP::BACKPROP, 0.1, 0.1 );
mlp->setTermCriteria( cv::TermCriteria(
                            cv::TermCriteria::COUNT + cv::TermCriteria::EPS
                            , 5000
                            , 0.01 ) );
```

激活函数和反向传播的说明见本文末尾附录。反向传播一个比较好的文档见我的笔记：
[Principles of training multi-layer neural network using backpropagation](http://tangzx.qiniudn.com/notes/caffe-notes/backpropagation.html)。

设置好了，就可以用已经准备好的正负样本训练它。我们先不考虑的是如何从 24 &times; 24 的 RGB 图片，
生成 feature 向量（也就是这里的 `Utils::img2feature` 函数的实现细节）。

```cpp
// pos 和 neg 是图片路径列表，分别是正负样本集合
int np = pos.length();
int nn = neg.length();

// 生成数据集，这里的 features 和 flags 就是机器学习里
// 常说的 data 和 label
float *features = new float[FEATURENUM*(np + nn)];
float *flags    = new float[np + nn];

// 用图片初始化 features，并设置好 labels
for ( int i = 0; i < np; ++i ) {
    Utils::img2feature(qPrintable(pos.at(i)), features + FEATURENUM*i);
    *(flags + i)        =       1.0f;       // 正样本为 1
}
for ( int i = 0; i < nn; ++i ) {
    Utils::img2feature(qPrintable(neg.at(i)), features + FEATURENUM*np+FEATURENUM*i);
    *(flags + np + i)   =       -1.0f;      // 负样本为 -1
}

// 存到 OpenCV 的矩阵结构 Mat 里，并生成数据集
cv::Mat featureMat( np+nn, FEATURENUM,  CV_32F, features );
cv::Mat flagMat(    np+nn, 1,           CV_32F, flags );
cv::Ptr<cv::ml::TrainData> trainSet // mat 的每一行代表一条数据
    = cv::ml::TrainData::create( featureMat, cv::ml::ROW_SAMPLE, flagMat );

// 然后就可以训练了
mlp->train( trainSet );

// 不要忘了释放内存
delete[] features;
delete[] flags;
```

现在就能测试，

```cpp
float feature[FEATURENUM];
Utils::img2feature( "path/to/image", feature );

cv::Mat featureMat  ( 1, FEATURENUM,    CV_32F, feature );
cv::Mat result      ( 1, 1,             CV_32FC1 );

mlp->predict( featureMat, result );
float *p = result.ptr<float>(0);
```

这个 `*p` 大于 0，则图片被判定为路牌，否则不是路牌。

我们还可以将训练好的模型保存起来，方便下载加载：

```cpp
// 保存
mlp->save( "path/to/save/model(xml file)" );

// 加载
mlp = cv::Algorithm::load<cv::ml::ANN_MLP>( "path/to/saved-model.xml" );
```

我训练了几组数据，得到的 xml 文件见 [`data/output`](https://github.com/district10/SignProcessing/tree/qt4cv3vs2015/data/output) 文件夹。
大概长这样。

![](http://whudoc.qiniudn.com/2016/bp.png)

最后我们看看那个 `Utils::img2feature` 函数的实现（这里加上了额外的注释，做了额外的对齐）：

```cpp
// feature 已经分配好内存了，内存大小是 sizeof(float)*FEATURENUM
// FEATURENUM 是一个宏，定义为
//      #define FEATURENUM  ( 24*(3+3)+ 3 + 4*3 )
// 看了后面的数据处理你大概能懂这些数字每个代表什么

bool Utils::img2feature( const char *filePath, float *feature )
{
    Mat img = imread( filePath, cv::IMREAD_COLOR );
    if ( img.rows != IMGSIZE || img.cols != IMGSIZE ) {
        qDebug() << __FUNCDNAME__ << "failed, because of wrong dim," << "\tfilepath:" << filePath;
        return false;
    }

    int allCountR          =   0  , allCountG          =   0  , allCountB          =   0  ;
    int rowCountR[IMGSIZE] = { 0 }, rowCountG[IMGSIZE] = { 0 }, rowCountB[IMGSIZE] = { 0 };
    int colCountR[IMGSIZE] = { 0 }, colCountG[IMGSIZE] = { 0 }, colCountB[IMGSIZE] = { 0 };
    int tempR[4]           = { 0 }, tempG[4]           = { 0 }, tempB[4]           = { 0 };

    for( int i = 0; i < IMGSIZE; ++i ) {
        for( int j = 0; j < IMGSIZE; ++j ) {

            int b = img.at<cv::Vec3b>(i,j)[0];
            int g = img.at<cv::Vec3b>(i,j)[1];
            int r = img.at<cv::Vec3b>(i,j)[2];

            allCountR += r;     rowCountR[i] += r;     colCountR[j] += r;
            allCountG += g;     rowCountG[i] += g;     colCountG[j] += g;
            allCountB += b;     rowCountB[i] += b;     colCountB[j] += b;

            /*
             * 分成四个部分，统计各自区域内的 rgb 比例，四个区域低编号为：
             *
             *           0 | 1
             *           --+--
             *           2 | 3
            */
            int index = 2 * (i < IMGSIZE / 2 ? 0 : 1) + (j < IMGSIZE / 2 ? 0 : 1);
            tempR[index] += r;
            tempG[index] += g;
            tempB[index] += b;
        }
    }

    for ( int i=0; i < IMGSIZE; ++i ) {
        feature[i*6+0] = (float)rowCountR[i]/allCountR; // 第 i 行的红色占全图红色的比例
        feature[i*6+1] = (float)rowCountG[i]/allCountG; // 绿色
        feature[i*6+2] = (float)rowCountB[i]/allCountB; // 蓝色
        feature[i*6+3] = (float)colCountR[i]/allCountR; // 第 i 列
        feature[i*6+4] = (float)colCountG[i]/allCountG;
        feature[i*6+5] = (float)colCountB[i]/allCountB;
    }
    // rgb 三种颜色的比例
    feature[IMGSIZE*6+0] = (float)allCountR / (allCountR + allCountG +allCountB);
    feature[IMGSIZE*6+1] = (float)allCountG / (allCountR + allCountG +allCountB);
    feature[IMGSIZE*6+2] = (float)allCountB / (allCountR + allCountG +allCountB);

    for ( int i = 0; i < 4; ++i ) {
        // 区域内的 rgb 比例
        int total = tempR[i] + tempG[i] + tempB[i];
        feature[IMGSIZE*6+3 + 3*i+0] = (float)tempR[i] / total;
        feature[IMGSIZE*6+3 + 3*i+1] = (float)tempG[i] / total;
        feature[IMGSIZE*6+3 + 3*i+2] = (float)tempB[i] / total;
    }
    return true;
}
```

---

附录
----

这是我当时查看了的一些资料。

Multilayer perceptron

:   A multilayer perceptron (MLP) is a feedforward artificial neural network
    model that maps sets of input data onto a set of appropriate outputs. An MLP
    consists of multiple layers of nodes in a directed graph, with each layer fully
    connected to the next one. Except for the input nodes, each node is a neuron
    (or processing element) with a nonlinear activation function. MLP utilizes a
    supervised learning technique called backpropagation for training the network.
    MLP is a modification of the standard linear perceptron and can distinguish
    data that are not linearly separable.

    The term "multilayer perceptron" often causes confusion. It is argued the
    model is not a single perceptron that has multiple layers. Rather, it
    contains many perceptrons that are organised into layers, leading some to
    believe that a more fitting term might therefore be "multilayer perceptron
    network". Moreover, these "perceptrons" are not really perceptrons in the
    strictest possible sense, as true perceptrons are a special case of
    artificial neurons that use a threshold activation function such as the
    Heaviside step function, whereas the artificial neurons in a multilayer
    perceptron are free to take on any arbitrary activation function.
    Consequently, whereas a true perceptron performs binary classification, a
    neuron in a multilayer perceptron is free to either perform classification
    or regression, depending upon its activation function.

Artificial neural network

:   In machine learning and cognitive science, artificial neural networks
    (ANNs) are a family of models inspired by biological neural networks (the
    central nervous systems of animals, in particular the brain) and are used to
    estimate or approximate functions that can depend on a large number of inputs
    and are generally unknown. Artificial neural networks are generally presented
    as **systems of interconnected "neurons" which exchange messages between each
    other**. The connections have numeric weights that can be tuned based on
    experience, making neural nets **adaptive to inputs** and **capable of learning**.

    Like other machine learning methods - systems that learn from data - neural
    networks have been used to solve a wide variety of tasks that are hard to
    solve using ordinary rule-based programming, including computer vision and
    speech recognition.


![Multi-Layer Perceptrons (MLP)](http://docs.opencv.org/2.4/_images/mlp.png)

![We can classify people in this problem using a single layer perceptron](https://upload.wikimedia.org/wikiversity/en/thumb/2/29/Neural-Network-Example-2.jpg/500px-Neural-Network-Example-2.jpg)

![A perceptron learns by a trial and error like method. It takes the input such
    as our math and Star Trek scores and outputs what it thinks the persons job is.
    Based on how far off its guess is, we will adjust each weight slowly to
    compensate. This will move its answers over time to be more accurate](https://upload.wikimedia.org/wikiversity/en/c/cd/Neural-Network-Example-3.png)

![](https://upload.wikimedia.org/wikiversity/en/thumb/4/4a/Neural-Network-Example-4.jpg/500px-Neural-Network-Example-4.jpg)
![](https://upload.wikimedia.org/wikiversity/en/3/36/Neural-Network-Example-5.jpg)

![A Multilayer perceptron is two single layer perceptrons stacked on top of
    each other with typically a sigmoidal activation function between the two
    layers to make the numbers more crisp.](https://upload.wikimedia.org/wikiversity/en/thumb/b/b3/Neural-Network-Example-6.jpg/600px-Neural-Network-Example-6.jpg)

All the neurons in MLP are similar. Each of them has **several input links**
(it takes the output values from several neurons in the **previous layer** as
input) and **several output links** (it passes the response to several neurons
in the **next layer**). The values retrieved from the previous layer are summed
up with certain weights, individual for each neuron, plus the bias term. The
sum is transformed using the activation function $f$ that may be also different
for different neurons.


![](http://docs.opencv.org/2.4/_images/neuron_model.png)

In other words, given the outputs $x_j$ of the layer $n$ , the outputs $y_i$ of the layer $n+1$ are computed as:

$$
u_i =  \sum _j (w^{n+1}_{i,j}*x_j) + w^{n+1}_{i,bias}
$$

$$
y_i = f(u_i)
$$

Different activation functions may be used. ML implements three standard functions:


#. **Identity function** ( `CvANN_MLP::IDENTITY`{.cpp} ): $f(x)=x$

#. **Symmetrical sigmoid**[^sigmoid] ( `CvANN_MLP::SIGMOID_SYM`{.cpp} ): $f(x)=\beta*(1-e^{-\alpha x})/(1+e^{-\alpha x} )$, which is the default choice for MLP. The standard sigmoid with $\beta =1$, $\alpha =1$ is shown below:

    ![](http://docs.opencv.org/2.4/_images/sigmoid_bipolar.png)

#. **Gaussian function** ( `CvANN_MLP::GAUSSIAN`{.cpp} ): $f(x)=\beta e^{-\alpha x^2}$, which is not completely supported at the moment.

[^sigmoid]: A sigmoid function is a mathematical function having an "S" shape (sigmoid curve).

    单调递增的非线性函数，无限次可微。当且仅当权值较大时可以逼近阈值函数，当权值较小时逼线性函数。

    Besides the logistic function ($f(x) = \frac{L}{1 + \mathrm e^{-k(x-x_0)}}$),
    sigmoid functions include the ordinary arctangent, the
    hyperbolic tangent, the Gudermannian function, and the error function
    ($\operatorname{erf}(x) = \frac{2}{\sqrt\pi}\int_0^x e^{-t^2}\,\mathrm dt$),
    but also the generalised logistic function and algebraic functions
    like $f(x)=\tfrac{x}{\sqrt{1+x^2}}$.

    ![](https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Gjl-t%28x%29.svg/700px-Gjl-t%28x%29.svg.png)

    &nbsp;

In ML, all the neurons have the same activation functions, with the same free
parameters ($\alpha$, $\beta$) that are specified by user and are not altered
by the training algorithms.

So, the whole trained network works as follows:

#. Take the **feature vector as input**. The vector size is equal to the size of the input layer.
#. Pass values as input to **the first hidden layer** .
#. **Compute outputs** of the hidden layer using the weights and the activation functions.
#. Pass outputs further **downstream until you compute the output layer**.

So, to compute the network, you need to know all the weights $w^{n+1}_{i,j}$.
The weights are computed by the training algorithm. The algorithm takes a
training set, multiple input vectors with the corresponding output vectors, and
iteratively adjusts the weights to enable the network to give the desired
response to the provided input vectors.

The larger the network size (the number of hidden layers and their sizes) is,
the more the **potential network flexibility** is. The error on the training set
could be made arbitrarily small. But at the same time the learned network also
“learns” the noise present in the training set, so the error on the test set
usually starts increasing after the network size reaches a limit. Besides, the
larger networks are trained much longer than the smaller ones, so it is
reasonable to pre-process the data, using `PCA::operator()`{.cpp} or similar technique,
and train a smaller network on only essential features.

Another MLP feature is an inability to handle categorical data as is. However,
there is a workaround. If a certain feature in the input or output (in case of
$n$-class classifier for $n>2$) layer is categorical and can take $M>2$
different values, it makes sense to represent it as a binary tuple of $M$
elements, where the $i$-th element is 1 if and only if the feature is equal to
the $i$-th value out of $M$ possible. It increases the size of the input/output
layer but speeds up the training algorithm convergence and at the same time
enables “fuzzy” values of such variables, that is, a tuple of probabilities
instead of a fixed value.

ML implements two algorithms for training MLP’s. The first algorithm is a
classical random sequential **back-propagation**[^back-propagation] algorithm. The second (default)
one is a **batch RPROP algorithm**.

[^back-propagation]: Backpropagation, an abbreviation for "backward propagation
    of errors", is a common method of training artificial neural networks used in
    conjunction with an optimization method such as gradient descent. The method
    calculates the gradient of a loss function with respect to all the weights in
    the network. The gradient is fed to the optimization method which in turn uses
    it to update the weights, in an attempt to minimize the loss function.

    BP 算法就是通过迭代优化网络的权值使得输出与输入之间的实际映射关系与所期望的映射关系一致，
    采用梯度下降算法通过调整各层权值求目标函数最小化。

    Backpropagation requires a known, desired output for each input value in
    order to calculate the loss function gradient. It is therefore usually
    considered to be a supervised learning method, although it is also used in
    some unsupervised networks such as autoencoders. It is a generalization of
    the delta rule to multi-layered feedforward networks, made possible by
    using the chain rule to iteratively compute gradients for each layer.
    Backpropagation requires that the activation function used by the
    artificial neurons (or "nodes") be differentiable.

    Since backpropagation uses the gradient descent method, one needs to
    calculate the derivative of the squared error function with respect to the
    weights of the network. Assuming one output neuron,[note 2] the squared
    error function is:

    $$E = \tfrac{1}{2}(t - y)^2,$$

    where
      ~ $E$ is the squared error,
      ~ $t$ is the target output for a training sample, and
      ~ $y$ is the actual output of the output neuron.

    The factor of $\textstyle\frac{1}{2}$ is included to cancel the exponent
    when differentiating. Later, the expression will be multiplied with an
    arbitrary learning rate, so that it doesn't matter if a constant
    coefficient is introduced now.

    For each neuron $j$, its output $o_{j}$ is defined as

    $$o_{j} = \varphi(\mbox{net}_{j}) = \varphi\left(\sum_{k=1}^{n}w_{kj}o_k\right).$$

    The input $\mbox{net}_{j}$ to a neuron is the weighted sum of outputs o_k
    of previous neurons. If the neuron is in the first layer after the input
    layer, the $o_k$ of the input layer are simply the inputs $x_k$ to the
    network. The number of input units to the neuron is $n$. The variable
    $w_{ij}$ denotes the weight between neurons $i$ and $j$.

    The activation function $\varphi$ is in general non-linear and
    differentiable. A commonly used activation function is the logistic
    function:

    $$\varphi(z) = \frac{1}{1+e^{-z}}$$

    which has a nice derivative of:

    $$\frac {\partial\varphi}{\partial z} = \varphi(1-\varphi)$$

    Calculating the partial derivative of the error with respect to a weight
    $w_{ij}$ is done using the chain rule twice:

    $$\frac{\partial E}{\partial w_{ij}} = \frac{\partial E}{\partial o_j} \frac{\partial o_j}{\partial\mathrm{net_j}} \frac{\partial \mathrm{net_j}}{\partial w_{ij}}$$

    In the last term of the right-hand side of the following, only one term in
    the sum $\mathrm{net_j}$ depends on $w_{ij}$, so that

    $$\frac{\partial \mathrm{net_j}}{\partial w_{ij}} = \frac{\partial}{\partial w_{ij}}\left(\sum_{k=1}^{n}w_{kj}o_k\right) = o_i.$$

    If the neuron is in the first layer after the input layer, $o_i$ is just
    $x_i$. The derivative of the output of neuron $j$ with respect to its input
    is simply the partial derivative of the activation function (assuming here
    that the logistic function is used):

    $$\frac{\partial o_j}{\partial\mathrm{net_j}} = \frac {\partial}{\partial \mathrm{net_j}}\varphi(\mathrm{net_j}) = \varphi(\mathrm{net_j})(1-\varphi(\mathrm{net_j}))$$

    This is the reason why backpropagation requires the activation function to
    be differentiable.

    The first term is straightforward to evaluate if the neuron is in the
    output layer, because then $o_j = y$ and

    $$\frac{\partial E}{\partial o_j} = \frac{\partial E}{\partial y} = \frac{\partial}{\partial y} \frac{1}{2}(t - y)^2 = y - t$$

    However, if $j$ is in an arbitrary inner layer of the network, finding the derivative E with respect to $o_j$ is less obvious.

    Considering $E$ as a function of the inputs of all neurons $L = {u, v, \dots, w}$ receiving input from neuron $j$,

    $$\frac{\partial E(o_j)}{\partial o_j} = \frac{\partial E(\mathrm{net}_u, \mathrm{net}_v, \dots, \mathrm{net}_w)}{\partial o_j}$$

    and taking the total derivative with respect to $o_j$, a recursive expression for the derivative is obtained:

    $$\frac{\partial E}{\partial o_j} = \sum_{l \in L} \left(\frac{\partial E}{\partial \mathrm{net}_l}\frac{\partial \mathrm{net}_l}{\partial o_j}\right) = \sum_{l \in L} \left(\frac{\partial E}{\partial o_{l}}\frac{\partial o_{l}}{\partial \mathrm{net}_l}w_{jl}\right)$$

    Therefore, the derivative with respect to $o_j$ can be calculated if all
    the derivatives with respect to the outputs $o_l$ of the next layer - the
    one closer to the output neuron – are known.

    Putting it all together:

    $$\dfrac{\partial E}{\partial w_{ij}} = \delta_{j} o_{i}$$

    with

    $$\delta_{j} = \frac{\partial E}{\partial o_j} \frac{\partial o_j}{\partial\mathrm{net_j}} = \begin{cases}
    (o_{j}-t_{j})\varphi(\mbox{net}_{j})(1-\varphi(\mbox{net}_{j})) & \mbox{if } j \mbox{ is an output neuron,}\\
    (\sum_{l\in L} \delta_{l} w_{jl})\varphi(\mbox{net}_{j})(1-\varphi(\mbox{net}_{j}))  & \mbox{if } j \mbox{ is an inner neuron.}
    \end{cases}$$

    To update the weight $w_{ij}$ using gradient descent, one must choose a
    learning rate, $\alpha$. The change in weight, which is added to the old
    weight, is equal to the product of the learning rate and the gradient,
    multiplied by -1:

    $$\Delta w_{ij} = - \alpha \frac{\partial E}{\partial w_{ij}}$$

    The $\textstyle -1$ is required in order to update in the direction of a minimum, not a maximum, of the error function.

    For a single-layer network, this expression becomes the Delta Rule. To better understand how backpropagation works, here is an example to illustrate it: The Back Propagation Algorithm, page 20.

    Limitations

    #. Gradient descent can find the local minimum instead of the global
       minimum Gradient descent with backpropagation is not guaranteed to global
       minimum of the error function, but only a local minimum; also, it has
       trouble crossing plateaus in the error function landscape. This issue,
       caused by the non-convexity of error functions in neural networks, was long
       thought to be a major drawback, but in a 2015 review article, Yann LeCun et
       al. argue that in many practical problems, it isn't.
    #. Backpropagation learning does not require normalization of input
       vectors; however, normalization could improve performance

    A simple neural network with two input units and one output unit:

    ![](https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/A_simple_neural_network_with_two_input_units_and_one_output_unit.png/250px-A_simple_neural_network_with_two_input_units_and_one_output_unit.png)

    gradient descent:

    ![](https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Extrema_example.svg/250px-Extrema_example.svg.png)

    &nbsp;

CvANN_MLP
---------

`CvANN_MLP::create`{.cpp}

:   Constructs MLP with the specified topology.

    Unlike many other models in ML that are constructed and trained at once, in the
    MLP model these steps are separated. First, a network with the specified
    topology is created using the non-default constructor or the method
    `CvANN_MLP::create()`{.cpp}. All the weights are set to zeros. Then, the network is
    **trained using a set of input and output vectors**. The training procedure can be
    repeated more than once, that is, the weights can be adjusted based on the new
    training data.

    ```cpp
    void CvANN_MLP::create( const Mat& layerSizes,
                            int activateFunc=CvANN_MLP::SIGMOID_SYM,
                            double fparam1=0,
                            double fparam2=0 );

    void CvANN_MLP::create( const CvMat* layerSizes,
                            int activateFunc=CvANN_MLP::SIGMOID_SYM,
                            double fparam1=0,
                            double fparam2=0 );
    ```

    Parameters

    i. `layerSizes` – Integer vector specifying the number of neurons in each
       layer including the input and output layers.
    #. `activateFunc` – Parameter specifying the activation function for each
       neuron: one of `CvANN_MLP::IDENTITY`{.cpp}, `CvANN_MLP::SIGMOID_SYM`{.cpp},
       and `CvANN_MLP::GAUSSIAN`{.cpp}.
    #. `fparam1` – Free parameter of the activation function, $\alpha$. See the
       formulas in the introduction section.
    #. `fparam2` – Free parameter of the activation function, $\beta$. See the
       formulas in the introduction section.

`CvANN_MLP::train`{.cpp}

:   Trains/updates MLP.

    ```cpp
    int CvANN_MLP::train( const Mat& inputs,
                          const Mat& outputs,
                          const Mat& sampleWeights,
                          const Mat& sampleIdx=Mat(),
                          CvANN_MLP_TrainParams params=CvANN_MLP_TrainParams(),
                          int flags=0 );

    int CvANN_MLP::train( const CvMat* inputs,
                          const CvMat* outputs,
                          const CvMat* sampleWeights,
                          const CvMat* sampleIdx=0,
                          CvANN_MLP_TrainParams params=CvANN_MLP_TrainParams(),
                          int flags=0 );
    ```

    i. `inputs` – Floating-point matrix of input vectors, one vector per row.
    #. `outputs` – Floating-point matrix of the corresponding output vectors, one vector per row.
    #. `sampleWeights` – (`RPROP` only) Optional floating-point vector of weights for each sample. Some samples may be more important than others for training. You may want to raise the weight of certain classes to find the right balance between hit-rate and false-alarm rate, and so on.
    #. `sampleIdx` – Optional integer vector indicating the samples (rows of inputs and outputs) that are taken into account.
    params – Training parameters. See the `CvANN_MLP_TrainParams`{.cpp} description.
    #. `flags`
        * Various parameters to control the training algorithm. A combination of the following parameters is possible:

            + `UPDATE_WEIGHTS` Algorithm updates the network weights, rather than
              computes them from scratch. In the latter case the weights are
              initialized using the Nguyen-Widrow algorithm.
            + `NO_INPUT_SCALE` Algorithm does not normalize the input vectors. If
              this flag is not set, the training algorithm normalizes each input
              feature independently, shifting its mean value to 0 and making the
              standard deviation equal to 1. If the network is assumed to be updated
              frequently, the new training data could be much different from original
              one. In this case, you should take care of proper normalization.
            + `NO_OUTPUT_SCALE` Algorithm does not normalize the output vectors. If
              the flag is not set, the training algorithm normalizes each output
              feature independently, by transforming it to the certain range
              depending on the used activation function.

`CvANN_MLP::predict`{.cpp}

:   Predicts responses for input samples.

    ```cpp
    float CvANN_MLP::predict( const Mat& inputs,
                              Mat& outputs) const;

    float CvANN_MLP::predict( const CvMat* inputs,
                              CvMat* outputs) const;
    ```

    If you are using the default `cvANN_MLP::SIGMOID_SYM` activation function
    with the default parameter values fparam1=0 and fparam2=0 then the function
    used is y = 1.7159*tanh(2/3 * x), so the output will range from [-1.7159,
    1.7159], instead of [0,1].

`int CvANN_MLP::get_layer_count()`

`const CvMat* CvANN_MLP::get_layer_sizes();`{.cpp}

`double *CvANN_MLP::get_weights( int layer );`{.cpp}

An example
----------

```cpp
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/ml/ml.hpp>
#include <iostream>
#include <string>

using namespace std;
using namespace cv;

int main()
{
    CvANN_MLP bp;

    //  CvANN_MLP_TrainParams::CvANN_MLP_TrainParams()
    //  {
    //      term_crit = cvTermCriteria(
    //              CV_TERMCRIT_ITER + CV_TERMCRIT_EPS, 1000, 0.01 );
    //      train_method = RPROP;
    //      bp_dw_scale = bp_moment_scale = 0.1;
    //      rp_dw0 = 0.1; rp_dw_plus = 1.2; rp_dw_minus = 0.5;
    //      rp_dw_min = FLT_EPSILON; rp_dw_max = 50.;
    //  }
    CvANN_MLP_TrainParams params;

    // CvANN_MLP_TrainParams::BACKPROP The back-propagation algorithm.
    // CvANN_MLP_TrainParams::RPROP The RPROP algorithm.
    params.train_method = CvANN_MLP_TrainParams::BACKPROP;

    // Strength of the weight gradient term. The recommended value is about 0.1
    // params.bp_dw_scale = 0.1;

    // Strength of the momentum term (the difference between weights on the 2
    // previous iterations). This parameter provides some inertia to smooth the
    // random fluctuations of the weights. It can vary from 0 (the feature is
    // disabled) to 1 and beyond. The value 0.1 or so is good enough
    // params.bp_moment_scale = 0.1;

    // Initial value \Delta_0 of update-values \Delta_{ij}.
    // params.rp_dw0 = 0.1;

    // Increase factor \eta^+. It must be >1.
    // params.rp_dw_plus = 1.2;

    // Decrease factor \eta^-. It must be <1.
    // params.rp_dw_minus = 0.5;

    // Update-values lower limit \Delta_{min}. It must be positive.
    // params.rp_dw_min = FLT_EPSILON;

    // Update-values upper limit \Delta_{max}. It must be >1.
    // params.rp_dw_max = 50.;

    // void CvANN_MLP::create(const Mat& layerSizes,
    //                        int activateFunc=CvANN_MLP::SIGMOID_SYM,
    //                        double fparam1=0,
    //                        double fparam2=0 )
    // * layerSizes – #neurons in each layer including the input/output layers
    // * activateFunc – activation function for each neuron
    //      CvANN_MLP::IDENTITY
    //      CvANN_MLP::SIGMOID_SYM
    //      CvANN_MLP::GAUSSIAN
    // * fparam1 – Free parameter of the activation function, \alpha
    // * fparam2 – Free parameter of the activation function, \beta
    Mat layerSizes=(Mat_<int>(1,5) << 5,2,2,2,5);
    bp.create( layerSizes, CvANN_MLP::SIGMOID_SYM );

    // int CvANN_MLP::train(
    //      const Mat& inputs,
    //      const Mat& outputs,
    //      const Mat& sampleWeights,
    //      const Mat& sampleIdx=Mat(),
    //      CvANN_MLP_TrainParams params=CvANN_MLP_TrainParams()
    //      int flags=0 )

    float trainingData[3][5] = {
        {   1,   2,   3,   4,  5 },
        { 111, 112, 113, 114, 115},
        {  21,  22,  23,  24,  25},
    };
    Mat trainingDataMat(3, 5, CV_32FC1, trainingData);

    float labels[3][5] = {
        { 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0 },
        { 1, 1, 1, 1, 1 },
    };
    Mat labelsMat(3, 5, CV_32FC1, labels);

    bp.train( trainingDataMat, labelsMat, Mat(), Mat(), params );

    // Data for visual representation
    int width = 512, height = 512;
    Mat image = Mat::zeros( height, width, CV_8UC3 );
    Vec3b green( 0, 255, 0 ), blue ( 255, 0, 0 );

    // Show the decision regions given by the SVM
    for ( int i = 0; i < image.rows; ++i ) {
        for ( int j = 0; j < image.cols; ++j ) {
            Mat sampleMat = (Mat_<float>(1,5) << i,j,0,0,0);
            Mat responseMat;
            bp.predict( sampleMat, responseMat );
            float *p = responseMat.ptr<float>(0);
            float response = 0.0f;
            for( int k=0; k < 5; k++ ) {
                response += p[k];
            }
            if ( response > 2 ) {
                image.at<Vec3b>(j, i)  = green;
            } else {
                image.at<Vec3b>(j, i)  = blue;
            }
        }
    }

    // Show the training data
    circle( image, Point(501,  10), 5, Scalar(  0,   0,   0), -1, 8 );
    circle( image, Point(255,  10), 5, Scalar(255, 255, 255), -1, 8 );
    circle( image, Point(501, 255), 5, Scalar(255, 255, 255), -1, 8 );
    circle( image, Point( 10, 501), 5, Scalar(255, 255, 255), -1, 8 );

    imwrite("result.png", image);       // save the image
    imshow("BP Simple Example", image); // show it to the user
    cvWaitKey(0);
}
```

---

**参考文献**

#. [Artificial neural network - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Artificial_neural_network)
#. [Backpropagation - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Backpropagation)
#. [Backpropagation](http://galaxy.agh.edu.pl/~vlsi/AI/backp_t_en/backprop.html) &hearts;
#. [Class: OpenCV::CvANNMLPTrainParams — Documentation by YARD 0.8.7.4](http://ropencv.aduda.eu/doc/OpenCV/CvANNMLPTrainParams.html)
#. [Learning and neural networks - Wikiversity](https://en.wikiversity.org/wiki/Learning_and_Neural_Networks)
#. [Multilayer perceptron - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Multilayer_perceptron)
#. [Neural Networks — OpenCV 2.4.12.0 documentation](http://docs.opencv.org/2.4/modules/ml/doc/neural_networks.html)
#. [OpenCV进阶之路：神经网络识别车牌字符 - ☆Ronny丶 - 博客园](http://www.cnblogs.com/ronny/p/opencv_road_more_01.html)
#. [Sigmoid function - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Sigmoid_function)
#. [【模式识别】OpenCV中使用神经网络 CvANN_MLP - 小魏的修行路 - 博客频道 - CSDN.NET](http://blog.csdn.net/xiaowei_cqu/article/details/9027617)
#. [【模式识别】反向传播神经网络 BPNN - 小魏的修行路 - 博客频道 - CSDN.NET](http://blog.csdn.net/xiaowei_cqu/article/details/9023247)
#. [感知器与梯度下降 - ☆Ronny丶 - 博客园](http://www.cnblogs.com/ronny/p/ann_01.html)
#. [神经网络：多层网络与C++实现 - ☆Ronny丶 - 博客园](http://www.cnblogs.com/ronny/p/ann_02.html)
#. [OpenCV: cv::ml::ANN_MLP Class Reference](http://docs.opencv.org/master/d0/dce/classcv_1_1ml_1_1ANN__MLP.html#ac24cc2e2fc5cd1dd74fd5da31886fbb7)
#. [Miscellaneous Image Transformations — OpenCV 2.3.2 documentation](http://www.opencv.org.cn/opencvdoc/2.3.2/html/modules/imgproc/doc/miscellaneous_transformations.html)
#. [OpenCV: cv::ml::StatModel Class Reference](http://docs.opencv.org/master/db/d7d/classcv_1_1ml_1_1StatModel.html#a1f3854a1d367973da4c27dc5f54d3348)
#. [OpenCV: cv::ml::ANN_MLP Class Reference](http://docs.opencv.org/master/d0/dce/classcv_1_1ml_1_1ANN__MLP.html#afb51e414f22dd69f281a569145ccfad7)
#. [OpenCV: cv::ml::TrainData Class Reference](http://docs.opencv.org/master/dc/d32/classcv_1_1ml_1_1TrainData.html)
#. [OpenCV: cv::ml::TrainData Class Reference](http://docs.opencv.org/master/dc/d32/classcv_1_1ml_1_1TrainData.html#a1f2950eb49e251cafa3a62a8afc8ed72)
#. [Back-propagation Neural Net - CodeProject](http://www.codeproject.com/Articles/13582/Back-propagation-Neural-Net)
#. [Test Run - Neural Network Back-Propagation for Programmers](https://msdn.microsoft.com/en-us/magazine/jj658979.aspx)

[cutbmp]: http://gnat.qiniudn.com/signcutter/cut.jpg
[posneg]: http://gnat.qiniudn.com/signcutter/pos_neg.jpg
[posinfo]: http://gnat.qiniudn.com/signcutter/pos_info.jpg
[signcutdemo]: http://gnat.qiniudn.com/signcutter/sign_cut_demo.jpg
[cuttedoutinfo]: http://gnat.qiniudn.com/signcutter/cutted_out_info.jpg
[posnegclick]: http://gnat.qiniudn.com/signcutter/pos_neg_click.jpg
[signcutterui]: http://gnat.qiniudn.com/signcutter/signcutter_ui.jpg
