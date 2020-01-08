---
title: 用 CvANN_MLP 进行路牌判别
date: 2015-11-30
key-words:
tags:
  - algorithm
  - cv
  - machine-learning
---

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

    -   [Release 2, 2016-07-31](http://whudoc.qiniudn.com/2016/SignProcessing_Release-2.7z), 962 KB
    -   [Release 1, 2016-07-30](http://whudoc.qiniudn.com/2016/SignProcessing_Release-1.7z), 478 KB

    ---

    刚才 fix 了几个错误，现在在 Ubuntu 也跑起来了

    **Linux `.so` files**

    [`.so` 文件](http://whudoc.qiniudn.com/2016/sp-sos.tar.xz) (10.1 MB)

    ```
    $ ls -alh
    total 44M
    drwxrwxr-x 2 tzx tzx 4.0K  8月  1 20:54 .
    drwxrwxr-x 3 tzx tzx 4.0K  8月  1 21:00 ..
    -rw-r--r-- 1 tzx tzx  13M  8月  1 20:53 libopencv_core.so.3.0.0
    -rw-r--r-- 1 tzx tzx 2.0M  8月  1 20:53 libopencv_imgcodecs.so.3.0.0
    -rw-r--r-- 1 tzx tzx  15M  8月  1 20:53 libopencv_imgproc.so.3.0.0
    -rw-r--r-- 1 tzx tzx 870K  8月  1 20:53 libopencv_ml.so.3.0.0
    -rw-r--r-- 1 tzx tzx 3.0M  8月  1 20:54 libQtCore.so.4
    -rw-r--r-- 1 tzx tzx  11M  8月  1 20:54 libQtGui.so.4
    ```

    **Linux binaries**

    -    [Release 1, 2016-08-01](http://whudoc.qiniudn.com/2016/SignProcessing_Release_linux-1.tar.xz) 869 KB

如何用已训练模型来测试图片是否是路牌

:   **SignProcessorDemo.exe**

    这个 exe 有三个功能，主要是用已经训练好的模型来预测（predict）。

    **功能 1，判别单张图片**

    加载一个图片，如果判定是一个路牌，用淡蓝色显示“Sign (pos)”：

    ![](http://whudoc.qiniudn.com/2016/SignProcessorDemo_2016-07-31_16-18-06.png)

    如果不是一个路牌，用红色显示“Not Sign (neg)”：

    ![](http://whudoc.qiniudn.com/2016/SignProcessorDemo_2016-07-31_16-25-23.png)

    **功能 2，判别文件夹下所有图片**

    批量判断。选择一个文件夹（这里是 `dir_of_images`）。

    ![](http://whudoc.qiniudn.com/2016/2016-07-31_16-20-34.png)

    判断结果输出在文本框内，包括图片数目、每张图片的路径以及判别结果：

    ```
    To Predict 38 images.


        processing D:/tzx/git/SignProcessing/data/input/dir_of_images/0002-team7 (109)-shift-sx-36-sy-16.bmp... done. assigned to [pos]
        ...
        processing D:/tzx/git/SignProcessing/data/input/dir_of_images/dir2/dir22/0001-team7 (108)-rand-cx0623-cy0398-r135.bmp... done. assigned to [neg]
    ```

    所选文件夹同一目录下还会出现两个目录 `pos` 和 `neg`，分别把判别后的图片拷贝到里里面：

    ![](http://whudoc.qiniudn.com/2016/explorer_2016-07-31_16-23-28.png)

    ![](http://whudoc.qiniudn.com/2016/explorer_2016-07-31_16-23-13.png)

    **功能 3，判别选择的多张图片**

    ![](http://whudoc.qiniudn.com/2016/SignProcessorDemo_2016-07-31_16-21-58.png)

    判别为路牌的，标记“Pos”，不是路牌的，标记“Neg”。

    **默认用了
    [`data/output/4.xml`](https://github.com/district10/SignProcessing/blob/qt4cv3vs2015/data/output/4.xml)
    来预测，你也可以点击【Load Another XML】加载别的已训练模型。**

    ---

    **1）双击运行 SignClassifierDemo.exe**

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

![正样本为人工选取的路牌](http://gnat.qiniudn.com/signcutter/cut.jpg)

因为正样本的数量有限，需要通过平移、旋转、镜像（镜像后再平移旋转）等方式从一张正样本产生多张类似正样本。
在 SignCutter 中通过点击【生成正样本】实现。

![](http://gnat.qiniudn.com/signcutter/pos_neg_click.jpg)

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

![正样本 87 张 & 负样本 602 张](http://gnat.qiniudn.com/signcutter/pos_neg.jpg)

为了保证得到的正样本足够好，我们不是在切片上进行这些操作，而是在源影像上，这就避免了
旋转平移后图片中存在空白。这通过一个 SignLogger 模块实现
（[源码](https://github.com/district10/SignProcessing/tree/qt4cv3vs2015/src/SignLogger)），
它记录了切片的源图片、归一化了的中心点、归一化了的宽度和高度。

![通过点击【查看切片记录】查看切片信息](http://gnat.qiniudn.com/signcutter/cutted_out_info.jpg)

![这就是刚才那张路牌切片的 log 信息](http://gnat.qiniudn.com/signcutter/pos_info.jpg)

整个正样本和负样本如图，红框内为切片区域，绿色矩形为正样本框（较密集），蓝色为负样本框（分散在源影像中非正样本区域）。

![](http://gnat.qiniudn.com/signcutter/sign_cut_demo.jpg)

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
// 层数和每层 neuron 个数对结果有一定影响，下文对此有论述
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
[Principles of training multi-layer neural network using backpropagation](notes/caffe-notes/backpropagation.html)。

Layer 的层数和每层的 neuron 数目对训练结果有较大影响，这是我之前测试后画的 Excel 表格：
^[顺便学习了 Excel 的 minimap 的用法哈哈。]

![CvANN::MLP 中神经网络层数对正确率的影响，可以看到 5 层，每层 neuron 数随指数函数光滑
    下降的情况下正确率最高，有 0.97164，这里的正确率是用正/负样本的 3/4 训练，剩下
    的 1/4 来测试得到的。](http://whudoc.qiniudn.com/2016/excel-1.png)

![CvANN::MLP 中 layerSizes（即每层中 neuron 的个数）对正确率的影响，可以看到指
    数函数就是叼](http://whudoc.qiniudn.com/2016/excel-2.png)

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

    // 每行每列 rgb
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
    // 四个区域
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
