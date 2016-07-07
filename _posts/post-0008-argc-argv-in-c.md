---
title: C 语言的 argc、argv 干嘛的？
date: 2015-10-25
keywords:
    - c
tags:
    - c
...

C 语言的 argc、argv 干嘛的？
===========================

以一个例子，说明 c 语言中传入 main 函数的 argc，argv 是什么东西。

源文件
------

argcargv.c

```c
#include <stdio.h>

int main( int argc, char **argv )
{
    int a = atoi( argv[1] );
    int b = atoi( argv[2] );
    printf( "a + b = %d + %d = %d\n", a, b, a+b );
    return 0;
}
```

编译后调用
----------

对于 Linux 平台:

:   ```bash
    # 编译
    $ gcc argcargv.c -o argcargv

    # 运行
    $ ./argcargv 5 7
    a + b = 5 + 7 = 12
    ```

对于 Windows:

:   先到 `C:/Windows/System32` 文件夹下创建一个文件 `mycl.bat`：
    ^[如果你的 VS2010是 Express 版本，应该只能编译 32 位程序，得把 `amd64` 改成 `x86`。]

    ```bash
    @echo off
    %comspec% /c ""c:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\vcvarsall.bat" amd64 && cl.exe %*"
    ```

    再到源码文件夹下，按住 Shift -- 鼠标右键 -- 在此处打开命令窗口（W），在 cmd 中输入：

    ```bash
    # 编译
    $ mycl argcargv.c

    # 运行
    $ ./argcargv 5 7
    a + b = 5 + 7 = 12
    ```

总结
----

就是在程序运行的时候传递参数。因为 c 语言中没有“StringList”类型，所以只能用 `**char`[^charproblem]
把命令行参数传递给程序。

这里放一段 [Boost bcp 解析命令行的源码](https://github.com/district10/cmake-bcp/blob/master/src/main.cpp)
供大家体会体会。

```cpp
for(int i = 1; i < argc; ++i)
{
    if(0 == std::strcmp("-h", argv[i])
       || 0 == std::strcmp("--help", argv[i]))
    {
        show_usage();
        return 0;
    }
    if(0 == std::strcmp("-v", argv[i])
       || 0 == std::strcmp("--version", argv[i]))
    {
        ...
        return 0;
    }
    ...
    else if(0 == std::strcmp("--svn", argv[i]))
    {
        papp->enable_svn_mode();
    }
    ...
    else if(0 == std::strncmp("--boost=", argv[i], 8))
    {
        papp->set_boost_path(argv[i] + 8);
    }
    else if(0 == std::strncmp("--namespace=", argv[i], 12))
    {
        papp->set_namespace(argv[i] + 12);
    }
    ...
    else if(argv[i][0] == '-')
    {
        std::cout << "Error: Unknown argument " << argv[i] << std::endl;
        show_usage();
        return 1;
    }
    else
    {
        positional_args.push_back(argv[i]);
    }
}
```

[^charproblem]: 因为这样一个指向 `*char`（这里把它看成 string 也可以）的指针无法知道它的个数，所以除了
    argv，还要有一个 int 型的 argc。你知道为什么在 C 语言里函数声明
    `void some_function(int arr[3])` 和
    `void some_function(int arr[])` 是一样的把？（不知道的话……自己去翻书……）

    在 C# 和 Java 里，就只需要用 `String[] args` 即可。因为这些语言有这样的“StringList”类型。

附
---

TODO: 一些 C/C++ 命令行解析的库。
