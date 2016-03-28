---
title: 你就编译一个 cpp，用 CMake 还不如用 pkg-config 呢
date: 2015-10-02
keywords:
    - pkg-config
    - c
    - cpp
tags:
    - pkg-config
    - c
    - cpp
...

你就编译一个 cpp，用 CMake 还不如用 pkg-config 呢
=================================================

扯淡
----

CMake 虽好，但是还是略显麻烦，而且我这种人通常都是一个 cpp 文件，
根本用不着这么高端的“代码项目组织管理软件”。
直接调用 g++ 其实也很方便～（Makefile 都不需要）

方法
----

先看看 g++ 的 man 文档：

```plain
NAME
       gcc - GNU project C and C++ compiler

SYNOPSIS
       gcc [-c|-S|-E] [-std=standard]
           [-g] [-pg] [-Olevel]
           [-Wwarn...] [-Wpedantic]
           [-Idir...] [-Ldir...]
           [-Dmacro[=defn]...] [-Umacro]
           [-foption...] [-mmachine-option...]
           [-o outfile] [@file] infile...
```

这么复杂，其实一般用法就是（如果你只用了 `stdio.h` 之类常用头文件）：

```bash
g++ hello.cpp -o hello
```

比如

```cpp
#include <stdio.h>

int main( void )
{
    printf( "helle world\n" );
    return 0;
}
```

但如果你想求 `sin(2.3)`{.cpp}：

```cpp
#include <stdio.h>
#include <math.h>

int main( void )
{
    double x = 2.3;
    printf( "sin(%.2lf) is %lf\n", x, sin(x) );
    return 0;
}
```

用到了 `math.h`，你就得再编译的时候加上 `-lm`{.bash}（链接 math 链接库）：[^lm]

```bash
$ g++ hello.cpp -o hello -lm
```

[^lm]: 其实 C 语言需要，C++ 不需要，或者说 C++ 编译器不需要。

如果手工一个一个加动态链接库，那我就建议你还是用 CMake……搬出神器 `pkg-config`{.bash} 来帮你添加这些蛋疼的 `-l`{.bash}、`-L`{.bash} 选项！！

看看 `pkg-config`{.bash} 的 man 文档：

```plain
NAME
       pkg-config - Return metainformation about installed libraries

SYNOPSIS
       pkg-config   [--modversion]   [--version]   [--help]  [--print-errors]  [--silence-errors]  [--errors-to-stdout]  [--debug]
       [--cflags] [--libs] [--libs-only-L] [--libs-only-l]  [--cflags-only-I]  [--variable=VARIABLENAME]  [--define-variable=VARI‐
       ABLENAME=VARIABLEVALUE]  [--print-variables]  [--uninstalled]  [--exists] [--atleast-version=VERSION] [--exact-version=VER‐
       SION] [--max-version=VERSION] [--list-all] [LIBRARIES...]  [--print-provides] [--print-requires] [--print-requires-private]
       [LIBRARIES...]
```

英文那么烂就别一个字一个字死磕了……只要会用

```bash
$ pkg-config --cflags --libs opencv
-I/usr/local/include/opencv -I/usr/local/include -L/usr/local/lib -lopencv_shape -lopencv_stitching -lopencv_objdetect -lopencv_superres -lopencv_videostab -lopencv_calib3d -lopencv_features2d -lopencv_highgui -lopencv_videoio -lopencv_imgcodecs -lopencv_video -lopencv_photo -lopencv_ml -lopencv_imgproc -lopencv_flann -lopencv_core -lopencv_hal
```

找到 OpenCV 的头文件和链接库就够了。

举例
----

你现在拿到了 OpenCV 官方的人脸检测的 c++ 示例代码：

<https://github.com/Itseez/opencv/blob/master/samples/cpp/facedetect.cpp>

直接编译运行它：

```bash
$ g++ facedetect.cpp -o facedetect $(pkg-config --cflags --libs opencv)
$ ./facedetect
```

……好大一张脸……赶紧 <kbd>ESC</kbd> 退出……似乎很简单。

再举个例子，（代码修改自 [example.cpp](https://github.com/Itseez/opencv/blob/master/samples/cpp/example_cmake/example.cpp)）。

**`draw.h`**

```cpp
#include "opencv2/core.hpp"
#include "opencv2/imgproc.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/videoio.hpp"
#include <iostream>

extern void drawText(cv::Mat & image);
```

**`draw.cpp`**

```cpp
#include "draw.h"

void drawText(cv::Mat & image)
{
    using namespace cv;
    putText(image, "Hello OpenCV",
            Point(20, 50),
            FONT_HERSHEY_COMPLEX, 1, // font face and scale
            Scalar(255, 255, 255), // white
            1, LINE_AA); // line thickness and type
}
```

**`demo.cpp`**

```cpp
#include "opencv2/core.hpp"
#include "opencv2/imgproc.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/videoio.hpp"
#include <iostream>

#include "draw.h"

using namespace cv;
using namespace std;

int main()
{

    cout << "Built with OpenCV " << CV_VERSION << endl;
    Mat image;
    VideoCapture capture;
    capture.open(0);
    if(capture.isOpened())
    {
        cout << "Capture is opened" << endl;
        for(;;)
        {
            capture >> image;
            if(image.empty())
                break;
            drawText(image);
            imshow("Sample", image);
            if(waitKey(10) >= 0)
                break;
        }
    }
    else
    {
        cout << "No capture" << endl;
        image = Mat::zeros(480, 640, CV_8UC1);
        drawText(image);
        imshow("Sample", image);
        waitKey(0);
    }
    return 0;
}
```

编译运行：

```bash
$ occ demo.cpp draw.h draw.cpp
$ ./demo
```

其中的 occ 是自己定义的一个脚本，就是一行 Shell 脚本：

```bash
#!/bin/bash

# Compile OpenCV Programs
g++ $* -o ${1%.*} $(pkg-config --cflags --libs opencv)
```

感觉什么一切都那么简单～

---

画外音：如果你文件很多，一定不能不用 Makefile，或者类似的东西。
