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

Linux:

```bash
# 编译
$ gcc argcargv.c -o argcargv

# 运行
$ ./argcargv 5 7
a + b = 5 + 7 = 12
```

Windows:

先到 `C:/Windows/System32` 文件夹下创建一个文件 `mycl.bat`：^[如果你的 VS2010 是 Express 版本，应该只能编译 32 位程序，得把 `amd64` 改成 `x86`。]

```bash
@echo off
%comspec% /c ""c:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\vcvarsall.bat" amd64 && cl.exe %*"
```

到源码文件夹下，按住 Shift -- 鼠标右键 -- 在此处打开命令窗口（W）

```bash
# 编译
$ mycl argcargv.c

# 运行
$ ./argcargv 5 7
a + b = 5 + 7 = 12
```

总结
----

就是在程序运行的时候传递参数。

附
---

#. CmdLine
#. GNU 有个命令行解析（C 语言），Google 也有一个（C++），但我突然忘了名字。

Notes
-----

`vcvars32` calls `C:\Program Files\Microsoft Visual Studio 8\Common7\Tools\vsvars32.bat`
which **sets up the required environment** for compiling and linking.  The
environment variables are:

#. `INCLUDE`
#. `LIB`
#. `PATH`

The compiler looks for header files in the `INCLUDE` path during compile, and
libraries are fetched from the `LIB` path during link.

---

Refs

#. [c++ - Command line compile using cl.exe? - Stack Overflow](http://stackoverflow.com/questions/7865432/command-line-compile-using-cl-exe)
#. [c++ - fatal error C1034: windows.h: no include path set - Stack Overflow](http://stackoverflow.com/questions/931652/fatal-error-c1034-windows-h-no-include-path-set)
#. [Walkthrough: Compiling a C Program on the Command Line](https://msdn.microsoft.com/en-us/library/bb384838.aspx)
#. [Setting the Path and Environment Variables for Command-Line Builds](https://msdn.microsoft.com/en-us/library/f2ccy3wt.aspx)
