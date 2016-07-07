---
title: Boost 库裁剪
date: 2016-06-23
keywords:
    - boost
    - hack
tags:
    - boost
    - hack
...

Boost 库裁剪
============

Boost 库。

[boost（C++ 库）_百度百科](http://baike.baidu.com/subview/663725/10275011.htm)

functor, bind, anounymous function.

但问题是，Boost 库太大，Windows 上安装 boost 需要占用 2G+ 的空间，编译配置起来也略显麻烦。

尤其是自己的工程不大时，how to 简化？用 bcp。

步骤：

1.  bcp binary
2.  boost 源码
3.  用 bcp 提取头文件和源文件
4.  在自己的项目中编译、链接到自己的 miniboost 中。

例子：

-   时间函数
-   bind/lambda

boost

bcp

bcp via CMake.

bcp binary release

    +   windows: <http://whudoc.qiniudn.com/2016/bcp_standalone.exe> (562 KB)
    +   linux: <http://whudoc.qiniudn.com/2016/bcp_standalone_linux> (917 KB)

If you have BOOST configured, just cmake.

If not, try [`standalone`](https://github.com/district10/bcp/tree/standalone) branch, it's really standalone.

## refs and see also

-   [BCP - 1.61.0](http://www.boost.org/doc/libs/1_61_0/tools/bcp/doc/html/index.html)

bcp
===

因为 Boost 库的庞大。

Standalone version of bcp does not require you having BOOST configured,
You need only a C++98 compatable compiler, and cmake that can generate
proper Makefile or other project file.

## Linux

```bash
mkdir build && cd build
cmake ..
make
```

## Window

Use cmake-gui to build Visual Studio project.

---

If you are curious about how to get this standalone pack,
here's several simple steps to follow.

## 0. get bcp binary & boost source file

bcp:

-   Windows: <http://whudoc.qiniudn.com/2016/bcp_standalone.exe> (561 KB)
-   Linux: <http://whudoc.qiniudn.com/2016/bcp_standalone_linux> (917 KB)

boost source:

-   goto official [Boost Downloads](http://www.boost.org/users/download/) to get a copy, or use my archive
-   <http://whudoc.qiniudn.com/2016/boost_1_58_0_headers_sources.7z> (37.6 MB)

## 1. grab relative headers and source files

```bash
# upzip boost source archive
# cd boost source dir
mkdir outputs
bcp \
    boost/detail/lightweight_main.hpp \
    boost/detail/workaround.hpp \
    boost/filesystem/exception.hpp \
    boost/filesystem/fstream.hpp \
    boost/filesystem/operations.hpp \
    boost/filesystem/path.hpp \
    boost/lexical_cast.hpp \
    boost/regex.hpp \
    boost/shared_ptr.hpp \
    boost/throw_exception.hpp \
    boost/version.hpp \
    outputs
```

## 2. rip out irrelative build scripts in `libs` dir & copy to your project

-   `build` dirs and `test(s)` dirs under `libs` are irrelative
-   copy `boost` & `libs` to `CMake_Source_Dir`

## 3. modify CMakeLists.txt

add these two lines to your root CMakeLists.txt

```cmake
include_directories( ${CMAKE_SOURCE_DIR} )
add_subdirectory( libs )
```

add a CMakeLists.txt to the grabbed-out `libs` dir, containing

```cmake
project( MiniBoost )
file( GLOB_RECURSE LIBSRCS *.c *.cpp *.cc *.h *.hpp )
add_library( ${PROJECT_NAME} STATIC ${LIBSRCS} )
```

at last, you can link them to your binary

```cmake
target_link_libraries( ${SOME_EXECUTABLE} MiniBoost )
```

You can checkout [CMakeLists.txt](CMakeLists.txt) for a real example.

**NOTICE:**

Boost use [boost/config/auto_link.hpp](boost/config/auto_link.hpp) to autoload lib files,
when you extracted the header and source files, you should comment out this file, so it will link you own lib file (in my case, `MiniBoost`).

see commit [bcp/auto_link.hpp at 30525ab6554f94cc06cad18ee2931ab73caaa813 · district10/bcp](https://github.com/district10/bcp/blob/30525ab6554f94cc06cad18ee2931ab73caaa813/boost/config/auto_link.hpp).
