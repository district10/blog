---
title: OpenCV Notes
date: 2015-12-05
key-words:
tags:
    - opencv
    - note
    - code
...

OpenCV Notes
============

<!--
:%s/\s\+$//
-->

CvArr -> CvMat -> IplImage

ROI: `cvSetImageROI()`

```
CvSize cvMahalonobis( // z-score
    const CvArr* vec1,
    const CvArr* vec2,
    CvArr*       mat
);

void cvMin( CvArr *src1, CvArr *src2, CvArr *dst);
void cvMinS( CvArr *src, double value, CvArr *dst);
cvNorm, cvMul, cvNot,

// dst[i] = src1[i] - src2[i]
void cvSub( const CvArr *src1, const CvArr *src2, CvArr *dst, const CvArr *mask = NULL );
// dst[i] = src1[i] - value
void cvSubS( const CvArr *src1, double value, CvArr *dst, const CvArr *mask = NULL );
// dst[i] = value - src1[i]
void cvSubRS( const CvArr *src1, double value, CvArr *dst, const CvArr *mask = NULL );

// A = U * W * Trans(T)
void cvSVD(
    CvArr *A,
    CvArr *W,
    CvArr *U = NULL,
    CvArr *V = NULL,
    int flags = 0
);
```

XML &  YAML

cvSmooth, border -> virtual pixel

Morphism?

#. Erode (-)
#. Dialate (+)
#. Gradient(src) = dilate(src) - erode(src)
#. TopHat(src) = src - open(src)
#. BlackHat(src) = close(src) - src

cvCreateStructuringElementEx ? Ex for what?

flood fill

cvPyrUp, cvPyrDown

cvAdaptiveThreshold

- Sobel ($\partial ^2 / \partial x \partial y$)
- laplace
- canny
- hog
- cvRemap
- affine, prespective

- CartToPolar, PolarToCart, LogPolar,
- DFT, DCT,
- cvIntegral, integral image
- cvDistTransform
- compare hist,
- EMD: Earth Mover's Distance
- back projection,
- cvMatchTemplate,
- cvMemStorageAlloc
- cvSeq,
- cvFindContours,
- freeman chaincode,
- cvAppproxPoly, DP: douglas -Peucker
- cvFindDominantPoints (IPAN)
- cvRect, cvBox2D,
- cvContoursMoments,
- Hu moments: cvGetHuMoments
- cvGetNormalizedCentralMoment,
- CvTermCriteria
- convex hull
- convex defects
- freeman chaincodes (FCCs)
- pairwise geometrical histogram (PGH): cvCalcPGH
- chain code histogram (CCH)
- cvInitLineIterator
- watershed algorithm,
- inpainting
- cvPyrSegmentation
- mean-shift,
- delaunay, voronoi tesselation,
- Lucas-Kanade,
- cvCalcOpticalFlowPyrLK()
- Horn-Schunk, dense/sparse optical flow
- corner,
- subpixel,
- SIFT (scale-invariant feature transform)
- block matching,
- mean-shift, camshift (continuously adaptive mean-sift)
- motion template,
- silhouette
- estimator, kalman
- dynamical motion, control motion, random motion,
- projection transform,
- camera intrinsics matrix
- q = MQ
- cvConvertPointsHomogenious()

jingxiang:

$x_{corrected} = x ( 1 + k_1r^2 + k_2r^24 + k_3r^6 )$
$y_{corrected} = y ( 1 + k_1r^2 + k_2r^24 + k_3r^6 )$

qiexiang:

$x_corrected = x + [ 2 p_1 y + p_2 ( r^2 + 2 x^2 )]$
$y_corrected = y + [ p_1 ( r^2 + 2 y^2 ) + 2 y_2 x ]$

k1, k2, p1, p2, k3 (fish-eye camera)

(R, t)

cvFindChessboardCorners()
cvFindCornersSubPix()

homograph

Q = [ X Y Z I ]^{Trans}


W = [ R t ] = [ rotation tranlation ]
q\hat{~} = s * M * W * Q\hat{~},
M = [
f_x   0   c_x
 0   f_y  c_y
 0    0    1
]


instrinsic  matrix , distortion-coeffs

rodrigues,

POSIT: pose orthography and scaling with iteration

stero imaging,


epipole,

benzhengjuzhen,
jichujuzhen

no free lunch theorem,

train set size,


cross-validation,
bootstrapping,
ROC

mahalanobis distance,

adaboost,

MLP,

#. feature maps
#. subsampling

Convolutional Neural Networks  (LeCun et al. 1989)

Image Lab

`32 -> 28? -> kernel[3x3]`

-   [4ker/code: Code for the book "Mastering OpenCV with Practical Computer Vision Projects" by Packt Publishing 2012.](https://github.com/4ker/code)
-   [OpenCV, Microsoft Visual Studio and libfacerec](http://www.bytefish.de/blog/opencv_visual_studio_and_libfacerec/)
-   [4ker/facerec: Implements face recognition algorithms for MATLAB/GNU Octave and Python.](https://github.com/4ker/facerec)
-   [4ker/opencv-haar-classifier-training: Learn how to train your own OpenCV Haar classifier](https://github.com/4ker/opencv-haar-classifier-training)
-   [4ker/opencv-code: C++ and Python code extracted from the tutorials at http://opencv-code.com](https://github.com/4ker/opencv-code)
