% OpenCV Notes
% TANG ZhiXiong
% 2015-12-05

OpenCV Notes
============

<!--
:%s/\s\+$//
-->

CvArr -> CvMat -> IplImage

ROI: cvSetImageROI()

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

Sobel ($\partial ^2 / \partial x \partial y$)

laplace
canny

hog

cvRemap

affine, prespective



CartToPolar, PolarToCart, LogPolar,
DFT, DCT,

cvIntegral, integral image

cvDistTransform

compare hist,


EMD: Earth Mover's Distance


back projection,


cvMatchTemplate,

cvMemStorageAlloc
cvSeq,

cvFindContours,

freeman chaincode,


cvAppproxPoly, DP: douglas -Peucker


cvFindDominantPoints (IPAN)


cvRect, cvBox2D,


cvContoursMoments,
Hu moments: cvGetHuMoments
cvGetNormalizedCentralMoment,

CvTermCriteria

convex hull
convex defects



freeman chaincodes (FCCs)


pairwise geometrical histogram (PGH): cvCalcPGH

chain code histogram (CCH)

cvInitLineIterator

watershed algorithm,

inpainting

cvPyrSegmentation

mean-shift,

delaunay, voronoi tesselation,

Lucas-Kanade, 
cvCalcOpticalFlowPyrLK()



Horn-Schunk, dense/sparse optical flow

corner,

subpixel,

SIFT (scale-invariant feature transform)





block matching,


mean-shift, camshift (continuously adaptive mean-sift)


motion template,
silhouette


estimator, kalman

dynamical motion, control motion, random motion,



projection transform,


camera intrinsics matrix
q = MQ


cvConvertPointsHomogenious()


jingxiang:

x_corrected = x ( 1 + k_1r^2 + k_2r^24 + k_3r^6 )
y_corrected = y ( 1 + k_1r^2 + k_2r^24 + k_3r^6 )

qiexiang:

x_corrected = x + [ 2 p_1 y + p_2 ( r^2 + 2 x^2 )]
y_corrected = y + [ p_1 ( r^2 + 2 y^2 ) + 2 y_2 x ]

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
