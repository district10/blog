---
title: Function Pointer Stack in C
date: 2015-01-00
key-words:
tags:
    - c
    - pointer
...

Function Pointer Stack in C
===========================

注：这些语法不属于规范的内容，只有用 GCC 才能编译。
^[不过 Windows 上也有这个头文件和那些函数，在 `C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\include\vadefs.h` 里。]
当然你可以在装个 Windows 的 GCC：[MinGW Distro - nuwen.net](http://nuwen.net/mingw.html)。

C is awesome -- function pointer stack

源码：

```c
#include<stdio.h>
#include<stdlib.h>
#include<stdarg.h>

void add( int *data, int n )
{
    *data += n;
    printf ( "%20sdata: %4d (Added 5)\n", "", *data );
}

void add3( int *data )
{
    *data += 3;
    printf( "%20sdata: %4d (Added 3)\n", "", *data );
}

void add5( int *data )
{
    *data += 5;
    printf( "%20sdata: %4d (Added 5)\n", "", *data );
}

void addn( int *data, int n )
{
    *data += n;
    printf( "%20sdata: %4d (Added %d)\n", "", *data, n );
}

void doit( int *data, void (*func)() )
{
    (*func)(data);
}

void doit2( int *data, int n, void (*func)() )
{
    (*func)(data, n);
}

/*
void doit3 (int *data, void (*func)()[], int n)
{
    int i;
    for (i = 0; i < n; ++i) {
        (*func+i)(data);
    }
    return;
}
*/

/*
void doit4 (void (*func)(...))
{
    (*func)(__VA__ARGS__);
    return;
}
*/

void todos( int *data, ... )
{
    va_list ap;
    va_start (ap, data);

    void (*f)() = va_arg (ap, void (*)());
    do {
        (*f)(data);
    } while (NULL != (f = va_arg(ap, void (*)())));
    va_end (ap);
}

int main( void )
{
    int i; /* iter */

    int d = 23;
    printf( "d = %2d\n", d );

    puts( "--simple doit" );
    doit( &d, add3 );
    doit( &d, add5 );
    doit2( &d, 24, addn );

    puts( "--function pointer doit" );
    void (*f)() = add3;
    doit( &d, f );
    f = &add5;
    doit( &d, f );

    puts( "--function pointer stack doit, simple stack" );
    void (*fs[])() = {
        add3,
        add5,     /* works */
        &add5,    /* works too */
        add3
    };
    for( i = 0; i < sizeof(f); ++i ) {
        doit (&d, fs[i]);
    }

    puts( "--function pointer stack doit, complicated stack" );
    void (*fs2[3])() = {
        add5,
        addn,
        add
    };
    doit( &d, fs2[0] );                  /* first func */
    doit2( &d, 8, *(fs2+1) );            /* apply second func */
//     doit4 (fs2[2](&d, 23));          /* third func */

    puts( "--vargs, va_list" );
    todos( &d, add3, add5, add3, NULL );  /* just like pipeline on UNIX */

    printf( "d = %2d\n", d );
    return 0;
}
```

输出
----

```plain
d = 23
--simple doit
                    data:   26 (Added 3)
                    data:   31 (Added 5)
                    data:   55 (Added 24)
--function pointer doit
                    data:   58 (Added 3)
                    data:   63 (Added 5)
--function pointer stack doit, simple stack
                    data:   66 (Added 3)
                    data:   71 (Added 5)
                    data:   76 (Added 5)
                    data:   79 (Added 3)
--function pointer stack doit, complicated stack
                    data:   84 (Added 5)
                    data:   92 (Added 8)
--vargs, va_list
                    data:   95 (Added 3)
                    data:  100 (Added 5)
                    data:  103 (Added 3)
d = 103
```
