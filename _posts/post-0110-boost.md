---
title: Boost 库裁剪及其应用
date: 2016-06-23
keywords:
    - boost
    - hack
    - bcp
tags:
    - boost
    - hack
    - bcp
...

Boost 库裁剪及其应用
====================

STL 全称“标准模板库（Standard Template Library）”，其实它是一套标准，可能有不同的实现，它是 C++ 的“标准库”。
Boost 则是一个 C++ 库，被称为“C++ 准标准库”。

Boost 库涵盖的范围极广，有字符串和文本处理相关子库比如 format 库和 regexp 库，
有容器相关子库比如 variant 库（和 Qt 的 QVariant 有得一拼），有迭代器子库比如
tokenizer 库（可以把字符进行 tokenize），还有算法、函数对象和高阶编程相关子库如
functional 库、lambda 库和 signal 库，还有泛型编程、模板编程子库如 call traits、
mpl，还有并发编程相关的 thread 库，等等等等。

Boost 是如此强大，毫无疑问它也很大。Windows 上安装 boost 需要占用 2G+ 的空间，
编译配置起来也十分麻烦。

本文讨论的是如何不配置 boost 库而使用 boost 库。

解决方案用一句话说就是：

>   裁剪 boost 库，并在项目中内嵌 boost 源码，使项目脱离对 boost 库的依赖。

## 一个例子说明 boost 库裁剪的意义

或许你还是不明白 boost 库裁剪到底是啥意思，那我们一起来跑一个例子。
以我的 [cmake-templates](https://github.com/district10/cmake-templates) 里面的
一个 boost 代码为例，源码只有一个 `main.cpp`，里面
只有如下几行：

```cpp
#include <cstdio>
#include <boost/date_time/posix_time/posix_time_types.hpp>

int main( void  )
{
    namespace pt = boost::posix_time;
    pt::ptime now = pt::second_clock::local_time();

    printf( "%s\t->\t%04d-%02d-%02d %02d:%02d:%02d\n"
          , "date '+%Y-%m-%d %H:%M:%S'"
          , (int)now.date().year()
          , (int)now.date().month()
          , (int)now.date().day()
          , (int)now.time_of_day().hours()
          , (int)now.time_of_day().minutes()
          , (int)now.time_of_day().seconds() );

    return 0;
}
```

程序运行输出大概是：

```
date '+%Y-%m-%d %H:%M:%S'        ->        2016-07-11 19:33:19
```

这 20 行不到的代码，展示了 Linux 系统下一个常用指令 `date` 输出当前时间的效果
（相当于命令行下输入 `date '+%Y-%m-%d %H:%M:%S'`）。

如果你的系统配置了 Boost，那就到
上面的链接下载源码，进入 boost 文件夹，
这里一共有三个文件：一个 `main.cpp`、一个 `CMakeLists.txt`，一个 README 说明文档。
如果你不知道如何使用 CMake 生成 VS 工程，可以先看我以前写的教程：
[HOWTO: Win + CMake + Visual Studio 2010 · Issue #1 · district10/cmake-templates](https://github.com/district10/cmake-templates/issues/1)。

但要运行这个程序并不容易，尤其是在一切都要手工的 Windows 系统上：你必须自己去下
载合适的 boost 版本，设定一些环境变量。
在 Linux 下则比较简单，只要三步（先下载源码，并 `cd` 到源码目录）：

```bash
sudo apt-get install -y libboost-all-dev cmake
mkdir build && cd build
cmake .. && make && ./BOOST
```

你不禁感慨，为了运行一个 20 行不到的小程序，居然要手工安装两三个 G 的 boost 库！

这时候 boost 库的裁剪，就显得尤为重要了。我们不希望拿到代码的人还要费时间去配置 boost 库，
我们也不希望自己的代码要十分小心地，才能跑起来。我们要让自己的代码不论什么情况都能迅速地跑起来！
下面我们来看看刚才那 20 行代码，加上裁剪过的 boost 库源码，一起“发行”的效果：
[district10/bcp-example-1: An exmaple to show how to use bcp.](https://github.com/district10/bcp-example-1)。

我们裁剪后的 boost 库，头文件大概有 3.18 MB，cpp 文件有两个约 11 KB。看上去挺大，但是压缩完其实就 213 KB！
拿到这份代码，首先解压 include.zip 到当前文件夹，然后运行 cmake 生成 VS 工程（或者 Linux 上的 makefile 工程），
然后编译、运行。完全不需要再管那烦心的 boost 库的配置了！

我想你一定能把这个程序跑起来的。无论你用什么操作系统，用什么编译器。

**运行起来更省心，这就是 boost 库裁剪的意义。**

## 我要怎么裁剪出自己需要的部分？

我们来深究一下怎么拿到上面那 3.18 MB 的头文件，11 KB 的 cpp 文件。

首先，下载 Boost 库源码，你可以去 [官网](http://www.boost.org/users/download/)，
也可以用我的备份：<http://whudoc.qiniudn.com/2016/boost_1_58_0_headers_sources.7z>（37.6 MB）。
我们只需要官方 release 的源码里的 `boost` 和 `libs` 文件夹下的东西，所以我建议
你下载我的备份。因为它真的小很多，下载起来也很快。而且里面还打包了用于提取 boost 源码的工具 bcp[^bcp-release]。

[^bcp-release]: 打包里包含一个 Windows x64 二进制 bcp.exe，一个 Linux x64 二进
    制 bcp_standalone_linux，如果你的系统是 32 位，或者是别的操作系统什么的。你
    就要自己去编译 bcp 二进制。源码在 [district10/cmake-bcp: Build Boost bcp
    via CMake/CMakeLists.txt](https://github.com/district10/cmake-bcp)。编译很
    简单，你所需要的只是一个 c++ 编译器和一点点耐心。

    如果你执意要用官方的下载，这里是裁剪工具 bcp 的执行文件：

    -   Windows: <http://whudoc.qiniudn.com/2016/bcp_standalone.exe> (561 KB)
    -   Linux: <http://whudoc.qiniudn.com/2016/bcp_standalone_linux> (917 KB)

然后，解压下载到的压缩包，进入源码文件夹，新建一个文件夹，比如叫 `output`，然后在当前窗口打开命令行，
输入 `./bcp.exe boost/date_time/posix_time/posix_time_types.hpp output`，这里
"./bcp.exe" 是我们的裁剪工具，"boost/date_time/posix_time/posix_time_types.hpp"
是我们自己项目中用到的 boost 头文件，如果有多个头文件，
用空格隔开，把它们都敲进命令行。[^bcp-usage]最后的 "output" 是输出文件夹。

[^bcp-usage]: 我建议你写一个脚本文件，就像这样：

    ```bash
    # cd boost source dir
    mkdir output
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
        output
    ```

很快，output 文件夹下出现了 boost 文件夹和 libs 文件夹。前者是提取出来的头文件，后者是出来的 cpp 文件。
把这些文件集成到自己的项目中就可以了。集成进来后，我们的源码应当能 include 那些提取出来的头文件，
我们的二进制应当能够链接那些提取出来的 cpp 文件生成的库文件（或者和我们的 cpp 文件一起编译二进制，也可以）。

在 cmake 里，这个过程大概是 1）在源码根目录新建 include 文件夹，在根目录
的 CMakeLists.txt 加上 `include_directories( ${CMAKE_SOURCE_DIR} )`；2）
新建 libs 文件夹，把裁剪出来的 cpp 文件放到这个文件下的 MiniBoost 文件加下，
然后参考
[district10/bcp-example-1/libs](https://github.com/district10/bcp-example-1/tree/master/libs)
写好 CMakeLists 文件，再到根目录的 CMakeLists 文件加上 `add_subdirectory( libs)`；
3）将裁剪出来的 miniboost 链接到我们的二进制：`target_link_libraries( ${PROJECT_NAME} MiniBoost )`。

你可以仔细对比看看链接系统安装的 Boost 库和使用自带的裁剪后的 Boost 库（我把它称为 MiniBoost）
两者的区别和联系，再一次，我们源码链接贴在这里：

-   [cmake-templates/boost at master · district10/cmake-templates](https://github.com/district10/cmake-templates/tree/master/boost)
-   [district10/bcp-example-1: An exmaple to show how to use bcp.](https://github.com/district10/bcp-example-1)

哦对，一个需要注意的地方是，提取出来的头文件里，`boost/config/auto_link.hpp` 里的内容最好删掉，
不然在 Windows 平台上，boost 会尝试自动链接。所以我通常把这个文件内容清空。

## 更多的实践

上面那只是一个很小的例子。下面是裁剪 boost 库的实际应用，这里我举两个有意思的例子。

第一个叫 [kaguya](https://github.com/satoren/kaguya)，是一个 lua 脚本语言的 C++ 绑定。
这个库很有意思的是，如果你的编译器支持 C++11 的几个特定特性，它是不依赖于 boost 库的（但依赖了 lua 库）；如果你的编译器
对 C++11 特性支持得不够，它就用 boost 库来做补充。

我 fork 了这个 repo，先给它把 lua 源码打包了进去，这样你就不用安装、编译、配置 lua 也能运行 kaguya 了，
又把 boost 库打包内嵌进去，这样，你也不必要自己配置 boost 库，或者使用一个支持 C++11 的编译器了（对于 windows 系统来说，
也就是你用 VS2010，VS2013 就可以，不必要安装 VS2015）。

这是我的 fork 的 standalone 分支：[4ker/kaguya at standalone](https://github.com/4ker/kaguya/tree/standalone)。
相信你一定能很快把它跑起来。

第二个叫 bcp，就是我们用来裁剪 boost 的工具。Boost 源码里有 bcp 这个工具的源码，但是编译起来真是巨麻烦！
官方的源码在这里 [boostorg/bcp: Boost.org bcp module](https://github.com/boostorg/bcp)，你试试能跑起来吗？

这是我修改后的源码：[district10/cmake-bcp: Build Boost bcp via CMake/CMakeLists.txt](https://github.com/district10/cmake-bcp)，
很容易就能运行起来。里面有说明文档（其实就是先 `cmake` 再 `make`）和一些其他说明。

用 bcp 来生成一个单独的（standalone）bcp 源码，生成 bcp。是不是和编译器 [“自举”](https://segmentfault.com/q/1010000000692678/a-1020000000693031) 的
概念不谋而合？~

---

refs and see also

-   [Boost 简介 - wangkangluo1 - 博客园](http://www.cnblogs.com/wangkangluo1/archive/2012/05/28/2521493.html){.featured}
-   [Posix Time - 1.53.0](http://www.boost.org/doc/libs/1_53_0/doc/html/date_time/posix_time.html#ptime_from_clock)
-   [BCP - 1.61.0](http://www.boost.org/doc/libs/1_61_0/tools/bcp/doc/html/index.html)
-   [district10/bcp at standalone](https://github.com/district10/bcp/tree/standalone){.featured}
-   [使用 bcp 给 boost 瘦身 - langresser 的专栏 - 博客频道 - CSDN.NET](http://blog.csdn.net/langresser_king/article/details/5721652)
