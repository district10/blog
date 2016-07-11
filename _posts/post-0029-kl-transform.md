---
title: KL Transform | 主分量变换
date: 2014-02-22
keywords:
    - pca
    - kl transform
tags:
    - pca
    - kl transform
    - math
...

KL Transform | 主分量变换
=========================

KL 变换即 Karhunen-Loève Transform，是一种选取主要分量，剔除冗余数据的变换操作，
其实也就是一种 PCA（主分量（Principal component）变换）。KL 变换时大三时模式
识别课程上学习的一个算法。我使用了 Eigen 库在 Linux 下实现，而不是像大多数人
那样用 Matlab。好处是我可以继续喷“Windows sucks”、“Matlab 就这样还要钱？”（原谅
我那时愚蠢而偏激），坏处是别人都很快写出来用 KL 变换处理 RGB 图片生成细节完美的
灰度图的 matlab 代码，而我的 c++ 程序那时候只能处理数组……

![长轴上数据更分散，对数据区分度更大。KL 变换的目的就是找到长轴，忽略短轴，用更
    少的维度“近似地”表达原来的信息。](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/GaussianScatterPCA.svg/220px-GaussianScatterPCA.svg.png)

为了不输得那么惨，我还专门 contrive 了一个 demo 数据，用来展示我“破烂”的 c++ 代
码确实能够区分主分量，就像这样：

![在 Linux 下运行效果（当时还不能处理图片）](http://gnat.qiniudn.com/tmp/kltransform.png)

图片有点小，放大点看……

![](http://whudoc.qiniudn.com/2016/kltransform2.png)

可以看到其实我是先用 gcc 编译了代码，然后运行，
我瞎掰的原始数据是一个二维数组（见“the original data”），
每一列是一个样本数据。可以看到，数据集的最后一行全是零，
是冗余数据（也就是说样本在最后一个维度上完全没有区分度），
理论上 kl 变换之后最后一个维度应该被舍去。

通过 Eigen 库支撑下我强大的 c++ 程序后，数据成功的剔除了
最后一个维度，你可以看到变换矩阵最后一列全是 0（见“The Transpose matrix”），
这就对啦！虽然不能处理图像，但至少 kl 变换是有了。

代码其实不多，我干脆贴过来把：

```cpp
/* Pattern Classification homework
 *
 * Algorithm: Karhunen-Loeve Transform
 *
 * Notice: You need Eigen library, and a compiler with support of c++0x
 *
 * Compile it use something like this:
 *    g++ -std=c++0x -I/YOUR/EIGEN/LIB/PATH kl_transform.cpp -o kl_transform
 *    (at least g++ version 4.7)
 *
 * Author: Tang Zhixiong
 * Contact me at:  gnat_tang@yeah.net
 */

#include <Eigen/Eigenvalues>
#include <Eigen/Dense>
#include <iostream>
#include <cassert>
#include <map>

using namespace std;
using namespace Eigen;

/// MatrixXcf -> MatrixXf
MatrixXf getRealPart(const MatrixXcf& input);

/// Take a square matrix, output a shrinked matrix
MatrixXf kl_transform(const MatrixXf& square,int num_shrink);

int main()
{
  MatrixXf data(4, 8);
  data << 0, 0, 1, 1, 0, 0, 1, 1,
          0, 0, 0, 0, 1, 1, 1, 1,
          0, 1, 0, 1, 0, 1, 0, 1,
          0, 0, 0, 0, 0, 0, 0, 0;

  MatrixXf m = data.rowwise().mean();
  MatrixXf St =
    (data * data.transpose()) / data.cols()
    + m * m.transpose();

  int num_shrink = 0;
  cout << "num_shrink:(in this demo, 1 is fine) ";
  cin >> num_shrink;

  auto TransMat =  kl_transform(St, num_shrink);
  cout << "#################################" << endl;
  cout << "The original data: " << endl
       << data << endl << endl;
  cout << "The Transpose matrix is : " << endl
       << TransMat << endl << endl;
  cout << "After transpose, the sample projected to:  " << endl
       << TransMat * data << endl << endl;

   cout << "#################################" << endl
    << "Notice that the last row of original data," << endl
    << "ALL 0, that's redundant!" << endl
    << "So the eigenvectors' last coefficiency should be 0," << endl
    << "and they really are!!!" << endl;
  return 0;
}

/// ##################################
/// # IMPLEMENTATION
/// ##################################

MatrixXf getRealPart(const MatrixXcf& input)
{
  assert( input.cols() == 1
      && "Forgive me, getRealPart() is not god...");
  auto rows = input.rows();
  MatrixXf output(rows, 1);

  for(size_t i = 0; i < rows; ++i) {
    output.col(0)[i] = input.col(0)[i].real();
  }

  return output;
}

MatrixXf kl_transform(const MatrixXf& square,int num_shrink = 1)
{
  auto rows = square.rows();
  auto cols = square.cols();
  assert (rows == cols
      && "kl_transforme take square matrix, ONLY");
  assert (num_shrink >= 0 && num_shrink < rows
      && "drop some dementions, but NOT ALL" );

  auto new_rows = rows - num_shrink;
  auto new_cols = cols;
  MatrixXf output( new_rows, new_cols );

  EigenSolver<MatrixXf> es(square);
  auto eigen_values = es.eigenvalues();
  auto eigen_vectors = es.eigenvectors();

  map<float, MatrixXcf> projection;
  for( size_t i = 0; i < rows; ++i) {
    assert (eigen_values[i].imag() == 0.0
        && "We cant solve problem with imagery part not 0");
    projection[ eigen_values[i].real() ] =  eigen_vectors.col(i);
  }

  auto my_end = projection.begin();
  while ( num_shrink != 0 ) {
    ++my_end;
    --num_shrink;
  }
  projection.erase (projection.begin(), my_end); /// delete these muggles
  cout << "#########################################" << endl;
  cout << "After drop " << rows - new_rows << " dementions: " << endl;
  for(const auto& item : projection) {
    static int i = 0;
    output.row(i) = getRealPart( item.second ).transpose();
    cout << "eigen_value: " << item.first << " "
     << "eigen_vector: " << output.row(i) << endl;
    ++i;
  }

  return output;
}
```

其实处理图像，也就是把 RGB 三个通道，当场三个维度，把所有的像素值扔进去处理，
并不比这个数组麻烦。只要你知道如何 1）读取图片；2）图片转化为数组；
3）数组转会成图片。那时候我 OpenCV 很不熟，后来我添加了这个功能，代码托管在
GitHub，详细见：[district10/Pattern_Classification](https://github.com/district10/Pattern_Classification)。
下面继续这个 kl 变换的故事。

---

接着上面的 kl 变换的故事。过了大概一个学期，另一门课（《遥感学实习》？），需要
做变化检测，植被 NDVI 计算等内容，我就把原来没有弄好的 kl 变换拿出来，用 OpenCV
写了一遍，于是就能处理图片了。居然没花什么功夫就写出来了！~（说了其实很简单的嘛）

（其实 OpenCV 的矩阵运算，也都是用的 Eigen 库。）

这里是几个效果图。

1. 对普通 RGB 彩色图进行 kl 变换，加权融合成一张灰度图。图片似乎是我从 OpenCV 源码里找来的，看上去挺适合做这个展示。

![RGB彩色图](http://gnat.qiniudn.com/tmp/KL_RGB_pepper_result.jpg)

可以看到几乎只有 R 通道纹理是丰富的，所以 kl 变换后，这个通道的信息得到了极大的保留，而
B 和 G 通道则几乎都是黑乎乎一片，就被抑制掉了。（图片很大，看不清的话可以用新窗口打开看。）

效果和之前大家用 Matlab 做的就差不多了。我在网上随手也找了一份 matlab 代码：
[KL Transform (Karhunen–Loève Theorem) - File Exchange - MATLAB
Central](https://www.mathworks.com/matlabcentral/fileexchange/37082-kl-transform--karhunen-lo%c3%a8ve-theorem-)。
我的 C++ 源码：[Pattern_Classification/kl_transform_imageRGB.cpp at gh-pages · district10/Pattern_Classification · GitHub](https://github.com/district10/Pattern_Classification/blob/gh-pages/kl_transform_imageRGB.cpp)，
当时为了炫技，还用了 C++11 的 auto……现在想想真是毫不必要。

（话说那时候我用的还是渗透系统 kali……但啥也没学会。:confounded:）

2. 对遥感影像的各个波段（比 RGB 彩色图多了好几个通道）进行 kl 变换，加权融合成
一张灰度图。这是一组 7 波段遥感影像 kl 变换后的效果。

![多波段影像](http://gnat.qiniudn.com/tmp/KL_Multiband_result.jpg)


3. 变化检测

就是检测遥感影像哪部分像素值发生了变化，用于检测监控自然灾害。我这使用的 python 写得，而且
只是进行像素的对比，对像素发生变化的区域显示了出来，很 naive（因为两张遥感影像怎么可能像素完全不变呢，
老师给的数据明显是自己拿一张图修改了下生成了第二张。可以说我这种变化检测代码没有实际意义），但还是
贴在这里。

![变化检测](http://gnat.qiniudn.com/tmp/image_diff_result.jpg)

4. [NDVI](https://en.wikipedia.org/wiki/Normalized_Difference_Vegetation_Index)
是一种通过光谱信息判断植被覆盖状况的常用方法（因为植被和建筑、道路对不同波段的
电磁波有不同反射能力/效果）。

公式很简单：$\text{NDVI}=
    \frac   {\text{NIR}-\text{VIS}}
            {\text{NIR}+\text{VIS}}$，其中 VIS 是可见光波段的光谱响应，NIR 是近红外。

代码也很好写：

```python
image_sum = numpy.array(array1) + numpy.array(array2)
image_sub = numpy.array(array1) - numpy.array(array2)
image_ndvi = (image_sub / image_sum + 1) / 2 * 256
```

![NDVI 植被指数，颜色深的地方，植被覆盖率高。](http://gnat.qiniudn.com/tmp/image_ndvi_result.jpg)

---

当时交作业的时候，我还把各个通道的权值输出了：

![KL 变化输出效果](http://gnat.qiniudn.com/tmp/kl_rgb_result.jpg)

代码都在上面那个 repo 里，编译方法也写了。

这就是我和 kl 变换的故事。

---

refs and see also

-   [Karhunen–Loève theorem - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Karhunen%E2%80%93Lo%C3%A8ve_theorem)
-   [Principal component analysis - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Principal_component_analysis)
