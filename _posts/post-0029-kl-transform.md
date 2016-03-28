---
title: KL Transform （记一次作业）
date: 2014-02-22
keywords:
    - pca
    - kl transform
tags:
    - pca
    - kl transform
    - math
...

KL Transform （记一次作业）
==========================

![在 Ubuntu 下运行效果（当时还不能处理图片）](http://gnat.qiniudn.com/tmp/kltransform.png)

详细见：[district10/Pattern_Classification](https://github.com/district10/Pattern_Classification)

代码其实不多：

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

后来把 Eigen 库换成了 OpenCV，于是可以处理图片，效果展示：

![多波段影像](http://gnat.qiniudn.com/tmp/KL_Multiband_result.jpg)

![RGB彩色图](http://gnat.qiniudn.com/tmp/KL_RGB_pepper_result.jpg)

![变化检测](http://gnat.qiniudn.com/tmp/image_diff_result.jpg)

![NDVI 植被指数](http://gnat.qiniudn.com/tmp/image_ndvi_result.jpg)

![KL 变化输出效果](http://gnat.qiniudn.com/tmp/kl_rgb_result.jpg)
