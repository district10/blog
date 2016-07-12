---
title: CMake 简介和 CMake 模板
date: 2016-05-08
keywords:
tags:
    - cmake
    - templates
...

CMake 简介和 CMake 模板
=======================

如果你用 Linux 操作系统，使用 cmake 会简单很多，可以参考一个很好的教程：[CMake 入门实战 | HaHack](http://hahack.com/codes/cmake/)。
如果你用 Linux 操作系统，而且只是运行一些小程序，可以看看我的另一篇博客：
[你就编译一个 cpp，用 CMake 还不如用 pkg-config 呢](post-0035-pkg-config.html)。

但如果你用 Windows，很大的可能你会使用图形界面的 CMake（cmake-gui.exe）和 Visual Studio。
本文先简单介绍使用 CMake + Visual Studio 的使用流程，然后以几个例子介绍 CMake 相关知识。

## CMake 使用流程

如果你还没安装 cmake，下载 <https://cmake.org/files/v3.6/cmake-3.6.0-win64-x64.msi>（15 MB）安装它。
如果你还没装 VS，推荐使用 [VS2015](https://www.visualstudio.com/products/visual-studio-community-vs) 社区版本，
到 [这里](https://www.microsoft.com/zh-CN/download/details.aspx?id=48146) 下载，选择那个 3.7 GB 的。
因为一次下载好，安装起来很省心。如果你已经有了 VS2010 或者 VS2013，也可以不安装 VS2015。

下载第一份源码 [cpp.zip](http://whudoc.qiniudn.com/2016/cpp.zip)（1.16 KB）。解压进入文件夹，打开 cmake-gui，把源码和 cmake-gui 界面对半放。
如下图：

![](http://whudoc.qiniudn.com/2016/2016-07-12_10-25-15.png)

然后，

1.  把源码根目录的 CMakeLists.txt 拖动到 cmake-gui 界面上
2.  修改输出目录（我通常都是添加 `/build`）
3.  点击 configure（配置），选择【Visual Studio 14 VS2015 Win64】，点击确定^[“Win64”是指的是编译 VS2015 x64 工程，没有“Win64”则为 x86 工程）。]
4.  点击 generate（生成）

最后，到输出目录，用 VS2015 打开 `CPP.sln` 工程。在 Solution Explorer 中右键单
击 CPP，然后【Set as StartUp Project】，然后 <kbd>Ctrl</kbd>+<kbd>F5</kbd> 运行。

相信你已经看到了程序运行结果，大概如下：

```
0^2 --->    0
0^2 --->    0
2^2 --->    4
3^2 --->    9
4^2 --->    16
```

使用 CMake 的好处是，它可以生成 VS 工程，也可以生成 Linux 系统下常用的 Makefile
工程，甚至还可以用 Qt creator 打开 CMakeLists.txt 文件，然后生成 qt 工程。
^[参考我的教程：[HOWTO: Use Qt creator to Open CMakeLists.txt directly (will
generate proper project files) · Issue #5 · district10/cmake-templates](https://github.com/district10/cmake-templates/issues/5)，
里面包含一个 Linux 上的例子，一个 Windows 上的例子。]
这份代码，在 Linux 上也可以迅速跑起来，这是我虚拟机中运行的截图：

![](http://whudoc.qiniudn.com/2016/VirtualBox_2016-07-12_10-52-13.png)

## CMake 基础

### 简单的四行 CMakeLists.txt

>   本小节源码：[cmake-templates/cpp at master · district10/cmake-templates](https://github.com/district10/cmake-templates/tree/master/cpp)。

我们从根目录的 CMakeLists.txt 看起，它简洁到只有 4 行！如下：

```cmake
project( CPP )
cmake_minimum_required( VERSION 2.6 )
file( GLOB SRCS *.c *.cpp *.cc *.h *.hpp )
add_executable( ${PROJECT_NAME} ${SRCS} )
```

我们一行一行看，

-   第一行，设置了工程名称，叫“CPP”（所以后来生成的 VS 工程名为 `CPP.sln`）；
-   第二行，设置了 CMake 最低版本号，通常在根目录的 CMakeLists.txt 添加这个指定；
-   第三行，把当前文件夹下的源码列表（文件后缀匹配的那些文件）存到变量 SRCS 中；
-   第四行，把源码编译成一个二进制这里的 `${PROJECT_NAME}` 就是 `CPP`，是在第一行设置的。

这就是一个基本的用 CMake 组织的 C++ 程序。只要四行配置，利用 CMake，我们就生成了 Windows 下的 VS 工程，
还生成了 Linux 下的 Makefile 工程。只要四行！

当然还可以生成多个二进制，如果你有多份源码，比如

```cmake
add_executable( foo foo.cpp )
add_executable( bar bar.cpp )
```

如果上面没问题，还是这两个代码，我们在 CMakeLists.txt 里去掉上面两行，改成 `add_executable( foobar foo.cpp bar.cpp )`{.cmake}，
会不会有什么问题？

### 生成静态、动态库

>   本小节源码：[cmake-templates/modules at master · district10/cmake-templates](https://github.com/district10/cmake-templates/tree/master/modules)。

还可以用 CMake 生成链接库，可以是静态库（`.lib`），也可以是动态库（`.dll`），语法如下：

```cmake
add_library(    动态链接库名称      SHARED      源码列表    )
add_library(    静态链接库名称      STATIC      源码列表    )
```

如果不指定 SHARED 或是 STATIC，默认生成的是 STATIC，
这个例子里，src 文件夹下生成了 3 个链接库，
LibCubic 是“指定”生成的静态库，
LibExtras 是“指定”生成的动态库，
LibSquare 是“默认”生成的静态库。

生成库文件就是为了让人用，所以我们要把它链接给某个二进制，
语法如下：

```cmake
add_executable(             二进制名    源码列表        )
target_link_libraries(      二进制名    动静态库名      )
```

生成库的源码有什么最基本的要求吗？
如果 `add_executable( baz baz.cpp b.cpp a.cpp z.cpp )`{.cmake} 可以正确地生成二进制文件 baz（windows 上就是 baz.exe），
那这行 CMake 配置可以修改为 `add_library( baz baz.cpp b.cpp a.cpp z.cpp )`{.cmake} 吗？为什么。

### 链接系统配置了的库

>   本小节源码：[cmake-templates/opencv3 at master · district10/cmake-templates](https://github.com/district10/cmake-templates/tree/master/opencv3)。

CMake 的一个方便之处，便是添加第三方库。
在我的 CMake 安装目录（`C:\Program Files\CMake\share\cmake-3.6\Modules`）下，有多达 145 个 FindX.cmake 文件，比如
`FindQt4.cmake`。当你在自己源码中使用 `find_package( Qt4 )` 时，CMake 就会尝试去引入 `FindQt4.cmake`，这个文件引入后，
特定的变量里就存储了头文件地址（`include_directories`）、链接库地址（`link_directories`）、链接库的名称以及一些开关配置（options）。

本节用 OpenCV 来说明如何链接使用第三方库，这里用的是 opencv3。
OpenCV3 官网提供的只有 VS2013 (vc12) 和 VS2015 (vc14) 的 prebuild，如果你
使用 VS2012，你只能使用 OpenCV2（或者你要自己编译 OpenCV3？）。
OpenCV 的配置可以参考我写得教程：
[HOWTO: OpenCV 2 & OpenCV 3 · Issue #4 · district10/cmake-templates](https://github.com/district10/cmake-templates/issues/4)。

本节源码的 CMakeLists.txt 里，我没有使用 `find_package( OpenCV REQUIRED )`，而是使用了
`include( $ENV{OpenCV3_DIR}/OpenCVConfig.cmake )`，因为我觉得这是一种更好的解决方案，
如此一来，你只要设置环境变量（%OpenCV3_DIR%），添加相应目录到 %PATH%，便可以同时使用 OpenCV2 和 OpenCV3
（当然是在不同的项目中）。上面的源码链接中对此也有简要说明。

看看我们的 CMakeLists.txt：

```cmake
project( OPENCV3 )
cmake_minimum_required( VERSION 2.8 )

# find_package( OpenCV REQUIRED )                       # 不使用 find_package
include( $ENV{OpenCV3_DIR}/OpenCVConfig.cmake )         # 直接引入 cmake 文件

message( STATUS "OpenCV library status:" )              # 输出一下得到的变量
message( STATUS "    version: ${OpenCV_VERSION}" )
message( STATUS "    libraries: ${OpenCV_LIBS}" )
message( STATUS "    include path: ${OpenCV_INCLUDE_DIRS}" )

include_directories( ${OpenCV_INCLUDE_DIRS} )           # 引入 OpenCV 头文件目录

add_executable( ${PROJECT_NAME} example.cpp )
target_link_libraries( ${PROJECT_NAME} ${OpenCV_LIBS} ) # exe 链接 OpenCV
```

在我的系统下，输出如下（我调整了换行）：

```
OpenCV ARCH: x64
OpenCV RUNTIME: vc14
OpenCV STATIC: ON
Found OpenCV 3.1.0 in C:/OpenCV/opencv3/build/x64/vc14/lib
You might need to add C:\OpenCV\opencv3\build\x64\vc14\bin to your PATH to be able to run your applications.
OpenCV library status:
    version: 3.1.0
    libraries:  opencv_world;opencv_videostab;opencv_videoio;opencv_video;
                opencv_superres;opencv_stitching;opencv_shape;opencv_photo;
                opencv_objdetect;opencv_ml;opencv_imgproc;opencv_imgcodecs;
                opencv_highgui;opencv_flann;opencv_features2d;opencv_core;opencv_calib3d
    include path: C:/OpenCV/opencv3/build/include;C:/OpenCV/opencv3/build/include/opencv
Configuring done
```

很容易地，程序也运行起来了。

## 更多的了解

只要掌握上面那基本的几点（通俗地说，就是生成 exe、lib、dll，链接 lib、dll，引入第三方库），
然后积攒一些别人的 CMakeLists.txt 片段，CMake 便不难了。

如果你还觉得 CMake 很麻烦，那一定是我博客写得不好。
如果你觉得 CMake 不好用，那不是我的错，那是 CMake 的官方教程太垃圾导致的，
我反正从来没见过如此晦涩，一个例子都不给的教程。
当时写 <https://github.com/district10/cmake-templates/blob/master/qt4-project/CMakeLists.txt> 的时候，我可是深受其苦。

写起来虽难，但用起来方便，所以……我大赞 CMake。

想对 CMake 有更多的了解，可以参考我的 [district10/cmake-templates: Some CMake
Templates. Qt, Boost, OpenCV, C++11, etc.](https://github.com/district10/cmake-templates)，
里面有简单的 C 工程，C++ 工程，C++11 工程，Boost 库的配置，OpenCV2、OpenCV3 的配置，Qt4、Qt5 的配置，等等。
代码在大多在 Windows + VS2010/VS2015 和 Linux + GCC4.8 测试通过。

我还写了一些库的配置，不同平台不同 IDE、编译器上有关 CMake 使用的教程：
[Issues · district10/cmake-templates](https://github.com/district10/cmake-templates/issues)。
