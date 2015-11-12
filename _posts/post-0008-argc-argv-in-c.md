% C 语言的 argc、argv 干嘛的？
% TANG ZhiXiong
% 2015-10-25

C 语言的 argc、argv 干嘛的？
===========================

源文件
------

argcargv.cpp

```c
#include <stdio.h>

int main( int argc, char **argv)
{
    int a = atoi( argv[1] );
    int b = atoi( argv[2] );
    printf( "a + b = %d + %d = %d\n", a, b, a+b );
    return 0;
}
```

编译后调用
----------

```bash
# 编译
$ gcc argcargv.cpp -o argcargv.exe
# 运行
$ ./argcargv.exe 5 7
a + b = 5 + 7 = 12
```

总结
----

就是在程序运行的时候传递参数。