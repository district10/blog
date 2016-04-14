---
title: CVRS C++ Coding Style Guidelines
date: 2015-08-06
key-words:
tags:
    - doc
    - cpp
    - coding style
...

CVRS C++ Coding Style Guidelines
================================

老师让我写一个编程规范，让大家参考。当时写在 <http://zybuluo.com>，现在搬运过来。

CVRS 实验室上的版本（旧）：<http://cvrs.whu.edu.cn/docs/CVRS-CodingStyleGuide.html>

零、绪论
--------

#. **注释**分为两种，第一种是给自己看或者其他看代码的人看，用 `// comment` 或者 `/* comment */`，
   第二种是会被放到文档中，用 `//! comment` 或者 `/*! comment */`（也就是多加一个 `!` 的事）。
#. **代码宽度**不能超过 80 个字符。（注释也不能）
#. 代码编辑完后，要把 trailing space 去掉（Notepad++ 中 `Edit--Blank Operations--Trim Trailing Space`）

一、C++ 语言部分
----------------

### 1）文件：

C 语言中，单词全小写，单词之间用 `_` 连接，e.g. `feature_detector.h`, `feature_detector.c`；

C++ 中，单词首字母用大写表示，单词之间不空格，e.g. `FeatureDetector.h`，`FeatureDetector.cpp`

### 2）类：

#. 定义声明：对于类的作用和内容进行简单的说明，用 `//! remarks`。
#. 命名规则：e.g. `ComputingTemperature`{.cpp}。（不同于 MFC，如 MFC 中 `CZoomDlg`{.cpp}，在类前加 `C`。而小组统一直接表示为 `ZoomDlg`{.cpp}。）

### 3）结构体：

C++ 中结构体不需要 `typedef`{.cpp} 便可直接当成类型使用，也就是说，下面两种是一样的

```cpp
// method 1
struct ElecStateStruct {
    char *elec_name;
    char *elec_state;
};

// method 2
typedef struct ElecStateStruct {
    char *elec_name;
    char *elec_state;
} ElecStateStruct;
```

**但推荐使用第二种**。

命名规则和类的一样。

### 4）函数和变量：

**函数：**

#. 定义声明：在头文件（`.h` 文件）的类中，一般先写 private 型，再写 public 型。并先定义变量后定义函数。内容写于 `.cpp` 文件，并对其说明。
#. 命名规则：`currentTemperature( ... )`{.cpp}，`filtering( ... )`{.cpp}
#. 注释：与 C 一致，须在函数前进行说明。说明函数功能、参数含义及返回值等，e.g.

```cpp
//! Function is used for feature point extraction,
//! giving ... type variables,
//! returns 1 means success, 0 means failure
int extractionPoint( ... )
{
    ...
}
```

**变量：**

#. 定义声明：与 C 一致。
#. 命名规则：全局（e.g. `_currentTemperature`{.cpp})，局部（e.g. `currentTemperature`{.cpp}），函数内部的变量可以尽可能短。
#. Qt 中信号和槽也可用 C 语言风格。比如：

```cpp
signals:
    void angle_resolution( double res );
    void angleResolution( double res );

public slots:
    void on_angle_resolution( double res );
    void onAngleResolution( double res );
```

### 5）宏：

全大写，不以 `_` 开头（避免重定义覆盖标准库或其他地方的宏），e.g. `CURRENT_TEMPERATURE`{.cpp}。

三、程序排版规则
----------------

原则 0：

> #. 美观（不要吝惜你的空格和空行）
> #. 自身的一致性
> #. 大家的一致性（规范）

原则 1：

> #. 用等宽字体
> #. 不使用 `tab` 键，用 4 个空格代替（因为不同 IDE、编辑器、网页，对 tab 的显示宽度不一致。）
> #. 缩进（indent）用 4 个空格（Visual Studio 需要设置）

C Example:

```c
#include <stdio.h>                                         // <-- 注意这里 <stdio.h> 前的空格
#include <math.h>
                                                           // <-- 【#include】s 后空行
#define PI (3.1415)                                        // <-- 最好都加上括号

typedef struct PointCoordinate
{
    int x ;
    int y;
} Point;

//! setting coordinate                                     // <-- 函数说明
Point set_point( int a, int b );                           // <-- 函数声明，参数列表这里有空格
//! get the area of the circle
double get_area( int radius );

void main()
{
    // define the coordinate of the center, the radius and the area of a circle
    Point point_circle;                                    // <-- 变量定义规则：小写，之间加下划线
    int radius_circle;
    double area_circle;

    // input the information of a circle                   // <-- 函数部分步骤意义说明规则
    printf( "please input point.x & point.y: \n" );        // <-- 函数调用，参数列表这里有空格
    scanf( "%d%d", &point_circle.x, &point_circle.y );
    printf( "please input the radius of the circle:\t" );
    scanf( "%d", &radius_circle );

    area_circle = PI * radius_circle * radius_circle;
    printf( "the area of a circle is: %lf\n", area_circle );
}

Point setPoint( int a, int b )                             // <-- 函数定义，参数列表这里有空格
{
    Ponit pt;
    pt.x = a;
    pt.y = b;
    return pt;
}

double getArea( int radius )
{
    double S;
    S = PI * radius * radius;
    return S;
}
```

加空格只是出于易读性的考虑，所以我们用 `scanf( "%d", &radius_circle );`{.cpp} 而不是
`scanf("%d", &radius_circle);`{.cpp}。但如果行过长，就可以省略这些空格，比如：

```c
while ( 1 == scanf("%d", &num) ) {       // 这里没空格
    printf( "%d\n", num );               // 这里有空格
}
```

C++ Example:

```cpp
#include <iostream>

#define PI (3.1415)
#define MAX (300)

//! basic class，2dim_point                                // <-- 对类的说明
class  Point
{
private:                                                   // <-- 先 private
    int x;                                                 // <-- 不能是 _x
    int y;
public:
    int getX( ) { return x; }                              // <-- 极其简单的函数，可以放在一行
    int getY( ) { return y; }

    //! setting coordinate                                 // <-- 函数说明（这个函数，就不该放在一行）
    void setPoint( int a, int b )
    {
        x = a;
        y = b;
    }

    //! calc distance from this point to another
    double distanceTo( Point &pt );                        // <-- 长的函数都放在 cpp 文件
};

//! derived class circle
class Circle : public Point
{
    private:
        //! radius of a circle                             // <-- 变量说明格式
        int radius;
    public:
        //! set the size of the radius
        int setRadious( int r ) { radius = r; }
        void getRadious( ) { return radius; }
        //! get the area of the circle
        double getArea( ) { return PI * radius * radius; }
};

void main( )
{
    // define a circle
    Circle circle1;

    // set up circle center & radius                       // <-- 对程序中的部分步骤说明
    circle1.setPoint(200, 250);
    circle1.setRadius(100);

    // output the X coordinate of the center of the circle1
    cout << "x = " << circle1.getX() << endl;
    // output the X coordinate of the center of the circle1
    cout << "the Area of Circle1 is " << circle1.getArea() << endl;
}
```

### 正确和错误举例

```cpp
/*
 * 加足够的空格
**/

for(int i;i<count;i++)                                     // WRONG
for ( int i; i < count; i++ )                              // CORRECT
for ( int i; i < count; ++i )                              // EVEN BETTER

int max(int a,int b)                                       // WRONG
int max( int a, int b )                                    // CORRECT

max(23,45);                                                // WRONG
max(23, 45);                                               // WRONG
max( 23, 45 );                                             // CORRECT
max( 21, max(max(3,8), 34) );                              // CORRECT，体会一下这些空格的有无

show();                                                    // CORRECT
show( );                                                   // CORRECT

/*
 * 大括号的位置
**/

for ( int i; i < count; ++i )                              // CORRECT，注意这里的空格
{
    ...
}

for ( int i; i < count; ++i ) {                            // CORRECT
    ...
}

// 同理，正确的 while，if，do while 应为
while ( CONDITION ) {
    ...
}

while ( CONDITION )
{
    ...
}

if ( CONDITION ) {
    ...
}

if ( CONDITION )
{
    ...
}

if ( CONDITION_1 ) {
    ...
} else if ( CONDITION_2 ) {
    ...
} else {
    ...
}

do {
    ...
} while ( CONDITION );


/*
 * 永远都加 {}，哪怕只有一行代码，适用于 if、for、while 和函数声明+定义
**/
if ( FATAL_ERROR )                                         // WRONG
    return EXIT_FAILURE;

if ( FATAL_ERROR ) {                                       // CORRECT
    return EXIT_FAILURE;
}

int getX( ) return x;                                      // WRONG
int getX( ) { return x; }                                  // CORRECT


/*
 * 函数声明和调用的参数规范
**/

void func();                                               // WRONG
void func2(int i, int j);

void func( );                                              // CORRECT
void func2( int i, int j );
```

### 其他一些说明

**注释的放置**

流程上的东西，夹在代码内，如：

```cpp
// set up circle center
circle.setPoint( 200, 250 );
// set up circle radius
circle.setRadius( 100 );
```

补充说明性质的东西，放在行尾，如：

```cpp
fprintf( fp,
         "| %*i "              // index
         "| %*s "              // timestamp
         "| %*s%d%*s "         // log level
         "| %*s%s%*s "         // type (aligned to center)
         "| %-*s "             // action
         "| %*s |\n",          // messag
         ... );
```

**对齐**

通常不需要对齐，比如：

```cpp
int x0;
double dx;
```
不必写成：

```cpp
int    x0;
double dx;
```

但如果很多东西，有一种莫名的联系，对齐则是上上之选，比如：

```cpp
/*
 * 对齐实例 1
**/
ust.time              = parse8BytesToDouble(ba, c, f); c += 8;
// q target
ust.q_target[0]       = parse8BytesToDouble(ba, c, f); c += 8;
ust.q_target[1]       = parse8BytesToDouble(ba, c, f); c += 8;
ust.q_target[2]       = parse8BytesToDouble(ba, c, f); c += 8;
ust.q_target[3]       = parse8BytesToDouble(ba, c, f); c += 8;
ust.q_target[4]       = parse8BytesToDouble(ba, c, f); c += 8;
ust.q_target[5]       = parse8BytesToDouble(ba, c, f); c += 8;

/*
 * 对齐示例 2
**/
enum URFunctionCodes { /* 0-128d */
    // mb_req_pdu
    READ_COILS                   = 0x01,  // read output bits
    READ_DISCRETE_INPUTS         = 0x02,  // read input bits
    READ_HOLDING_REGISTERS       = 0x03,  // read output registers
    READ_INPUT_REGISTERS         = 0x04,  // read input registers
};

/*
 * 对齐示例 3
**/
mcuAddr.insert(  ROLL_PITCH_YAW,        0x000B  );
mcuAddr.insert(  accX_accY_accZ,        0x000E  );
mcuAddr.insert(  GyroscopeX,            0x0011  );
```

包括行末的 `//` 注释也最好对齐。
外，强烈建议 Qt 的信号和槽也对齐，不要使用

```cpp
connect(mcu, SIGNAL(mcuTimestamp(quint32)), this, SLOT(onMCUTimestamp(quint32)));
```

而是使用：

```cpp
connect( mcu, SIGNAL(mcuTimestamp(quint32)),
         this, SLOT(onMCUTimestamp(quint32)) );
```

参数列表也要对齐：

```cpp
// method 1
return QString().sprintf( "%02d:%02d:%02d.%03d"         // e.g. 01:23:45.678
                        , dt.time().hour()
                        , dt.time().minute()
                        , dt.time().second()
                        , dt.time().msec() );
// method 2
return QString().sprintf( "%02d:%02d:%02d.%03d",        // e.g. 01:23:45.678
                          dt.time().hour(),
                          dt.time().minute(),
                          dt.time().second(),
                          dt.time().msec() );
// but not this one
return QString().sprintf( "%02d:%02d:%02d.%03d",        // e.g. 01:23:45.678
                          dt.time().hour(), dt.time().minute(),
                          dt.time().second(), t.time().msec() );
// and, of course, not this one
return QString().sprintf( "%02d:%02d:%02d.%03d", dt.time().hour(),
    dt.time().minute(), dt.time().second(), t.time().msec() );
```
