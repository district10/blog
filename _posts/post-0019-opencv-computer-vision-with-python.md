% OpenCV Computer Vision with Python
% TANG ZhiXiong
% 2014-02-23


OpenCV Computer Vision with Python
==================================

Setting up OpenCV
-----------------

Related Libs

`NumPy`, `SciPy`, `OpenNI` (optional), `SenorKinect` (optional)

Different OS

- Windows XP, Windows Vista, Windows 7, or Windows 8
- Mas OS X Snow, Leopard, Lion, Montain Lion
- Ubuntu 12.04
- Other Unix-like Systems

Sample codes

- Download from [Packtpub Publishing](http://www.packtpub.com/opencv-computer-vision-with-python/book)
- Or my archive: [OpenCV_Computer_Vision_with_Python.7z](http://gnat-tang-shared-image.qiniudn.com/blog-OpenCV_Computer_Vision_with_Python.7z)
- Also, the author-maintained homepage: [Joseph Howse's Page](http://nummist.com/opencv/)

Handing Files, Cameras, and GUIs
--------------------------------

**Basic I/O Scripts**

Reading/Writing an Image file

```python
import cv2
image = cv2.imread('/data/pic/lena.jpg')
image_gray = cv2.imread('/data/pic/lena.jpg', cv2.CV_LOAD_IMAGE_GRAYSCALE)
cv2.imwrite('Lena.png', image)
cv2.imwrite('Lena_gray.png', image_gray)
```

Converting between an image and raw bytes

```python
import cv2, numpy, os
randomByteArray = bytearray(os.urandom(120000))
flatNumpyArray = numpy.array(randomByteArray)
grayImage = flatNumpyArray.reshape(300, 400)
cv2.imwrite('RandomGray.png', grayImage)
bgrImage = flatNumpyArray.reshape(100, 400, 3)
cv2.imwrite('RandomBGR.png', bgrImage)
```

Reading/Writing a video file

```python
import cv2
videoCapture = cv2.VideoCapture('/data/ac-demo.avi')
fps       = videoCapture.get(cv2.cv.CV_CAP_PROP_FPS)
size = (int(videoCapture.get(cv2.cv.CV_CAP_PROP_FRAME_WIDTH)),
        int(videoCapture.get(cv2.cv.CV_CAP_PROP_FRAME_HEIGHT)))
videoWriter = cv2.VideoWriter('MyOutputVideo.avi',
                              cv2.cv.CV_FOURCC('I', '4', '2', '0'),
                              fps,
                              size)
success, frame = videoCapture.read()
while success: # Loop until there are no more frames
    videoWriter.write(frame)
    success, frame = videoCapture.read()

# 这段代码我失败了……
```
     
```python
cv2.cv.CV_FOURCC('T','H','E','O'): Ogg-Vorbis, *.ogv
cv2.cv.CV_FOURCC('F','L','V','1'): Flash video, *.flv
cv2.cv.CV_FOURCC('M','J','P','G'): motion-JPEG, *.avi
cv2.cv.CV_FOURCC('P','I','M','1'): MPEG-1, *.avi
cv2.cv.CV_FOURCC('I','4','2','0'): uncompressed YUV, *.avi
```

Capturing camera frames

```python
import cv2
cameraCapture = cv2.VideoCapture(0)
fps = 30 # an assuption
size = (int(cameraCapture.get(cv2.cv.CV_CAP_PROP_FRAME_WIDTH)),
        int(cameraCapture.get(cv2.cv.CV_CAP_PROP_FRAME_HEIGHT)))
print "size: ", size
videoWriter = cv2.VideoWriter('MyOutputVid.avi',
                               cv2.cv.CV_FOURCC('M','J','P','G'),fps, size)
success, frame = cameraCapture.read()
numFramesRemaining = 3 * fps - 1
while success and numFramesRemaining > 0:
    videoWriter.write(frame)
    success, frame = cameraCapture.read()
    numFramesRemaining -= 1
    print str(numFramesRemaining)
# 再次失败
```

Displaying camera frames in a window

```python
import cv2
clicked = False
def onMouse(event, x, y, flags, param):
    global clicked
    if event == cv2.cv.CV_EVENT_LBUTTONUP:
        clicked = True
cameraCapture = cv2.VideoCapture(0)
cv2.namedWindow('MyWindow')
cv2.setMouseCallback('MyWindow', onMouse)
print 'Showing camera feed. Click window or press any key to stop.'
success, frame = cameraCapture.read()
while success and cv2.waitKey(1) == -1 and not clicked:
    cv2.imshow('MyWindow', frame)
    success, frame = cameraCapture.read()
cv2.destroyWindow('MyWindow')
# 终于出来一次……
```

`cv2.cv.CV_EVENT_`

```plain
              MOUSEMOVE
LBUTTONUP     MBUTTONUP     RBUTTONUP
LBUTTONDOWN   MBUTTONDOWN   RBUTTONDOWN
LBUTTONDBCLK  MBUTTONDBCLK  RBUTTONDBCLK
```

**Project concept**

We will develop an interactive application that
`performs face tracking and image`, and
manipulations on camera input in real time.

`extensible` and `reusable`

**An object-oriented design**

Python applications can be written in a purely **procedural** style. This is often done with small applications like our basic I/O scripts, discussed previously. However, from now on, we will use an object-oriented style because it **promotes modularity and extensibility.**

- Abstracting a video stream – managers.CaptureManager, [managers.py](http://gnat-tang-shared-image.qiniudn.com/file_managers.py)
- Abstracting a window and keyboard – managers.WindowManager
- Applying everything – cameo.Cameo, [cameo.py](http://gnat-tang-shared-image.qiniudn.com/file_cameo.py)

Python Knowledge

- `self._attribute1`{.python}:  protected, start with `_`
- `self.__attribute2`{.python}: private, start with `__`

Filtering Images
----------------

1. Creating modules

reuseable modules: `filters.py`, `utils.py`

Channel mixing – seeing in Technicolor

channel mixing

:    **remapping** colors to **simulate** some other, 
     smaller color space inside RGB or BGR

Color Spaces

:    * RC (red, cyan): `red` + `cyan` $\to$ `gray`
     * RGV (red, green, value): `red` + `green` $\not\to$ `gray`, so we need `value`
     * CMV (cyan, magenta, value): still, `cyan` + `magenta` $\not\to$ `gray`

Simulating RC color space

```python
# Pseudocode: 
#     dst.b = dst.g = 0.5 * (src.b + src.g)
#     dst.r = src.r
# Python OpenCV Code:
b, g, r = cv2.split(src)
cv2.addWeighted(b, 0.5, g, 0.5, 0, b)
cv2.merge((b, b, r), dst)
```

Simulating `RGV` color space

```python
# Pseudocode: 
#     dst.b = min(src.b, src.g, src.r), 
#     dst.g = src.g, 
#     dst.r = src.r
# Python code:
b, g, r = cv2.split(src)
cv2.min(b, g, b)
cv2.min(b, r, b)
cv2.merge((b, g, r), dst)
```

Simulating `CMV` color space

```python
# Pseudocode: 
#     dst.b = max(src.b, src.g, src.r), 
#     dst.g = src.g, 
#     dst.r = src.r
```

Curves – bending color space

:    Curves are another technique for remapping colors.

         dst.r = funcR(src.r)
         dst.g = funcG(src.g)
         dst.b = funcB(src.b)

cubic spline interpolation, or 

* linear
* nearest
* zero
* slinear(spherical)
* quadratic
* cubic

Formulating a curve

```python
def createCurveFunc(points):
   """Return a function derived from control points."""
   if points is None:
       return None
   numPoints = len(points)
   if numPoints < 2:
       return None
   xs, ys = zip(*points)
   if numPoints < 4:
       kind = 'linear'
       # 'quadratic' is not implemented.
   else:
       kind = 'cubic'
   return scipy.interpolate.interp1d(xs, ys, kind, bounds_error = False)
```

**Caching** and applying a curve

in `utils.py`

```python
# def createLookupArray(func, length = 256)
#     min(max(0, func_i), length - 1) # ensure fun_i » [0, length - 1]
# def applyLookupArray(lookupArray, src, dst)
#     dst[:] = lookupArray[src]
def createCompositeFunc(func0, func1):
        """Return a composite of two functions."""
        if func0 is None:
            return func1
        if func1 is None:
            return func0
        return lambda x: func0(func1(x))
# Misc:
flatView = array.view()
flatView.shape = array.size
# numpy.view only owns a reference to the data, not a copy
```

Designing object-oriented curve filters

[**Emulating photo films**](http://www.prime-junta.net/pont/How_to/100_Curves_and_Films/_Curves_and_films.html)

- Emulating **Kodak Portra** (胶卷), a broad highlight range: warm(amber) color, cooler(blue) shadow
- Emulating **Fuji Provia** (胶卷), strong contrast and is slightly cool throughout most tones
- Emulating **Fuji Velvia**, deep shadows and vivid colors
- Emulating **cross-processing**

Highlighting edges

```python
cv2.medianBlur(src, blurKsize)
cv2.Laplacian(graySrc, cv2.cv.CV_8U, graySrc, ksize = edgeKsize)
normalizedInverseAlpha = (1.0 / 255) * (255 - graySrc)
channels = cv2.split(src)
for channel in channels:
    channel[:] = channel * normalizedInverseAlpha
cv2.merge(channels, dst)
```

Custom kernels – getting convoluted

kernel

:    convolution matrix, it mixes up or convolutes the pixels in a region.

          kernel = numpy.array([[-1, -1, -1],
                                [-1,  9, -1],
                                [-1, -1, -1]])

Tracking Faces with Haar Cascades
---------------------------------

Conceptualizing Haar cascades

`image data` $\to$ `features` (e.g. Haar-like features) $\to$ `cascade` (collection of features)

cascade

:    Two images that differ only in scale should be capable of yielding similar features, 
     albeit for different window sizes. Thus, it is useful to generate features for multiple window sizes. 
     Such **a collection of features** is called a cascade.

     **a Haar cascade is scale-invariant** or, in other words, robust to changes in scale

Getting Haar cascade data

- in OpenCV example code
- or, my archive: [haarcascades from opencv 2.4.8](http://gnat-tang-shared-image.qiniudn.com/file_haarcascades.7z)

Defining a face as a hierarchy of rectangles

```python
class Face(object):
    """Data on facial features: face, eyes, nose, mouth."""
    def __init__(self):
        self.faceRect = None
        self.leftEyeRect = None
        self.rightEyeRect = None
        self.noseRect = None
        self.mouthRect = None
```

Tracing, cutting, and pasting rectangles

```python
def outlineRect(image, rect, color):
    if rect is None:
        return
    x, y, w, h = rect
    cv2.rectangle(image, (x, y), (x+w, y+h), color)
```
     
```python
cv2.INTER_NEAREST
cv2.INTER_LINEAR # bilinear interpolation (the default)
cv2.INTER_AREA
cv2.INTER_CUBIC # bicubic interpolation over a 4 x 4 pixel neighborhood
cv2.INTER_LANCZOS4 # This is Lanczos interpolation over an 8 x 8 pixel neighborhood, the highest-cost, highest-quality approach
```

$$L(x) = \begin{cases} \operatorname{sinc}(x)\, \operatorname{sinc}(x/a) & \text{if}\;\; -a < x < a\\ 0 & \text{otherwise} \end{cases}$$

![Lanczos windows for a = 1, 2, 3.](https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Lanczos-windows.svg/300px-Lanczos-windows.svg.png)

Equivalently,

$$L(x) = \begin{cases} 1  & \text{if}\;\; x = 0\\ \quad & \\ \displaystyle \frac{a \sin(\pi x) \sin(\pi x / a)}{\pi^2 x^2} & \text{if}\;\; 0 < |x| < a \\ \quad & \\ 0 & \text{otherwise} \end{cases}$$

Adding more utility functions

```python
def isGray(image):
    """Return True if the image has one channel per pixel."""
    return image.ndim < 3
def widthHeightDividedBy(image, divisor):
    """Return an image's dimensions, divided by a value."""
    h, w = image.shape[:2]
    return (w/divisor, h/divisor)
```

- Tracking faces
- Modifying the application
    - Swapping faces in one camera feed
    - Copying faces between camera feeds
- Summary

Detecting Foreground/Background Regions and Depth
-------------------------------------------------

dvorak4tzx:

> I dont have Kinect camera, so pass this chapter,
> and that's all the book covers

Appendix A: Integrating with Pygame
-----------------------------------

Appendix B: Generating Haar Cascades for Custom Targets
-------------------------------------------------------

---

Refs

- [OpenCV Computer Vision with Python][opencv-with-python]
- [Joseph Howse(the author)'s webpage][joseph-howes-webpage]
- [Lanczos resampling - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Lanczos_resampling)

[opencv-with-python]: http://book.douban.com/subject/24669825/
[joseph-howes-webpage]: http://nummist.com/opencv/