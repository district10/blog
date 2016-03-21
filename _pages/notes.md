% Notes | 笔记
% TANG ZHiXiong
% 2015-11-18

Notes | 笔记
============

<link rel="stylesheet" href="jquery-ui.css">
<link rel="stylesheet" href="font-awesome.min.css">
<style>
.tzx-tabs ul li a:hover {
    border-bottom: none;
}
pre {
    font-size: 80%;
}
pre.tzx-bigquote {
	padding-left: 6em;
	padding-top: 4em;
	padding-bottom: 4em;
}
</style>

<!--
<div class="tzx-tabs">
* [](#)
* [](#)

<div id="">
</div>

~~~ {# .c}
~~~
</div>
-->

<!--...-->

持续集成（ Continuous Integration）或者CI，是一个已经在软件开发中已经流行好一阵子的东西了，但是最近逐渐在运维界中获得了越来越多的拥趸。CI提出来是为了解决多个开发者在同一个代码库开发的时候造成的集成问题。基本上，两个开发者在同一样的代码上进行开发就会产生冲突，并且只有在之后很久才会发现这些冲突。 


The complete build lifecycle, including three optional deployment steps and after checking out the git repository and changing to the repository directory, is:

    before_install
    install
    before_script
    script
    after_success or after_failure
    OPTIONAL before_deploy
    OPTIONAL deploy
    OPTIONAL after_deploy
    after_script
> 动态语言一时爽，代码重构火葬场。

---

Configs 32-bit x86

:   Deps

      - visual studio 2010
      - qt4.x
      - boost
      - liblas

    ENV Variables

      - `LIBLAS_ROOT` ==> `D:\Liblas (bin, include, lib)`
      - `BOOST_INCLUDEDIR` ==> include
      - `BOOST_LIBDIR` ==> lib

    You then need to set the following two environment variables to point
    respectively to the path of the libraries and the headers

      - `BOOST_LIBRARYDIR=C:\dev\libboost_1_54_0\lib32-msvc-10.0`
      - `BOOST_INCLUDEDIR=C:\dev\libboost_1_54_0`

    You also need to add in your `PATH` environment variable, the path to the
    Boost dll's:

      - `C:\dev\libboost_1_54_0\lib32-msvc-10.0`

    With other versions of Tom installers, the path to libraries may end with
    lib32 instead of lib32-msvc-10.0.

    I selected `C:\Qt\4.8.2` so `QTDIR` is set to `C:\Qt\4.8.2`

    I add `C:\Qt\4.8.2\bin` to my `PATH`

    `C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\bin`
    :   `cvtres.exe` ==> `cvtres1.exe`

PDB what for? For Debugging.

How to in Visual Studio

  - `Tools->Options->Debugging->Symbols`
  - and select checkbox "Microsoft Symbol Servers"

Load PDB, `F5` ==> `Control + F5`

link err, failure to convert to COFF
Incremental Linking: `Yes` ==> `No`

SVN

:   ```bash
    # 1
    svn update
    svn status
    svn diff
    svn commit -m 'commit message'

    # 2
    svn merge ?
    svn revert ?
    svn resolve ?
    # 3
    svn log
    ```

VS Extensions

:   - VsVim
    - tssts

OpenGL: <http://www.opengl.org/resources/libraries/glut/glutdlls37beta.zip>

:   - glut.h ==> `C:\Program Files (x86)\Microsoft SDKs\Windows\v7.0A\Include\gl`
    - glut.lib glut32.lib ==> `C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\lib`
    - glut.dll glut32.dll ==> `C:\Windows\System32`

Refs

:   #. <http://stackoverflow.com/questions/12954821/cannot-find-or-open-the-pdb-file-in-visual-studio-c-2010/12954908#12954908>
    #. <http://fisnikhasani.com/error-lnk1123-failure-during-conversion-to-coff-file-invalid-or-corrupt/>
    #. <http://blog.csdn.net/wlanye/article/details/7561559>

---

CMakeLists.txt Snippets

```cmake
set_target_properties( ${PROJECT_NAME} PROPERTIES VS_KEYWORD Qt4VSv1.0 )

set( CMAKE_COLOR_MAKEFILE ON )
set_property( GLOBAL PROPERTY USE_FOLDERS ON )

# Set the include directories
include_directories( ${CMAKE_SOURCE_DIR} )
include_directories( ${CMAKE_SOURCE_DIR}/src )
include_directories( ${CMAKE_CURRENT_BINARY_DIR} )

link_directories( ${CMAKE_BINARY_DIR} )

# Setup output directories
set( LIBRARY_OUTPUT_PATH
	${PROJECT_BINARY_DIR}/bin
	CACHE
	PATH
	"Single directory for all libraries" )

set( EXECUTABLE_OUTPUT_PATH
	${PROJECT_BINARY_DIR}/bin
	CACHE
	PATH
	"Single directory for all executables" )

add_definitions( -DUNICODE )
add_definitions( -D_CRT_SECURE_NO_WARNINGS )
add_definitions( -Wall )

# large address aware option setting
if( ${MINGW} )
	set( LARGEADDRESSAWARE "--large-address-aware" )
else(${MINGW})
	if( WIN32 )
		set( LARGEADDRESSAWARE "/LARGEADDRESSAWARE" )
	else( WIN32 )
		set( LARGEADDRESSAWARE " " )
	endif( WIN32 )
endif( ${MINGW} )

# this command finds Qt4 libraries and sets all required variables
# note that it's Qt4, not QT4 or qt4
find_package( Qt4 REQUIRED )

set( QT_USE_QTMAIN TRUE )
set( QT_USE_QTOPENGL TRUE )
set( QT_USE_QTXML TRUE )

# (QT_USE_FILE is a variable defined by FIND_PACKAGE( Qt4 ) that contains a
# path to CMake script)
include( ${QT_USE_FILE} )

set( RSCS img.qrc )

qt4_wrap_cpp( MOC_SRCS ${HDRS_FILES} )
qt4_add_resources( RSC_SRCS ${RSCS} )
qt4_wrap_ui( UI_HDRS ${UI_FILES} )

set( FILES_TO_TRANSLATE ${FILES_TO_TRANSLATE}
     ${SRCS_FILES} ${UI_FILES} ${HDRS_FILES} PARENT_SCOPE )

source_group( "UI Files" FILES ${UI_FILES} )
source_group( "Generated Files" FILES ${MOC_SRCS} ${UI_HDRS} ${RSC_SRCS} )
source_group( "Class Diagrams" FILES ${CD_FILES} )
source_group( "Resources" FILES ${RSCS} )

add_executable( ${PROJECT_NAME}
    ${SRCS_FILES} ${UI_FILES} ${HDRS_FILES}
    ${MOC_SRCS} ${UI_HDRS} ${RSC_SRCS} ${CD_FILES} )
set_source_files_properties( ${CD_FILES} PROPERTIES HEADER_FILE_ONLY TRUE )
target_link_libraries( ${PROJECT_NAME}
    ${QT_LIBRARIES} ${OPENGL_LIBRARY} ${GLUT_LIBRARIES} ${OpenCV_LIBS} )
set_target_properties( ${PROJECT_NAME} PROPERTIES
                       LINK_FLAGS ${LARGEADDRESSAWARE} )
set_target_properties( ${PROJECT_NAME} PROPERTIES
                       VS_KEYWORD Qt4VSv1.0 )

add_executable( example WIN32
                main.cpp mainwindow.cpp ${example_MOCS} ) # WIN32 needed

install( TARGETS ${PROJECT_NAME} DESTINATION bin )

# this command finds OpenCV libraries and sets all required variables
find_package( OpenCV REQUIRED )
include_directories( ${OPENCV_INCLUDE_DIR} )
include_directories( ${CMAKE_BINARY_DIR} )

find_package( OpenGL REQUIRED )
file( GLOB_RECURSE HDRS_FILES *.h *.hpp )
file( GLOB_RECURSE SRCS_FILES *.cpp )
file( GLOB_RECURSE UI_FILES *.ui )
file( GLOB CD_FILES *.cd )

add_subdirectory( src )

set (CMAKE_BUILD_TYPE Release) # cmake -DCMAKE_BUILD_TYPE=Debug .
```

---

* `uic`{.bash} ==> mainwindow.ui --> mainwindow.h
* `moc`{.bash} ==> mainwindow.h  --> mainwindow.cpp
* `g++`{.bash} ==>

```bash
uic mainwindow.ui  -o  ui_mainwindow.h
moc mainwindow.h   -o moc_mainwindow.cpp  ==> Q_OBJECT
rcc main.qrc       -o qrc_main.cpp
g++ main.cpp mainwindow.cpp  moc_mainwindow.cpp \
-IC:\Qt\4.8.4\include \
-LC:\Qt\4.8.4\lib \
-lQtCore4 \
-lQtGui4 \
-o main
```

---

```cmake
# IF-ELSE-ENDIF
if (exp)
...
else (exp)
...
endif (exp)

# FOREACH
foreach (list)
...
endforeach (list)

# WHILE
while (cond)
...
endwhile (cond)
```

---

Headers & Libs

:   - headers ==> **`include_directories`** --> PATH & LD_LIBRARY_PATH
    - libraries ==> **`find_library`**(good) or **`link_directories`**(bad)
    - include: `*.h` ==> `-I` in gcc
    - link dir: `{*.so/*.dll/*.lib/*.dylib/...}` ==> `-L` in gcc
    - link file: `*.so/*.dll/*.lib/*.dylib/...` ==> `-l` in gcc

Use `FindXXXX.cmake` & set `${CMAKE_MODULE_PATH}` to

```cmake
find_package( Qt4 REQUIRED ) # think of it as an #include
```

Or create your own finders
```cmake
get_filename_component( ... )

# lib files
find_library( ... ) # CMAKE_LIBRARY_PATH

# header files
find_file( ... )    # CMAKE_INCLUDE_PATH

# MISC
find_program( ... )
try_compile( ... )
try_run( ... )
```

PkgConfig

:   - `UsePkgConfig.cmake`
    - `FindPkgConfig.cmake`

---

Qt with CMake

```cmake
project( pfrac )
find_package( QT4 REQUIRED )
include( ${QT_USE_FILE} )
SET( pfrac_SRCS main.cpp client.h client.cpp )
SET( pfrac_MOC_HEADERS client.h )
qt4_add_resoURCES( pfrac_SRCS
     ${PROJECT_SOURCE_DIR}/pfrac.qrc )
qt4_wrap_cpp( pfrac_MOC_SRCS
     ${pfrac_MOC_HEADERS} )
add_executable( pfrac ${pfrac_SRCS} ${pfrac_MOC_SRCS} )
target_link_libraries( pfrac ${QT_LIBRARIES} )
```

Congfigure file

```cmake
set( VALUE 23 )
configure_file( conf.h.in conf.h )
check_include_file( unistd.h HAVE_UNISTD )
```

`conf.h.in`:

:   ```cmake
    #cmakedefine VAL
    #define KEY @VALUE@
    ```

`conf.h`:

:   ```c
    #define VAL
    #define KEY 23
    ```

`*.h`:

:   ```c
    #ifdef VAL
        int keys[KEY];
    #endif

    #include "conf.h"
    #ifdef HAVE_UNISTD
        // ...
    #else
        // ...
    #endif
    ```

MISC

```cmake
# MESSAGE
message( [SEND_ERROR | STATUS | FATAL_ERROR] "message to display" ... )

# LINK
target_link_libraries( wakeup RELEASE ${SRC} )
target_link_libraries( wakeupd DEBUG ${SRC} )

# INSTALL
install( TARGETS ... RUNTIME DESTINATION bin LIBRARY DESTINATION lib )

# MACRO (text substitution)
macro (INSERT_INTO_MAP _KEY _VALUE)
  set ("MyMap_${_KEY}" "${_VALUE}")
endmacro (INSERT_INTO_MAP)

set( MyKey "foo" )
set( MyValue "bar" )
insert_into_map( "${MyKey}" "${MyValue}" )

# FUNCTION
...

# EXECUTE_PROCESS
execute_process( )

# TARGET
add_custom_targets

# CACHE
set( num 23 CACHE ) # use cached 'num' if possible, and save to it
set( num 23 CACHE FORCE ) # force overwrite Cache.

# POLICY (for Back/Forward?compatibility)
...

# Properties
cmake_minimum_required( ... )
option( ... )
get_cmake_property( ... )
get_target_property( ... )
set_target_property( ... )
set_source_files_properties( ... )

# Useful Varibles
cmake_binary_dir( build  dir )    CMAKE_CURRENT_BINARY_DIR
cmake_source_dir( source dir )    CMAKE_CURRENT_SOURCE_DIR

PROJECT_BINARY_DIR   EXECUTABLE_OUTPUT_PATH
PROJECT_SOURCE_DIR   LIBRARY_OUTPUT_PATH

$ENV{name}
```

---

MISC

#. `*.ilk` => **incremental linker file**
#. `LD_LIBRARY_PATH` ==> **Link Dynamically Lib Path**

- CPack (for installer packaging)
- CTest & CDash (for code testing & testing result displaying)

---

- [realforce-to-hhkb2-pro/AutoHotkey.ahk at master ·
  guillaume-nargeot/realforce-to-hhkb2-pro](https://github.com/guillaume-nargeot/realforce-to-hhkb2-pro/blob/master/AutoHotkey.ahk)
- [AutoHotKeyの設定](https://gist.github.com/kawaken/7652588)

---

```bash
# fullname := "/home/user/file.txt"
filename=$(basename "$fullfile")     # file.txt
extension="${filename##*.}"          # txt
filename="${filename%.*}"            # file
```


pdf2img `@`{.tzx-anchor #pdf2img}

:   ```bash
    PDF=$1
    IMG=${PDF%.*}

    convert              \
        -verbose         \
        -density 150     \
        -trim            \
        $PDF             \
        -quality 100     \
        -sharpen 0x1.0   \
        ${IMG}.jpg
    ```

    see also:

    ```bash
    # ppt -> pdf
    libreoffice --headless --invisible --convert-to pdf *.ppt

    # file -> pdf
    unoconv -f pdf file

    # crop pdf
    pdfcrop file.pdf cropped.pdf
    ```


    Refs
      ~ [Note: 批量转换PPT（bash) - gnat - 博客园](http://www.cnblogs.com/gnat-tang/p/3536745.html)
      ~ [Note: pdfcrop - gnat - 博客园](http://www.cnblogs.com/gnat-tang/p/3536750.html)
      ~ [Filter Options - Apache OpenOffice Wiki](https://wiki.openoffice.org/wiki/Documentation/DevGuide/Spreadsheets/Filter_Options)

A.pdf -> A-{0,1}.jpg

convert raw image:

```bash
#!/bin/bash

echo start time: `date`

for i in *.raw;
do
    # convert -size 5120x3840 -depth 8 gray:$i jpg/`basename $i .raw`.jpg & # &fork then process
    convert -size 5120x3840 -depth 8 gray:$i jpg/`basename $i .raw`.jpg
    mv $i raw/
done

echo end time: `date`
```

```bash
!/bin/bash

for i in rotate shear roll hue saturation brightness gamma spiff dull \
         grayscale quantize despeckle reduceNoise addNoise sharpen blur \
         threshold edgedetect spread shade raise segment solarize swirl \
         implode wave oilpaint charcoal jpeg;
do
    convert main.jpg -preview ${i} -gravity south -box "#00000020" \
        -pointsize 36 -fill "#887ddd" -draw "text 0,0 '${i}'" out.${i}.jpg
done

montage out.*.jpg -tile 1x$(ls out.*.jpg | wc -l) -geometry 766x936 out.main.jpg
```

```bash
➜  trygridfs git:(master) ✗ curl -X POST -F file=@./package.json localhost:8090/gridfs
{
  "method": "POST",
  "url": "/gridfs",
  "header": {
    "user-agent": "curl/7.35.0",
    "host": "localhost:8090",
    "accept": "*/*",
    "content-length": "1022",
    "expect": "100-continue",
    "content-type": "multipart/form-data; boundary=------------------------72fd612aa595d9d6"
  }
}

➜  trygridfs git:(master) ✗ curl -X POST -d @./package.json localhost:8090/gridfs
{
  "method": "POST",
  "url": "/gridfs",
  "header": {
    "user-agent": "curl/7.35.0",
    "host": "localhost:8090",
    "accept": "*/*",
    "content-length": "783",
    "content-type": "application/x-www-form-urlencoded"
  }
}

➜  example git:(master) ✗ curl -X POST \
    -F file=@./package.json \
    -F file=@./upload.js localhost:8000/upload
```

```bash
var fs = require('fs');
var gm = require('gm');

// resize and remove EXIF profile data
gm('img/600x300.jpg')
.resize(240, 240)
.noProfile()
.write('resized.png', function (err) {
  if (!err) { console.log('done'); }
});

```

awk, word frequency counter

```bash
# wordfreq.awk --- print list of word frequencies

{
    $0 = tolower($0)    # remove case distinctions
    # remove punctuation
    gsub(/[^[:alnum:][:blank:]]/, " ", $0)
    for (i = 1; i <= NF; i++)
        freq[$i]++
}

END {
    for (word in freq)
        printf "%s\t%d\n", word, freq[word]
}
```

use

```bash
#!/bin/bash

FILE=$1

sed -e 's/\([A-Z]\)/ \L\1/g' $FILE | \
gawk -f wcf.awk | sort -k 2nr
```

read

```bash
#/bin/bash

ADDTO="2015.md"
DATE=`date +%Y-%m-%d`

echo adding $1
echo \* \[ \] \[$DATE\] $1 >> $ADDTO
echo ===================================
echo Please read, and read with pleasure.

git add -A && git commit -m `date +%s` && git pull && git push
```

```bash
Calibre-nongui

A Calibre-like Ebook Manager
Just Simple

```

reputedly `[rɪˈpjuːtɪdli]` adv. 据说，一般认为；根据风评

- [district10/trycmake: Try some CMake](https://github.com/district10/trycmake)
- [district10/tryopenmp: Try some OpenMP](https://github.com/district10/tryopenmp)
- [district10/tryqt: Try some Qt](https://github.com/district10/tryqt)

---

```tzx-plain
; 一、组合键
;             ::WinMinimize, A ; 最小化活动窗口。
;             n::Run, Notepad.exe  ; 打开记事本。
;             & k::MsgBox 您在按住 a 时按下了 k 键。
;             ?::Send, a ; 发送模拟按键 a。


; $Space::Send, Space ;
; $a::Send, a ; 发送模拟按键 a，$ 表示使用钩子创建这个热键，这样避免了循环激发。


; 二、序列键

::btw::by the way ; 输入 btw 后替换为 by the way。需要个终止符
:*:r@::rhong@somewhere.com ; 输入 r@ 后自动替换为邮件地址。不需要个终止符

; 组合键 a & k:: ，可以表示为：{a down}{k down}{k up}{a up}
; 序列键 ::ak:: ，可以表示为：{a down}{a up}{k down}{k up}

; WheelUp::Send {Volume_Up}     ; 向上转动（远离您的方向）鼠标滚轮增加音量。
; WheelDown::Send {Volume_Down} ; 向下转动鼠标滚轮减小音量。

#n::Run Notepad

^!c::Run calc.exe

^!w::
RunWait Notepad
MsgBox The user has finished (Notepad has been closed).
return

^!s::
Send Sincerely,{Enter}John Smith
Send ^c!{tab}pasted:^v
return

^!t::
MsgBox
MsgBox, 4, , Would you like to continue?
IfMsgBox, No
    MsgBox %clipboard%
    return
; 否则, 用户选择了是.
MsgBox You pressed YES.
return

$F1::
while GetKeyState("F1", "P")  ; 当 F1 键实际被按住时.
{
    Click
}
return


::btw::
   MsgBox You typed "btw".
Return
```

- dire prediction, adj. 可怕的；悲惨的；极端的
- devour sth, 毁灭

---

```c
size_t strlen( const char *str )
{
    const char *s;
    for( s=str; *s; ++s ) { }
    return s-str;
}

char *strcpy( char *to, const char *from  )
{
    assert( to && from && "should be both valid." );
    char *p = to;
    int i = 0;
    while( (*p++=*from++) != 0 ) { }
    return to;
}

void strstr( const char *haystack, const char *needle )
{

}

int atoi( const char *str )
{
    int len = strlen( str );
    int sign = 1;

    const char *p = str;
    while ( *p == ' ' ) {
        ++p;
    }

    if ( *p == '+' ) { sign = +1; ++p; }
    if ( *p == '-' ) { sign = -1; ++p; }
    int i = 0;
    while( '0' <= *p && *p <= '9' ) {
        int d = *p - '0';
        i = i * 10 + d;
    }

    stip preceding white chars;
    parse sign, +, -, or no sign
        c = '0'-'9' ?
        overflow?
        *10 + *c-'0'
        return num * sign;
}

substring searching
  kmp

    char *text, char *pattern;
  int n, m;
  n,m,0?
  init _prefix ( pattern, next )
  free (next)
  loop: text[i]=pattern[j]? ++i else j = next(?)

  tests: char *text, char *pattern, int i = kmp(), i>0?printf;

    rabin-karp.
    regexp?

typedef int stack_elem_t;
typedef struct {
    int size;
    int capicity;
    stack_elem_t *elems;
} stack_t;

stack_t *stack_create( const int capacity ) {
    malloc stack_t;
    malloc elements;
    assign;
    return s;
}

void destroy( stack_t *s){
    free(s->elems);
    free(s);
}

bool empty(s);
int size(s);
void push(s, elem){
    full?
    expand size;
    push;
    s->elems[s->size++] = x; // pa: ++size or size++, which is better
}

int top() { } // pa: size++ -> size-1
void pop()
{
    --size;
}

hanoi tower, recursive.
n==1? just move x->z;
hanoi(n, from, bridge, to);

convert base, void (int n, int d)
while(n!=0)
r=n%d; push(r);
n=n/d;

如果可以预估栈的最大空间,则用数组来模拟栈,这时常用的一个技巧。

  - 这里,栈的最大长度是多少?假设 CPU 是 64 位,最大的整数则是 2^64,由于
  - 数制最小为 2,在这个进制下,数的位数最长,这就是栈的最大长度,最长为 64。

10->d, hader,
d->10, easy! char->num, n=n*d+num;

queue.

typedef struct {
    int front;
    int rear;
    int capacity;
    queue_elem_t *elems;
} queue_t;

create(int capacity);
malloc(queue);
malloc(queue->elems);
return queue;

destroy(queue *q);
free(q->elems);
free(q);

empty?: rear==front;
size: (rear-front+capacity)%capacity

push(q, elem x){
    full?: (rear+1)%capacity==front
    realloc, reassign: front<rear? easy : two parts;
    free(origin-elems);
    elems=new mems;
   void *memcpy(void *dest, const void *src, size_t n);

rear = (read+1)%capacity;

binary tree:

typedef struct {
    binary_tree_node_t *left;
    binary_tree_node_t *right;
    tree_node_elem_t elem;
} binary_tree_node_t;

pre_order_r( const *root, int (*visit)(const *tree)) {
    if (!root) return;
    visit( root );
    pre_order_r( root->left, visit );
    pre_order_r( root->right, visit );
}

in_order_r( const *root, int (*visit)(const *tree)) {
    if (!root) return;
    in_order_r( root->left, visit );
    visit( root );
    in_order_r( root->right, visit );
}

post_order_r( const *root, int (*visit)(const *tree)) {
    if (!root) return;
    post_order_r( root->left, visit );
    post_order_r( root->right, visit );
    visit( root );
}

// no recursive version
pre_order( *tree, int (*visit)(*tree) ) {

}
```

这部分全部移到了 [district10/algo: 重复造轮子。](https://github.com/district10/algo)。

---

i3 window manager

:   By pressing `$mod+Enter`, a new terminal will be opened. It will fill the
    whole space available on your screen.

    Therefore, `$mod+j` is left, `$mod+k` is down, `$mod+l` is up and `$mod+;`
    is right. So, to switch between the terminals, use `$mod+k` or `$mod+l.` Of
    course, you can also use the arrow keys.

    To split a window vertically, press `$mod+v` before you create the new
    window. To split it horizontally, press `$mod+h`.

    To switch modes, press `$mod+e` for splith/splitv (it toggles), `$mod+s`
    for stacking and `$mod+w` for tabbed.

    To display a window in fullscreen mode or to go out of fullscreen mode
    again, press `$mod+f`.

    If an application does not provide a mechanism for closing (most
    applications provide a menu, the escape key or a shortcut like
    <kbd>Control+w</kbd> to close), you can press $mod+Shift+q to kill a
    window. For applications which support the WM_DELETE protocol, this will
    correctly close the application (saving any modifications or doing other
    cleanup). If the application doesn’t support the WM_DELETE protocol your X
    server will kill the window and the behaviour depends on the application.

    `$mod+num,` goto workspace,

    `$mod+shift+num,` move window to workspace.

    To restart i3 in place (and thus get into a clean state if there is a bug,
    or to upgrade to a newer version of i3) you can use $mod+Shift+r.

    To cleanly exit i3 without killing your X server, you can use
    `$mod+Shift+e`.  By default, a dialog will ask you to confirm if you really
    want to quit.

    You can toggle floating mode for a window by pressing `$mod+Shift+Space`.
    By dragging the window’s titlebar with your mouse you can move the window
    around.  By grabbing the borders and moving them you can resize the window.
    You can also do that by using the `[floating_modifier]`. Another way to
    resize floating windows using the mouse is to right-click on the titlebar
    and drag.

---

*/character-classes*

| ...    | ...     | ...     | ...                                           |
| :---:  | :---:   | :---:   | :---:                                         |
|  `/\i` |  `\i`   |   `\i`  |   identifier character (see 'isident' option) |
|  `/\I` |  `\I`   |   `\I`  |   like `\i`, but excluding digits |
|  `/\k` |  `\k`   |   `\k`  |   keyword character (see 'iskeyword' option) |
|  `/\K` |  `\K`   |   `\K`  |   like `\k`, but excluding digits |
|  `/\f` |  `\f`   |   `\f`  |   file name character (see 'isfname' option) |
|  `/\F` |  `\F`   |   `\F`  |   like `\f`, but excluding digits |
|  `/\p` |  `\p`   |   `\p`  |   printable character (see 'isprint' option) |
|  `/\P` |  `\P`   |   `\P`  |   like `\p`, but excluding digits |
|  `/\s` |  `\s`   |   `\s`  |   whitespace character: <Space> and <Tab> |
|  `/\S` |  `\S`   |   `\S`  |   non-whitespace character; opposite of \s |
|  `/\d` |  `\d`   |   `\d`  |   digit:              `[0-9]` |
|  `/\D` |  `\D`   |   `\D`  |   non-digit:          `[^0-9]` |
|  `/\x` |  `\x`   |   `\x`  |   hex digit:          `[0-9A-Fa-f]` |
|  `/\X` |  `\X`   |   `\X`  |   non-hex digit:          `[^0-9A-Fa-f]` |
|  `/\o` |  `\o`   |   `\o`  |   octal digit:            `[0-7]` |
|  `/\O` |  `\O`   |   `\O`  |   non-octal digit:        `[^0-7]` |
|  `/\w` |  `\w`   |   `\w`  |   word character:         `[0-9A-Za-z_]` |
|  `/\W` |  `\W`   |   `\W`  |   non-word character:     `[^0-9A-Za-z_]` |
|  `/\h` |  `\h`   |   `\h`  |   head of word character:     `[A-Za-z_]` |
|  `/\H` |  `\H`   |   `\H`  |   non-head of word character: `[^A-Za-z_]` |
|  `/\a` |  `\a`   |   `\a`  |   alphabetic character:       `[A-Za-z]` |
|  `/\A` |  `\A`   |   `\A`  |   non-alphabetic character:   `[^A-Za-z]` |
|  `/\l` |  `\l`   |   `\l`  |   lowercase character:        `[a-z]` |
|  `/\L` |  `\L`   |   `\L`  |   non-lowercase character:    `[^a-z]` |
|  `/\u` |  `\u`   |   `\u`  |   uppercase character:        `[A-Z]` |
|  `/\U` |  `\U`   |   `\U`  |   non-uppercase character     `[^A-Z]` |
|  `/\_` |  `\_x`  |   `\_x` |   where x is any of the characters above: character |

see more at `:h regexp`

- `%s/pattern//gn`, count of matches
- `%s/pattern//n`, count of lines with matches
- `%s///n`, count of current word
- `:10,50s/pattern//gn`, line 10 to line 50
- `:s/\[\d\{,3\}\]//g`, delete `[1]`-like ref links in wikipedia
- `:%s/^\(.*\)(/\L\1/`, cmake, lowercase commands

---

Some DSA keys are not considered secure anymore by OpenSSH 7. Adding
"PubkeyAcceptedKeyTypes ssh-dss" to `~/.ssh/config` helps.

---

```cpp
    bool operator == (const ref_ptr& rp) const { return (_ptr==rp._ptr); }
    bool operator == (const T* ptr) const { return (_ptr==ptr); }
    friend bool operator == (const T* ptr, const ref_ptr& rp) { return (ptr==rp._ptr); }

    bool operator != (const ref_ptr& rp) const { return (_ptr!=rp._ptr); }
    bool operator != (const T* ptr) const { return (_ptr!=ptr); }
    friend bool operator != (const T* ptr, const ref_ptr& rp) { return (ptr!=rp._ptr); }

    bool operator < (const ref_ptr& rp) const { return (_ptr<rp._ptr); }

// follows is an implmentation of the "safe bool idiom", details can be found at:
//   http://en.wikibooks.org/wiki/More_C%2B%2B_Idioms/Safe_bool
//   http://lists.boost.org/Archives/boost/2003/09/52856.php

private:
    typedef T* ref_ptr::*unspecified_bool_type;

public:
    // safe bool conversion
    operator unspecified_bool_type() const { return valid()? &ref_ptr::_ptr : 0; }
#endif

    T& operator*() const { return *_ptr; }
    T* operator->() const { return _ptr; }
    T* get() const { return _ptr; }

    bool operator!() const   { return _ptr==0; } // not required
    bool valid() const       { return _ptr!=0; }

    /** release the pointer from ownership by this ref_ptr<>, decrementing the
     * objects refencedCount() via unref_nodelete() to prevent the Object
     * object from being deleted even if the reference count goes to zero.  Use
     * when using a local ref_ptr<> to an Object that you want to return from a
     * function/method via a C pointer, whilst preventing the normal ref_ptr<>
     * destructor from cleaning up the object. When using release() you are
     * implicitly expecting other code to take over management of the object,
     * otherwise a memory leak will result. */
    T* release() { T* tmp=_ptr; if (_ptr) _ptr->unref_nodelete(); _ptr=0; return tmp; }

    void swap(ref_ptr& rp) { T* tmp=_ptr; _ptr=rp._ptr; rp._ptr=tmp; }
```

---

* If ... Else ... Paradigm

* [Cognitive Bias](http://en.wikipedia.org/wiki/List_of_cognitive_biases)

---------------------------- ------------------------------------------------
**Name**                     **Description**

Ambiguity effect             The tendency to avoid options for which missing
                             information makes the probability seem "unknown".

Anchoring or focalism        The tendency to rely too heavily, or "anchor",
                             on one trait or piece of information when
                             making decisions (usually the first piece of
                             information that we acquire on that subject)

Anthropomorphism             The tendency to characterize animals, objects,
                             and abstract concepts as possessing human-like
                             traits, emotions, and intentions.

Attentional bias             The tendency of our perception to be affected by
                             our recurring thoughts.

Automation bias              The tendency to excessively depend on automated
                             systems which can lead to erroneous automated
                             information overriding correct decisions.

Availability heuristic       The tendency to overestimate the likelihood of
                             events with greater "availability" in memory,
                             which can be influenced by how recent the
                             memories are or how unusual or emotionally
                             charged they may be.

Availability cascade         A self-reinforcing process in which a
                             collective belief gains more and more
                             plausibility through its increasing repetition
                             in public discourse (or "repeat something long
                             enough and it will become true").

Backfire effect              When people react to disconfirming evidence by
                             strengthening their beliefs.

Bandwagon effect             The tendency to do (or believe) things because
                             many other people do (or believe) the same.
                             Related to groupthink and herd behavior.

Base rate fallacy or         The tendency to ignore base rate information
Base rate neglect            (generic, general information) and focus on
                             specific information (information only
                             pertaining to a certain case).

Belief bias                  An effect where someone's evaluation of the
                             logical strength of an argument is biased by
                             the believability of the conclusion.

Bias blind spot              The tendency to see oneself as less biased than
                             other people, or to be able to identify more
                             cognitive biases in others than in oneself.

Cheerleader effect           The tendency for people to appear more
                             attractive in a group than in isolation.

Choice-supportive bias       The tendency to remember one's choices as
                             better than they actually were.

Clustering illusion          The tendency to overestimate the importance of
                             small runs, streaks, or clusters in large
                             samples of random data (that is, seeing phantom
                             patterns).

Confirmation bias            The tendency to search for, interpret, focus on
                             and remember information in a way that confirms
                             one's preconceptions.

Congruence bias              The tendency to test hypotheses exclusively
                             through direct testing, instead of testing
                             possible alternative hypotheses.

Conjunction fallacy          The tendency to assume that specific conditions
                             are more probable than general ones.

Conservatism (Bayesian)      The tendency to revise one's belief
                             insufficiently when presented with new evidence.

Contrast effect              The enhancement or reduction of a certain
                             perception's stimuli when compared with a
                             recently observed, contrasting object.

Curse of knowledge           When better-informed people find it extremely
                             difficult to think about problems from the
                             perspective of lesser-informed people.

Declinism                    The belief that a society or institution is
                             tending towards decline. Particularly, it is
                             the predisposition to view the past favourably
                             and future negatively.

Decoy effect                 Preferences for either option A or B changes in
                             favor of option B when option C is presented,
                             which is similar to option B but in no way
                             better.

Denomination effect          The tendency to spend more money when it is
                             denominated in small amounts (e.g., coins)
                             rather than large amounts (e.g., bills).

Disposition effect           The tendency to sell an asset that has
                             accumulated in value and resist selling an
                             asset that has declined in value.

Distinction bias             The tendency to view two options as more
                             dissimilar when evaluating them simultaneously
                             than when evaluating them separately.

Dunning-Kruger effect        The tendency for unskilled individuals to
                             overestimate their own ability and the tendency
                             for experts to underestimate their own ability.

Duration neglect             The neglect of the duration of an episode in
                             determining its value

Empathy gap                  The tendency to underestimate the influence or
                             strength of feelings, in either oneself or others.

Endowment effect             The tendency for people to demand much more to
                             give up an object than they would be willing to
                             pay to acquire it.

Essentialism                 Categorizing people and things according to
                             their essential nature, in spite of
                             variations.[dubious – discuss]

Exaggerated expectation      Based on the estimates, real-world evidence
                             turns out to be less extreme than our
                             expectations (conditionally inverse of the
                             conservatism bias).

Experimenter's or            The tendency for experimenters to believe,
expectation bias             certify, and publish data that agree with their
                             expectations for the outcome of an experiment,
                             and to disbelieve, discard, or downgrade the
                             corresponding weightings for data that appear
                             to conflict with those expectations.

Focusing effect              The tendency to place too much importance on
                             one aspect of an event.

Forer effect or              The observation that individuals will give high
Barnum effect                accuracy ratings to descriptions of their
                             personality that supposedly are tailored
                             specifically for them, but are in fact vague
                             and general enough to apply to a wide range of
                             people. This effect can provide a partial
                             explanation for the widespread acceptance of
                             some beliefs and practices, such as astrology,
                             fortune telling, graphology, and some types of
                             personality tests.

Framing effect               Drawing different conclusions from the same
                             information, depending on how that information
                             is presented

Frequency illusion           The illusion in which a word, a name, or other
                             thing that has recently come to one's attention
                             suddenly seems to appear with improbable
                             frequency shortly afterwards (not to be
                             confused with the recency illusion or selection
                             bias). Colloquially, this illusion is known as
                             the Baader-Meinhof Phenomenon.

Functional fixedness         Limits a person to using an object only in the
                             way it is traditionally used.

Gambler's fallacy            The tendency to think that future probabilities
                             are altered by past events, when in reality
                             they are unchanged. The fallacy arises from an
                             erroneous conceptualization of the law of large
                             numbers. For example, "I've flipped heads with
                             this coin five times consecutively, so the
                             chance of tails coming out on the sixth flip is
                             much greater than heads."

Hard–easy effect             Based on a specific level of task difficulty,
                             the confidence in judgments is too conservative
                             and not extreme enough

Hindsight bias               Sometimes called the "I-knew-it-all-along"
                             effect, the tendency to see past events as
                             being predictable at the time those events
                             happened.

Hot-hand fallacy             The "hot-hand fallacy" (also known as the "hot
                             hand phenomenon" or "hot hand") is the
                             fallacious belief that a person who has
                             experienced success with a random event has a
                             greater chance of further success in additional
                             attempts.

Hyperbolic discounting       Discounting is the tendency for people to have
                             a stronger preference for more immediate
                             payoffs relative to later payoffs.  Hyperbolic
                             discounting leads to choices that are
                             inconsistent over time –people make choices
                             today that their future selves would prefer not
                             to have made, despite using the same reasoning.
                             Also known as current moment bias,
                             present-bias, and related to Dynamic
                             inconsistency.

Identifiable victim effect   The tendency to respond more strongly to a
                             single identified person at risk than to a
                             large group of people at risk.

Illusion of control          The tendency to overestimate one's degree of
                             influence over other external events.

Illusion of validity         Belief that furtherly acquired information
                             generates additional relevant data for
                             predictions, even when it evidently does not.

Illusory correlation         Inaccurately perceiving a relationship between
                             two unrelated events.

Impact bias                  The tendency to overestimate the length or the
                             intensity of the impact of future feeling states.

Information bias             The tendency to seek information even when it
                             cannot affect action.

Insensitivity to             The tendency to under-expect variation in small
sample size                  samples.

Irrational escalation        The phenomenon where people justify increased
                             investment in a decision, based on the
                             cumulative prior investment, despite new
                             evidence suggesting that the decision was
                             probably wrong. Also known as the sunk cost
                             fallacy.

Less-is-better effect        The tendency to prefer a smaller set to a
                             larger set judged separately, but not jointly.

Loss aversion                The disutility of giving up an object is
                             greater than the utility associated with
                             acquiring it. (see also Sunk cost effects and
                             endowment effect).

Mere exposure effect         The tendency to express undue liking for things
                             merely because of familiarity with them.

Money illusion               The tendency to concentrate on the nominal
                             value (face value) of money rather than its
                             value in terms of purchasing power.

Moral credential effect      The tendency of a track record of non-prejudice
                             to increase subsequent prejudice.

Negativity effect            The tendency of people, when evaluating the
                             causes of the behaviors of a person they
                             dislike, to attribute their positive behaviors
                             to the environment and their negative behaviors
                             to the person's inherent nature.

Negativity bias              Psychological phenomenon by which humans have a
                             greater recall of unpleasant memories compared
                             with positive memories.

Neglect of probability       The tendency to completely disregard
                             probability when making a decision under
                             uncertainty.

Normalcy bias                The refusal to plan for, or react to, a
                             disaster which has never happened before.

Not invented here            Aversion to contact with or use of products,
                             research, standards, or knowledge developed
                             outside a group. Related to IKEA effect.

Observer-expectancy effect   When a researcher expects a given result and
                             therefore unconsciously manipulates an
                             experiment or misinterprets data in order to
                             find it (see also subject-expectancy effect).

Omission bias                The tendency to judge harmful actions as worse,
                             or less moral, than equally harmful omissions (inactions).

Optimism bias                The tendency to be over-optimistic,
                             overestimating favorable and pleasing outcomes
                             (see also wishful thinking, valence effect,
                             positive outcome bias).

Ostrich effect               Ignoring an obvious (negative) situation.

Outcome bias                 The tendency to judge a decision by its
                             eventual outcome instead of based on the
                             quality of the decision at the time it was
                             made.

Overconfidence effect        Excessive confidence in one's own answers to
                             questions. For example, for certain types of
                             questions, answers that people rate as "99%
                             certain" turn out to be wrong 40% of the time.

Pareidolia                   A vague and random stimulus (often an image or
                             sound) is perceived as significant, e.g.,
                             seeing images of animals or faces in clouds,
                             the man in the moon, and hearing non-existent
                             hidden messages on records played in reverse.

Pessimism bias               The tendency for some people, especially those
                             suffering from depression, to overestimate the
                             likelihood of negative things happening to
                             them.

Planning fallacy             The tendency to underestimate task-completion
                             times.

Post-purchase                The tendency to persuade oneself through
rationalization              rational argument that a purchase was good value.

Pro-innovation bias          The tendency to have an excessive optimism
                             towards an invention or innovation's usefulness
                             throughout society, while often failing to
                             identify its limitations and weaknesses.

Pseudocertainty effect       The tendency to make risk-averse choices if the
                             expected outcome is positive, but make
                             risk-seeking choices to avoid negative
                             outcomes.

Reactance                    The urge to do the opposite of what someone
                             wants you to do out of a need to resist a
                             perceived attempt to constrain your freedom of
                             choice (see also Reverse psychology).

Reactive devaluation         Devaluing proposals only because they
                             purportedly originated with an adversary.

Recency illusion             The illusion that a word or language usage is a
                             recent innovation when it is in fact
                             long-established (see also frequency illusion).

Regressive bias              A certain state of mind wherein high values and
                             high likelihoods are overestimated while low
                             values and low likelihoods are
                             underestimated.

Restraint bias               The tendency to overestimate one's ability to
                             show restraint in the face of temptation.
                             Rhyme as reason effect  | Rhyming statements
                             are perceived as more truthful. A famous
                             example being used in the O.J Simpson trial
                             with the defense's use of the phrase "If the
                             gloves don't fit, then you must acquit."

Risk compensation /          The tendency to take greater risks when
Peltzman effect              perceived safety increases.

Selective perception         The tendency for expectations to affect perception.

Semmelweis reflex            The tendency to reject new evidence that
                             contradicts a paradigm.

Social comparison bias       The tendency, when making hiring decisions, to
                             favour potential candidates who don't compete
                             with one's own particular strengths.

Social desirability bias     The tendency to over-report socially desirable
                             characteristics or behaviours in oneself and
                             under-report socially undesirable
                             characteristics or behaviours.

Status quo bias              The tendency to like things to stay relatively
                             the same (see also loss aversion, endowment
                             effect, and system justification).

Stereotyping                 Expecting a member of a group to have certain
                             characteristics without having actual
                             information about that individual.

Subadditivity effect         The tendency to judge probability of the whole
                             to be less than the probabilities of the parts.

Subjective validation        Perception that something is true if a
                             subject's belief demands it to be true. Also
                             assigns perceived connections between
                             coincidences.

Survivorship bias            Concentrating on the people or things that
                             "survived" some process and inadvertently
                             overlooking those that didn't because of their
                             lack of visibility.

Time-saving bias             Underestimations of the time that could be
                             saved (or lost) when increasing (or decreasing)
                             from a relatively low speed and overestimations
                             of the time that could be saved (or lost) when
                             increasing (or decreasing) from a relatively
                             high speed.

Third-person effect          Belief that that mass communicated media
                             messages have a greater effect on others than
                             on themselves.

Triviality /                 The tendency to give disproportionate weight to
Parkinson's Law of           trivial issues. Also known as bikeshedding,
                             this bias explains why an organization may
                             avoid specialized or complex subjects, such as
                             the design of a nuclear reactor, and instead
                             focus on something easy to grasp or rewarding
                             to the average participant, such as the design
                             of an adjacent bike shed.

Unit bias                    The tendency to want to finish a given unit of
                             a task or an item. Strong effects on the
                             consumption of food in particular.

Weber–Fechner law            Difficulty in comparing small differences in
                             large quantities.

Well travelled road effect   Underestimation of the duration taken to traverse
                             oft-traveled routes and overestimation of the
                             duration taken to traverse less familiar
                             routes.

Zero-risk bias               Preference for reducing a small risk to zero
                             over a greater reduction in a larger risk.

Zero-sum heuristic           Intuitively judging a situation to be zero-sum
                             (i.e., that gains and losses are correlated).
                             Derives from the zero-sum game in game theory,
                             where wins and losses sum to zero. The
                             frequency with which this bias occurs may be
                             related to the social dominance orientation
                             personality factor
---------------------------- ------------------------------------------------

* [The 12 Cognitive Bias that Prevent you from Being Rational](http://io9.com/5974468/the-most-common-cognitive-biases-that-prevent-you-from-being-rational)
* [心智工具箱（4）：执行意图 | 阳志平的日志](http://www.douban.com/note/256480522/)

---


mnemonic
英 [nɪ'mɒnɪk] 美 [nɪ'mɑnɪk]

    adj. 记忆的；助记的；记忆术的

 Four core pillars: Mnemonic, Discoverable, Consistent and "Crowd-Configured".

---

* [Language Tags in HTML and XML | W3C](http://www.w3.org/International/articles/language-tags/)


vim

- `:b <TAB>`, list buffers.
- `:b PATTERN<TAB>`, list buffers.
- `:set readonly`
- `:set nomodifable`
- `:setlocal textwidth=70`
- `:ls`, or `:buffers`, `:files`, `:b 5`
- `:bdelete`
- `:help ctrl-w`
- `:ball`, open all buffers in current window
- `ctrl-w o`, leave only one window
- `:help 'switchbuf'`
- `:rew[ind]`, `:E`, `:e .`
- `ctrl-o`, older position
- in dir listing:
    + `o`, `v`: open, open vertically
    + `t`: tab open
    + `p`: preview window
- `ctrl-o`, `ctrl-i`, back and forth
- ` `` `, last position, ` `. `, last edit, read more `:help jumplist`
- `:Sex .`

[我不是为她出发，却为她到达。](http://bbs.nju.edu.cn/bbstcon?board=Girls&file=M.1457382613.A)

:   <!-- `ZAK 同学喜欢`{.tzx-tag} -->

    ```tzx-bigquote
    绝大部分 20 左右的小伙子，心里想的都是付出、责任。他们可能没那么多花招，但是
    愿意做一切喜欢的女孩希望的事情。

    20 左右的小姑娘，心里只想着享受，每天纠结于霸道总裁还是知性暖男，韩国偶吧还
    是欧美猛男。总说再不疯狂就老了，总想着轰轰烈烈的恋爱。

    这时的小伙子想的都是奋斗、闯荡，他们会为自己不如其他小伙子而羞愧，渴望着有
    个公主等着自己呵护，认为通向城堡的路布满荆棘，还有可怕的巨龙。

    他还没有把剑擦亮，却看到公主坐着小马车寻欢作乐去了。

    “你能像吟游诗人一样天天为我讲故事么？”

    “你能像杂技演员一样天天逗我笑么？”

    “当我孤独的时候你却不在我身边，但是侍卫长却能温暖我”

    “我和花花公子在一起真的很开心，他带我四处旅游、喝红酒、吃大餐”

    我能理解，真的。可能你并不是我想象中的公主，但我还是会踏上这条荆棘之路。

    因为我们，是英雄啊

    有一天，在路边的田地里会有一个发髻上插着野花的姑娘，粗糙的手，小麦色的肌肤。

    她不美丽，却愿意对我笑。

    我不是为她出发，却为她到达。
    ```

    两条有意思的回复：
      ~ 公主不是夜总会里的么，600 一个，包夜 1000 多。
      ~ ```tzx-bigquote
        20 岁左右的姑娘遇到一个穷小伙。
        她觉得自己喜欢一个人，养他都行。
        然后姑娘读博去了。
        小伙子回家乡了工作了。
        小伙子很快结婚了。
        姑娘成了大龄单身女博士。
        同龄的男博士们都去找 20 的小姑娘了。
        并不是所有 20 岁的小姑娘都在寻欢作乐，有的搞学习，做实验去了。
        然后就浪费了青春，成了被人嫌弃的女博士。
        为什么你一开始目光都在小公主身上，到最后才发现小村姑呢。
        其实小村姑很多，长得不好看，在这个看脸的社会，你根本看不到。
        ```

[scientific-python-lectures](http://nbviewer.jupyter.org/github/jrjohansson/scientific-python-lectures/blob/master/Lecture-4-Matplotlib.ipynb)

:   To create an 800x400 pixel, 100 dots-per-inch figure, we can do:

    ```python
    fig = plt.figure(figsize=(8,4), dpi=100)
    ```

    ```python
    # code
    fig.savefig("filename.png") # fig.savefig("filename.png", dpi=200)

    # code
    fig, axes = plt.subplots(figsize=(12,3))

    axes.plot(x, y, 'r')
    axes.set_xlabel('x')
    axes.set_ylabel('y')
    axes.set_title('title');

    axes.legend(["curve1", "curve2", "curve3"]);

    ax.legend(loc=0) # let matplotlib decide the optimal location
    ax.legend(loc=1) # upper right corner
    ax.legend(loc=2) # upper left corner
    ax.legend(loc=3) # lower left corner
    ax.legend(loc=4) # lower right corner
    # .. many more options are available
    ```

    ```python
    # MATLAB style line color and style
    ax.plot(x, x**2, 'b.-') # blue line with dots
    ax.plot(x, x**3, 'g--') # green dashed line


    # Python style
    fig, ax = plt.subplots()

    ax.plot(x, x+1, color="red", alpha=0.5) # half-transparant red
    ax.plot(x, x+2, color="#1155dd")        # RGB hex code for a bluish color
    ax.plot(x, x+3, color="#15cc55")        # RGB hex code for a greenish color

    # plot range
    axes[1].axis('tight')
    axes[1].set_yscale("log")

    axes[2].set_ylim([0, 60])
    axes[2].set_xlim([2, 5])

    ax.set_xticks([1, 2, 3, 4, 5])
    ax.set_xticklabels([r'$\alpha$', r'$\beta$', r'$\gamma$', r'$\delta$', r'$\epsilon$'],
                       fontsize=18)

    # scientific notation
    fig, ax = plt.subplots(1, 1)

    ax.plot(x, x**2, x, np.exp(x))
    ax.set_title("scientific notation")

    ax.set_yticks([0, 50, 100, 150])

    from matplotlib import ticker
    formatter = ticker.ScalarFormatter(useMathText=True)
    formatter.set_scientific(True)
    formatter.set_powerlimits((-1,1))
    ax.yaxis.set_major_formatter(formatter)

    # distance between x and y axis and the numbers on the axes
    matplotlib.rcParams['xtick.major.pad'] = 5
    matplotlib.rcParams['ytick.major.pad'] = 5

    fig, ax = plt.subplots(1, 1)

    ax.plot(x, x**2, x, np.exp(x))
    ax.set_yticks([0, 50, 100, 150])

    ax.set_title("label and axis spacing")

    # padding between axis label and axis numbers
    ax.xaxis.labelpad = 5
    ax.yaxis.labelpad = 5

    ax.set_xlabel("x")
    ax.set_ylabel("y");
    ```

---

```python
pd.read_clipboard()
```

---

> You can **think of the meaning of the words column and feature as
> interchangeable** for this notebook.

---


```python
> import re
> str = 'Zhouy a Python learner and i am now learning Regular Expression'
> m = re.match('(\w+)\s',str)
> print m
> print m.group(0)
<MatchObject object>
Zhouy
```

re.match, re.search, re.split, re.findAll, re.replace,

```python
> s = '100 NORTH BROAD ROAD'
> s_new = s[:-4] + s[-4:].replace('ROAD', 'RD.')
> print s_new
100 NORTH BROAD RD.
```

```python
> import re
> s = '100 NORTH BROAD ROAD'
> s_new = re.sub('ROAD$', 'RD.', s)
> print s_new
Out: 100 NORTH BROAD RD.
```

```python
import re
pattern = '^M{0,3}$'
print re.search(pattern, 'M')
```

带有内联注释 (Inline Comments) 的正则表达式

```python
pattern = """
^ # beginning of string
M{0,3} # thousands - 0 to 3 M's
(CM|CD|D?C{0,3}) # hundreds - 900 (CM), 400 (CD), 0-300 (0 to 3 C's),
# or 500-800 (D, followed by 0 to 3 C's)
(XC|XL|L?X{0,3}) # tens - 90 (XC), 40 (XL), 0-30 (0 to 3 X's),
# or 50-80 (L, followed by 0 to 3 X's)
(IX|IV|V?I{0,3}) # ones - 9 (IX), 4 (IV), 0-3 (0 to 3 I's),
# or 5-8 (V, followed by 0 to 3 I's)
$ # end of string
"""
print re.search(pattern, 'M', re.VERBOSE)
```

```python
> import re
> print re.search(r'^(\d{3})-(\d{3})-(\d{4})$','800-555-1212').groups()
800 555 1212
```

```python
import re
print re.search(r'^(\d{3})-(\d{3})-(\d{4})-(\d+)$','800-555-1212-1234').groups()
print re.search(r'^(\d{3})-(\d{3})-(\d{4})-(\d+)$','800 555 1212 1234')
```

`\D 匹配任意字符，除了数字位，+ 表示“1 个或者多个”`

```python
import re
def plural(noun):
    if re.search('[sxz]$', noun):
        return re.sub('$', 'es', noun)
    elif re.search('[^aeioudgkprt]h$', noun):
        return re.sub('$', 'es', noun)
    elif re.search('[^aeiou]y$', noun):
        return re.sub('y$', 'ies', noun)
    else:
        return noun + 's'
```

---

![](http://whudoc.qiniudn.com/python-regexp.png)


[Python正则表达式指南 - AstralWind - 博客园](http://www.cnblogs.com/huxi/archive/2010/07/04/1771073.html)

:   与大多数编程语言相同，正则表达式里使用 `\` 作为转义字符，这就可能造成反斜杠
    困扰。假如你需要匹配文本中的字符 `\`，那么使用编程语言表示的正则表达式里将
    需要4个反斜杠 `\\\\`：前两个和后两个分别用于在编程语言里转义成反斜杠，转换
    成两个反斜杠后再在正则表达式里转义成一个反斜杠。Python 里的原生字符串很好地
    解决了这个问题，这个例子中的正则表达式可以使用 `r"\\"` 表示。同样，匹配一个
    数字的`"\\d"` 可以写成 `r"\d"`。有了原生字符串，你再也不用担心是不是漏写了
    反斜杠，写出来的表达式也更直观。

---

* `pip install --upgrade pip`{.bash}
* `pip install jupyter`{.bash}

Python2 & Python3 on Windows: `python3.bat`
:   ```bash
    @ echo off
    C:\Python34\python.exe %*
    ```
---

附 [In My Secret Life][in-my-secret-life] 的 [歌词][in-my-secret-life-lyrics]：

:   ```tzx-bigquote
    I saw you this morning.
    You were moving so fast.
    Can't seem to loosen my grip
    On the past.
    And I miss you so much.
    There's no one in sight.
    And we're still making love
    In My Secret Life.

    I smile when I'm angry.
    I cheat and I lie.
    I do what I have to do
    To get by.
    But I know what is wrong,
    And I know what is right.
    And I'd die for the truth
    In My Secret Life.

    Hold on, hold on, my brother.
    My sister, hold on tight.
    I finally got my orders.
    I'll be marching through the morning,
    Marching through the night,
    Moving cross the borders
    Of My Secret Life.

    Looked through the paper.
    Makes you want to cry.
    Nobody cares if the people
    Live or die.
    And the dealer wants you thinking
    That it's either black or white.
    Thank G-d it's not that simple
    In My Secret Life.

    I bite my lip.
    I buy what I'm told:
    From the latest hit,
    To the wisdom of old.
    But I'm always alone.
    And my heart is like ice.
    And it's crowded and cold
    In My Secret Life.
    ```

[in-my-secret-life]: http://www.xiami.com/song/1014582?spm=a1z1s.3521865.23309997.2.NsmCfy
[in-my-secret-life-lyrics]: http://www.lyrics.com/in-my-secret-life-lyrics-leonard-cohen.html

---

<!--
http://dict.youdao.com/search?q=
-->

- tantamount
- resemblance
- reciprocal
- adjective
- agitated
- a fortiori
- pathology
- tacitly
- mutatis mutandis
- synonyn
- stymy the enemy
- duel killed in a duel
- friezen
- reciprocal
- informally
- alleged
- anew
- lessen
- reminiscent
- isoscele
- equilateral
- scalene
- inordinate
- doubly
- trichotomy
- legitimate
- execlusively
- parallelogram
- viz.
- conform
- constructible
- unity
- diacritical marks
- etymology
- cognate
- botanical
- synonym
- dichotomy
- flamboyant
- regurgitartion
- gullet
- thrice
- coerced integer
- fallible
- underpaid
- rage \folio
- protractor | 圆规
- plea
- courant
- deplore
- obscured
- stochastic
- residual
- sought after (seek after)
- maneuver
- cramped display style
- secular  世俗
- synoptic gospels 对观福音书的
- designation
- avoirdupois
- obscured
- grook
- slate
- supersed
- stratum
- pipe dreams

---

* [True Table](http://en.wikipedia.org/wiki/Truth_table)

    ```txz-plain
    0            (F F F F)(p, q)            ⊥            false, Opq            Contradiction
    1            (F F F T)(p, q)            NOR            p ↓ q, Xpq            Logical NOR
    2            (F F T F)(p, q)            \nleftarrow            p \nleftarrow q, Mpq            Converse nonimplication
    3            (F F T T)(p, q)            ¬p, ~p            ¬p, Np, Fpq            Negation
    4            (F T F F)(p, q)            \nrightarrow            p \nrightarrow q, Lpq            Material nonimplication
    5            (F T F T)(p, q)            ¬q, ~q            ¬q, Nq, Gpq            Negation
    6            (F T T F)(p, q)            XOR            p ⊕ q, Jpq            Exclusive disjunction
    7            (F T T T)(p, q)            NAND            p ↑ q, Dpq            Logical NAND
    8            (T F F F)(p, q)            AND            p ∧ q, Kpq            Logical conjunction
    9            (T F F T)(p, q)            XNOR            p If and only if q, Epq            Logical biconditional
    10            (T F T F)(p, q)            q            q, Hpq            Projection function
    11            (T F T T)(p, q)            p \rightarrow q            if p then q, Cpq            Material implication
    12            (T T F F)(p, q)            p            p, Ipq            Projection function
    13            (T T F T)(p, q)            p \leftarrow q            p if q, Bpq            Converse implication
    14            (T T T F)(p, q)            OR            p ∨ q, Apq            Logical disjunction
    15            (T T T T)(p, q)            ⊤            true, Vpq            Tautology
    ```

---

Eye exercise for speed reading:
:   ![](http://upload.wikimedia.org/wikipedia/commons/3/3c/Eye-exercise-for-speed-reading_thumb.gif)

Refs & See also
:   * [Visual acuity - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Visual_acuity)
    * [Fixation (visual) - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Fixation_(visual))
    * [Subvocalization - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Subvocalization)
    * [Study skills - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Study_skills)
    * [SQ3R - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/SQ3R)
    * [Tony Buzan - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Tony_Buzan)
    * [Saccade - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Saccade)
    * [Speed reading - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Speed_reading)

---

- **Close your eyes.** Do this sitting up to prevent you from falling asleep.

![][eye-01]

- **Relax your body.** This can help relax your eyes.

![][eye-02]

- **Rub your eyes.** Rub your eyes very gently, as if almost tickling them.

![][eye-03]

- **Relax your face.** move your jaw side to side. Make sure you are not
  pressing your eyebrows together. Relax your cheeks and forehead.

![][eye-04]

- **Try To keep your eyes closed during this process.**

![][eye-05]

- **Gently open your eyes when you are done.** try to barely open them and
  focus on your eyelids. Follow them up and as you look at your eyelids your
  eyes will open up.

![][eye-06]

- **Wash eyes with cold water frequently.**

![][eye-07]

- **Try "pushing" your nose down, this will pull your eyes down with the rest
  of the face**

![][eye-08]

[how-to-relax-your-eyes]: http://www.wikihow.com/Relax-Your-Eyes
[eye-01]: http://gnat-tang-shared-image.qiniudn.com/pictures/670px-Relax-Your-Eyes-Step-1.jpg
[eye-02]: http://gnat-tang-shared-image.qiniudn.com/pictures/670px-Relax-Your-Eyes-Step-2.jpg
[eye-03]: http://gnat-tang-shared-image.qiniudn.com/pictures/670px-Relax-Your-Eyes-Step-3.jpg
[eye-04]: http://gnat-tang-shared-image.qiniudn.com/pictures/670px-Relax-Your-Eyes-Step-4.jpg
[eye-05]: http://gnat-tang-shared-image.qiniudn.com/pictures/670px-Relax-Your-Eyes-Step-5.jpg
[eye-06]: http://gnat-tang-shared-image.qiniudn.com/pictures/670px-Relax-Your-Eyes-Step-6.jpg
[eye-07]: http://gnat-tang-shared-image.qiniudn.com/pictures/670px-Relax-Your-Eyes-Step-7.jpg
[eye-08]: http://gnat-tang-shared-image.qiniudn.com/pictures/670px-Relax-Your-Eyes-Step-8.jpg

---

**[UrbanDictionary][ud]** 是一个用户定义的单词本网站。

[Roza](http://www.urbandictionary.com/define.php?term=Roza&defid=7301080)
:   Roza means simply beautiful. A girl who has beautiful hair, gorgeous, big
    eyes and a smile that could brighten the ocean.

    She looks gorgeous even in the morning or without any makeup on.  Everytime
    you look at her, she stuns you with her looks n by the way she looks at
    you.

    She is like a rose, closed in the beginning but if you give her time n
    nurture her, she will blossom into a mesmerizing beauty, who u feel blessed
    to have by your side.

    She is smart n amazing just the way she is. The girl of your dreams, she is
    wanted n appreciated by everyone. She is all you could wish for.

      - Guy 1: she is so pretty !!!
      - Guy 2: yeah that she is..cuz she is Roza ...guys usually drool over her
        but she is not just like any other pretty girl ...she is different yet
        amazing.
      - Guy 1: yeah, thats cuz she is Roza i guess Just as beautiful as her
        name :)

[Vagina](http://www.urbandictionary.com/define.php?term=vagina&defid=3998266)
:   a tasty treat

    my vagina smells like sugarcane but taste like flowers

[ud]: http://www.urbandictionary.com/

---

[Pierre de Fermat](http://en.wikipedia.org/wiki/Pierre_de_Fermat)

:   <div class="tzx-fright">
    ![Pierre de Fermat](https://upload.wikimedia.org/wikipedia/commons/f/f3/Pierre_de_Fermat.jpg)
    </div>

    Pierre de Fermat (French: `[pjɛːʁ dəfɛʁma]`; 17 August 1601 – 12 January
    1665) was **a French lawyer** at the Parlement of Toulouse, France, and **a
    mathematician who is given credit for early developments that led to
    infinitesimal calculus, including his technique of adequality**. In
    particular, he is recognized for his discovery of an original method of
    finding the greatest and the smallest ordinates of curved lines, which is
    analogous to that of the differential calculus, then unknown, and his
    research into number theory. He made notable contributions to analytic
    geometry, probability, and optics. He is best known for **Fermat's Last
    Theorem**, which he described in a note at the margin of a copy of
    Diophantus' Arithmetica.

[Johannes Kepler](http://en.wikipedia.org/wiki/Johannes_Kepler)

:   <div class="tzx-fright">
    ![A 1610 portrait of Johannes Kepler by an unknown artist](https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Johannes_Kepler_1610.jpg/330px-Johannes_Kepler_1610.jpg)
    </div>

    Johannes Kepler (German: `[ˈkɛplɐ]`; December 27, 1571 – November 15, 1630)
    was **a German mathematician, astronomer, and astrologer**. A key figure in
    the 17th century scientific revolution, he is best known for his laws of
    planetary motion, based on his works Astronomia nova, Harmonices Mundi, and
    Epitome of Copernican Astronomy. These works also provided one of the
    foundations for Isaac Newton's theory of universal gravitation.

    During his career, Kepler was **a mathematics teacher at a seminary
    school** in Graz, Austria, where he became an associate of Prince Hans
    Ulrich von Eggenberg. Later he became an assistant to astronomer Tycho
    Brahe, and eventually the imperial mathematician to Emperor Rudolf II and
    his two successors Matthias and Ferdinand II. He was also a mathematics
    teacher in Linz, Austria, and an adviser to General Wallenstein.
    Additionally, he did fundamental work in the field of optics, invented an
    improved version of the refracting telescope (the Keplerian Telescope), and
    mentioned the telescopic discoveries of his contemporary Galileo Galilei.

    Kepler lived in an era when there was no clear distinction between
    astronomy and astrology, but there was a strong division between astronomy
    (a branch of mathematics within the liberal arts) and physics (a branch of
    natural philosophy). Kepler also incorporated religious arguments and
    reasoning into his work, motivated by the religious conviction and belief
    that God had created the world according to an intelligible plan that is
    accessible through the natural light of reason. Kepler described his new
    astronomy as "celestial physics", as "an excursion into Aristotle's
    Metaphysics", transforming the ancient tradition of physical cosmology by
    treating astronomy as part of a universal mathematical physics.

[Richard Dedekind](http://en.wikipedia.org/wiki/Richard_Dedekind)

:   <div class="tzx-fright">
    ![East German stamp from 1981,
        commemorating Richard Dedekind.](https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Stamps_of_Germany_%28DDR%29_1981%2C_MiNr_2605.jpg/330px-Stamps_of_Germany_%28DDR%29_1981%2C_MiNr_2605.jpg)
    </div>

    Julius Wilhelm Richard Dedekind (6 October 1831 – 12 February 1916) was a
    German mathematician who made important contributions to abstract algebra
    (particularly ring theory), algebraic number theory and the definition of
    the real numbers.

    Dedekind's theorem states that if there existed a one-to-one correspondence
    between two sets, then Dedekind said that the two sets were "similar". He
    invoked similarity to give the first precise definition of an infinite set:
    a set is infinite when it is "similar to a proper part of itself," in
    modern terminology, is equinumerous to one of its proper subsets. Thus the
    set N of natural numbers can be shown to be similar to the subset of N
    whose members are the squares of every member of N, (N →N2):

        N    1  2  3  4  5  6  7  8  9  10 ...
                 ↓
        N2   1  4  9  16 25 36 49 64 81 100 ...

[Sir George Stokes, 1st Baronet](http://en.wikipedia.org/wiki/Sir_George_Stokes,_1st_Baronet)

:   <div class="tzx-fright">
    ![](https://upload.wikimedia.org/wikipedia/commons/a/ad/Ggstokes.jpg)
    </div>

    Sir George Gabriel Stokes, 1st Baronet, PRS (`/stoʊks/`; 13 August 1819 –
    1 February 1903), was a mathematician, physicist, politician and theologian.
    Born in Ireland, Stokes spent all of his career at University of Cambridge,
    where he served as the Lucasian Professor of Mathematics from 1849 until
    his death in 1903. Stokes made seminal contributions to fluid dynamics
    (including the Navier–Stokes equations), optics, and mathematical physics
    (including the first version of what is now known as Stokes' theorem). He
    was secretary, then president, of the Royal Society.

[René Descartes](http://en.wikipedia.org/wiki/Ren%C3%A9_Descartes)

:   <div class="tzx-fright">
    ![](https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Frans_Hals_-_Portret_van_Ren%C3%A9_Descartes.jpg/360px-Frans_Hals_-_Portret_van_Ren%C3%A9_Descartes.jpg)
    </div>

    René Descartes (`/ˈdeɪˌkɑrt/`, French: `[ʁəne dekaʁt]`, 31 March 1596 – 11
    February 1650) was a French philosopher, mathematician and writer who spent
    most of his life in the Dutch Republic. He has **been dubbed the father of
    modern philosophy**, and much subsequent Western philosophy is a response
    to his writings, which are studied closely to this day. In particular, his
    Meditations on First Philosophy continues to be a standard text at most
    university philosophy departments. Descartes' **influence in mathematics is
    equally apparent**; the Cartesian coordinate system — allowing reference to
    a point in space as a set of numbers, and allowing algebraic equations to
    be expressed as geometric shapes in a two-dimensional coordinate system
    (and conversely, shapes to be described as equations) — was named after
    him. He is credited as **the father of analytical geometry**, the bridge
    between algebra and geometry, crucial to the discovery of infinitesimal
    calculus and analysis.  Descartes was also one of the key figures in the
    scientific revolution and has been described as an example of genius. He
    refused to accept the authority of previous philosophers and also refused
    to accept the obviousness of his own senses.

[William Thomson, 1st Baron Kelvin](http://en.wikipedia.org/wiki/William_Thomson,_1st_Baron_Kelvin) `@`{#lord-kelvin .tzx-anchor}

:   <div class="tzx-fright">
    ![Lord Kelvin by Hubert von Herkomer](https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Hubert_von_Herkomer03.jpg/330px-Hubert_von_Herkomer03.jpg)
    </div>

    William Thomson, 1st Baron Kelvin (/ˈkɛlvɪn/; 26 June 1824 – 17 December
    1907) was an **Irish mathematical physicist and engineer** who was born in
    Belfast in 1824. At the University of Glasgow he did important work in the
    mathematical analysis of electricity and formulation of the first and
    second laws of thermodynamics, and did much to unify the emerging
    discipline of physics in its modern form. He worked closely with
    mathematics professor Hugh Blackburn in his work. He also had a career as
    an electric telegraph engineer and inventor, which **propelled him into the
    public eye and ensured his wealth, fame and honour**. For his work on the
    transatlantic telegraph project he was knighted by Queen Victoria, becoming
    Sir William Thomson. He had extensive maritime interests and was most noted
    for his work on the mariner's compass, which had previously been limited in
    reliability.

    **Absolute temperatures are stated in units of kelvin in his honour.**
    While the existence of a lower limit to temperature (absolute zero) was
    known prior to his work, Lord Kelvin is widely known for determining its
    correct value as approximately −273.15 degree Celsius or −459.67 degree
    Fahrenheit.

---

**AFI's 100 Years... 100 Movie Quotes** (AFI: American Film Institute)

:   #. "Frankly, my dear, **I don't give a damn.**" *Gone with the Wind*
    #. "**I'm going to make him an offer he can't refuse.**" *The Godfather*
    #. "You don't understand! I coulda had class. I coulda been a contender. I
       could've been somebody, instead of a bum, which is what I am." *On the
       Waterfront*
    #. "Toto, I've got a feeling we're not in Kansas anymore." *The Wizard of Oz*
    #. "Here's looking at you, kid." *Casablanca*
    #. "Go ahead, make my day." *Sudden Impact*
    #. "All right, Mr. DeMille, I'm ready for my close-up." *Sunset Boulevard*
    #. "Fasten your seatbelts. It's going to be a bumpy night." *All About Eve*
    #. "**You talkin' to me?**" *Texi Driver*
    #. "What we've got here is failure to communicate" *Cool Hand Luke*
    #. "I love the smell of napalm (凝固汽油弹) in the morning." * Apocalypse Now*
    #. "Love means never having to say you're sorry." *Love Story*
    #. "The stuff that dreams are made of." *The Maltese Falcon*
    #. "E.T. phone home." *E.T. the Extra-Terrestrial*
    #. "They call me Mister Tibbs!" *In the Heat of the Night*
    #. "Rosebud." *Citizen Kane*
    #. "Made it, Ma! Top of the world!" *White Heat*
    #. "I'm as mad as hell, and I'm not going to take this anymore!" *Network*
    #. "Louis, I think this is the beginning of a beautiful friendship."  *Casablanca*
    #. "**A census taker once tried to test me. I ate his liver with some fava beans
       (`['fa:və]` 蚕豆) and a nice Chianti (`[ki'ænti]` 基安蒂红葡萄酒).**"
       *The Silence of the Lambs*
    #. "Bond. James Bond." *Dr. No*
    #. "There's no place like home." *Sunset Boulevard*
    #. "I am big! It's the pictures that got small." *Sunset Boulevard*
    #. "Show me the money!" *Jerry Maguire*
    #. "Why don't you come up sometime and see me?" *She Done Him Wrong*
    #. "I'm walking here! I'm walking here!" *Midnight Cowboy*
    #. "Play it, Sam. Play 'As Time Goes By.'" *Casablanca*
    #. "You can't handle the truth!" *A Few Good Men*
    #. "I want to be alone." *Grand Hotel*
    #. "After all, tomorrow is another day!" *Gone with the Wind*
    #. "Round up the usual suspects." *Casablanca*
    #. "I'll have what she's having." *When Harry Met Sally...*
    #. "You know how to whistle, don't you, Steve? You just put your lips
        together and blow." *To Have and Have Not*
    #. "You're gonna need a bigger boat." *Jaws*
    #. "Badges? We ain't got no badges! We don't need no badges! I don't have
        to show you any stinking badges!" *The Treasure of the Sierra Madre*
    #. "I'll be back." *The Terminator*
    #. "Today, I consider myself the luckiest man on the face of the Earth."
        *The Pride of Yankees*
    #. "If you build it, he will come." *Field of Dreams*
    #. "Mama always said **life was like a box of chocolates**. You never know what
        you're gonna get." *Forrest Gump*
    #. "We rob banks." *Bonnie and Clyde*
    #. "Plastics." *The Graduate*
    #. "We'll always have Paris." *Casablanca*
    #. "I see dead people." *The Sixth Sense*
    #. "Stella! Hey, Stella!" *A Streetcar Named Desire*
    #. "Oh, Jerry, don't let's ask for the moon. We have the stars." *Now, Voyager*
    #. "Shane. Shane. Come back!" *Shane*
    #. "Well, nobody's perfect." *Some Like It Hot*
    #. "**It's alive! It's alive!**" *Frankenstein*
    #. "Houston, we have a problem." *Apollo 13*
    #. "You've got to ask yourself one question: 'Do I feel lucky?' Well, do ya, punk?" *Dirty Harry*
    #. "You had me at 'hello.'" *Jerry Maguire*
    #. "One morning I shot an elephant in my pajamas. How he got in my pajamas,
        I don't know." *Animal Crackers*
    #. "There's no crying in baseball!" *A League of Their Own*
    #. "La-dee-da, la-dee-da." *Annie Hall*
    #. "A boy's best friend is his mother." *Psycho*
    #. "**Greed, for lack of a better word, is good.**" *Wall Street*
    #. "Keep your friends close, but your enemies closer." *The Godfather Part II*
    #. "As God is my witness, I'll never be hungry again." *Gone with the Wind*
    #. "Well, here's another nice mess you've gotten me into!" *Sons of the Desert*
    #. "Say 'hello' to my little friend!" *Scarface*
    #. "What a dump." *Beyond the Forest*
    #. "Mrs. Robinson, you're trying to seduce me. Aren't you?" *The Graduate*
    #. "Gentlemen, you can't fight in here! This is the War Room!" *Dr.
        Strangelove or: How I Learned to Stop Worrying and Love the Bomb*
    #. "Elementary, my dear Watson." *The Adventures of Sherlock Holmes*
    #. "Get your stinking paws off me, you damned dirty ape." *Planet of the Apes*
    #. "Of all the gin joints in all the towns in all the world, she walks into mine." *Casablanca*
    #. "Here's Johnny!" *The Shining*
    #. "They're here!" *Poltergeist*
    #. "Is it safe?" *Marathon Man*
    #. "Wait a minute, wait a minute. You ain't heard nothin' yet!" *The Jazz Singer*
    #. "No wire hangers, ever!" *Mommie Dearest*
    #. "Mother of mercy, is this the end of Rico?" *Little Caesar*
    #. "Forget it, Jake, it's Chinatown." *Chinatown*
    #. "I have always depended on the kindness of strangers." *A Streetcar Named Desire*
    #. "Hasta la vista, baby." *Terminator 2: Judgment Day*
    #. "Soylent Green is people!" *Soylent Green*
    #. "Open the pod bay doors please, HAL." *2001: A Space Odyssey*
    #. Striker: "Surely you can't be serious." Rumack: "I am serious...and don't call me Shirley." *Airplane!*
    #. "Yo, Adrian!" *Rocky*
    #. "Hello, gorgeous." *Funny Girl*
    #. "Toga! Toga!" *National Lampoon's Animal House*
    #. "Listen to them. Children of the night. What music they make." *Dracula*
    #. "Oh, no, it wasn't the airplanes. It was Beauty killed the Beast." *King Kong*
    #. "**My precious.**" *The Lord of the Rings: The Two Towers*
    #. "Attica! Attica!" *Dog Day Afternoon*
    #. "Sawyer, you're going out a youngster, but you've got to come back a star!" *42nd Street*
    #. "Listen to me, mister. You're my knight in shining armor. Don't you
        forget it. You're going to get back on that horse, and I'm going to be
        right behind you, holding on tight, and away we're gonna go, go, go!"
        *On Golden Pond*
    #. "Tell 'em to go out there with all they got and win just one for the Gipper." *Knute Rockne, All American*
    #. "A martini. Shaken, not stirred." *Godfather*
    #. "Who's on first?" *The Naughty Nineties*
    #. "Cinderella story. Outta nowhere. A former greenskeeper, now, about to
        become the Masters champion. It looks like a mirac...It's in the hole!
        It's in the hole! It's in the hole!" *Caddyshack*
    #. "Life is a banquet, and most poor suckers are starving to death!" *Auntie Mame*
    #. "I feel the need—the need for speed!" *Top Gun*
    #. "Carpe diem. Seize the day, boys. Make your lives extraordinary." *Dead Poets Society*
    #. "Snap out of it!" *Moonstruck*
    #. "My mother thanks you. My father thanks you. My sister thanks you. And I
        thank you." *Yankee Doodle Dandy*
    #. "Nobody puts Baby in a corner." *Dirty Dancing*
    #. "I'll get you, my pretty, and your little dog too!" *The Wizard Oz*
    #. "**I'm the king of the world!**" *Titanic*

More quotes

:   #. “曾经有一份真诚的爱情摆在我的面前，我没有珍惜，等到失去的时候才追悔莫及
        ，人世间最痛苦的事情莫过于此。如果上天能够给我一个重新来过的机会，我会
        对那个女孩子说三个字：‘我爱你’。如果非要给这份爱加上一个期限，我希望是
        ，一万年。” **大话西游**
    #. 你可以说我是跑龙套的，但是你不可以说我是“臭跑龙套”的！ *喜剧之王*
    #. 所以说做妖就像做人一样，要有仁慈的心，有了仁慈的心，就不再妖，是人妖。*
        大话西游*
    #. 不是我喜欢打架，是有很多人喜欢被我打！ *鹿鼎记*
    #. "你那忧郁的眼神,唏嘘的胡渣子,神呼奇迹的刀法,还有那杯晶莹透亮的马蒂尼,都
        掩饰不住你的出众,但是再怎么出众也要把过夜费付了吧" *零零柒*
    #. “准确的说，我是一个演员。”
    #. 你可以叫我“跑龙套的”，但不可以前面不要加"死”字！！！！ *喜剧之王*
    #. 实在令人太失望。听到你的声音，我还以为你是一个很有感性，很有电影幻想的人
        。看你这一身造型，就知道你太没有内涵了 *92家有喜事*
    #. 喂!你介不介意把裤子拉高一点,让我看看你的腿? *少林足球*
    #. 大不了我发个毒誓，如果以后我再赌钱的话，就让天下最丑的女人夜夜轮奸，直到
        体无完肤，摇摇欲坠为止，这样可以了吧 ！ *唐伯虎点秋香*
    #. 阿飞正传*：我听别人说这世界上有一种鸟是没有脚的，它只能一直飞呀飞呀，飞
        累了就在风里面睡觉，这种鸟一辈子只能下地一次，那边一次就是它死亡的时候。
    #. 英雄本色*：有信心不一定会成功，没信心一定不会成功。
    #. 笑傲江湖之东方不败*：有人就有恩怨，有恩怨就有江湖。人就是江湖，你怎么退出？
    #. *开往春天的地铁*：我一直怀疑27岁是否还会有一见钟情的倾心。我不知道该说什
        么，我只是突然在那一刻很想念她。
    #. *情人*：我以经老了，在人来人往的大厅，有一位老人他向我走来，他说我认识你
        ，那时的你还很年轻，美丽，你的身边有许许多多的追求者，不过跟那时相比，
        我更喜欢现在你这经历了沧桑的容颜？
    #. *春光乍泄*：一直以为我跟他不一样，原来寂寞的时候，所有的人都一样。
    #. *春光乍泻*：每个成功男人的背后，都有一个女人。每个不成功男人的背后，都有两个。
    #. *好想好想谈恋爱*：**承诺是男人给女人的定心丸。吃了安心，虽然这定心丸的药性
        有待考证，但女人都希望吃了再说。**
    #. “如果，我多一张船票，你会不会跟我一起走？” *花样年华*
    #. 往往都是事情改变人，人却改变不了事情。 *无间道*
    #. 我最讨厌你们这些打劫的了，一点技术含量都没有！！！！ *天下无贼*
    #. 给我一个机会，我想做好人！ *无间道*
    #. 做人如果没有梦想，那跟咸鱼有什么区别？ *少林足球*

Refs

:   * [AFI 100 Year ... 100 Movie Quotes](http://en.wikipedia.org/wiki/AFI%27s_100_Years...100_Movie_Quotes)
    * <http://www.lz13.cn/jingdiantaici/7987.html>
    * <http://blog.sina.com.cn/s/blog_701c7e240100nmwj.html>
    * <http://www.china.com.cn/info/zhuanti/zxc08/2008-01/24/content_9582793.htm>

---

What is MathJax?

:   * Open-source JS display engine
    * Modular, load components only when necessary
    * Rich API

Getting Started

:   * Using the MathJax Content Delivery Network (CDN)
    * Add these to your src code (.html or .md)

    ```html
    <script type="text/javascript"
             src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML">
    </script>
    ```

* MathJax hosted on GitHub: [mathjax | MathJax](https://github.com/mathjax/MathJax/)
* TeX and LaTeX input
    * display: `$$...$$` or `\[...\]`
    * inline: `\(...\)` (default) or `$...$`
* MathML, etc.

Installing and Testing MathJax

Loading and Configuring MathJax

Common Configurations

Use `default.js` or use this request:

```html
<script type="text/javascript"
         src="path-to-MathJax/MathJax.js?config=default">
</script>
```

Using MathJax in popular web platforms

MathJax TeX and LaTeX Support

Note that the TeX input processor implements only the **math-mode** macros of TeX and LaTeX, not the **text-mode** macros.

In Markdown, the back-tick (` ` `) is used to mark **verbatim text**

And sometime you may double backslashs to escape

```latex
\\begin{array}{cc}
  a & b \\\\
  c & c
\\end{array}
```

You can use the `\def`, `\newcommand`, `\renewcommand`, `\newenvironment`,
`\renewenvironment`, and `\let` commands to **create your own macros and
environments**.

Some Examples I Tried

```plain
We'll define our own macros and use them, $$
   \def\RR{\bf R}
   \def\bold#1{\bf #1}
   \bold{``bold\ face"}$$
And do that again: \(\bold{``bold\ face"}\)
And do that again: $$\bold{``bold\ face"}$$
And do that again: $$\bold{``bold  face"}$$
```

And you could create a file in `MathJax/config/local` called `local.js`
that contains your macro definitions:

```javascript
MathJax.Hub.Config({
  TeX: {
    Macros: {
      RR: "{\\bf R}",
      bold: ["{\\bf #1}",1]
    }
  }
});

MathJax.Ajax.loadComplete("[MathJax]/config/local/local.js");
```

and then load it along with your main configuration file on the script that
loads MathJax.js:

`<script src="/MathJax/MathJax.js?config=TeX-AMS_HTML,local/local.js"></script>`{.html}

Automatic Equation Numbering

:   ```html
    <script type="text/x-mathjax-config">
    MathJax.Hub.Config({
      TeX: { equationNumbers: { autoNumber: "AMS" } }
    });
    </script>
    ```

Refs
:   * [MathJax Document](http://docs.mathjax.org/en/latest/mathjax.html)

---

- **AC** – Axiom of Choice.
- **AL** - Action limit.
- **Ai** – [Airy function.](http://en.wikipedia.org/wiki/Airy_function)
- **Alt** – alternating group (Alt(n) is also written as An.)
- **An.** - alternate
- **Aut** – automorphism group.
- **Bi** – Airy function of the second kind.
- **Card** – cardinality(基数) of a set. (Card(X) is also written #X, ♯X or
  |X|.)
- **Chi** - hyperbolic cosine (ch*x*) integral function. `ch+i`
- **Ci** - cosine integral function.
- **Cl** – topological closure.
- **DNE** - a solution for an expression does not exist, or is undefined.
  Generally used with limits and integrals. **D**efine **N**one **E**quation
  *or* **D**oes **N**ot **E**xist
- **Ei** – exponential integral function.
- **End** – categories of endomorphisms.
- **Eqn** – equation.
- **Ext** – Ext functor.
- **FOL** – first-order logic.
- **Frob** – Frobenius endomorphism.
- **GF** - Galois field.
- **GL** – general linear group.
- **Gal** – Galois group. (Also written as Γ.)
- **HOL** – higher-order logic.
- **Hom** – Hom functor.
- **Im** – either image of a function or imaginary part of a complex number.
- **Ker** – kernel.
- **LHS** – left-hand side of an equation.
- **LST** – language of set theory.
- **Li** – offset logarithmic integral function.
- **NAND** – not-and in logic, *see* [*Sheffer stroke*](http://en.wikipedia.org/wiki/Sheffer_stroke)
- **NOR** – not-or in logic.
- **NTS** – need to show.
- **No.** – number.
- **PGL** – projective general linear group.
- **PSL** – projective special linear group.
- **Pr** – probability of an event.
- **QED** – "Quod erat demonstrandum", a Latin phrase used at the end of a
  definitive proof. [how to
  pronunce?](http://zh.forvo.com/word/quod_erat_demonstrandum/)
- **QEF** – "quod erat faciendum", a Latin phrase sometimes used at the end of
  a construction.
- **RHS** – right-hand side of an equation.
- **RTP** – required to prove.
- **RV** – Random Variable. (or as R.V.)
- **Re** – real part of a complex number.[2] (Also written \Re.)
- **Rk** – rank.
- **SL** – special linear group.
- **STP** – it is sufficient to prove.
- **Shi - hyperbolic sine integral function.
- **Si - sine integral function.
- **Soln** – solution.
- **Sp** – linear span of a set of vectors. (Also written with angle brackets.)
- **Spec** – spectrum of a ring.
- **Sym** – symmetric group (Sym(n) is also written as Sn.)
- **TFAE** – the following are equivalent.
- **Thm** – theorem.
- **Tor** – Tor functor.
- **Tr** – trace, either the field trace, or the trace of a matrix or linear
  transformation.
- **WMA** - we may assume.
- **WO** – well-ordered set.
- **WTP** – want to prove.
- **WTS** – want to show.
- **W^5** – which was what we wanted. Synonym of Q.E.D.
- **XOR** - exclusive or in logic.
- **ZF** – Zermelo–Fraenkel axioms of set theory.
- **ZFC** – Zermelo–Fraenkel axioms (with the Axiom of Choice) of set theory.
- **a.e.** – almost everywhere
- **a.s.** – almost surely
- **adj** – adjugate of a matrix.
- **arccos** – inverse cosine function.
- **arccosec** – inverse cosecant function. (Also written as arccsc.)
- **arccot** – inverse cotangent function.
- **arccsc** – inverse cosecant function. (Also written as arccosec.)
- **arcosech** – inverse hyperbolic cosecant function. (Also written as
  arcsch.)
- **arcosh** – inverse hyperbolic cosine function.
- **arcoth** – inverse hyperbolic cotangent function.
- **arcsch** – inverse hyperbolic cosecant function. (Also written as
  arcosech.)
- **arcsec** – inverse secant function.
- **arcsin** – inverse sine function.
- **arctan** – inverse tangent function.
- **arg max** – argument of the maximum.
- **arg min** – argument of the minimum.
- **arg** – argument of a complex number.
- **arsech** – inverse hyperbolic secant function.
- **arsinh** – inverse hyperbolic sine function.
- **artanh** – inverse hyperbolic tangent function.
- **cdf** – cumulative distribution function.
- **char** – characteristic
- **cis - cos + i sin function.
- **cod** – codomain. (Also written as codom.)
- **codom** – codomain. (Also written as cod.)
- **cos** – cosine function.
- **cosec** – cosecant function. (Also written as csc.)
- **cosech** – hyperbolic cosecant function. (Also written as csch.)
- **cosh** – hyperbolic cosine function.
- **cot** – cotangent function.
- **coth** – hyperbolic cotangent function.
- **cov** – covariance of a pair of random variables.
- **csc** – cosecant function. (Also written as cosec.)
- **csch** – hyperbolic cosecant function. (Also written as cosech.)
- **curl** – curl of a vector field. (Also written as rot.)
- **deg** – degree of a polynomial. (Also written as ∂.)
- **del** – del, a differential operator. (Also written as [\nabla][nabla]（倒
  三角）).)
- **det** – determinant of a matrix or linear transformation.
- **dim** – dimension of a vector space.
- **div** – divergence of a vector field.
- **dkl** – decalitre（ 公斗；十升）`deca + litre（就是我们常用的 1L 矿泉水）`
- **dom** – domain of a function. (Or, more generally, a relation.)
- **erf** – [error function](http://en.wikipedia.org/wiki/Error_function)
- **erfc** – complementary error function.
- **exp** – exponential function. (exp x is also written as ex.)
- **ext** – exterior.
- **gcd** – greatest common divisor of two numbers. (Also written as hcf.)
- **glb** – greatest lower bound. (Also written as inf.)
- **grad** – gradient of a scalar field.
- **hcf** – highest common factor of two numbers. (Also written as gcd.)
- **iff** – if and only if.
- **iid - independent and identically distributed random variables.
- **inf** – infimum of a set. (Also written as glb.)
- **int** – interior.
- **lcm** – lowest common multiple of two numbers.
- **lerp** – linear interpolation.
- **lg** – common logarithm (log10) or binary logarithm (log2).
- **li** – logarithmic integral function or linearly independent.
- **lim inf** – limit inferior.
- **lim sup** – limit superior.
- **lim** – limit of a sequence, or of a function.
- **ln** – natural logarithm, loge.
- **log** – logarithm. (If without a subscript, this may mean either log10 or
  loge.)
- **logh** – natural logarithm, loge.
- **lub** – least upper bound. (Also written sup.)
- **max** – maximum of a set.
- **min** – minimum of a set.
- **mod** – modulo.
- **mx** – matrix.
- **ord** – ordinal number of a well-ordered set.
- **pdf** – probability density function.
- **pf** – proof.
- **pmf** – probability mass function.
- **ran** – range of a function.
- **resp** – respectively.
- **rng** – non-unital ring.
- **rot** – rotor of a vector field. (Also written as curl.)
- **sec** – secant function.
- **sech** – hyperbolic secant function.
- **seg** – initial segment of.
- **sgn** – signum function.
- **sin** – sine function.
- **sinc** – sinc function.
- **sinh** – hyperbolic sine function.
- **st** – such that or so that.
- **sup** – supremum of a set. (Also written lub.)
- **supp** – support of a function.
- **tan** – tangent function.
- **tanh** – hyperbolic tangent function.
- **undef** - a function or expression is undefined
- **var** – variance of a random variable.
- **walog** – without any loss of generality.
- **wff** – well-formed formula.
- **whp - with high probability.
- **wlog** – without loss of generality.
- **wrt** – with respect to or with regard to.

[nabla]: http://en.wikipedia.org/wiki/Nabla_symbol

Refs & See also
:   * <https://en.wikipedia.org/wiki/List_of_mathematical_jargon>
    * <https://en.wikipedia.org/wiki/List_of_mathematical_abbreviations>

---

M3U

:   M3U is a computer file format that contains multimedia playlists.  It
    originally was designed for audio files, such as MP3, but various software
    now uses it to play video file lists.  M3U's can also point a media player
    to an online streaming audio source.  Numerous media players and software
    applications supports the M3U file format.

    Samples

      * Example 1

        ```tzx-plain
        #EXTM3U

        #EXTINF:123, Sample artist - Sample title
        C:\Documents and Settings\I\My Music\Sample.mp3

        #EXTINF:321,Example Artist - Example title
        C:\Documents and Settings\I\My Music\Greatest Hits\Example.ogg
        ```
      * Example 2

        ```tzx-plain
        C:\Music
        ```

      * Example 3

        ```tzx-plain
        #EXTM3U

        #EXTINF:123, Sample artist - Sample title
        ```

      * Example 4

        ```tzx-plain
        Alternative\Band - Song.mp3
        Classical\Other Band - New Song.mp3
        Stuff.mp3
        D:\More Music\Foo.mp3
        ..\Other Music\Bar.mp3
        http://emp.cx:8000/Listen.pls
        http://www.example.com/~user/Mine.mp3
        ```

      * Example 5

        ```tzx-plain
        #EXTM3U
        #EXTINF:233,Everclear - So Much For The Afterglow
        Alternative\everclear_SMFTA.mp3
        #EXTINF:227,Weird Al - Everything You Know Is Wrong
        Comedy\Weird_Al_Everything_You_Know_Is_Wrong.mp3
        #EXTINF:187,Weird Al Yankovic - This is the Life
        Weird_Al_This_Is_The_Life.mp3
        #EXTINF:129,Weird Al: Bad Hair Day - Gump
        http://www.site.com/~user/gump.mp3
        #EXTINF:-1,My Cool Stream
        http://www.site.com:8000/listen.pls
        ```

    `#EXTM3U` At the VERY top of the Extended M3U file is this header, which
    signifies this is an extended M3U file. `#EXTM3U` must be all capital
    letters.

    `#EXTINF:233,Everclear - So Much For The Afterglow`
      ~ This is the line that tends to confuse people. Let's break it up into parts
      ~ `#EXTINF`: This signifies this is an Extended Information field. It
        ends with a colorn.
      ~ `233`: This is the time of the file in seconds followed by a comma.
        (233 seconds = 3:53). On the last entry there is a negative one, this
        is usually seen on streams, it tells the program to ignore the time
        entry.
      ~ `Everclear - So Much For The Afterglow`: Title to display. This is
        usually the title read from the file name or ID3 tags. This also can be
        the name of a stream. No characters follow the title.
      ~ `Alternative\everclear_SMFTA.mp3`: File location as described above
        with basic playlists.

M3U8

:   M3U8 is a Unicode UTF-8 version of M3U files for support of
    Unicode/"international" characters/text. M3U8 follows the same principles as
    explained above.

    Example

    ```tzx-plain
    #EXTM3U

    #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1217000,RESOLUTION=1280x720
    2013girlwithipad-1200k.m3u8

    #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=824000,RESOLUTION=896x504
    2013girlwithipad-800k.m3u8

    #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=629000,RESOLUTION=640x360
    2013girlwithipad-600k.m3u8

    #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=430000,RESOLUTION=512x288
    2013girlwithipad-400k.m3u8

    #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=216000,RESOLUTION=400x300
    2013girlwithipad-200k.m3u8

    #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=121000,RESOLUTION=400x300
    2013girlwithipad-110k.m3u8
    ```

[PLS]: http://en.wikipedia.org/wiki/PLS_(file_format)
[M3U]: https://gist.github.com/district10/a982f999a7e853d3ca1b

Refs & See also

:   * [M3U - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/M3U)
    * [M3U Play List Specification - The Schworak Site](http://schworak.com/blog/e39/m3u-play-list-specification/)
    * [M3U and PLS Specification - Winamp Forums](http://forums.winamp.com/showthread.php?threadid=65772)
    * [What is an .M3U8 file? m3u8 template - GravityLab](http://www.gravlab.com/2013/07/05/what-is-an-m3u8-file/)
    * [PLS (file format) - Wikipedia, the free encyclopedia][PLS]
    * [draft-pantos-http-live-streaming-08 - HTTP Live Streaming](http://tools.ietf.org/html/draft-pantos-http-live-streaming-08)

---

[Leonhard Euler](https://en.wikipedia.org/wiki/Leonhard_Euler)

:   <div class="tzx-fright">
    ![Leonhard Euler](https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Leonhard_Euler_2.jpg/220px-Leonhard_Euler_2.jpg)
    </div>

    Leonhard Euler (`/ˈɔɪlər/ oy-lər`;) (15 April 1707 – 18 September 1783) was
    a pioneering **Swiss mathematician and physicist**. He made important
    discoveries in fields as diverse as infinitesimal calculus and graph
    theory. He also introduced much of the modern mathematical terminology and
    notation, particularly for mathematical analysis, such as the notion of a
    mathematical function. He is also renowned for his work in mechanics, fluid
    dynamics, optics, astronomy, and music theory.

    无穷小量积分、图论，现代的数学命名和标记

    Euler is considered to be the **pre-eminent mathematician of the 18th
    century** and one of the greatest mathematicians to have ever lived. He is
    also one of the most prolific mathematicians; his collected works fill 60–
    80 [quarto（四开）](http://en.wikipedia.org/wiki/Quarto) volumes. He spent
    most of his adult life in St.  Petersburg, Russia, and in Berlin, Prussia.

    A statement attributed to Pierre-Simon Laplace expresses Euler's influence
    on mathematics: "*Read Euler, read Euler, he is the master of us all.*"

[Karl Weierstrass](http://en.wikipedia.org/wiki/Karl_Weierstrass)

:   <div class="tzx-fright">
    ![Karl Weierstrass](http://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Karl_Weierstrass.jpg/220px-Karl_Weierstrass.jpg)
    </div>

    Karl Theodor Wilhelm Weierstrass (German: `Weierstraß`; 31 October 1815 –
    19 February 1897) was a German mathematician often cited as the "father of
    modern analysis". Despite leaving university without a degree, he studied
    mathematics and trained as a teacher, eventually teaching mathematics,
    physics, botany and gymnastics.

    Weierstrass formalized the definition of the continuity of a function, and
    used it and the concept of uniform convergence to prove the Bolzano–
    Weierstrass theorem and Heine–Borel theorem.


[Joseph-Louis Lagrange](http://en.wikipedia.org/wiki/Joseph-Louis_Lagrange)

:   <div class="tzx-fright">
    ![Joseph-Louis Lagrange](http://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Lagrange_portrait.jpg/200px-Lagrange_portrait.jpg)
    </div>

    Joseph-Louis Lagrange (`/ləˈɡrɑːndʒ/` or /ləˈɡreɪndʒ/; French: `[laˈgrɑ̃ʒ]`),
    born Giuseppe Lodovico Lagrangia or Giuseppe Ludovico De la Grange
    Tournier (also reported as Giuseppe Luigi Lagrange or Lagrangia) (25
    January 1736 – 10 April 1813), was an Italian Enlightenment Era
    mathematician and astronomer. He made significant contributions to the
    fields of analysis, number theory, and both classical and celestial
    mechanics.

    In 1766, on the recommendation of Euler and d'Alembert, Lagrange succeeded
    Euler as the director of mathematics at the Prussian Academy of Sciences in
    Berlin, Prussia, where he stayed for over twenty years, producing volumes
    of work and winning several prizes of the French Academy of Sciences.
    Lagrange's treatise on analytical mechanics (Mécanique analytique, 4. ed.,
    2 vols. Paris: Gauthier-Villars et fils, 1888–89), written in Berlin and
    first published in 1788, offered the most comprehensive treatment of
    classical mechanics since Newton and formed a basis for the development of
    mathematical physics in the nineteenth century.

    In 1787, at age 51, he moved from Berlin to Paris and became a member of
    the French Academy. He remained in France until the end of his life. He was
    significantly involved in the decimalisation in Revolutionary France,
    became the first professor of analysis at the École Polytechnique upon its
    opening in 1794, founding member of the Bureau des Longitudes and Senator
    in 1799.

[James Stirling]

:   <div class="tzx-fright">
    ![Stirling's grave in Greyfriars Kirkyard, Edinburgh, general view. It is
        the small plate between the two large tablets.](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Grave_of_James_Stirling_%281692-1770%29%2C_general_view.jpg/330px-Grave_of_James_Stirling_%281692-1770%29%2C_general_view.jpg)
    </div>

    James Stirling (May 1692 Garden, Stirlingshire – 5 December 1770 Edinburgh)
    was a Scottish mathematician. The Stirling numbers, Stirling permutations,
    and Stirling's approximation are named after him. He also proved the
    correctness of Isaac Newton's classification of cubics.

    Stirling was the third son of Archibald Stirling of Garden, Stirling of
    Keir (Lord Garden, a lord of session). At 18 years of age he went to
    Balliol College, Oxford, where, chiefly through the influence of the Earl
    of Mar, he was nominated (1711) one of Bishop Warner's exhibitioners (or
    Snell exhibitioner) at Balliol. In 1715 he was expelled on account of his
    correspondence with members of the Keir and Garden families, who were noted
    Jacobites, and had been accessory to the "Gathering of the Brig o' Turk" in
    1708.

[James Stirling]: http://en.wikipedia.org/wiki/James_Stirling_(mathematician)

[Joseph Fourier](http://en.wikipedia.org/wiki/Joseph_Fourier)

:   <div class="tzx-fright">
    ![Jean-Baptiste Joseph Fourier](https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Fourier2.jpg/375px-Fourier2.jpg)
    </div>

    Jean-Baptiste Joseph Fourier (`/ˈfʊəriˌeɪ, -iər/`; French: `[fuʁje]`; 21
    March 1768 – 16 May 1830) was a French mathematician and physicist born in
    Auxerre and best known for initiating the investigation of Fourier series
    and their applications to problems of heat transfer and vibrations. The
    Fourier transform and Fourier's law are also named in his honour. Fourier
    is also generally credited with the discovery of the greenhouse effect.

    There were three important contributions in this work, one purely
    mathematical, two essentially physical. In mathematics, Fourier claimed
    that any function of a variable, whether continuous or discontinuous, can
    be expanded in a series of sines of multiples of the variable. Though this
    result is not correct without additional conditions, Fourier's observation
    that some discontinuous functions are the sum of infinite series was a
    breakthrough. The question of determining when a Fourier series converges
    has been fundamental for centuries.  Joseph-Louis Lagrange had given
    particular cases of this (false) theorem, and had implied that the method
    was general, but he had not pursued the subject.  Peter Gustav Lejeune
    Dirichlet was the first to give a satisfactory demonstration of it with
    some restrictive conditions. This work provides the foundation for what is
    today known as the Fourier transform.

    One important physical contribution in the book was the concept of
    dimensional homogeneity in equations; i.e. an equation can be formally
    correct only if the dimensions match on either side of the equality;
    Fourier made important contributions to dimensional analysis. The other
    physical contribution was Fourier's proposal of his partial differential
    equation for conductive diffusion of heat. This equation is now taught to
    every student of mathematical physics.

[Henri Poincaré](http://en.wikipedia.org/wiki/Henri_Poincar%C3%A9)

:   <div class="tzx-fright">
    ![Henri Poincaré](http://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Henri_Poincar%C3%A9-2.jpg/230px-Henri_Poincar%C3%A9-2.jpg)
    </div>

    Jules Henri Poincaré (French: `[ʒyl ɑ̃ʁi pwɛ̃kaʁe]`; 29 April 1854 – 17 July
    1912) was a French mathematician, theoretical physicist, engineer, and a
    philosopher of science. He is often described as a polymath, and in
    mathematics as The Last Universalist by Eric Temple Bell, since he excelled
    in all fields of the discipline as it existed during his lifetime.

    As a mathematician and physicist, he made many original fundamental
    contributions to pure and applied mathematics, mathematical physics, and
    celestial mechanics. He was responsible for formulating the Poincaré
    conjecture, which was one of the most famous unsolved problems in
    mathematics until it was solved in 2002–2003. In his research on the
    three-body problem, Poincaré became the first person to discover a chaotic
    deterministic system which laid the foundations of modern chaos theory. He
    is also considered to be one of the founders of the field of topology.

    Poincaré made clear the importance of paying attention to the invariance of
    laws of physics under different transformations, and was the first to
    present the Lorentz transformations in their modern symmetrical form.
    Poincaré discovered the remaining relativistic velocity transformations and
    recorded them in a letter to Dutch physicist Hendrik Lorentz (1853–1928) in
    1905. Thus he obtained perfect invariance of all of Maxwell's equations, an
    important step in the formulation of the theory of special relativity.

    The Poincaré group used in physics and mathematics was named after him.

[Issac Newton](http://en.wikipedia.org/wiki/Isaac_Newton)

:   <div class="tzx-fright">
    ![Issac Newton](http://upload.wikimedia.org/wikipedia/commons/thumb/3/39/GodfreyKneller-IsaacNewton-1689.jpg/220px-GodfreyKneller-IsaacNewton-1689.jpg)
    </div>

    Sir Isaac Newton Kt, PRS (`/ˈnjuːtən/`; 25 December 1642 – 20 March
    1726/27) was an English physicist and mathematician (described in his own
    day as a "natural philosopher") who is widely recognised as one of the most
    influential scientists of all time and a key figure in the scientific
    revolution. His book Philosophiæ Naturalis Principia Mathematica
    ("Mathematical Principles of Natural Philosophy"), first published in 1687,
    laid the foundations for classical mechanics. Newton made seminal
    contributions to optics, and he shares credit with Gottfried Leibniz for
    the development of calculus.

    Newton's Principia formulated the laws of motion and universal gravitation,
    which dominated scientists' view of the physical universe for the next
    three centuries. By deriving Kepler's laws of planetary motion from his
    mathematical description of gravity, and then using the same principles to
    account for the trajectories of comets, the tides, the precession of the
    equinoxes, and other phenomena, Newton removed the last doubts about the
    validity of the heliocentric model of the Solar System. This work also
    demonstrated that the motion of objects on Earth and of celestial bodies
    could be described by the same principles. His prediction that Earth should
    be shaped as an oblate spheroid was later vindicated by the measurements of
    Maupertuis, La Condamine, and others, which helped convince most
    Continental European scientists of the superiority of Newtonian mechanics
    over the earlier system of Descartes.

    Newton built the first practical reflecting telescope and developed a
    theory of colour based on the observation that a prism decomposes white
    light into the many colours of the visible spectrum. He formulated an
    empirical law of cooling, studied the speed of sound, and introduced the
    notion of a Newtonian fluid. In addition to his work on calculus, as a
    mathematician Newton contributed to the study of power series, generalised
    the binomial theorem to non-integer exponents, developed a method for
    approximating the roots of a function, and classified most of the cubic
    plane curves.

    Newton was a fellow of Trinity College and the second Lucasian Professor of
    Mathematics at the University of Cambridge. He was a devout but unorthodox
    Christian and, unusually for a member of the Cambridge faculty of the day,
    he refused to take holy orders in the Church of England, perhaps because he
    privately rejected the doctrine of the Trinity. Beyond his work on the
    mathematical sciences, Newton dedicated much of his time to the study of
    biblical chronology and alchemy, but most of his work in those areas
    remained unpublished until long after his death. In his later life, Newton
    became president of the Royal Society. Newton served the British government
    as Warden and Master of the Royal Mint.

[Henri Lebesgue](http://en.wikipedia.org/wiki/Henri_Lebesgue)

:   <div class="tzx-fright">
    ![Henri Lebesgue](http://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Lebesgue_2.jpeg/225px-Lebesgue_2.jpeg)
    </div>

    Henri Léon Lebesgue (French: `[ɑ̃ʁi leɔ̃ ləbɛɡ]`; June 28, 1875 –
    July 26, 1941) was a French mathematician most famous for his theory of
    integration, which was a generalization of the 17th century concept of
    integration—summing the area between an axis and the curve of a function
    defined for that axis. His theory was published originally in his
    dissertation Intégrale, longueur, aire ("Integral, length, area") at the
    University of Nancy during 1902.

    <div class="tzx-fleft">
    ![Approximation of the Riemann integral by rectangular areas.](https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/Riemann.gif/330px-Riemann.gif)
    </div>

    Lebesgue invented a new method of integration to solve this problem.
    Instead of using the areas of rectangles, which put the focus on the domain
    of the function, Lebesgue looked at the codomain of the function for his
    fundamental unit of area. Lebesgue's idea was to first define measure, for
    both sets and functions on those sets. He then proceeded to build the
    integral for what he called simple functions; measurable functions that
    take only finitely many values. Then he defined it for more complicated
    functions as the least upper bound of all the integrals of simple functions
    smaller than the function in question.

    Lebesgue integration has the property that every function defined over a
    bounded interval with a Riemann integral also has a Lebesgue integral, and
    for those functions the two integrals agree. Furthermore, every bounded
    function on a closed bounded interval has a Lebesgue integral and there are
    many functions with a Lebesgue integral that have no Riemann integral.

    <div class="tzx-fright">
    ![Method of Lebesgue's integration.](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Integral_of_positive_function.svg/330px-Integral_of_positive_function.svg.png)
    </div>

    As part of the development of Lebesgue integration, Lebesgue invented the
    concept of measure, which extends the idea of length from intervals to a
    very large class of sets, called measurable sets (so, more precisely,
    simple functions are functions that take a finite number of values, and
    each value is taken on a measurable set). Lebesgue's technique for turning
    a measure into an integral generalises easily to many other situations,
    leading to the modern field of measure theory.

    The Lebesgue integral is deficient in one respect. The Riemann integral
    generalises to the improper Riemann integral to measure functions whose
    domain of definition is not a closed interval. The Lebesgue integral
    integrates many of these functions (always reproducing the same answer when
    it did), but not all of them. For functions on the real line, the Henstock
    integral is an even more general notion of integral (based on Riemann's
    theory rather than Lebesgue's) that subsumes both Lebesgue integration and
    improper Riemann integration. However, the Henstock integral depends on
    specific ordering features of the real line and so does not generalise to
    allow integration in more general spaces (say, manifolds), while the
    Lebesgue integral extends to such spaces quite naturally.

[Guillaume de l'Hôpital](http://en.wikipedia.org/wiki/Guillaume_de_l%27H%C3%B4pital)

:   <div class="tzx-fright">
    ![Guillaume de l'Hôpital](http://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Guillaume_de_l%27H%C3%B4pital.jpg/220px-Guillaume_de_l%27H%C3%B4pital.jpg)
    </div>

    Guillaume François Antoine, Marquis de l'Hôpital (French: `[ɡijom fʁɑ̃swa ɑ̃
    twan maʁki də lopital]`; 1661 – 2 February 1704) was a French
    mathematician. His name is firmly associated with l'Hôpital's rule for
    calculating limits involving indeterminate forms 0/0 and ∞/∞. Although the
    rule did not originate with l'Hôpital, it appeared in print for the first
    time in his treatise on the infinitesimal calculus, entitled Analyse des
    Infiniment Petits pour l'Intelligence des Lignes Courbes. This book was a
    first systematic exposition of differential calculus. Several editions and
    translations to other languages were published and it became a model for
    subsequent treatments of calculus.

    L'Hôpital was born into a military family. His father was Anne-Alexandre de
    l'Hôpital, a Lieutenant-General of the King's army, Comte de Sainte-Mesme
    and the first squire of Gaston, Duke of Orléans. His mother was Elisabeth
    Gobelin, a daughter of Claude Gobelin, Intendant in the King's Army and
    Councilor of the State.

    L'Hôpital abandoned a military career due to poor eyesight and pursued his
    interest in mathematics, which was apparent since his childhood. For a
    while, he was a member of Nicolas Malebranche's circle in Paris and it was
    there that in 1691 he met young Johann Bernoulli, who was visiting France
    and agreed to supplement his Paris talks on infinitesimal calculus with
    private lectures to l'Hôpital at his estate at Oucques. In 1693, l'Hôpital
    was elected to the French academy of sciences and even served twice as its
    vice-president. Among his accomplishments were the determination of the arc
    length of the logarithmic graph, one of the solutions to the
    brachistochrone problem, and the discovery of a turning point singularity
    on the involute of a plane curve near an inflection point.

    L'Hôpital exchanged ideas with Pierre Varignon and corresponded with
    Gottfried Leibniz, Christiaan Huygens, and Jacob and Johann Bernoulli. His
    Traité analytique des sections coniques et de leur usage pour la résolution
    des équations dans les problêmes tant déterminés qu'indéterminés ("Analytic
    treatise on conic sections") was published posthumously in Paris in 1707.

[Gottfried Willhelm Leibniz](http://en.wikipedia.org/wiki/Gottfried_Wilhelm_Leibniz)

:   <div class="tzx-fright">
    ![leibniz-portrait](http://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Gottfried_Wilhelm_von_Leibniz.jpg/220px-Gottfried_Wilhelm_von_Leibniz.jpg)
    </div>

    Gottfried Wilhelm (von) Leibniz (`/ˈlaɪbnɪts/`; German: `[ˈɡɔtfʁiːt ˈvɪlhɛ
    lm fɔn ˈlaɪbnɪts]` or `[ˈlaɪpnɪts]`; French: Godefroi Guillaume Leibnitz;
    July 1, 1646 – November 14, 1716) was **a German polymath and philosopher
    who occupies a prominent place in the history of mathematics and the
    history of philosophy. Scholars including Bertrand Russell believe Leibniz
    developed calculus independently of Isaac Newton, and Leibniz's notation
    has been widely used ever since it was published. It was only in the 20th
    century that his Law of Continuity and Transcendental Law of Homogeneity
    found mathematical implementation (by means of non-standard analysis). He
    became one of the most prolific inventors in the field of mechanical
    calculators.  While working on adding automatic multiplication and division
    to Pascal's calculator, he was the first to describe a pinwheel calculator
    in 1685 and invented the Leibniz wheel, used in the arithmometer, the first
    mass-produced mechanical calculator. He also refined the binary number
    system, which is the foundation of virtually all digital computers.

    In philosophy, Leibniz is most noted for his **optimism**, i.e. his
    conclusion that our Universe is, in a restricted sense, the best possible
    one that God could have created, an idea that was often lampooned by others
    such as Voltaire. Leibniz, along with René Descartes and Baruch Spinoza,
    was one of the three great 17th-century advocates of rationalism. The work
    of Leibniz anticipated modern logic and analytic philosophy, but his
    philosophy also looks back to the scholastic tradition, in which
    conclusions are produced by applying reason of first principles or prior
    definitions rather than to empirical evidence.

    Leibniz made major contributions to physics and technology, and anticipated
    notions that surfaced much later in philosophy, probability theory,
    biology, medicine, geology, psychology, linguistics, and computer science.
    He wrote works on philosophy, politics, law, ethics, theology, history, and
    philology. Leibniz's contributions to this vast array of subjects were
    scattered in various learned journals, in tens of thousands of letters, and
    in unpublished manuscripts. He wrote in several languages, but primarily in
    Latin, French, and German. There is no complete gathering of the writings
    of Leibniz.

[Giuseppe Peano](http://en.wikipedia.org/wiki/Giuseppe_Peano)

:   <div class="tzx-fright">
    ![Giuseppe Peano](https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Giuseppe_Peano.jpg/330px-Giuseppe_Peano.jpg)
    </div>

    Giuseppe Peano (Italian: `[dʒuˈzɛppe peˈaːno]`; 27 August 1858 – 20 April
    1932) was **an Italian mathematician**. The author of over 200 books and
    papers, he was a founder of mathematical logic and set theory, to which he
    contributed much notation. The standard axiomatization of the natural
    numbers is named the Peano axioms in his honor. As part of this effort, he
    made key contributions to the modern rigorous and systematic treatment of
    the method of mathematical induction. He spent most of his career teaching
    mathematics at the University of Turin.

    After his mother died in 1910, Peano divided his time between teaching,
    working on texts aimed for secondary schooling including a dictionary of
    mathematics, and developing and promoting his and other auxiliary
    languages, becoming a revered member of the international auxiliary
    language movement. He used his membership of the Accademia dei Lincei to
    present papers written by friends and colleagues who were not members (the
    Accademia recorded and published all presented papers given in sessions).

    During the years 1913–1918, Peano published several papers that dealt with
    the remainder term for various numerical quadrature formulas, and
    introduced the Peano kernel.

    In 1925 Peano switched Chairs unofficially from Infinitesimal Calculus to
    Complementary Mathematics, a field which better suited his current style of
    mathematics. This move became official in 1931. Giuseppe Peano continued
    teaching at Turin University until the day before he died, when he suffered
    a fatal heart attack.

[George Green](http://en.wikipedia.org/wiki/George_Green)

:   <div class="tzx-fright">
    ![The title page to Green's original essay on what is now known as
        Green's theorem.](http://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/GreenEssay.png/220px-GreenEssay.png)
    </div>

    George Green (14 July 1793 – 31 May 1841) was a British mathematical
    physicist who wrote An Essay on the Application of Mathematical Analysis to
    the Theories of Electricity and Magnetism (Green, 1828). The essay
    introduced several important concepts, among them a theorem similar to the
    modern Green's theorem, the idea of potential functions as currently used
    in physics, and the concept of what are now called Green's functions. Green
    was the first person to create a mathematical theory of electricity and
    magnetism and his theory formed the foundation for the work of other
    scientists such as James Clerk Maxwell, William Thomson, and others. His
    work on potential theory ran parallel to that of Carl Friedrich Gauss.

    Green's life story is remarkable in that he was almost entirely
    self-taught. He received only about one year of formal schooling as a
    child, between the ages of 8 and 9.

    In his final years at Cambridge, Green became rather ill, and in 1840 he
    returned to Sneinton, only to die a year later. There are rumours that at
    Cambridge, Green had "succumbed to alcohol", and some of his earlier
    supporters, such as Sir Edward Bromhead, tried to distance themselves from
    him.

    Green's work was not well known in the mathematical community during his
    lifetime. Besides Green himself, the first mathematician to quote his 1828
    work was the Briton Robert Murphy (1806–1843) in his 1833 work. In 1845,
    four years after Green's death, Green's work was rediscovered by the young
    William Thomson (then aged 21), later known as [Lord Kelvin](#lord-kelvin), who popularised
    it for future mathematicians. According to the book "George Green" by D.M.
    Cannell, William Thomson noticed Murphy's citation of Green's 1828 essay
    but found it difficult to locate Green's 1828 work; he finally got some
    copies of Green's 1828 work from William Hopkins in 1845.

[Gamma Function](http://en.wikipedia.org/wiki/Gamma_function)

:   <div class="tzx-fleft">
    ![](http://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Factorial_Interpolation.svg/250px-Factorial_Interpolation.svg.png)
    </div>

    <div class="tzx-fright">
    ![](http://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Jahnke_gamma_function.png/300px-Jahnke_gamma_function.png)
    </div>

    In mathematics, the gamma function (represented by the capital Greek letter
    Γ) is an extension of the factorial function, with its argument shifted
    down by 1, to real and complex numbers. That is, if n is a positive
    integer:

    $$\Gamma(n) = (n-1)!.$$

    The gamma function is defined for all complex numbers except the
    non-positive integers. For complex numbers with a positive real part, it is
    defined via a convergent improper integral:

    $$\Gamma(t) = \int_0^\infty x^{t-1} e^{-x}\,dx.$$

    This integral function is extended by analytic continuation to all complex
    numbers except the non-positive integers (where the function has simple
    poles), yielding the meromorphic function we call the gamma function. In
    fact the gamma function corresponds to the Mellin transform of the negative
    exponential function:

    <!--
    no mathjax support in reads.html (supporting mathjax in this page will slow page rendering)
    $$\Gamma(t) = { \mathcal M e^{-x} }(t).$$

    use codecogs instead
    ![](http://latex.codecogs.com/gif.latex?%5CGamma%28t%29%20%3D%20%5C%7B%20%5Cmathcal%20M%20e%5E%7B-x%7D%20%5C%7D%28t%29.)

    or use wikipedia equation image url
    ![](https://upload.wikimedia.org/math/c/a/5/ca5a7eb3de47e2cc3c06348778780ee8.png)

    eh... sames they are all the same... BTW, Codecogs is open source.
    -->

    ![](https://upload.wikimedia.org/math/c/a/5/ca5a7eb3de47e2cc3c06348778780ee8.png)

    The gamma function is a component in various probability-distribution
    functions, and as such it is applicable in the fields of probability and
    statistics, as well as combinatorics.

[Georg Cantor](http://en.wikipedia.org/wiki/Georg_Cantor)

:   <div class="tzx-fleft">
    ![Georg Cantor](http://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Georg_Cantor2.jpg/225px-Georg_Cantor2.jpg)
    </div>

    Georg Ferdinand Ludwig Philipp Cantor (`/ˈkæntɔːr/` KAN-tor; German: `[ˈɡeɔ
    ʁkˈfɛʁdinant ˈluːtvɪç ˈfɪlɪp ˈkantɔʁ]`; March 3 [O.S. February 19] 1845 –
    January 6, 1918) was a German mathematician. He invented set theory, which
    has become a fundamental theory in mathematics. Cantor established the
    importance of one-to-one correspondence between the members of two sets,
    defined infinite and well-ordered sets, and proved that the real numbers
    are more numerous than the natural numbers. In fact, Cantor's method of
    proof of this theorem implies the existence of an "infinity of infinities".
    He defined the cardinal and ordinal numbers and their arithmetic. Cantor's
    work is of great philosophical interest, a fact of which he was well aware.

    Cantor's theory of transfinite numbers was originally regarded as so
    counter-intuitive – even shocking – that it encountered resistance from
    mathematical contemporaries such as Leopold Kronecker and Henri Poincaré
    and later from Hermann Weyl and L. E. J. Brouwer, while Ludwig Wittgenstein
    raised philosophical objections. Cantor, a devout Lutheran, believed the
    theory had been communicated to him by God. Some Christian theologians
    (particularly neo-Scholastics) saw Cantor's work as a challenge to the
    uniqueness of the absolute infinity in the nature of God – on one occasion
    equating the theory of transfinite numbers with pantheism – a proposition
    that Cantor vigorously rejected.

    The objections to Cantor's work were occasionally fierce: Henri Poincaré
    referred to his ideas as a "grave disease" infecting the discipline of
    mathematics, and Leopold Kronecker's public opposition and personal attacks
    included describing Cantor as a "scientific charlatan", a "renegade" and a
    "corrupter of youth." Kronecker objected to Cantor's proofs that the
    algebraic numbers are countable, and that the transcendental numbers are
    uncountable, results now included in a standard mathematics curriculum.
    Writing decades after Cantor's death, Wittgenstein lamented that
    mathematics is "ridden through and through with the pernicious idioms of
    set theory," which he dismissed as "utter nonsense" that is "laughable" and
    "wrong". Cantor's recurring bouts of depression from 1884 to the end of his
    life have been blamed on the hostile attitude of many of his
    contemporaries, though some have explained these episodes as probable
    manifestations of a bipolar disorder.

    The harsh criticism has been matched by later accolades. In 1904, the Royal
    Society awarded Cantor its Sylvester Medal, the highest honor it can confer
    for work in mathematics. David Hilbert defended it from its critics by
    declaring: "No one shall expel us from the Paradise that Cantor has
    created."

---

Αα	Alpha	Νν	Nu
Ββ	Beta	Ξξ	Xi
Γγ	Gamma	Οο	Omicron
Δδ	Delta	Ππ	Pi
Εε	Epsilon	Ρρ	Rho
Ζζ	Zeta	Σσ	Sigma
Ηη	Eta		Ττ	Tau
Θθ	Theta	Υυ	Upsilon
Ιι	Iota	Φφ	Phi
Κκ	Kappa	Χχ	Chi
Λλ	Lambda	Ψψ	Psi
Μμ	Mu		Ωω	Omega

* [Brook Taylor](http://en.wikipedia.org/wiki/Brook_Taylor)
![][taylor-portrait]

[taylor-portrait]: http://upload.wikimedia.org/wikipedia/commons/thumb/2/25/BTaylor.jpg/220px-BTaylor.jpg

* [Carl Friedrich Gauss](http://en.wikipedia.org/wiki/Carl_Friedrich_Gauss)
![gauss-portrait]

[gauss-portrait]: http://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Carl_Friedrich_Gauss.jpg/220px-Carl_Friedrich_Gauss.jpg

![](http://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/KnuthAtOpenContentAlliance.jpg/192px-KnuthAtOpenContentAlliance.jpg)

Donald Ervin Knuth (/kəˈnuːθ/ kə-nooth; born January 10, 1938) is an American
computer scientist, mathematician, and Professor Emeritus at Stanford
University.

美国程序员、数学家、Stanford 大学教授

He is the author of the multi-volume work The Art of Computer Programming.
Knuth has been called the "father" of the analysis of algorithms. He
contributed to the development of the rigorous analysis of the computational
complexity of algorithms and systematized formal mathematical techniques for
it. In the process he also popularized the [asymptotic notation]. In addition
to fundamental contributions in several branches of theoretical computer
science, Knuth is the creator of the TeX computer typesetting system, the
related METAFONT font definition language and rendering system, and the
Computer Modern family of typefaces.

TAOCP（计算机程序艺术）的作者；算法分析之父；TeX、METAFONT 作者；

As a writer and scholar, Knuth created the WEB and CWEB computer programming
systems designed to encourage and facilitate **literate programming**, and
designed the MIX/MMIX instruction set architectures. As a member of the
academic and scientific community, Knuth is strongly opposed to the policy of
granting software patents. He has expressed his disagreement directly to both
the United States Patent and Trademark Office and European Patent Organization.

文学性编程；反对软件专利；

**Early life**

winning a contest when he was in eighth grade by finding over 4,500 words that
could be formed from the letters in "Ziegler's Giant Bar"; the judges had only
about 2,500 words on their master list.

**Education**

Physics or Music

1963 PhD in mathematics MIT

**Early work**

*TAOCP*

**Writings**

*TAOCP* TeX, METAFONT *TAOCP*
*Surreal Numbers*
*3:16 Bible Texts Illuminated*

**Health concerns**

2006 prostate cancer pretty good

**Computer musings**

informal lectures at Stanford

**Humor**

pay a [finder's fee]

**Awards**

Honors bestowed on Knuth include:

First ACM Grace Murray Hopper Award, 1971
Turing Award, 1974
Josiah Willard Gibbs Lecturer, 1978[28][29]
National Medal of Science, 1979
Franklin Medal, 1988
John von Neumann Medal, 1995
Harvey Prize from the Technion, 1995[30]
Kyoto Prize, 1996
Fellow of the Computer History Museum, 1998
Katayanagi Prize, 2010[31]
BBVA Foundation Frontiers of Knowledge Award, 2010[32]
Stanford University School of Engineering Hero Award, 2011[33]

![](http://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/Donald_Knuth_in_front_of_statue_St._Mesrop_Mashtots_%28inventor_of_the_Armenian%2C_Georgian_and_Caucasian_Albanian_alphabets_in_the_4th_century%29%2C_Matenadaran%2C_Yerevan%2C_Armenia%2C_June_2006%2C_LA.jpg/195px-thumbnail.jpg)

### Homepage

![](http://www-cs-faculty.stanford.edu/~uno/don.gif)

**F.A.Q.**

[关于退休](http://www-cs-faculty.stanford.edu/~uno/retd.html)

> I retired early because I realized that I would need about 20 years of
> full-time work to complete The Art of Computer Programming (TAOCP), which I
> have always viewed as the most important project of my life.

[邮件](http://www-cs-faculty.stanford.edu/~uno/email.html)

1990 再不用邮箱

解释 e-mail -> email

[最爱的编程语言](http://www-cs-faculty.stanford.edu/~uno/cweb.html)

*The CWEB System of Structured Documentation*
*Literate Programming*

[出版的书](http://www-cs-faculty.stanford.edu/~uno/books.html)

* *TAOCP*
* *The TeXbook*, *The METAFONTbook*, *Computers & Typesetting*
* *Concrete Mathematics*

[为什么不写支票了？](http://www-cs-faculty.stanford.edu/~uno/news08.html)

How do you pronounce your last name?
Knuth (Ka-NOOTH)

关于中文名 ![](http://www-cs-faculty.stanford.edu/~uno/gaoduhnah.gif)

![](http://www-cs-faculty.stanford.edu/~uno/chop.jpeg)

**[Curriculum Vitæ](http://www-cs-faculty.stanford.edu/~uno/vita.html)**

> I may not be able to read your message until many months have gone by,
> because I'm working intensively on The Art of Computer Programming. However,
> I promise to reply in due time.

[Programs to Read](http://www-cs-faculty.stanford.edu/~uno/programs.html)


[![](http://gnat.qiniudn.com/pic/Donald-E.-Knuth.png)](http://www-cs-faculty.stanford.edu/~uno/dek-14May10-1.jpeg)

段子等

* [科学网—图灵奖史上最年轻获奖者高德纳：把一件平常事做到人间极致](http://news.sciencenet.cn/htmlnews/2010/3/229434.shtm)
* [八卦高德纳 (评论: 计算机程序设计艺术（第 1 卷）)](http://book.douban.com/review/5384627/)
* [科学松鼠会 » 近看图灵碗 (8. 我就是上帝) (上)](http://songshuhui.net/archives/33469)
* [科学松鼠会 » 近看图灵碗 (8. 我就是上帝) (下)](http://songshuhui.net/archives/34291)

* [Donald E. Knuth | Wikipedia](http://en.wikipedia.org/wiki/Donald_Knuth)

* [Galileo Galilei](http://en.wikipedia.org/wiki/Galileo_Galilei)
![galilei-portrait]

[galilei-portrait]: http://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Justus_Sustermans_-_Portrait_of_Galileo_Galilei%2C_1636.jpg/220px-Justus_Sustermans_-_Portrait_of_Galileo_Galilei%2C_1636.jpg

[asymptotic notation]: http://mathworld.wolfram.com/AsymptoticNotation.html
[finder's fee]: http://en.wikipedia.org/wiki/Finder%27s_fee

**Pros**

* Balanced load of left/right hand: Alternative of left/right land
* Upper row is more frequently used.
*


**Cons**

* 适应与转变难，和世界不协调
* Cons，C 是左手 Shift，右手 c，o 是左手，有点不适应（开始阶段）
* 缩写词比如，dbl（double）都是右手的活儿了

---

Function

![](http://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Function_machine2.svg/220px-Function_machine2.svg.png)


Affine Function

![](http://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Gerade.svg/220px-Gerade.svg.png)


Quadric Function

![](http://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/Polynomialdeg2.svg/220px-Polynomialdeg2.svg.png)

Continuous Function

![](http://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Uniform_continuity_animation.gif/220px-Uniform_continuity_animation.gif)

Trignometric Function

![](http://gnat-tang-shared-image.qiniudn.com/pic/sin.png)
![](http://gnat-tang-shared-image.qiniudn.com/pic/cos.png)
![](http://gnat-tang-shared-image.qiniudn.com/pic/tan.png)

![](http://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Trigonometry_triangle.svg/288px-Trigonometry_triangle.svg.png)

![](http://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Circle_cos_sin.gif/300px-Circle_cos_sin.gif)

![](http://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Circle-trig6.svg/640px-Circle-trig6.svg.png)

![](http://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Synthesis_square.gif/340px-Synthesis_square.gif)

![](http://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Sawtooth_Fourier_Animation.gif/280px-Sawtooth_Fourier_Animation.gif)

Exponential

![](http://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Root_graphs.svg/450px-Root_graphs.svg.png)

![](http://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/ExpIPi.gif/300px-ExpIPi.gif)

Refs

:   * [Function | Wikipedia][function]
    * [Affine Transformation](http://en.wikipedia.org/wiki/Affine_transformation)
    * [Quadric Function](http://en.wikipedia.org/wiki/Quadratic_function)
    * [Continuous Function](http://en.wikipedia.org/wiki/Continuous_function)
    * [Trignometric Function](http://en.wikipedia.org/wiki/Trigonometric_functions)
    * [Hyperbolic Function](http://en.wikipedia.org/wiki/Hyperbolic_function)
    * [幂函数](http://zh.wikipedia.org/wiki/%E5%B9%82%E5%87%BD%E6%95%B0)
    * [Exponential](http://en.wikipedia.org/wiki/Exponentiation#rational-exponents)

[function]: http://en.wikipedia.org/wiki/Function_(mathematics)

"**Even Homer nods**"，太过分了。。。

---

The Hacker's Code

:   > "A hacker of the Old Code."

    - Hackers come and go, but a great hack is forever.
    - Public goods belong to the public.
    - Software hoarding is evil.
      Software does the greatest good given to the greatest number.
    - Don't be evil.
    - Sourceless software sucks.
    - People have rights.
      Organizations live on sufferance(容许).
    - Governments are organizations.
    - If it is wrong when citizens do it,
      it is wrong when governments do it.
    - Information wants to be free.
      Information *deserves* to be free.
    - Being legal doesn't make it right.
    - Being illegal doesn't make it wrong.
    - Subverting tyranny is the highest duty.
    - Trust your technolust!

The Hacker's Code of Ethics

:   Levy (1984) suggests that there is a "code of ethics" for hacking which,
    though not pasted on the walls, is in the air:

    - Access to Computers - and anything which might teach you something about
      the way the world works - should be unlimited and total. Always yield to
      the Hands-On Imperative!
    - All information should be free.
    - Mistrust Authority - Promote Decentralization.
    - Hackers should be judged by their hacking, not bogus criteria such as
      degrees, age, race, or position.
    - You can create art and beauty on a computer.
    - Computers can change your life for the better.

*DRAFT* The Hacker's Code *DRAFT*

:   Preamble: We, the people of the electronic universe, in order to establish
    a society of knowledge and skills, do hereby proclaim the following.

    - Hackers are diverse, from all cultures and backgrounds. Every hacker is
      unique, yet we all share some characteristics. While not every hacker
      follows this Code, many believe it is a fair description of our shared
      traditions, goals and values.
    - Hackers share and are willing to teach their knowledge
    - Hackers are skilled. Many are self-taught, or learn by interacting with
      other hackers.
    - Hackers seek knowledge. This knowledge may come from unauthorized or
      unusual sources, and is often hidden.
    - Hackers are tinkerers. They like to understand how things work, and want
      to make their own improvements or modifications.
    - Hackers often disagree with authority, including parents, employers,
      social customs and laws. They often seek to circumvent authority they
      disagree with.
    - Hackers disagree with each other. Different hackers have different
      values, and come from all backgrounds. This means that what one hacker is
      opposed to might be embraced by another.
    - Hackers are persistent, and are willing to devote hours, days and years
      to pursuing their individual passions.
    - This Code is not to prescribe how hackers act. Instead, it is to help us
      to recognize our own diversity and identify.
    - Every hacker must make his or her own decisions about what is right or
      wrong, and some might do things they believe are illegal, amoral or
      anti-social to achieve higher goals.
    - Hackers' motivations are their own, and there is no reason for all
      hackers to agree.
    - Hackers have a shared identify, however, and many shared interests.
    - By reading this Code, hackers can recognize themselves and each other,
      and understand better the group they are a part of. This will be
      beneficial to all hackers.

<style>
#hacker-code {
    padding-left: 4em;
}
</style>

The Conscience of a Hacker

:   ~~~ {.tzx-poem #hacker-code}
                                   ==Phrack Inc.==

                        Volume One, Issue 7, Phile 3 of 10

    =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
    The following was written shortly after my arrest...

                           \/\The Conscience of a Hacker/\/

                                          by

                                   +++The Mentor+++

                              Written on January 8, 1986
    =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

            Another one got caught today, it's all over the papers.  "Teenager
    Arrested in Computer Crime Scandal", "Hacker Arrested after Bank Tampering"...
            Damn kids.  They're all alike.

            But did you, in your three-piece psychology and 1950's technobrain,
    ever take a look behind the eyes of the hacker?  Did you ever wonder what
    made him tick, what forces shaped him, what may have molded him?
            I am a hacker, enter my world...
            Mine is a world that begins with school... I'm smarter than most of
    the other kids, this crap they teach us bores me...
            Damn underachiever.  They're all alike.

            I'm in junior high or high school.  I've listened to teachers explain
    for the fifteenth time how to reduce a fraction.  I understand it.  "No, Ms.
    Smith, I didn't show my work.  I did it in my head..."
            Damn kid.  Probably copied it.  They're all alike.

            I made a discovery today.  I found a computer.  Wait a second, this is
    cool.  It does what I want it to.  If it makes a mistake, it's because I
    screwed it up.  Not because it doesn't like me...
                    Or feels threatened by me...
                    Or thinks I'm a smart ass...
                    Or doesn't like teaching and shouldn't be here...
            Damn kid.  All he does is play games.  They're all alike.

            And then it happened... a door opened to a world... rushing through
    the phone line like heroin through an addict's veins, an electronic pulse is
    sent out, a refuge from the day-to-day incompetencies is sought... a board is
    found.
            "This is it... this is where I belong..."
            I know everyone here... even if I've never met them, never talked to
    them, may never hear from them again... I know you all...
            Damn kid.  Tying up the phone line again.  They're all alike...

            You bet your ass we're all alike... we've been spoon-fed baby food at
    school when we hungered for steak... the bits of meat that you did let slip
    through were pre-chewed and tasteless.  We've been dominated by sadists, or
    ignored by the apathetic.  The few that had something to teach found us will-
    ing pupils, but those few are like drops of water in the desert.

            This is our world now... the world of the electron and the switch, the
    beauty of the baud.  We make use of a service already existing without paying
    for what could be dirt-cheap if it wasn't run by profiteering gluttons, and
    you call us criminals.  We explore... and you call us criminals.  We seek
    after knowledge... and you call us criminals.  We exist without skin color,
    without nationality, without religious bias... and you call us criminals.
    You build atomic bombs, you wage wars, you murder, cheat, and lie to us
    and try to make us believe it's for our own good, yet we're the criminals.

            Yes, I am a criminal.  My crime is that of curiosity.  My crime is
    that of judging people by what they say and think, not what they look like.
    My crime is that of outsmarting you, something that you will never forgive me
    for.

            I am a hacker, and this is my manifesto.  You may stop this individual,
    but you can't stop us all... after all, we're all alike.

                                   +++The Mentor+++
    _______________________________________________________________________________
    ~~~

Refs

:   * [黑客的价值观 | 酷 壳 - CoolShell.cn](http://coolshell.cn/articles/2439.html)
    * [The Hacker's Code](http://muq.org/~cynbe/hackers-code.html)
    * [The Hacker's Code of Ethics](http://courses.cs.vt.edu/cs3604/lib/WorldCodes/Hackers.Code.html)
    * [The Hacker's Code: Related](http://www.petascale.org/code/code.html)
    * [The Conscience of a Hacker](http://www.phrack.org/archives/issues/7/3.txt)
    * [Hacker Manifesto - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Hacker_Manifesto)

---

1. 管卫东？
2. 心态
    * 理性对待今天（面对考试和申请）
	* 惯性是否干扰了你的学习？
3. SAT
    * 理念
	    1. ~~Why~~ *vs.* **How**
		2. 阅读
		    * 不是博闻强记的能力，是在大量信息时一眼获得有效信息的能力（不要精度）
			* 决策能力（比较）
			* 速度：1. 找；2. (002)
		3. xxxx
		4. 写作
		    * 遣词（形象化）
			* Preferred 更好的
			* 思维与语序

* 选真题
* 第一次做题时，能操作吗？
* 理性 --> 感性（考前两三周）
* 快速定位
* 选项的有效信息
* 原文的有效信息

[管卫东]: http://baike.baidu.com/view/1209052.htm

---

* 公理，定理
* 函数，幂函数，指数函数（和对数函数），三角函数==> e^x
* Group，Field，Ring

数学符号

* a, b, c, d, e, f, g, h
* i, j, k
* m, n
* p, q, r, s, t
* u, v, w
* x, y, z
* omega, episilon
* pi, tau, etc

---

```tzx-bigquote
大哥大嫂过年好，大哥大嫂过年好，大哥大嫂过年好

抱歉用姜文的鬼子来了开个恶趣味的玩笑

本小站是成人英语学习研究基地，站长呢，没啥本事，在一家所谓外企工作，大学时候参
加过 CCTV 杯，对英文教学试验特别感兴趣，因为工作关系大姨妈经常犯，所以就在线做
些感兴趣的事情减减压

本小站目标：以最科学高效的语言学理论和最牛叉有趣的学习材料作支撑，加上你自己的
一点小坚持——每天 1-2 小时，依个人基础不同，1-2 年后人人都可习得英文，美剧电影随
便看，口语流利自然说，原版教材小说随便读

很有趣是么？很不幸，先自问下一天 1-2 时，一年时间不动摇你能做到么？哈哈哈

在进入正文之前，先做个自测

1，在此前有没有照着录音一句话一句话暂停反复模仿的经历，如果有，请问每天一小时，
最长坚持过多久，有没有超过三周？2，在此前有没有坚持做听写的经历，如果有，每天一
小时，请问有没有坚持超过两周？3，你觉得自己看到不认识的单词的音标能做到比较标准
的读出来么？4，估算下自己听英语的输入量大概有多少个小时，是否曾经每天坚持听 1-2
个小时的英文（随便什么，新闻，有声书之类，但中文字幕或中英字幕的美剧不算）5，请
问你丢弃英文，从未接触，低于三年么？6，请问你高考英语及格了么？7，请问过去时，
现在时，完成时，虚拟语气，副词性从句，名词性从句，形容词性从句这些基本语法概念
有么？不要求精通，但是请问你知道么？8，请问你能听懂多快速度的英文？VOA 慢速那种
？还是 VOA 慢速已经可以听懂但是常速仍然力不从心的？或者你根本就不知道 VOA 是什
么，而且从来就没有过听英文的习惯？

如果以上问题，你给出的否定答案超过 3 个问题，那么下面正文并不适合你，你看完也不
会有任何直接收获，请点开右边零基础那个房间，寻求赖世雄老师的帮助，每天一课，一
年后学完全套教材，英文自然大成！

好，正文！

由于**直接决定英文水平的其实就是听力，没错，这是一切英文能力基础中的基础**，我
相信二语教学中从听力入手的假说—婴幼儿接触语言，无一不是从声音入手，然后认字，学
阅读和写作的，so，我在教程初期决定：所有级别的划定，统统只以听力材料的难度来划
分，所以大声哭诉不知道自己英文级别的人，把我推荐的材料听下，觉得能听懂 70% 的，
说明你就适合这个级别，如果全都能听懂但是英文仍然很烂的（我暂时先不计较你是不是
在撒谎和跟我瞎操蛋），那么提高写要求，看自己能复述出多少，复述率 70% 左右的，甭
管你听懂 100% 还是 120%，都只当作符合这个水平

最后废话句，虽然对本教程对号入座全部学完（不一定要从初始级别开始），应付任何考
试都无问题，但是它本质上不针对考试，我只是在做英文习得的试验而已，再有人发帖发
邮，说自己四六级 / 考研 / 口译 / 托福等垃圾考试要到了，所以进组要好好努力，或者
求各种考试办法（比如托福雅思口语），我送你几个字：滚你妈逼的！

如果你说自己要晋升，或者要去外企，或者赚大钱，或者要移民出国做假洋鬼子，或者装
逼说要看懂各类原版书做文艺青年，或者志向高洁说要使用英文多读专业书，学好本专业
高精尖技术，出国留学做科学家报效祖国，那么小组对各位无任欢迎！赚到钱了也请记得
请我吃饭

OK，先简单扫盲下

国外的 ESL 教学早就已经上升到心理学和脑神经学的高度了，各类语言学实验室开的兴旺
，成果大批量产出，无数语言学家前赴后继殚精竭虑穷极一生，只为了追求拿最高效和最
科学的教学手段方法，跟国内某机构或某名师拍脑袋想出来的办法（背熟新概念，背熟 2W
单词之类的言论）截然不同（庆父不死鲁难不已啊），其中的开宗立派的祖师爷，惹无数
屌丝嫉妒，无数伪君子打压，国内无数英语系砖家叫兽故意掩盖伪装，被国人一只挡在门
外的顶尖儿人物，就是南加州大学的 Dr Krashen！

技插：南加州的语言学专家怎么这么多，祖师爷是那的，我一外教是那毕业的，下文中要
提到的 Jeff 也是哪的，真是风水宝地出人才啊

Dr Krashen 提出了几条著名的外语习得假说，根据我们今天的网络丰富资源，我们完全可
以按照这几条假说来全面最大化的优化自己的学习，简单介绍下

1，输入 input 假说：绝大部分人的英文不好并不是因为他们 practice 的不够多，而是
因为 input 不够，换言之没事喜欢瞎找老外搭讪无疑是个蠢办法，至于那种认为去国外了
英文自然就会好，或者美国卖菜的英文都比我们好的多人的人都是傻逼，当然，这只是条
假说，目前并无法证据其为完全真理，所以只能假定这些人是傻逼2，i+1 理论：也叫做可
理解性输入假说，在你认同输入假说的基础上，进行输入练习时，要遵守 i+1 的原则，i
即你现在的水平，1 即稍微高一点点的水平，这点被很多人熟悉，但是大家容易忽略的就
是，在学习了一段时间后，水平提高了，以前的 i+1 其实已经是你现在 i 水准了，这个
时候一定要 push 自己，去主动开拓，寻求进一步的提升，主动给自己的学习难度升级，
这个是很少有人会做的

这条可理解性输入假说是最重要，也是最核心的 ESL 教学理论，跟其它语言学派不同，这
个还靠谱点，事实上，有一种自然学习学派的观点，起码我是绝对不赞同的：一开始就应
该拿常速英文来练习，好像刚出生的小孩一样，静心打坐聆听，就算听不懂也听下去，总
有一天会顿悟，突然打通耳朵。就好像打通了任督二脉一样，你的英文的小宇宙就可以爆
发，因为没有特别多的人试验过这种自然学习法，而且我相信绝大部分人不会有胆量拿自
己的时间来试验这种办法，所以老老实实思索自己的级别，找一些略难的材料好好学一学
，学好了，再升个级别，这样有阶段性的上升和提高，收获的是扎扎实实的进步和提高3，
Narrow input 假说，意思就是，输入的材料在一定时间内相对要狭窄些，但是这条假说却
是小组里无一人会愿意遵守的，比如今晚还有人问我入门级别的语法相关，求推荐简单的
原版书（入门语法想读原版书，这个太高级了些）。我的观点很明确，既然确定了自己的
级别，那么就在一定时间内，只接触这个级别的材料，起码在学完前，尽量不要接触其它
材料，分散注意力。不要订出那种手捧赖世雄，脚填 Cloze，眼读原版书之类的天才计划
，就算你订了，按照小组的时间设定，我很怀疑你每天都有那么多时间能每个方面都
cover 到，订这种不切实际的计划没什么意思，更何况，一天数课的赖世雄老师已经占了
你很大时间，再去读原版书既不靠谱，也不实际，我也很怀疑，作为一个需要赖世雄老师
帮忙的小白，能看得懂 Peter Pan 么？

4，情绪机制 学习的材料和环境应该是有趣的，轻松自如的，才能实现效果的最大化

以上，是我个人比较赞同的 Krashen 的理论，具体的，可自己谷歌，或参照我之前写的帖
子：为什么一定要听 ESLPOD 和 Egnlishpod

So，根据这几条假说，我估摸着把国内目前已经有了一些基础的学习者分成三个级别，这
个级别划分很简单，就是按照 1，听力能力；2，词汇能力来划分的 3，语法能力来划分

中级：能够听懂慢速英语，但是对慢速英语都要求认真听仔细听，还不能随心所欲的人，
词汇量在 3-4K 左右

高级：轻松看懂无字幕美剧，原版专业书籍流畅读，词汇量 1W 以上，主动词汇超过 3K，
各种英文从句和主句的造句方法都熟练使用，流畅阅读时代和经济学人等国际性报刊无障
碍，与人交流或写作时，可以准确的使用单词和句式来表达自己的思想，语言文字不会地
道，但一定会准确，清楚，易懂，口语表达会有自己个人口音，但比较流利

我相信 stuck 在中级水平的人多——毕竟这个级别努努力就上来了，但达到高级水平的人却
少，且中级水平的人想达到高级，只觉得路漫漫其修远兮，道阻且长啊，穷此生未必能达
到，不知道如何规划学习时长，监控学习效果

所以中级和高级之间肯定有个阶层，在这个阶层修炼的如鱼得水之后，闯下一关的高级就
属于跳一跳，肯定摸得着的那种了

中高级：词汇在 4K—6K 左右，好一点背单词勤快的大概能达到 7K-8K，可以很轻松的听懂
VOA 慢速，但是在听常速英文的时候觉得困难重重，听懂率可能在 60%-70% 左右，看原版
书觉得处处掣肘到处有生词不认识，在说和写方面，可以较为流畅的写，也可以表达，但
是离轻松自如，并且写出来就知道对错的程度自己觉得很远，且困难重重，看不到什么提
高的希望

国内普遍学习者的水平（通过最上面自测的学习者），大抵可以分成这三个级别——废话一
句，平时没有输入习惯也就是听和读的习惯的人，自然是无法知道自己级别的，如果你看
到这里还是不清楚自己级别，我只能 give up on you 了，请立刻 X 了此页转零基础帖

这种学习的巨大断层是国内基础教育和江湖派培训双重疏忽导致

国内基础教育就是大家熟悉的 语法 - 翻译 - 背诵法，尤其是对词汇的背诵，懂语法背词
汇多的人基本上都能通过考试——但这样对确实英文的输入并无多少增长，考试自然也检测
不了什么水平——连听力题都是靠连蒙带猜，选择题和阅读题也多是靠所谓语感，这样一路
蒙 + 猜过了四六八级，只能说明你运气好——发音，because 肯定发成 becaurse,famous
也是 famours，r 音到处飞，w 和 h 这两个字母一读就错；语法，各种名词性从句和形容
词性从句以及副词性从句的构成规则一片糊涂，浑浑噩噩，简化从句更是掌握的一塌糊涂
，更不知道怎么写好各种复合句了；阅读，因为从句知识一片糊涂，稍微长一点的句子满
目抓瞎，压根不知道什么意思，连一开始的句子都读不懂，之后更不可能加快阅读速度了
，自豪的做阅读题的高正确率无非是在大量做题之后依靠题目本身的简化句子连蒙带猜而
已，基本的行文逻辑思维全无，更别提欣赏英美文学文字的艺术美感了。连这三项最简单
的部分大家都做的极差，那么我们也不用和口语和写作表达了吧。。。辞不达意还在其次
，对英文的 instant reflection 完全没有

（请问诸君感到膝盖中满箭木有？）

有些专家说国人对语法掌握很好，大家一说到学英文也常说自己的词汇好，书面英文好，
阅读没问题，知识口语烂了些

但很不幸，在我看来，大部分人的英文，包括高分学习者都是狗屁不通，语法更烂——基本
的造句知识大部分人掌握的都很差，选择题都是靠 语感 ，和专家所说完全相反——用屁股
想也知道了，如果大家的语法真的想你们所说的那么好，不会有那么多人抱怨英文难了，
语法乃是英文根本中的根本，只要通了，以后不会很难

所以基础教育全面崩溃，一片苍凉，虽然自称 语法 - 翻译法，但是连语法教授这一最基
本的教学任务全部失败——大部分狗屁老师自己语法都未通。一言蔽之，失败！

而真正个人学习的时候，网络时代来临前资料缺乏有限，我们当时多是用广播收听 VOA 和
BBC，钟道隆老师的理论出来了之后总算是有了很好的学习方法，当时各种英文学习杂志本
质上和这些广播没有什么不同，学习效果固然不错，但是在学习上有着一个巨大的断层。
VOA specail 每分钟只有 80 个词，词汇量在 3K 左右，常用的只有 1.5K，而 VOA 常速
每分钟至少有 140 个词，词汇量高达 9K。从 80 个词到 140 个词的听力速度可以说是个
彻底飞跃，词汇量也有个巨大鸿沟，英文学习的难度巨大分层——明显完全违背了 Dr
Krashen 的 i+1 理论，所以很多人听 VOA 慢速听的开头一切良好，但是很多因为适应不
了常速而放弃——这种时候就不是毅力和坚持的问题了，个人认为纯粹是方法和材料选择的
问题了。。。

所以你看，学习是件痛苦的事情，尤其是你过了四六级一看美剧一读原版书还是满眼抓瞎
的时候，哈哈哈（我们这里还没有讲复杂的英文造句呢）

纵观整个学习流派，没有任何一家提出过一个很好的系统的流程，让你从初级学到高级，
尤其是在难度极大的中高级阶段的学习——大量泛听输入和连读弱读的讲解造句方法之类过
渡阶段必须学习的东西也完全没人提及过——甚至连这个概念都从未有人提起过

是因为众多人的英文永远 stuck 在初级所以没人有中高级学习的体验吗？是侥幸顺利过渡
完毕的高级学习者不屑来教人怎么过渡吗？但国内机构集体选择眼盲耳盲这一事实不能让
人觉得不吊诡

如果没有人愿意或者不屑，那么让我来！我愿意来讲授自己当年好不容易突破的艰难困苦
！我愿意来分享突破的最高效办法！我愿意撕下各种名师传奇的假面具！让我来踢爆国内
各类跳梁小丑！

就好像洛杉矶的把妹界，众人都是无脑而跟风的，看到一种办法有效就纷纷效仿，讲故事
有用就到处给妹子讲故事，幽默有用就到处到酒吧给妹子讲笑话——结果发现有的办法有用
，有的办法只能被妹子扇耳光，为什么呢？没有任何一个人有好对策，一直到一位奇才——
迷男的出现

迷男彻底扫清了把妹学上的流俗，肃清了那种一招鲜吃遍天的荒谬状况，革命性的指出，
跟妹子交往是分成不同阶段的，搭讪认识是一个，约会是一个，约人家到你家里玩是一个
，最后成功上垒把妹得手又是一个（好比英文的高级水平），每个阶段，都必须用不同的
方法才能最和妹子的心思，尤其还要思考和认清自己和妹子的关系所处阶段，结合了当代
女性心理学与 NLP 理论，大量实践，总结经验，开班授课，成功案例众多，随后出版书籍
，众拙男花 25 人民币加上一颗不要脸的心反复练习，此生便可永远左拥右抱，常有温香
软玉漂亮妹子在怀，社会从此稳定，造福于民，伟大！

你们可以想象下 威尔斯密斯在 Hitch 全民情圣中的角色，虽然迷男大师跟这种角色有很
大不同，你们有空自己去优酷看看他的教程便知道了

奶爸不才，但我自愿做英文学习界的迷男，设定系统，指出不同阶段的不同战略，教你认
清自己，并仔细思考，时刻监控，你们身边的英文高手很多，一说学英文，每个人的方法
可能都不同，什么跟读模仿，看美剧，听 BBC，看原版书，背词典也好，背课文也好，大
家就会觉得每个人学习方法不同，要靠自己去琢磨，要找适合自己的，殊不知，这种所谓
最适合自己的，往往背后的意思就是 固步自封，真正的原因还是一个，不同阶段要做的事
情是不一样的，看自己的水平选择相应的材料。这样大家都能学好英文，以后去英语角，
男生可以靠一口流利英语泡到心仪女生，搞死洋垃圾和死老外，女生可以傍上老美改变国
籍，从此一生不愁

而且随着网络时代的到来和数码技术的进步，过渡阶段的问题已经完美解决了，想知道？
请在中级和中高阶段的帖子好好阅读吧!
```

---

* 状态和变化
* 衡量 =》 坐标系，表示系统，形式系统
* 抽象的方式，研究状态和变化，以期推测

---

引用 Joseph J. Rotman 的
[*The First Course in Abstract Algebra with Applications*][douban-abstract-algebra]：

> Giving the etymology of mathematical terms is rarely done. Let me explain,
> with an analogy, why I have included derivations of many terms.
>
> There are many variations of standard poker games and, in my poker group, the
> dealer announces the game of his choice by naming it. Now some names are
> better than others.  For example, "Little Red" is a game in which one's
> smallest red card is wild; this is a good name because it reminds the players
> of its distinctive feature. On the other hand, "Aggravation" is not such a
> good name, for thought it is, indeed, suggestive, the name does not
> distinguish this particular game from several others.
>
> Most terms in mathematics have been well chosen; there are more red names
> than aggravating ones. An example of a good name is *even* permutation, for a
> permutation is even if it is a product of an even number of transpositions.
> Another example of a good term is the *parallelogram law* describing vector
> addition. But many good names, clear when they were chosen, are now obscure
> because their roots are either in another language or in another discipline.
> The trigonometric terms *tangent* and *secant* are good names for those
> knowing some Latin, but they are obscure otherwise.
>
> The term *mathematics* is obscure only because most of us do not know that it
> comes from the classical Greek word meaning "to learn". The term *corollary*
> is doubly obscure; it comes from the Latin word meaning "flower", but why
> should some theorems be called flowers? A plausible explanation is that it
> was common, in ancient Rome, to give flowers as gifts, and so a corollary is
> a gift bequeathed by a theorem. The term *theorem* comes from the Greek word
> meaning "to watch" or "to contemplate" (*theatre* has the same root); it was
> used by Euclid with its present meaning. The term *lemma* comes from the
> Greek word meaning "taken" or "received"; it is a statement that is taken for
> granted (for it has already been proved) in the course of proving a theorem.
> **I believe that etymology of terms is worthwhile (and interesting!), for it
> often aids understanding by removing unnecessary obscurity.**

[douban-abstract-algebra]: https://book.douban.com/subject/2853503/

Etymology of Mathematical Terms

:   大量 etymology 源自此书

    | 英文 | 中文 | 溯源 |
    | :---: | :---: | :---: |
    | Mathematics | 数学 | From Greek, "to learn" |
    | Corollary | ？ | From Latin, "flower", 花当时是一种礼物。类似现在文中常用的 Bonus |
    | Theorem | 定理 | From Greek, "to watch", "to contemplate" |
    | Z, Q, R, C | ? | *Zahl*(*German*) meanning "number"; Rational Numbers; Real Numbers; Complex Numbers. |
    | Lemma | ? | From Greek, "taken", "received", a.k.a. taken for granted |
    | Induction | 归纳法，演绎法 | From Latin, "to lead", came to mean "prevailing to do something" or "influencing" |
    | Factor | ? | From Latin, "to make", or "to contribute" |
    | Binomial | ? | *bi*(*Latin*, "two") + *nomen*(*Latin*, "name", "term"); trinomial, monomial |
    | Polynomial | ? | *poly*(*Greek*, many) + *namen*(*Latin*, "name", "term") |
    | Cyclotomic | ? | From Greek, "circle splitting" |
    | Algorithm | ? | 来自一个印度数学家 Khwarizmi |
    | Googol | ? | 10^100 |
    | Leap Year | ? | 闰年的 2 月比平年的多一天，因为在 Roman calender 里三月一号才是一年的第一天 |
    | Calendar | ? | From Greek, "to call", evolved into the Latin for the first day of a month(when accounts were due) |
    | Signum | ? | From Latin, "mark", or "token", now we use "sign" |
    | Matrix | ? | Derived from the word meaning "mother", means "womb" in Latin. More generally, it means something that contains the essence of a thing. |
    | Translation | ? | From Latin, "to transfer". Language to language, point(of thoughts) to point. |
    | Dihedron | ? | *di*(*Latin*, "two") + *hedron*(*Greek*, "two dimensional side") |
    | Stochastic | ? | From Greek, "to guess" |
    | Homomorphism | ? | *homo*(*Greek*, "same") + *morphism*(*Greek*, "shape" or "form") |
    | Isomorphism | ? | *iso*(*Greek*, "equal") + *morphism*(*Greek*, "shape" or "form") |
    | Kernel | ? | From German, "grain" or "seed". Indicating an important ingredient of a homomorphism |
    | quaternion | ? | ? |
    | Group, , Ring | ? | First used by E. H. Moore in 1893 |
    | Field | ? | *K<o">rper*(*German*), a "realm", a "body" of things, or "collections of things" |
    | Ring | ? | *Corps*(*French*), a "realm", a "body" of things, or "collections of things" |
    | Domain | ? | Abbrev. of *integral domain* of the German word *Integret<a">tsbereich; A collection of things |
    | Quadratic | ? | From Latin, "four". Four-sided figures(Like a square, with area *x^2*). Linear, quadratic, cubic. |
    | Vector | ? | From Latin, "to carry", vectors in euclidean space carry the data of length and direction. |
    | Scalar | ? | From scale, which is from the Latin word meaning "ladder", 因为梯子的横均匀（可以作为度量） |
    | Orthogonal | ? | *ortho*(*Greek*, "right") + *gon*(*Greek*, "angle"); Right angled or perpendicular |
    | Echelon | ? | "Wings"; A matrix in echelon form（矩阵的梯形形式） |
    | Eigenvalue | ? | From *Eigenwert*(*German*). *Wert* means *value*, *Eigen* is *characteristic* or *proper* |
    | Automorphism | ? | *auto*(*Greek*, "self") + *morphism*("shape" or "form"). |
    | Variety | ? | Arose as a translation by E. Beltami(inspired by Gauss) of the German term *Mannigfaltigkeit* used by Riemann; nowdays, this term is usually tranlated as *manifold* |
    | Sine | ? | 参考 [Sine 的故事](url here) |
    | Root | ? | 参考 [Root 的故事](url here) |
    | Tangent | ? | The Latin word *tangere* means "to touch"; a tangent is a line which touches the circle in only one point |
    | Secant | ? | The Latin word *secare* means "to cut"; a secant is a line that cuts a circle |
    | Modulo | ? | From Latin, "measure" |

Refs
:   * The First Course in Abstract Algebra with Applications: url to douban

---

| Letter | Letter Name | Pronunciation |
| :---: | :---: | :---: |
| A a | a | /ˈeɪ/ |
| B b | bee | /ˈbiː/ |
| C c | cee | /ˈsiː/ |
| D d | dee | /ˈdiː/ |
| E e | e | /ˈiː/ |
| F f | ef | /ˈɛf/ |
| G g | gee | /ˈdʒiː/ |
| H h | aitch | /ˈeɪtʃ/ |
| - - | haitch | /ˈheɪtʃ/ |
| - - | hetch | /ˈhetʃ/ |
| I i | i | /ˈaɪ/ |
| J j | jay | /ˈdʒeɪ/ |
| - - | jy | /ˈdʒaɪ/ |
| K k | kay | /ˈkeɪ/ |
| L l | el or ell | /ˈɛl/, /ˈɛɫ/ |
| M m | em | /ˈɛm/ |
| N n | en | /ˈɛn/ |
| O o | o | /ˈəʊ/ |
| P p | pee | /ˈpiː/ |
| Q q | cue | /ˈkjuː/ |
| R r | ar | /ˈɑː/ |
| S s | ess | /ˈɛs/ |
| T t | tee | /ˈtiː/ |
| U u | u | /ˈjuː/ |
| V v | vee | /ˈviː/ |
| W w | double-u | /ˈdʌbəl.juː/ |
| X x | ex | /ˈɛks/ |
| Y y | wy or wye | /ˈwaɪ/ |
| Z z | zed | /ˈzɛd/ |
| - - | zee | /ˈziː/ |
| - - | izzard | /ˈɪzərd/ |

Greek Alphabet

| Letter | Name | In LaTeX | Transliteration | Pronunciation |
| :---: | :---: | :----: | :--------------: | :--------------: |
| A α | [alpha][alpha] | - \alpha | a | [AL-fuh][p-alpha] |
| B β | [beta][beta] | - \beta | b | [BAY-tuh, BEE-tuh][p-beta] |
| Γ γ | [gamma][gamma] | \Gamma \gamma | g | [GAM-uh][p-gamma] |
| Δ δ | [delta][delta] | \Delta \delta | d | [DELL-tuh][p-delta] |
| E ϵ ε | [epsilon][epsilon] | - \epsilon \varepsilon | e | [EP-suh-lon][p-epsilon] |
| F ϝ ϛ | [digamma][digamma] | - \digamma [~~stigma~~][stigma] | f | dee-GAM-uh ? |
| Z ζ | [zeta][zeta] | - \zeta | z | [ZAY-tuh][p-zeta] |
| H η | [eta][eta] | \eta | ē | [AY-tuh][p-eta] |
| Θ θ ϑ | [theta][theta] | \Theta \theta \vartheta | th | [THAY-tuh, THEE-tuh][p-theta] |
| Ι ι | [iota][iota] | - \iota | i | [eye-OH-tuh][p-iota] |
| K κ ϰ | [kappa][kappa] | - \kappa \varkappa | k | [CAY-uh][p-kappa] |
| Λ λ | [lambda][lambda] | \Lambda \lambda | l | [LAM-duh][p-lambda] |
| M μ | [mu][mu] | - \mu | m | [MYOO, MOO][p-mu] |
| N ν | [nu][nu] | - \nu | n | [NOO, NYOO][p-nu] |
| Ξ ξ | [xi][xi] | \Xi \xi | x | [ZIGH, SIGN, KSEE][p-xi] |
| Ο ο | [omicron][omicron] | -  \omicron | o | [AH-mih-cron, OH-mih-cron][p-omicron] |
| Π π ϖ | [pi][pi] | \Pi \pi \varpi | p | [PIE][p-pi] |
| Ρ ρ ϱ | [rho][rho] | - \rho \varrho | r / rh | [ROE][p-rho] |
| Σ σ ς | [sigma][sigma] | \Sigma \sigma \varsigma | s | [SIG-muh][p-sigma] |
| T τ | [tau][tau] | - \tau | t | [TOW, TAW][p-tau] |
| Υ υ | [upsilon][upsilon] | \Upsilon \upsilon | u | [UP-suh-lon, YOOP-suh-lon][p-upsilon] |
| Φ ϕ φ | [phi][phi] | \Phi \phi \varphi | phi | [FIE, FEE][p-phi] |
| Χ χ | [chi][chi] | \chi | ch | [KIGN, KEE][p-chi] |
| Ψ ψ | [psi][psi] | \Psi \psi | ps | [SIGH, PSIGH, PSEE][p-psi] |
| Ω ω | [omega][omega] | \Omega \omega | ō | [oh-MEG-uh, oh-MEE-guh, oh-MAY-guh][p-omega] |

Latin Alphabet, etc

Archaic(古体的) Latin alphabet

**Others**

Aleph: `/ˈɑːlɛf/`

---

> The 18th and 19th centuries saw the creation and
> standardization of mathematical notation as used today.
> Euler was responsible for many of the notations in use today:
> the use of a, b, c for constants and x, y, z for unknowns,
> e for the base of the natural logarithm, sigma (Σ) for summation,
> i for the imaginary unit, and the functional notation f(x).
> He also popularized the use of π for Archimedes constant
> (due to William Jones' proposal for the use of π in this way
> based on the earlier notation of William Oughtred).
>
> Many fields of mathematics bear the imprint of their creators for notation:
> the differential operator is due to Leibniz,
> the cardinal infinities to Georg Cantor (in addition to the lemniscate (∞) of John Wallis),
> the congruence symbol (≡) to Gauss, and so forth.

看的英文数学书越多，越发感觉英文教材的“好处”，符号都是不言自明，不用特别的提示就能明白要表达的意思。
先上一份整理自 Wikipedia 的“说明书”。

Αα (alpha)

:   α represents:

      - the first angle in a triangle, opposite the side A
      - one root of a quadratic equation, where β represents the other
      - the ratio of collector current to emitter current in a bipolar junction
        transistor (BJT) in electronics
      - the statistical significance of a result
      - the false positive rate in statistics ("Type I" error)
      - the reciprocal of the sacrifice ratio
      - the fine structure constant in physics
      - the angle of attack of an aircraft
      - an alpha particle (He2+)
      - angular acceleration in physics
      - the linear thermal expansion coefficient
      - the thermal diffusivity
      - the alpha carbon is the first carbon after the carbon that attaches to
        a functional group in organic chemistry
      - the α-carbon is the backbone carbon next to the carbonyl carbon in
        amino acids
      - right ascension in astrometry
      - The brightest star in a constellation.
      - Iron Ferrite and numerous phases within materials science.
      - the return in excess of the compensation for the risk borne in
        investment
      - the α-conversion in lambda calculus

Ββ (beta)

:   Β represents the beta function

    β represents:

      - the thermodynamic beta, equal to (kBT)−1, where kB is Boltzmann's
        constant and T is the absolute temperature.
      - the second angle in a triangle, opposite the side B
      - one root of a quadratic equation, where α represents the other
      - the ratio of collector current to base current in a bipolar junction
        transistor (BJT) in electronics (current gain)
      - the false negative rate in statistics ("Type II" error)
      - the beta coefficient, the non-diversifiable risk, of an asset in
        mathematical finance
      - the sideslip angle of an airplane
      - the first-order effects of variations in Coriolis force with latitude
        in planetary dynamics
      - a beta particle (e-)
      - sound intensity
      - velocity divided by the speed of light in special relativity
      - the beta brain wave in brain or cognitive sciences
      - ecliptic latitude in astrometry
      - The ratio of plasma pressure to magnetic pressure in plasma physics
      - β-reduction in lambda calculus

Γγ (gamma)

:   Γ represents:

      - the reflection coefficient of a transmission or telecommunication line.
      - the confinement factor of an optical mode in a waveguide
      - the gamma function, a generalization of the factorial
      - the upper incomplete gamma function
      - the modular group, the group of fractional linear transformations
      - the gamma distribution, a continuous probability distribution defined
        using the gamma function
      - second-order sensitivity to price in mathematical finance
      - the Christoffel symbols of the second kind
      - the neighbourhood of a vertex in a graph
      - the stack alphabet in the formal definition of a pushdown automaton

    γ represents:

      - the partial safety factors applied to loads and materials in structural
        engineering
      - the specific weight of substances
      - the lower incomplete gamma function
      - the third angle in a triangle, opposite the side C
      - the Euler–Mascheroni constant in mathematics
      - gamma rays and the photon
      - the heat capacity ratio in thermodynamics
      - the Lorentz factor in special relativity
      - the damping constant (kg/s)

Δδ (delta)

:   Δ represents:

      - a finite difference
      - a difference operator
      - a symmetric difference
      - the Laplace operator
      - the angle that subtends the arc of a circular curve in surveying
      - the determinant of an inverse matrix[1]
      - the maximum degree of any vertex in a given graph
      - the difference or change in a given variable, e.g. ∆v means a
        difference or change in velocity
      - sensitivity to price in mathematical finance
      - distance to Earth, measured in astronomical units
      - heat in a chemical formula
      - the discriminant in the quadratic formula which determines the nature
        of the roots
      - the degrees of freedom in a non-pooled statistical hypothesis test of
        two population means

    δ represents:

      - percent error
      - a variation in the calculus of variations
      - the Kronecker delta function
      - the Feigenbaum constant
      - the force of interest in mathematical finance
      - the Dirac delta function
      - the receptor which enkephalins have the highest affinity for in
        pharmacology [2]
      - the Skorokhod integral in Malliavin calculus, a subfield of stochastic
        analysis
      - the minimum degree of any vertex in a given graph
      - a partial charge. δ− represents a negative partial charge, and δ+
        represents a positive partial charge chemistry (See also: Solvation)
      - the Chemical shift of an atomic nucleus
      - declination in astrometry
      - the Turner function in computational material science
      - depreciation in macroeconomics
      - noncentrality measure in statistics[3]

Εε (epsilon)

:   ε represents:

      - a small positive quantity; see limit
      - a random error in regression analysis
      - the absolute value of an error [4]
      - in set theory, the limit ordinal of the sequence
        \omega,\omega^{\omega},\omega^{\omega^{\omega}},\dots
      - in computer science, the empty string
      - the Levi-Civita symbol
      - in electromagnetics, dielectric permittivity
      - emissivity
      - strain in continuum mechanics
      - permittivity
      - the Earth's axial tilt in astrometry
      - elasticity in economics
      - expected value in probability theory and statistics
      - electromotive force
      - in chemistry, the molar extinction coefficient of a chromophore.
      - set membership symbol ∈ is based on ε

Ϝϝ (digamma)

:   Ϝ is sometimes used to represent the digamma function, though the Latin
letter F (which is nearly identical) is usually substituted.

Ζζ (zeta)

:   ζ represents:

      - the Riemann zeta function and other zeta functions in mathematics
      - the coefficient of viscous friction in polymer dynamics
      - the damping ratio
      - relative vertical vorticity in fluid dynamics

Ηη (eta)

:   Η represents:

      - the Eta function of Ludwig Boltzmann's H-theorem ("Eta" theorem), in
        statistical mechanics

    η represents:

      - the intrinsic impedance of medium (usually free space)
      - the partial regression coefficient in statistics
      - elasticities in economics
      - the absolute vertical vorticity (relative vertical vorticity + Coriolis
        effect) in fluid dynamics
      - an index of refraction
      - a type of meson
      - viscosity
      - efficiency (statistics)
      - efficiency (physics and engineering)
      - the Minkowski metric tensor in relativity
      - noise in communication system models

Θθ (theta)

:   Θ represents:

      - an asymptotically tight bound related to big O notation.
      - sensitivity to the passage of time in mathematical finance
      - Θ (set theory), a certain ordinal number

    θ represents:

      - a plane angle in geometry
      - the angle to the x axis in the xy-plane in spherical or cylindrical
        coordinates (mathematics)
      - the angle to the z axis in spherical coordinates (physics)
      - potential temperature in thermodynamics
      - the mean time between failure in reliability engineering
      - soil water contents in soil science
      - Debye temperature
      - In mathematical statistics, represents an unknown parameter
      - theta functions
      - sometimes also ϑ ("script theta"), cursive form of theta, often used in
        handwriting
      - the first Chebyshev function in number theory

Ιι (iota)

:   ι represents:

      - the index generator function in APL (in the form ⍳)
      - the orbital inclination with respect to the line of sight, used when
        describing gravitational wave sources.

Κκ (kappa)

:   Κ represents:

      - the Kappa number
      - κ represents:
      - the Von Kármán constant
      - the kappa curve
      - the condition number of a matrix in numerical analysis
      - the connectivity of a graph in graph theory
      - curvature
      - dielectric constant (\varepsilon / \varepsilon_0)
      - thermal conductivity (usually a lowercase Latin k)
      - thermal diffusivity
      - a spring constant (usually a lowercase Latin k)
      - the heat capacity ratio in thermodynamics (usually γ)
      - the receptor which dynorphins have the highest affinity for in
        pharmacology[2]

Λ λ (lambda)

:   Λ represents:

      - the von Mangoldt function in number theory
      - the set of logical axioms in the axiomatic method of logical deduction
        in first-order logic
      - the cosmological constant
      - a type of baryon
      - a diagonal matrix of eigenvalues in linear algebra
      - the permeance of a material in electromagnetism

    λ represents:

      - one wavelength of electromagnetic radiation
      - the decay constant in radioactivity
      - function expressions in the lambda calculus
      - a general eigenvalue in linear algebra
      - the expected number of occurrences in a Poisson distribution in
        probability
      - the arrival rate in queueing theory
      - the average lifetime or rate parameter in an exponential distribution
        (commonly used across statistics, physics, and engineering)
      - the failure rate in reliability engineering
      - the mean or average value (probability and statistics)
      - the latent heat of fusion
      - the lagrange multiplier in the mathematical optimization method, known
        as the shadow price in economics
      - the Lebesgue measure denotes the volume or measure of a Lebesgue
        measurable set
      - longitude in geodesy
      - linear density
      - ecliptic longitude in astrometry
      - the Liouville function in number theory
      - the Carmichael function in number theory
      - a unit of measure of volume equal to one microlitre (1 μL) or one cubic
        millimetre (1 mm³)
      - the empty string in formal grammar

Μμ (mu)

:   μ represents:

      - the Möbius function in number theory
      - the ring representation of a representation module
      - the population mean or expected value in probability and statistics
      - a measure in measure theory
      - micro-, an SI prefix denoting 10−6 (one millionth)
      - the coefficient of friction in physics
      - the service rate in queueing theory
      - the dynamic viscosity in physics
      - magnetic permeability in electromagnetics
      - a muon
      - reduced mass
      - chemical potential in condensed matter physics
      - the ion mobility in plasma physics

Νν (nu)

:   ν represents:

      - frequency in physics in hertz (Hz)
      - Degrees of freedom in statistics
      - Poisson's ratio in material science
      - a neutrino
      - kinematic viscosity of liquids
      - stoichiometric coefficient in chemistry
      - dimension of nullspace in mathematics

Ξ ξ (xi)

:   Ξ represents:

      - the original Riemann Xi function, i.e. Riemann's lower case ξ, as
        denoted by Edmund Landau and currently
      - the grand canonical ensemble found in statistical mechanics
      - a type of baryon
      - ξ represents:
      - the original Riemann Xi function
      - the modified definition of Riemann xi function, as denoted by Edmund
        Landau and currently
      - a random variable
      - the extent of a chemical reaction
      - coherence length
      - the damping ratio
      - universal set
      - Οο (omicron)[edit]

    Ο represents:

      - big O notation (may be represented by an uppercase Latin O)
      - o represents:
      - small o notation (may be represented by a lowercase Latin o)

Π π (pi)

:   Π represents:

      - the product operator in mathematics
      - a plane
      - osmotic pressure
      - π represents:
      - Archimedes' constant, the ratio of a circle's circumference to its
        diameter
      - the prime-counting function
      - profit in microeconomics and game theory
      - inflation in macroeconomics, expressed as a constant with respect to
        time
      - the state distribution of a Markov chain
      - a type of covalent bond in chemistry (pi bond)
      - a pion (pi meson) in particle physics
      - in statistics, the population proportion of success
      - in electronics, a special type of small signal model is referred to as
        a hybrid-pi model
      - in relational algebra for databases, represents project

    ϖ (a graphic variant, see pomega) represents:

      - angular frequency of a wave, in fluid dynamics (angular frequency is
        usually represented by \omega but this may be confused with vorticity
        in a fluid dynamics context)
      - longitude of pericenter, in celestial mechanics[5]
      - comoving distance, in cosmology[6]

Ρρ (rho)

:   Ρ represents:

      - one of the Gegenbauer functions in analytic number theory.

    ρ represents:

      - one of the Gegenbauer functions in analytic number theory.
      - the Dickman-de Bruijn function
      - the radius in a polar, cylindrical, or spherical coordinate system
      - the correlation coefficient in statistics
      - the sensitivity to interest rate in mathematical finance
      - density (mass or charge per unit volume)
      - resistivity
      - the shape and reshape operators in APL (in the form ⍴)
      - the utilization in queueing theory
      - the rank of a matrix

Σσ (sigma)

:   Σ represents:

      - the summation operator
      - the covariance matrix
      - the set of terminal symbols in a formal grammar

    σ represents:

      - Stefan–Boltzmann constant in blackbody radiation
      - the divisor function in number theory
      - the real part of the complex variable s = σ + i t in analytic number
        theory
      - the sign of a permutation in the theory of finite groups
      - the population standard deviation, a measure of spread in probability
        and statistics
      - a type of covalent bond in chemistry (sigma bond)
      - the selection operator in relational algebra
      - stress in mechanics
      - electrical conductivity
      - area density
      - nuclear cross section
      - uncertainty
      - utilization in operations management
      - surface charge density for microparticles

Ττ (tau)

:   τ (lower-case) represents:

      - an interval of time
      - a mean lifetime
      - torque, the rotational force in mechanics
      - the elementary tau lepton in particle physics
      - the lifetime of a spontaneous emission process
      - the time constant of any device, such as an RC circuit
      - proper time in relativity
      - Kendall tau rank correlation coefficient, a measure of rank correlation
        in statistics
      - the golden ratio 1.618... (although φ (phi) is more common)
      - Ramanujan's tau function in number theory
      - in astronomy, a measure of opacity, or how much sunlight cannot
        penetrate the atmosphere
      - the intertwining operator in representation theory
      - the tau in biochemistry, a protein associated to microtubules
      - Shear stress in continuum mechanics
      - the number of divisors of highly composite numbers (sequence A000005 in
        OEIS)
      - the prefix of many stars, via the Bayer stellar designation system
      - an internal system step in transition systems
      - a type variable in type theories, such as the simply typed lambda
        calculus
      - path tortuosity in reservoir engineering
      - in Topology, a given topology
      - a proposed name [7] for the mathematical constant of the ratio of a
        circle's circumference to its radius, with value 2π (6.283...).

Υυ (upsilon)

:   Υ represents:

      - an elementary particle
      - υ represents:
      - frequency in physics textbooks

Φφ (phi)

:   Φ represents:

      - the work function in physics; the energy required by a photon to remove
        an electron from the surface of a metal
      - magnetic flux
      - the cumulative distribution function of the normal distribution in
        statistics
      - phenyl functional group
      - the reciprocal of the golden ratio (represented by φ, below), also
        represented as 1/φ
      - the value of the integration of information in a system (based on
        Integrated Information Theory)
      - note: a symbol for the empty set, \varnothing, resembles Φ but is not Φ

    φ represents:

      - the golden ratio 1.618... in mathematics, art, and architecture
      - Euler's totient function in number theory
      - a holomorphic map on an analytic space
      - the argument of a complex number in mathematics
      - the value of a plane angle in physics and mathematics
      - the angle to the z axis in spherical coordinates (mathematics)
      - the angle to the x axis in the xy-plane in spherical or cylindrical
        coordinates (physics)
      - latitude in geodesy
      - a scalar field
      - radiant flux
      - electric potential
      - the probability density function of the normal distribution in
        statistics
      - a feature of a syntactic node giving that node characteristics such as
        gender, number and person in syntax
      - the diameter of a vessel (engineering)

Χχ (chi)

:   χ represents:

      - the chi distribution in statistics (χ^2 is the more frequently
        encountered chi-squared distribution)
      - the chromatic number of a graph in graph theory
      - the Euler characteristic in algebraic topology
      - electronegativity in the periodic table
      - the Rabi frequency
      - the spinor of a fundamental particle
      - the Fourier transform of a linear response function
      - a character in mathematics; especially a Dirichlet character in number
        theory
      - the Sigma vectors in the unscented transform used in the unscented
        Kalman filter
      - sometimes the mole fraction
      - a characteristic or indicator function in mathematics

Ψψ (psi)

:   Ψ represents:

      - water potential
      - a quaternary combinator in combinatory logic

    ψ represents:

      - the wave function in the Schrödinger equation of quantum mechanics
      - the stream function in fluid dynamics
      - yaw angle in vehicle dynamics
      - the angle between the x-axis and the tangent to the curve in the
        intrinsic coordinates system
      - the reciprocal Fibonacci constant
      - the second Chebyshev function in number theory
      - the polygamma function in mathematics

Ω ω (omega)

:   Ω represents:

      - the Omega constant
      - an asymptotic lower bound related to big O notation
      - in probability theory and statistical mechanics, the set of possible
        distinct system states
      - the SI unit measure of electrical resistance, the ohm
      - the rotation rate of an object, particularly a planet, in dynamics
      - a solid angle
      - a baryon
      - the arithmetic function counting a number's prime factors
      - the right ascension of the ascending node in celestial mechanics
      - the density parameter in cosmology

    ω represents:

      - the first infinite ordinal
      - the differentiability class (i.e. C^\omega) for functions that are
        infinitely differentiable because they are complex analytic
      - the set of natural numbers in set theory (although \mathbb{N} or N is
        more common in other areas of mathematics)
      - an asymptotically dominant quantity related to big O notation
      - in probability theory, a possible outcome of an experiment
      - angular velocity / radian frequency
      - a complex cube root of unity — the other is ω² — (used to describe
        various ways of calculating the discrete Fourier transform)
      - vertical velocity in pressure-based coordinate systems (commonly used
        in atmospheric dynamics)
      - a meson
      - the arithmetic function counting a number's distinct prime factors
      - a differential form (esp. on an analytic space)
      - the argument of periapsis in celestial mechanics
      - the symbol ϖ, a graphic variant of π, is sometimes construed as omega
        with a bar over it; see π

Refs & See also

:   * <https://en.wikipedia.org/wiki/Greek_alphabet>
    * <https://en.wikipedia.org/wiki/Latin_alphabet>
    * <http://www.greekgrammar.org>
    * <http://www.skyandtelescope.com/astronomy-resources/stargazing-basics/the-greek-alphabet/>
    * <https://en.wikipedia.org/wiki/Greek_letters_used_in_mathematics,_science,_and_engineering>
    * <https://en.wikipedia.org/wiki/Mathematical_notation>
    * <https://en.wikipedia.org/wiki/Notation_in_probability_and_statistics>
    * <https://en.wikipedia.org/wiki/Latin_letters_used_in_mathematics>
    * <https://en.wikipedia.org/wiki/List_of_logic_symbols>

[alpha]: http://en.wikipedia.org/wiki/Alpha
[beta]: http://en.wikipedia.org/wiki/Beta
[gamma]: http://en.wikipedia.org/wiki/Gamma
[delta]: http://en.wikipedia.org/wiki/Delta_(letter)
[epsilon]: http://en.wikipedia.org/wiki/Epsilon
[digamma]: http://en.wikipedia.org/wiki/Digamma
[zeta]: http://en.wikipedia.org/wiki/Zeta
[eta]: http://en.wikipedia.org/wiki/Eta
[theta]: http://en.wikipedia.org/wiki/Theta
[iota]: http://en.wikipedia.org/wiki/Iota
[kappa]: http://en.wikipedia.org/wiki/Kappa
[lambda]: http://en.wikipedia.org/wiki/Lambda
[mu]: http://en.wikipedia.org/wiki/Mu_(letter)
[nu]: http://en.wikipedia.org/wiki/Nu_(letter)
[xi]: http://en.wikipedia.org/wiki/Xi_(letter)
[omicron]: http://en.wikipedia.org/wiki/Omicron
[pi]: http://en.wikipedia.org/wiki/Pi_(letter)
[rho]: http://en.wikipedia.org/wiki/Rho
[sigma]: http://en.wikipedia.org/wiki/Sigma
[tau]: http://en.wikipedia.org/wiki/Tau
[upsilon]: http://en.wikipedia.org/wiki/Upsilon
[phi]: http://en.wikipedia.org/wiki/Phi
[chi]: http://en.wikipedia.org/wiki/Chi_(letter)
[psi]: http://en.wikipedia.org/wiki/Psi_(letter)
[omega]: http://en.wikipedia.org/wiki/Omega
[stigma]: http://en.wikipedia.org/wiki/Stigma_(letter)
[p-alpha]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_alpha.mp3
[p-beta]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_beta.mp3
[p-gamma]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_gamma.mp3
[p-delta]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_delta.mp3
[p-epsilon]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_epsilon.mp3
[p-zeta]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_zeta.mp3
[p-eta]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_eta.mp3
[p-theta]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_theta.mp3
[p-iota]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_iota.mp3
[p-kappa]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_kappa.mp3
[p-lambda]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_lambda.mp3
[p-mu]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_mu.mp3
[p-nu]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_nu.mp3
[p-xi]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_xi.mp3
[p-omicron]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_omicron.mp3
[p-pi]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_pi.mp3
[p-rho]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_rho.mp3
[p-sigma]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_sigma.mp3
[p-tau]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_tau.mp3
[p-upsilon]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_upsilon.mp3
[p-phi]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_phi.mp3
[p-chi]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_chi.mp3
[p-psi]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_psi.mp3
[p-omega]: http://gnat.qiniudn.com/%40%2Faudio%2Fgreek-alphabet%2Fgreek_omega.mp3
[Aleph]: http://en.wikipedia.org/wiki/Aleph

---

* 政无安，九月常常杀一万
* [Euler's Formula](https://en.wikipedia.org/wiki/Euler_characteristic#Planar_graphs): `#Loop - #Edge + #Node = 0`

矩阵的 Rank 是其基底（Group）的不变量，决定了
能存储的信息量。如果 Rank = 0，意思是不能存储信息。
如果因为 Rank = 0，而导致信息丢失，那就是 Unknown unknown。

Det 则是线性变换中 Simplex 对应的 Signed Volume，在变幻中其实是一个置换群。
Det 是 Grand Metric 下的不变量。
如果 Det 不为 0，信息可以完全恢复。但是如果 Det = 0，信息将（可能）会丢失，
多次变换后可能信息将消灭。

向量则是在 Base 下的衡量。如果向量为 0，即 “我知道我不知道”。

群，是 Metric 的基础。

---

[4ker/SharedPainter](https://github.com/4ker/SharedPainter)

:   Goods

    #. CSS 专门放到一个文件里
    #. namespace & class static functions
    #. `QFontComboBox`
    #. try... catch...
    #. `const_cast` & meta programming
    #. `QFrame` (Container Widget), `QTextEditor`
    #. UI 组件化
    #. pure virtual class
    #. `hover{Enter, leave}Event`

    Bads

    #. too much license
    #. not work on my computer
    #. code is messy
    #. violate 80 char rule

    Snippets

    ```cpp
    clr_ = QColorDialog::getColor( clr_, this, tr("Pen Color"));

    if( !clr_.isValid() )
        return;

    class CS
    {
    #if defined(WIN32)
    private:
        CRITICAL_SECTION m_lock;
    public:
        CS() { ::InitializeCriticalSectionAndSpinCount( &m_lock, 4000 ); }
        ~CS() { ::DeleteCriticalSection( &m_lock ); }
        void Lock() { ::EnterCriticalSection( &m_lock ); }
        void Unlock() { ::LeaveCriticalSection( &m_lock ); }
        ...
    };

    struct SPaintData
    {
        double posX;
        double posY;
        double scale;
        bool posSetFlag;
        int itemId;
        std::string owner;
    };

    void hoverEnterEvent( QGraphicsSceneHoverEvent * event )
    {
        if( scene_->isFreePenMode() )
            return;

        scene_->setCursor( Qt::OpenHandCursor );
    }


    drawingItem->setFlags( QGraphicsItem::ItemIsMovable
                         | QGraphicsItem::ItemIsFocusable
                         | QGraphicsItem::ItemIsSelectable
                         | QGraphicsItem::ItemSendsGeometryChanges );
    addItem( drawingItem );

    QString tooltip = eventTarget_->onICanvasViewEvent_GetToolTipText( this, item );
    if( tooltip.isEmpty() == false )
        drawingItem->setToolTip( tooltip );

    QAbstractGraphicsShapeItem* i =
        reinterpret_cast<QAbstractGraphicsShapeItem *>(lastAddItem_->drawingObject());
    if( ! i )
        return;

    // setting style..
    QPainterPath path = createCoveringBorderPath( lastItemBorderType_, i );
    if ( path.isEmpty() )
        return;

    clearLastItemBorderRect();

    QAbstractGraphicsShapeItem* lastBorderItem = addPath( path );
    lastBorderItem->setPen(
            QPen( Util::getComplementaryColor(backgroundColor_, penColor() ), 2) );
    lastBorderItem->setZValue( currentZValue() );
    lastCoverGraphicsItem_ = lastBorderItem;

    void CSharedPainterScene::clearBackgroundImage( void )
    {
        backgroundImageItem_ = boost::shared_ptr<CBackgroundImageItem>();
        backgroundPixmap_ = QPixmap();
        resetBackground( sceneRect() );
    }
    ```
---

* [Blaise Pascal](http://en.wikipedia.org/wiki/Blaise_Pascal)

* [Augustin-Louis Cauchy](http://en.wikipedia.org/wiki/Augustin-Louis_Cauchy)

* [Bernhard Riemann](http://en.wikipedia.org/wiki/Bernhard_Riemann)
![riemann-portrait]

[riemann-portrait]: http://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Georg_Friedrich_Bernhard_Riemann.jpeg/225px-Georg_Friedrich_Bernhard_Riemann.jpeg


* [Archidemes of Syracuse](http://en.wikipedia.org/wiki/Archimedes)
![archidemes-portrait]

[archidemes-portrait]: http://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Domenico-Fetti_Archimedes_1620.jpg/220px-Domenico-Fetti_Archimedes_1620.jpg

---

**`\mathbb`** `\mathbb` use font [blackboard bold](https://en.wikipedia.org/wiki/Blackboard_bold)

**`\mathfrak`**

`\mathfrak` use font [fraktur](https://en.wikipedia.org/wiki/Fraktur) Here is the entire alphabet of English in Fraktur, using the \mathfrak font of the mathematical typesetting package TeX:

**`\mathcal`** calligraphy font， Script typefaces

LaTeX has defined two commands that can be used anywhere in documents (not just maths) to insert some horizontal space. They are \quad and \qquad

A \quad is a space equal to the current font size. So, if you are using an 11pt font, then the space provided by \quad will also be 11pt (horizontally, of course.) The \qquad gives twice that amount. As you can see from the code from the above example, \quads were used to add some separation between the maths and the text.

**`\tt`** typewriter text

* https://en.wikipedia.org/wiki/Calligraphy
* http://www.urbanfonts.com/fonts/calligraphy-fonts.htm
* https://en.wikipedia.org/wiki/Blackletter
* https://en.wikipedia.org/wiki/Calligraphy
* https://en.wikipedia.org/wiki/Typeface
* https://en.wikipedia.org/wiki/Emphasis_(typography)
* http://www.math.uiuc.edu/~hildebr/tex/packages.html
* https://en.wikipedia.org/wiki/Fraktur
* https://en.wikipedia.org/wiki/Blackboard_bold
* https://en.wikibooks.org/wiki/LaTeX/Mathematics

---

数学是一个高手必备技能。

数学学习使用英文能少走弯路。

举例：

- σ(X), the Standard Deviation of the Random Variable X. (`S`igma, `S`tandard)
- π(R), Projection from R to π(R), π(`p`i) for `p`rojection)
- k, constant. (konstant)

感悟：

- 结论很有意思，证明过程更有意思。记住结论往往不能记忆深刻，了解了证明的过程，记住一两个要点，就能把整条线拎清楚。

---

The progress of abstraction

:   1. Everything is an object.
    2. A program is a bunch of objects telling each other what to do by sending
       messages.
    3. Each object has its own memory made up of other objects.
    4. Every object has a type.
    5. All objects of a particular type can receive the same messages.

* An object has state, behavior and identity.
* An object has an interface
* An object provides services
* The hidden implementation (private, protected, public)
* Reusing the implementation

`Is-a` vs. `is-like-a` relationships

* Interchangeable objects with polymorphism
* upcasting
* The singly rooted hierarchy
* Containers
* Object creation & lifetime
* Exception handling: dealing with errors
* Concurrent programming
* Java and the Internet

You know what a procedural program looks like: data definitions and function
calls. To find the meaning of such a program, you must work at it, looking
through the function calls and low-level concepts to create a model in your
mind. This is the reason we need intermediate representations when designing
procedural programs—by themselves, these programs tend to be confusing because
the terms of expression are oriented more toward the computer than to the
problem you’re solving.

* Where storage lives
    * The Stack.
    * The Heap.
    * Constant storage.
    * Non-RAM storage.
* High-precision numbers
    * BigInteger, BigDecimal

An important use of static for methods is to allow you to call that method
without creating an object. This is essential, as you will see, in defining the
`main()` method that is the entry point for running an application.

JavaDoc, Embedded HTML, @see, @version, @author, @since, @param, @return

This phenomenon is often called `aliasing(t1 = t2)`, and it's a fundamental way
that Java works with objects. But what if you don't want aliasing to occur in
this case? You could forego the assignment and say: `t1.level = t2.level`

A trailing character after a literal value establishes its type. Uppercase or
lowercase L means long (however, using a lowercase l is confusing because it
can look like the number one). Uppercase or lowercase `F` means float. Uppercase
or lowercase `D` means double.

`Integer.toBinaryString(b)`{.java}

```java
int i = 23;
long l = (long)i; // "Widening," so cast not really required, long l = i;
int i2 = (int)l; // A "narrowing conversion"
```

java.lang.Math

A compendium `[kəm'pɛndɪəm]` 概略 of operators

```java
Character.isLowerCase(c)
return, break, continue, break, switch,
Random.nextInt(23),
Random.nextDouble(23.45)
```

```java
public class Leaf {
    int i = 0;
    Leaf increment() {
        i++;
        return this;
    }
    void print() {
        System.out.println("i = " + i);
    }
    public static void main(String[] args) {
        Leaf x = new Leaf();
        x.increment().increment().increment().print();
    }
}
```

`new`, `finalize()`,

1. Your objects might not get garbage collected.
2. Garbage collection is not destruction.
3. Garbage collection is only about memory.

`super.finalize()`
`System.gc() /* gabage collection */`

---

本章介绍了使用 NodeJS 操作文件时需要的 API 以及一些技巧，总结起来有以下几点：

  * 学好文件操作，编写各种程序都不怕。
  * 如果不是很在意性能，fs模块的同步API能让生活更加美好。
  * 需要对文件读写做到字节级别的精细控制时，请使用fs模块的文件底层操作API。
  * 不要使用拼接字符串的方式来处理路径，使用path模块。
  * 掌握好目录遍历和文件编码处理技巧，很实用。

---

```bash
cat >>.rspec-test <<EOF
--no-color
--format-doc
--no-profile
EOF
```

```bash
git reset --hard HEAD^
git reset --hard e8b4121
git reflog
```

* 场景1：当你改乱了工作区某个文件的内容，想直接丢弃工作区的修改时，用命令 `git checkout -- file`{.bash}
* 场景2：当你不但改乱了工作区某个文件的内容，还添加到了暂存区时，想丢弃修改，分
  两步，第一步用命令 `git reset HEAD file`{.bash}，就回到了场景1，第二步按场景 1 操作。

```bash
git remote add origin git@server-name:path/repo-name.git
git checkout -b dev
git branch dev && git checkout dev
git checkout master && git merge dev
```

* 查看分支：`git branch`{.bash}
* 创建分支：`git branch <name>`{.bash}
* 切换分支：`git checkout <name>`{.bash}
* 创建+切换分支：`git checkout -b <name>`{.bash}
* 合并某分支到当前分支：`git merge <name>`{.bash}
* 删除分支：`git branch -d <name>`{.bash}

```bash
$ git status
On branch master
You have unmerged paths.
  (fix conflicts and run "git commit")

Unmerged paths:
  (use "git add <file>..." to mark resolution)

both modified:      good.txt

no changes added to commit (use "git add" and/or "git commit -a")
```

![](http://www.liaoxuefeng.com/files/attachments/001384909239390d355eb07d9d64305b6322aaf4edac1e3000/0)

```bash
git stash
git stash,
git stash apply,
git stash pop
```

```bash
git remote
git branch --set-upstream branch-name origin/branch-name
git tag <tag-name>
git show tag
git tag -a <tag-name> -m <commit-msg> <commit-id>
git tag -s <secret-tag-name> -m <commit-msg> <commit-id>
git tag -d <tag-name>
git push origin <tag-name> # push local tag to remote origin
git push origin --tags
```

delete romete tag
:   `git push origin :refs/tags/<tag-name>`{.bash}

```bash
git config --global alias.st status
git config --global alias.last "log -1"
cat ~/.gitconfig
cat .git/config
[core]
repositoryformatversion = 0
filemode = true
bare = false
logallrefupdates = true
[remote "origin"]
url = git@gitcafe.com:gnat/learngit.git
fetch = +refs/heads/*:refs/remotes/origin/*
```

* `/etc/gitconfig` 文件：系统中对所有用户都普遍适用的配置。若使用 `git config`{.bash} 时用 `--system` 选项，读写的就是这个文件。
* `~/.gitconfig` 文件：用户目录下的配置文件只适用于该用户。若使用 `git config`{.bash} 时用 `--global` 选项，读写的就是这个文件。
* `git config --global core.editor emacs`{.bash}
* `git config --global merge.tool vimdiff`{.bash}

```bash
:smile: :smiley: :relaxed: :relieved: :smirk: :flushed: :worried: :worried: :sweat_smile:
:pensive: :frowning: :disappointed: :cry: :joy: :scream: :sleepy: :yum: :mask:
:dizzy_face: :neutral_face: :heart: :+1: :-1: :pill:
```

```python
name = raw_input()
print "your name is ", name
ord('A') # char -> integer ordinal
chr(65)  # integer ordinal -> char
u'中文'
u'中文转换'.encode('utf-8').decode('utf-8')
len(u'abc')
```

A quine `/kwi:n/` is a non-empty computer program which takes no input and produces a
copy of its own source code as its only output. The standard terms for these
programs in the computability theory and computer science literature are
"**self-replicating programs**", "self-reproducing programs", and "self-copying
programs".


```bash
awk BEGIN{c=BEGIN{c=%c%s%c;printf(c,34,c,34);}
awk BEGIN{c="BEGIN{c=%c%s%c;printf(c,34,c,34);}";printf(c,34,c,34);}
```

How many Computer Languages are there?

```plain
late 1940s
    first electronic computers & LLLs
1950s
    first HLLs for computers
1969
    about 120 HLLs, about 15 in widespread use
1977
    about 80 HLLs in active (non-trivial) use
Today
    more than 2000 HLLs
```

Scripting Paradigm

So far, we have been thinking about languages suitable for solving very large
problems, where the resulting programs are tens of thousands or more lines
long, written and maintained by more than one person. However, not all problems
require industrial-strength solutions, and different requirements have given
rise to different kinds of languages. The situations where they are applicable
are:

building applications by *gluing together existing components* controlling
applications that have a programmable interface writing programs where ease of
development is more important than anything else (such as run-time efficiency,
or maintainability)

---

Google Search

* inurl:text
* intitle:text allintitle:text
* filetype:pdf
* site:pan.baidu.com
* weather:wuhan
* see more and...

---

* CGI（公共网关接口，Common Gateway Interface） — 在 Web 服务器上，用来在脚本和
  ／或应用程序之间传输数据，然后将该数据返回给 Web 页面或浏览器。CGI 脚本经常是
  使用 Perl 语言创建的，它能够生成动态 Web 内容（包括电子商业购物篮、讨论组、调
  查表单以及实时新闻等）。
* CHS（柱面／磁头／扇区，Cylinder/Head/Sector） — FDISK 在分区期间所需的磁盘信息。
* CLU（命令行实用程序，Command Line Utility） — 从命令行会话或 shell 运行的程序
  ，如 Tar 或 Mkdir。
* LILO（Linux 装载程序，LInux LOader） — 一种流行的分区引导管理器实用程序，能够
  引导到 Linux 以外的操作系统。它并不特定于文件系统。
* MIME（多用途因特网邮件交换，Multipurpose Internet Mail Exchange） — 允许文本
  电子邮件消息包含非文本（例如图形、视频或音频）数据的通信协议。
* PAM（可插入的认证模块，Pluggable Authentication Modules） — 用于系统安全性的
  可替换的用户认证模块，它允许在不知道将使用何种认证方案的情况下进行编程。这允
  许将来用其它模块来替换某个模块，却无需重写软件。
* RCS（修订控制系统，Revision Control System） — 一组程序，它们控制组环境下文件
  的共享访问并跟踪文本文件的变化。常用于维护源代码模块的编码工作。
* RFS（远程文件共享，Remote File Sharing） — 一个程序，它让用户访问其它计算机上
  的文件，就好象文件在用户的系统上一样。
* RPM（RPM 软件包管理器，RPM Package Manager） — 一种用于因特网下载包的打包及安
  装工具，它包含在某些 Linux 分发版中。它生成具有 .RPM 扩展名的文件。与 Dpkg 类似。
* `ag --pager less <qry> [<filename>]`{.bash}
* 假脱机（Spool）（外围设备联机并发操作，Simultaneous Peripheral Operation
  On-Line） — 将数据发送给一个程序，该程序将该数据信息放入队列以备将来使用（例
  如，打印假脱机程序）。
* 隐写术（Steganography）— 将一段信息隐藏在另一段信息中的做法。一个示例是在数字
  化照片中放置不可见的数字水印。
* Tux— 虚构的 Linux 企鹅吉祥物的名字。
* 工作目录（Working Directory）— 当前目录或用户当前工作时所在的目录的另一名称。

* `"kyy` *vs.* `"Kyy`
* `"kp` === `"Kp`
* `:reg`

> Yank the text you want to copy with `y[motion]` - this text is saved in `"`
> and `0` registers. Delete the text you want to replace with `d[motion]` - this
> text is saved in `"` register. Paste the yanked text with `"0p`

We can now just type `@m` to run this macro on the current line. Furthermore,
we can type `100@m` to do this 100 times! Lifes looking pretty good.

`:%normal @a` apply to this region.

* `J` 合并行，并两行之间增加一个空格
* `gJ` 合并行没有空格
* `vip` 我一直使用 <kbd>v</kbd> <kbd>i</kbd> <kbd>p</kbd> 按键组合，快速选中一
  段，在代码块间使用非常方便。
* `<c-a> <c-x>` number++, number--
23

* `cat /etc/fstab`{.bash}
* `mount /cdrom`{.bash}
* `eject /cdrom`{.bash}
* `cd`{.bash} + <kbd>TAB</kbd>

* `md path/to/dir` === `mkdir -p path/to/dir`
* `rd path/to/dir` === `rmdir path/to/dir`
* `d` === `dirs -V`: lists last used directories
* Bash: `set -o vi`, `set -o emacs`
* Zsh:  `bindkey -v`, `bindkey -e`
* `C-t` 交换光标所在字符与其前的字符
* `M-t` 交换光标所在的单词与前面单词的位置
* `C-m` 相当于“回车键”

> “Unix 用起来容易，但学习起来难”。

Unix/Linux 操作系统的使用作为实践性非常强的一门“技术”，有章可循。每一个命令的命
令格式、参数、选项都可以通过阅读手册获得，所以用起来很容易。

但它学习起来，并不是每天扫地的阿姨一眼就能轻松掌握的工具。如作者所言，“设计
Unix 的目的不是为了学习而是为了使用。”为了达到使用 Unix 这一工具的目的，我们需
要了解其“然”，也就是基本操作：了解如何登陆 Unix、如何使用 Unix 编辑文件、操作目
录……

Helpful aliases for common git tasks

- `g`{.bash} &rarr; `git`
- `gst`{.bash} &rarr; `git status`
- `gl`{.bash} &rarr; `git pull`
- `gup`{.bash} &rarr; `git pull --rebase`
- `gp`{.bash} &rarr; `git push`
- `gd`{.bash} &rarr; `git diff`
- `gdc`{.bash} &rarr; `git diff --cached`
- `gdv`{.bash} &rarr; `git diff -w "$@" | view -`
- `gc`{.bash} &rarr; `git commit -v`
- `gcR`{.bash} &rarr; `git commit -v --amend`
- `gca`{.bash} &rarr; `git commit -v -a`
- `gcaR`{.bash} &rarr; `git commit -v -a --amend`
- `gcmsg`{.bash} &rarr; `git commit -m`
- `gco`{.bash} &rarr; `git checkout`
- `gcm`{.bash} &rarr; `git checkout master`
- `gr`{.bash} &rarr; `git remote`
- `grv`{.bash} &rarr; `git remote -v`
- `grmv`{.bash} &rarr; `git remote rename`
- `grrm`{.bash} &rarr; `git remote remove`
- `gsetr`{.bash} &rarr; `git remote set-url`
- `grup`{.bash} &rarr; `git remote update`
- `grbi`{.bash} &rarr; `git rebase -i`
- `grbc`{.bash} &rarr; `git rebase --continue`
- `grba`{.bash} &rarr; `git rebase --abort`
- `gb`{.bash} &rarr; `git branch`
- `gba`{.bash} &rarr; `git branch -a`
- `gcount`{.bash} &rarr; `git shortlog -sn`
- `gcl`{.bash} &rarr; `git config --list`
- `gcp`{.bash} &rarr; `git cherry-pick`
- `glg`{.bash} &rarr; `git log --stat --max-count=10`
- `glgg`{.bash} &rarr; `git log --graph --max-count=10`
- `glgga`{.bash} &rarr; `git log --graph --decorate --all`
- `glo`{.bash} &rarr; `git log --oneline --decorate --color`
- `glog`{.bash} &rarr; `git log --oneline --decorate --color --graph`
- `gss`{.bash} &rarr; `git status -s`
- `ga`{.bash} &rarr; `git add`
- `gm`{.bash} &rarr; `git merge`
- `grh`{.bash} &rarr; `git reset HEAD`
- `grhh`{.bash} &rarr; `git reset HEAD --hard`
- `gclean`{.bash} &rarr; `git reset --hard && git clean -dfx`
- `gwc`{.bash} &rarr; `git whatchanged -p --abbrev-commit --pretty=medium`
- `gsts`{.bash} &rarr; `git stash show --text`
- `gsta`{.bash} &rarr; `git stash`
- `gstp`{.bash} &rarr; `git stash pop`
- `gstd`{.bash} &rarr; `git stash drop`
- `ggpull`{.bash} &rarr; `git pull origin $(current_branch)`
- `ggpur`{.bash} &rarr; `git pull --rebase origin $(current_branch)`
- `ggpush`{.bash} &rarr; `git push origin $(current_branch)`
- `ggpnp`{.bash} &rarr; `git pull origin $(current_branch) && git push origin $(current_branch)`
- `glp`{.bash} &rarr; `git log prettily`

---

- what the fuck barbecue = WTFBBQ
- `extract`{.bash} 'x' alias - swiss knife for archive extracting

---

* 表面上看，tuple 的元素确实变了，但其实变的不是 tuple 的元素，而是 list 的元素。
* list 和 tuple 是 Python 内置的有序集合，一个可变，一个不可变。根据需要来选择使用它们。

```python
if <条件判断1>:
    <执行1>
elif <条件判断2>:
    <执行2>
elif <条件判断3>:
    <执行3>
else:
    <执行4>
```

`birth = int(raw_input(birth: ))`{.python}

要避免 key 不存在的错误，有两种办法，一是通过 `in` 判断 `key` 是否存在：

```python
>>> Thomas in d
>>> False
```

所以，对于不变对象来说，调用对象自身的任意方法，也不会改变该对象自身的内容。相
反，这些方法会创建新的对象并返回，这样，就保证了不可变对象本身永远是不可变的。

要保证 hash 的正确性，作为 key 的对象就不能变。在 Python 中，字符串、整数等都是
不可变的，因此，可以放心地作为 key。而 list 是可变的，就不能作为 key

* `int()`, `float()`, `str()`, `bool()`

原来返回值是一个 tuple！但是，在语法上，返回一个 tuple 可以省略括号，而多个变量
可以同时接收一个 tuple，按位置赋给对应的值，所以，Python 的函数返回多值其实就是
返回一个 tuple，但写起来更方便。

```python
def power(x, n=2):
    s = 1
    while n > 0:
    n = n - 1
    s = s * x
    return s
```

默认参数必须指向不变对象！ `def add_end(L=None):`{.python}

为什么要设计 `str`、`None` 这样的不变对象呢？因为不变对象一旦创建，对象内部的数
据就不能修改，这样就减少了由于修改数据导致的错误。此外，由于对象不变，多任务环
境下同时读取对象不需要加锁，同时读一点问题都没有。我们在编写程序时，如果可以设
计一个不变对象，那就尽量设计成不变对象。

* list: `[1, 2, 3]`
* tuple: `(1, 2, 3)`

定义可变参数和定义 list 或 tuple 参数相比，仅仅在参数前面加了一个 `*` 号。在函
数内部，参数 numbers 接收到的是一个 tuple，因此，函数代码完全不变。但是，调用该
函数时，可以传入任意个参数，包括 0 个参数

```python
def calc(*numbers):
    sum = 0
    for n in numbers:
    sum = sum + n * n
    return sum

nums = [1, 2, 3]
calc(*nums)
14
```

```python
>>> kw = {city: Beijing, job: Engineer}
>>> person(Jack, 24, **kw)
name: Jack age: 24 other: {city: Beijing, job: Engineer}
```

* 参数定义的顺序必须是：**必选参数**、**默认参数**、**可变参数**和**关键字参数**。
* args 是可变参数，args 接收的是一个 tuple；
* `**kw` 是关键字参数，kw 接收的是一个 dict。

尾递归是指，在函数返回的时候，调用自身本身，并且，return 语句不能包含表达式。这
样，编译器或者解释器就可以把尾递归做优化，使递归本身无论调用多少次，都只占用一
个栈帧，不会出现栈溢出的情况。

```python
>>> L[1:3]
[Sarah, Tracy]

for key in d:
for value in d.itervalues():
for k, v in d.iteritems():

[x*x for x in range(1, 11)]

isinstance(x, str)
g = (x * x for x in range(10))
g.next()
```

* [生成器 - 廖雪峰的官方网站](http://www.liaoxuefeng.com/wiki/001374738125095c955c1e6d8bb493182103fac9270762a000/00138681965108490cb4c13182e472f8d87830f13be6e88000) :smile:

![](http://www.liaoxuefeng.com/files/attachments/0013879622109990efbf9d781704b02994ba96765595f56000/0)

* map, reduce
* `filter(function, list)`{.python}

```python
def not_empty(s):
    return s and s.strip()

filter(not_empty, [A, , B, None, C,  ])
# 结果: [A, B, C]
```

* `sorted([list], <function>)`{.python}
* 高阶函数除了可以接受函数作为参数外，还可以把函数作为结果值返回。

```python
In [9]: def lazy_sum(*args):
   ...:     def sum():
   ...:         ax = 0
   ...:         for n in args:
   ...:             ax = ax + n
   ...:         return ax
   ...:     return sum
   ...:

In [10]: f = lazy_sum( 1, 2, 3, 4)

In [11]: f
Out[11]: <function __main__.sum>

In [12]: f()
Out[12]: 10
```

在这个例子中，我们在函数 lazy_sum 中又定义了函数 sum，并且，内部函数 sum 可以引
用外部函数 lazy_sum 的参数和局部变量，当 lazy_sum 返回函数 sum 时，相关参数和变
量都保存在返回的函数中，这种称为“闭包（Closure）”的程序结构拥有极大的威力。

`lambda x: x*x`

:   ```python
    import functools
    int2 = functools.partial(int, base=2)
    int2('1000000')
    ```

    注意到上面的新的 int2 函数，仅仅是把 base 参数重新设定默认值为 2，但也可以
    在函数调用时传入其他值: `int2("1000000", base=10)`{.python}

    请注意，每一个包目录下面都会有一个 `__init__.py` 的文件，这个文件是必须存在
    的，否则，Python 就把这个目录当成普通目录，而不是一个包。`__init__.py` 可以
    是空文件，也可以有 Python 代码，因为 `__init__.py` 本身就是一个模块，而它的模块
    名就是 mycompany

    ```python
    if __name__ == '__main__':
        test()
    ```

```python
try:
    import json # python >= 2.6
except ImportError:
    import simplejson as json # python <= 2.5
```

类似 `__xxx__` 这样的变量是特殊变量，可以被直接引用，但是有特殊用途，比如上面的
`__author__`，`__name__` 就是特殊变量，hello 模块定义的文档注释也可以用特殊变量
`__doc__` 访问，我们自己的变量一般不要用这种变量名；

类似 `_xxx` 和 `__xxx` 这样的函数或变量就是非公开的（private），不应该被直接引
用，比如 `_abc`，`__abc` 等；

外部不需要引用的函数全部定义成 private，只有外部需要引用的函数才定义为 public。

`from __future__ import division`, use python3.x in python2.x

```python
class Student(object):

    def __init__(self, name, score):
        self.name = name
        self.score = score

In [16]: class Me(object):
   ....:     def __init__(this):
   ....:         this.name = "shit"
this.__private_var, this.__not_private_var__, this._not_private_but_dont_touch_me_please
class Dog(Animal):
    pass
instanceof (dog, Dog)
instanceof (dog, Animal) # true

def run_twice(animal):
    animal.run()
    animal.run()
```

对于一个变量，我们只需要知道它是 Animal 类型，无需确切地知道它的子类型，就可以
放心地调用 `run()` 方法，而具体调用的 `run()` 方法是作用在 Animal、Dog、Cat 还
是 Tortoise 对象上，由运行时该对象的确切类型决定，这就是**多态**真正的威力：调
用方只管调用，不管细节，而当我们新增一种 Animal 的子类时，只要确保 `run()` 方法
编写正确，不用管原来的代码是如何调用的。这就是著名的“开闭”原则：

* 对扩展开放：允许新增 Animal 子类；
* 对修改封闭：不需要修改依赖 Animal 类型的 `run_twice()` 等函数。

```python
type(123), type("string")
>>> import types
__slots__ = (name, gender)

class Student(object):

    def get_score(self):
        return self._score

    def set_score(self, value):
        if not isinstance(value, int):
            raise ValueError('score must be an integer!')
        if value < 0 or value > 100:
            raise ValueError('score must between 0 ~ 100!')
        self._score = value
>>> s.score = 60 # OK，实际转化为s.set_score(60)
```

* `@score.setter`
* `@property` 的实现比较复杂，我们先考察如何使用。把一个 getter 方法变成属性，
  只需要加上 `@property` 就可以了，此时，`@property` 本身又创建了另一个装饰器
  `@score.setter`，负责把一个 setter 方法变成属性赋值，于是，我们就拥有一个可控
  的属性操作

```python
class Student(object):

    @property
    def birth(self):
        return self._birth

    @birth.setter
    def birth(self, value):
        self._birth = value

    @property
    def age(self):
        return 2014 - self._birth
```

由于 Python 允许使用多重继承，因此，**Mixin** 就是一种常见的设计。
只允许单一继承的语言（如 Java）不能使用 Mixin 的设计。

* Mixin
* `__str__()`, `print(Student("Michael"))`
* `__repr__ = __str__`
* `__iter__`
* `__getitem__`, `s = Student()`, `s[2]`
* `__getattr__`

当调用不存在的属性时，比如 score，Python 解释器会试图调用 `__getattr__(self, score)` 来尝试获得属性

`__call__`, `s = Student()`, `s()`

```python
import types
type(u'abc')==types.UnicodeType
isinstance(a, (str, unicode)) # string or unicode
```

如果要获得一个对象的所有属性和方法，可以使用 `dir()` 函数，它返回一个包含字符串
的 list，比如，获得一个 str 对象的所有属性和方法: `dir(Dog)`

* `getattr()`, `setattr()`, `hasattr()`
* `hasattr(Dog, "__init__")`
* `callable(Student())` # true
* `__getattr__`

`type()` 函数可以查看一个类型或变量的类型，Hello 是一个 class，它的类型就是
type，而 h 是一个实例，它的类型就是 `class Hello`。

* `type()` to create class,
* `__metaclass__ = <Class>`
* `try... except ...finally`.

第二个 except 永远也捕获不到 ValueError，因为 ValueError 是 StandardError 的子
类，如果有，也被第一个 except 给捕获了。

也就是说，不需要在每个可能出错的地方去捕获错误，只要在合适的层次去捕获错误就可
以了。这样一来，就大大减少了写 `try...except...finally` 的麻烦。

`import logging # log error and run, with error`{.python}

虽然用 IDE 调试起来比较方便，但是最后你会发现，**logging 才是终极武器**。

如果你听说过“测试驱动开发”（TDD：Test-Driven Development），单元测试就不陌生。

```python
d = dict(a=1,b=2)
d = dict({"a":1,"b":2})
raise FooError("invalid value: %s" % s)
assert n != 0, "n is zero"
logging, logging.info("n =%d" %n)
import logging
logging.basicConfig(level=logging.INFO)
python -m pdb err.py
pdb.set_trace()
import pdb

file-like object, `StringIO`
<mode>=rb, f.read().decode("gbk")
import codecs
import os
os.name
os.path.abspath(".")
os.getenv("PATH")
os.path.split("url....") # dirname, basename
import shutil
split extension: os.path.splitext(str)[1]==".py"
```

我们把变量从内存中变成可存储或传输的过程称之为序列化，在 Python 中叫
**pickling**，在其他语言中也被称之为 **serialization**，**marshalling**，
**flattening** 等等，都是一个意思。

```python
try:
    import cPickle as pickle
except ImportError:
    import pickle
```

![](http://static.oschina.net/uploads/img/201306/27011038_KCGY.jpg)

python 语言特定的序列化模块是 pickle，但如果要把序列化搞得更通用、更符合 Web 标准，就可以使用 json 模块。

json 模块的 `dumps()` 和 `loads()` 函数是定义得非常好的接口的典范。当我们使用时
，只需要传入一个必须的参数。但是，当默认的序列化或反序列机制不满足我们的要求时
，我们又可以传入更多的参数来定制序列化或反序列化的规则，既做到了接口简单易用，
又做到了充分的扩展性和灵活性。如果要启动大量的子进程，可以用进程池(pool)的方式
批量创建子进程在 Unix/Linux 下，可以使用 fork() 调用实现多进程。

要实现跨平台的多进程，可以使用 multiprocessing 模块。

进程间通信是通过 Queue、Pipes 等实现的。当多个线程同时执行 `lock.acquire()` 时，
只有一个线程能成功地获取锁，然后继续执行代码，其他线程就继续等待直到获得锁为止。

获得锁的线程用完后一定要释放锁，否则那些苦苦等待锁的线程将永远等待下去，成为死线程。所以我们用try...finally来确保锁一定会被释放。

`import threading`{.python}

:   ```python
    # 创建全局 ThreadLocal 对象:
    local_school = threading.local()

    import re
    s = r'ABC\-001' # Python的字符串

    In [21]: if re.match(r'^/d{3}\-\d{3,8}$', '010-12345'):
       ....:     print 'ok'
       ....:

    In [22]:

    >>> re.split(r'\s+', 'a b   c')
    ['a', 'b', 'c']
    >>> re.split(r'[\s\,]+', 'a,b, c  d')
    ['a', 'b', 'c', 'd']


    >>> m = re.match(r'^(\d{3})-(\d{3,8})$', '010-12345')
    >>> m
    <_sre.SRE_Match object at 0x1026fb3e8>
    >>> m.group(0)
    '010-12345'
    >>> m.group(1)
    '010'
    >>> m.group(2)
    '12345'
    ```

贪婪匹配

:   ```python
    >>> re.match(r'^(\d+)(0*)$', '102300').groups()
    ('102300', '')
    ```

非贪婪匹配

:   ```python
    >>> re.match(r'^(\d+?)(0*)$', '102300').groups()
    ('1023', '00')

	# 编译:
	>>> re_telephone = re.compile(r'^(\d{3})-(\d{3,8})$')
	# 使用：
	>>> re_telephone.match('010-12345').groups()
    # ('010', '12345')
    ```

Python 之所以自称“batteries included”，就是因为内置了许多非常有用的模块，无需额
外安装和配置，即可直接使用。

modules

:   ```python
    from collections import namedtuple
    from collections import deque
    q = deque(["a", "b", "c"])
    q.append("x")
    q.appendleft("y")
    q
    append(), pop(), appendleft(), popleft()
    from collections import defaultdict
    from collections import OrderdDict
    from collections import counter

    %Base64
    >>> n = 10240099
    >>> b1 = chr((n & 0xff000000) >> 24)
    >>> b2 = chr((n & 0xff0000) >> 16)
    >>> b3 = chr((n & 0xff00) >> 8)
    >>> b4 = chr(n & 0xff)
    >>> s = b1 + b2 + b3 + b4
    >>> s
    ' ?@c'
    ```

```python
import struct

struct.pack('>I', 234523452345)
import hashlib
md5 = haslib.md5()
md5.update(how to use md5 in python hashlib?)
print md5.hexdigest()
```

要注意摘要算法不是加密算法，不能用于加密（因为无法通过摘要反推明文），只能用于
防篡改，但是它的单向计算特性决定了可以在不存储明文口令的情况下验证用户口令。

```python
import itertools
natuals = itertools.count(1)
for n in natuals:
    print n

>>> cs = itertools.cycle('ABC') # 注意字符串也是序列的一种
>>> ns = itertools.repeat('A', 10)

>>> natuals = itertools.count(1)
>>> ns = itertools.takewhile(lambda x: x <= 10, natuals)
>>> for n in ns:
...     print n

打印出1到10

chain('abc', 'def')
imap(), *vs.* map()
ifilter()
```

XML虽然比 JSON 复杂，在Web中应用也不如以前多了，不过仍有很多地方在用，所以，有
必要了解如何操作 XML。

```python
# 打开一个 jpg 图像文件，注意路径要改成你自己的:
im = Image.open('/Users/michael/test.jpg')
# 获得图像尺寸:
w, h = im.size
# 缩放到50%:
im.thumbnail((w//2, h//2))
# 把缩放后的图像用jpeg格式保存:
im.save('/Users/michael/thumbnail.jpg', 'jpeg')

msg = MIMEText('hello, send by Python...', 'plain', 'utf-8')
msg['From'] = _format_addr(u'Python爱好者 <%s>' % from_addr)
msg['To'] = _format_addr(u'管理员 <%s>' % to_addr)
msg['Subject'] = Header(u'来自SMTP的问候……', 'utf-8').encode()
```

这就是传说中的 ORM 技术：`Object-Relational Mapping`，把关系数据库的表结构映射
到对象上。是不是很简单？

但是由谁来做这个转换呢？所以 ORM 框架应运而生
这个接口就是 **WSGI：Web Server Gateway Interface**。

```bash
find where-to-look criteria what-to-do
find /tmp /var/tmp . $HOME -name foo
find / -name foo 2>/dev/null
find -type f | ag some.\*.txt\$ | xargs tar -rf some.tar
```

`xsel -ob # paste text to >`{.bash}

The first `--` argument that is not an option-argument should be accepted as a
delimiter indicating the **end of options**. Any following arguments should be
treated as operands, even if they begin with the `-` character.

For utilities that use operands to represent files to be opened for either
reading or writing, the `-` operand should be used to mean only standard input
(or standard output when it is clear from context that an output file is being
specified) or a file named `-`.

"options" (or, historically, "flags")

When a utility has only a few permissible options, they are sometimes shown
individually, as in the example. Utilities with many flags generally show all
of the individual flags (that do not take option-arguments) grouped, as in:

* `utility_name [-abcDxyz][-p arg][operand]`{.bash}
* `utility_name [options][operands]`{.bash}

Utilities with very complex arguments may be shown as follows:

![](http://www.liaoxuefeng.com/files/attachments/001400339839622665127663fb840b5870864895b103c2f000)

在 Jinja2 模板中，我们用 `{{ name }}` 表示一个需要替换的变量。很多时候，还需要
循环、条件判断等指令语句，在 Jinja2 中，用 `{% ... %}` 表示指令。

* Jinja2, Mako, Cheetah, Django

看起来 A、B 的执行有点像多线程，但协程的特点在于是一个线程执行，那和多线程比，
协程有何优势？

最大的优势就是**协程极高的执行效率**。因为子程序切换不是线程切换，而是由程序自
身控制，因此，没有线程切换的开销，和多线程比，线程数量越多，协程的性能优势就越
明显。

第二大优势就是**不需要多线程的锁机制**，因为只有一个线程，也不存在同时写变量冲突，
在协程中控制共享资源不加锁，只需要判断状态就好了，所以执行效率比多线程高很多。

因为协程是一个线程执行，那怎么利用多核 CPU 呢？最简单的方法是`多进程+协程`，既
充分利用多核，又充分发挥协程的高效率，可获得极高的性能。注意到 consumer 函数是
一个 generator（生成器），把一个 consumer 传入 produce 后：

* 首先调用 `c.next()` 启动生成器；
* 然后，一旦生产了东西，通过 `c.send(n)` 切换到 consumer 执行；
* consumer 通过 yield 拿到消息，处理，又通过 yield 把结果传回；
* produce 拿到 consumer 处理的结果，继续生产下一条消息；
* produce 决定不生产了，通过 c.close() 关闭 consumer，整个过程结束。
* 整个流程无锁，由一个线程执行，produce 和 consumer 协作完成任务，所以称为“协程”，
  而非线程的抢占式多任务。

最后套用 Donald Knuth 的一句话总结协程的特点：

> “子程序就是协程的一种特例。”

当一个 greenlet 遇到 IO 操作时，比如访问网络，就自动切换到其他的 greenlet，等到
IO 操作完成，再在适当的时候切换回来继续执行。由于 IO 操作非常耗时，经常使程序处
于等待状态，有了 gevent 为我们自动切换协程，就保证总有 greenlet 在运行，而不是
等待 IO。

Clojure 提供了很多函数来操作序列（sequence), 而序列是集合的逻辑视图。很多东西可
以被看作序列：Java 集合, Clojure 的集合, 字符串, 流, 文件系统结构以及 XML 树.从
已经存在的 clojure 集合来创建新的集合的效率是非常高的，因为这里使用了
**persistent data structures** 的技术(这对于 clojure 在数据不可更改的情况下，同
时要保持代码的高效率是非常重要的)。

```clojure
'(a b c)
(quote (a b c))

hash-map, sorted-map
list, vector

'(), []
```

When a set is used as a function, it returns the argument if it is in the set
and nil otherwise.

Because the Java invocation syntax in Clojure is clean and simple, it is
idiomatic to use Java directly, rather than to hide Java behind Lispy wrappers.

* `defn`: define a function
* user=> `(load-file "/home/gnat/test.clj")`
* `(conj coll item)`
* this is a set: `#{}`
* `conj`: conjoin
* `(def visitors (ref #{}))`
* `(dosync (commute visitors conj "stu"))`

```clojure
@vistors
(deref vistors)
user=> (@vistors "stu")
"stu"
user=> (if (@vistors "stu") (str "true") (str "false"))
"true"
user=> (if (@vistors "tu") (str "true") (str "false"))
"false"
```

Here we've got your project's README, a src/ directory containing the code, a
test/ directory, and a project.clj file which describes your project to
Leiningen. The src/my_stuff/core.clj file corresponds to the my-stuff.core
namespace.

* :dependencies [[org.clojure/clojure "1.5.1"]]
* list in a list, [[],[],[],[]] like this
* [[<group-id>/<artifact-id> version-number]]

```clojure
>> lein run one
This is the foo, and your args are one
>> lein run -m my-stuff.core -main good
hello main, see you. (-main good)

(require 'clojure.string 'clojure.test)
vector: (require '[clojure.string :as string])
user=> (string/capitalize "good")
"Good"

(require 'clojure.string '[clojure.test :as test])
Using other namespaces’ code as though it’s yours:
Using other namespaces’ code as though it’s yours:
Using other namespaces’ code as though it’s yours:
Using other namespaces’ code as though it’s yours: use
user=> (split (str (java.util.Date.)) #":")
["Mon Feb 16 22" "55" "56 CST 2015"]

(import 'java.util.Date)
(Date.)
require and then import: (require 'stuff)
(import 'stuff.BigWidget)
```

```clojure
user=> (let [[x y z] v]
  #_=> (println "x is: " x ", y is: " y ", z is: " z))
x is:  11 , y is:  22 , z is:  33
nil
user=>

name, namespace, class, #"string as regex"
user=> (let [[& x ] v] x)
(11 22 33 "string 44")
user=> (let [[x & z ] v] z)
(22 33 "string 44")

user=> (if "true" "true..." "false...")
"true..."
user=> (if (true? "true") "true..." "false...")
"false..."
```

![](http://math.ecnu.edu.cn/~latex/images/Bezier_2.gif)
![](http://math.ecnu.edu.cn/~latex/images/Bezier_3.gif)
![](http://math.ecnu.edu.cn/~latex/images/Bezier_4.gif)

`sudo apt-get install cowsay`{.bash}

```javascript
var o = {
    banana: function () {},
    apple: function () {},
    default: function () {}
}

if (o[fruit]) {
    o[fruit]();
} else {
    o['default']();
}

if () {} else {}
if () {} else if () {} else {}

switch (VAR) { case VAR1: CMD; break; ...; default: CMD; }

while () {}

for (INIT; TEST; INC) {}

do {} while();

try {} catch {}

break; continue;
lable, break lable; continue lable;

number, string, boolean,
object, array, function,
null, undefined,
typeof, instenceof, Object.prototype.toString
true, false,
&&, ||, !, ===, !==, ==, !=
```

```javascript
"abc".length
"abc"
.length
Number.MAX_VALUE
Number.MIN_VALUE
var longString = "Long \
long \
long \
string";
// unicode
var s = '\u0049'; // "@"
s.charAt(0) // char
s.charCodeAt(0) // base-10
// Base64
window.btoa('Hellow world')
window.atob('...')
```

要将非 ASCII 码字符转为 Base64 编码，必须中间插入一个浏览器转码的环节，再使用这两个方法。

```javascript
function b64Encode( str ) {
    return window.btoa(unescape(encodeURIComponent( str )));
}

function b64Decode( str ) {
    return decodeURIComponent(escape(window.atob( str )));
}

// 使用方法
b64Encode('你好') // "5L2g5aW9"
b64Decode('5L2g5aW9') // "你好"
```

object

```javascript
var o = {
    p: "Hello World"
    q: "Quit, bye"
};
o.p // "Hello World"
o["p"] // "Hello World"
if ("p" in o) {} // method 1
if ("0" in o) {} // method 2
if (0 in o) {} // method 3
Object.keys(o); // ["p", "q"]
delete o.p // true

var o = new Object();
o.hasOwnProperty('toString'); // true
'toString' in o // true
for (i in o) {console.log(o.i);}

// with
o.p1 = 1;
o.p2 = 2;
with (o) {
    p1 = 3;
    p2 = 6;
}
mZ
var a = [, , ,]; // legth = 3 not enumerable
var b = [undefined, undefined, undefined]; // length = 3, enumerable
var c = new Array(3); // length = 3, not enumerable
```

`easy_install statsmodels`

---

[数据处理 API 参考手册#md2html](http://developer.qiniu.com/code/v6/api/dora-api/index.html#md2html)

:   * <http://whudoc.qiniudn.com/keybr.md?md2html/0/css/aHR0cDovL3Rhbmd6eC5xaW5pdWRuLmNvbS9tYWluLmNzcw==>
    * <http://tangzx.qiniudn.com/main.css> --[base64 encoding]--> `aHR0cDovL3Rhbmd6eC5xaW5pdWRuLmNvbS9tYWluLmNzcw==`

[base64 encoding]: https://www.base64encode.org/

HTTP Redirection
:   `<meta HTTP-EQUIV="REFRESH" content="0; url=http://district10.github.io/">`{.html}

fatality `[fə'tæləti]`: n. 死亡；宿命；致命性；不幸；灾祸

```css
article hr::after {
    letter-spacing: 0.5em;
    content: "✼ ✼ ✼";
    position: relative;
    top: -0.4em;
}

article hr {
    text-align: center;
    color: #CCC;
}
```

markdown blog: `<a id="id"></a>`, then use `url#id`

把「逼格」改爲「屄格」不是「惡意編輯」。把屄格這樣一個氣質低俗的詞柔化、諱飾成
「逼格」，造成「其實沒有那麼難聽」的假象，繼續鼓勵人們使用，纔是真正的大惡。因
此禁言，誠爲黑白顛倒。做出這一決策的知乎管理員應該爲此感到羞恥。

---

去掉 QDockWidget 的标题栏

```cpp
QWidget* titleBar = mPropertyWindow->titleBarWidget();
mPropertyWindow->setTitleBarWidget( new QWidget() );
delete titleBar;
```

---

QPixmap 与 HBITMAP、HICON 互转

#. `QPixmap::toWinHICON();`{.cpp}
#. `QPixmap::toWinHBITMAP();`{.cpp}
#. `QPixmap::fromWinHICON();`{.cpp}
#. `QPixmap::fromWinHBITMAP();`{.cpp}

Qt 编译后移植到其他地方后，qt 寻找库的路径可能出现错误，这时：

在 Qt 的 `bin` 目录下自己建一个 `qt.conf`

```plain
[Paths]
Prefix=C:/dev/qt-4.8.6
``

```cpp
void glFrustum( GLdouble left,
                GLdouble right,
                GLdouble bottom,
                GLdouble top,
                GLdouble nearVal,
                GLdouble farVal );
```

`glFrustum` describes a perspective matrix that produces a perspective
projection.  The current matrix (see `glMatrixMode`) is multiplied by this matrix
and the result replaces the current matrix, as if glMultMatrix were called with
the following matrix as its argument:

$$\begin{bmatrix}
\frac{2nearVal}{right - left} & 0 & A & 0 \\
0 & \frac{2nearVal}{top - bottom} & B & 0 \\
0 & 0 & C & 0 \\
0 & 0 & -1 & 0
\end{bmatrix}$$

$A = \frac{right + left}{right - left}$
$B = \frac{top + bottom}{top - bottom}$
$C = -\frac{farVal + nearVal}{farVal - nearVal}$
$D = -\frac{2farVal \times nearVal}{farVal - nearVal}$

Typically, the matrix mode is `GL_PROJECTION`, and $(left, bottom, -nearVal)$
and $(right, top, -nearVal)$ specify the points on the near clipping plane that
are mapped to the lower left and upper right corners of the window, assuming
that the eye is located at (0, 0, 0).  - farVal specifies the location of the
far clipping plane.  Both nearVal and farVal must be positive.

Depth buffer precision is affected by the values specified for nearVal and
farVal.  The greater the ratio of farVal to nearVal is, the less effective the
depth buffer will be at distinguishing between surfaces that are near each
other.  If r = farVal nearVal roughly log 2 ⁡r bits of depth buffer precision
are lost.  Because r approaches infinity as nearVal approaches 0, nearVal must
never be set to 0.

<div class="tzx-fright" style="padding:em;">
![A view frustum](https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/ViewFrustum.svg/330px-ViewFrustum.svg.png)
</div>

VPN
:   the view-plane normal – a normal to the view plane.

VUV
:   the view-up vector – the vector on the view plane that indicates the upward direction.

VRP
:   the viewing reference point – a point located on the view plane, and the origin of the VRC.

PRP
:   the projection reference point – the point where the image is projected from, for parallel projection, the PRP is at infinity.

VRC
:   the viewing-reference coordinate system.

The geometry is defined by a field of view angle (in the 'y' direction), as well as an aspect ratio. Further, a set of z-planes define the near and far bounds of the frustum.

```cpp
// osg::Camera
/** Get the orthographic settings of the orthographic projection matrix.
 * Returns false if matrix is not an orthographic matrix, where parameter
 * values are undefined.*/
bool getProjectionMatrixAsOrtho(double& left, double& right,
                                double& bottom, double& top,
                                double& zNear, double& zFar) const;

/** Get the frustum setting of a perspective projection matrix.
  * Returns false if matrix is not a perspective matrix, where parameter values
  * are undefined.*/
bool getProjectionMatrixAsFrustum(double& left, double& right,
                                  double& bottom, double& top,
                                  double& zNear, double& zFar) const;

/** Get the frustum setting of a symmetric perspective projection matrix.
  * Returns false if matrix is not a perspective matrix, where parameter values
  * are undefined.  Note, if matrix is not a symmetric perspective matrix then
  * the shear will be lost.  Asymmetric matrices occur when stereo, power
  * walls, caves and reality center display are used.  In these configurations
  * one should use the 'getProjectionMatrixAsFrustum' method instead.*/
bool getProjectionMatrixAsPerspective(double& fovy,double& aspectRatio,
                                      double& zNear, double& zFar) const;
```

经过透视投影 （正射投影也一样）变换， 能够把点 从 观察空间（相机坐标系）转换到
齐次裁剪空间坐标系（又叫规则观察体(Canonical View Volume)中）。这个转化后的空间
体 不仅独立于 把三维场景转换为二维屏幕空间的投影类型（透视、正射），也独立于屏
幕的分辨率(Resolution) 以及长宽比(Aspect Ratio).。

![](http://img.blog.csdn.net/20150514145737857?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvemh1eWluZ3FpbmdmZW4=/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center)
![](https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Pyramid_of_vision.svg/900px-Pyramid_of_vision.svg.png)

齐次裁剪空间坐标系（范围  -1<=x <=1,-1<=y<=1,-1<=z <=1, )是左手坐标系，为什么？ 其实也很好理解，如上图 ， A和B点经过投影变换后其x坐标是一样的（不再是投影平截体中的那种相对关系）， 而近裁剪面上的点的z坐标经过投影变换后变为-1 ， 而远裁剪面上的z坐标为1 ，所以齐次裁剪空间坐标系的z轴的正方向正好和相机坐标系中的z轴正方向是相反的。

经过透视投影后，每个顶点的x和y坐标还要除以其z坐标，这个除法是产生透视收缩的方法

```cpp
osgUtil::PolytopeIntersector // 具体不同算法实现类
osgUtil::IntersectionVisitor //用来遍历节点树的每个节点
osg::Node * mNode;  //  你要做相交测试的根节点

osg::ref_ptr<osgUtil::PolytopeIntersector> intersector = new osgUtil::PolytopeIntersector(osgUtil::Intersector::WINDOW, xMin, yMin, xMax, yMax);
intersector->setIntersectionLimit(osgUtil::Intersector::LIMIT_ONE_PER_DRAWABLE);
osgUtil::IntersectionVisitor iv( intersector.get() );

mRootNode->accept(iv);
```

总结：

1. 在 `osg::ref_ptr<osg::Node>node = new osg::Node;` 其中 node 为 `osg::ref_ptr` 的对象，而不是指针。
2. OSG 中新创建的场景对象建议使用 `ref_ptr` 进行内存分配和管理
3. 对于不使用 `ref_ptr` 的对象，引用计数值变得没有意义，并且它无法自动从场景中卸载。
4. 新建对象作为函数结果返回时，应该返回 `release()`。并尽快引入到别的场景中，否则发生内存泄露
5. 只有 `osg::ref_ptr` 类来管理 osg 对象的引用计数，其他脱离了（和osg::ref_ptr对象无关的操作）osg::ref_ptr 管理的操作如：赋值等将不会对引用计数产生影响

`inline void setNodeMask(NodeMask nm) { _nodeMask = nm; }`{.cpp}

```cpp
 osg::ref_ptr <osg::MatrixTransform> mat=new osg::MatrixTransform();
osg::Matrix m = osg::Matrix::scale(1.0f,1.0f,1.0f)*osg ::Matrix::translate(osg::Vec3(0,0,10.0f));
mat->setMatrix(m);
mat->addChild(node1.get());

osg::ref_ptr<osg::AnimationPathCallback> apcb = new osg::AnimationPathCallback;
apcb->setAnimationPath( createAnimationPath(50.0f, 6.0f) );
mat->setUpdateCallback( apcb.get() );
```

```cpp
//创建一个光照
osg::ref_ptr<osg::Node>createLight(osg::ref_ptr<osg::Node>model)
{
    osg::ComputeBoundsVisitor cbbv;
    model->accept(cbbv);

    osg::BoundingBox bb=cbbv.getBoundingBox();


    osg::ref_ptr<osg::Light>lt=new osg::Light;
    lt->setLightNum(0);

    //设置环境光的颜色
    lt->setAmbient(osg::Vec4(1.0f,1.0f,1.0f,1.0f));

    osg::ref_ptr<osg::LightSource>ls=new osg::LightSource();

    ls->setLight(lt.get());

    return ls.get();
}
```

```cpp
int main()
{
    osg::ref_ptr<osgViewer::Viewer> viewer = new osgViewer::Viewer();
    viewer->addEventHandler(new osgViewer::WindowSizeHandler);
    //创建一个组节点
    osg::ref_ptr<osg::Group> root = new osg::Group();

    //创建一个阴影节点，并标识接收对象和投影对象
    osg::ref_ptr<osgShadow::ShadowedScene> shadowedScene = new osgShadow::ShadowedScene();
    shadowedScene->setReceivesShadowTraversalMask(ReceivesShadowTraversalMask);
    shadowedScene->setCastsShadowTraversalMask(CastsShadowTraversalMask);

    //创建阴影纹理，使用的是shadowTexture技法
    osg::ref_ptr<osgShadow::ShadowTexture> st = new osgShadow::ShadowTexture;
    osg::ref_ptr<osgShadow::ParallelSplitShadowMap> pss = new osgShadow::ParallelSplitShadowMap;
    //osg::ref_ptr<osgShadow::ShadowVolume> sv = new osgShadow::ShadowVolume;
    osg::ref_ptr<osgShadow::MinimalShadowMap> ms = new osgShadow::MinimalShadowMap;
    osg::ref_ptr<osgShadow::StandardShadowMap> ss = new osgShadow::StandardShadowMap;
    osg::ref_ptr<osgShadow::SoftShadowMap> softS = new osgShadow::SoftShadowMap;
    osg::ref_ptr<osgShadow::ViewDependentShadowTechnique> vds = new osgShadow::ViewDependentShadowTechnique;
    //关联阴影纹理
    shadowedScene->setShadowTechnique(softS);

    //创建一个根节点，并将场景数据、模型赋予节点
    osg::ref_ptr<osg::Node> node =createModel();

    //添加场景数据并添加光源
    shadowedScene->addChild(createLight(node.get()));
    shadowedScene->addChild(node.get());


    root->addChild(shadowedScene.get());

    //优化场景数据
    osgUtil::Optimizer optimizer ;
    optimizer.optimize(root.get()) ;

    viewer->setSceneData(root.get());
    viewer->realize();
    viewer->run();

    return 0 ;
}
```

其实简而言之  就是 `glOrtho` 设置相片的大小，`glViewport` 指定相框大小。如果 `glOrtho`
指定的相片小了，那么放到同等大小的相框上就相当于放大了。

而如果 `glOrtho` 指定的相片大了，放到同等大小的相框上相当于缩小了场景。

在 `OpenGL` 中有两个比较重要的投影变换函数，`glViewport` 和 `glOrtho`。

`glOrtho` 是创建一个正交平行的视景体。 一般用于物体不会因为离屏幕的远近而产生大小
的变换的情况。比如，常用的工程中的制图等。需要比较精确的显示。 而作为它的对立情
况, `glFrustum` 则产生一个透视投影。这是一种模拟真是生活中，人们视野观测物体的真实
情况。例如：观察两条平行的火车到，在过了很远之后，这两条铁轨是会相交于一处的。
还有，离眼睛近的物体看起来大一些，远的物体看起来小一些。

`glOrtho(left, right, bottom, top, near, far)`， left 表示视景体左面的坐标，right
表示右面的坐标，bottom 表示下面的，top 表示上面的。这个函数简单理解起来，就是一个
物体摆在那里，你怎么去截取他。这里，我们先抛开 glViewport 函数不看。先单独理解
glOrtho 的功能。 假设有一个球体，半径为 1，圆心在 (0, 0, 0)，那么，我们设定
`glOrtho(-1.5, 1.5, -1.5, 1.5, -10, 10);` 就表示用一个宽高都是 3 的框框把这个球体整
个都装了进来。  如果设定 `glOrtho(0.0, 1.5, -1.5, 1.5, -10, 10);` 就表示用一个宽是
1.5， 高是 3 的框框把整个球体的右面装进来;如果设定 `glOrtho(0.0, 1.5, 0.0, 1.5,
-10, 10);` 就表示用一个宽和高都是1.5的框框把球体的右上角装了进来。

```cpp
if(root->getChild(i)->getName().compare("Hello") == 0)
{
    osg::Node * tmp = root->getChild(i);
    root->removeChild(tmp);
    *node = tmp;//在这里tmp 已经析构，因为 只有root引用了hello节点，而在root 节点removechild后 tmp的引用计数为0，此时将析构
}
```

Refs

#. [OpenGL 透视投影 齐次裁剪空间 深度缓存 - Emacs 的专栏 - 博客频道 - CSDN.NET](http://blog.csdn.net/zhuyingqingfen/article/details/45721643)
#. [Qt 小技巧 记录 - Emacs 的专栏 - 博客频道 - CSDN.NET](http://blog.csdn.net/zhuyingqingfen/article/details/44019915)
#. [glFrustum](https://www.opengl.org/sdk/docs/man2/xhtml/glFrustum.xml)
#. [OSG 中 相交测试 模块 工作流程及原理 - Emacs 的专栏 - 博客频道 - CSDN.NET](http://blog.csdn.net/zhuyingqingfen/article/details/37923417)
#. [OSG 智能指针陷阱 总结 - Emacs 的专栏 - 博客频道 - CSDN.NET](http://blog.csdn.net/zhuyingqingfen/article/details/25311989)

Read more

#. [OSG 自定义数据类型 关键帧动画 - Emacs 的专栏 - 博客频道 - CSDN.NET](http://blog.csdn.net/zhuyingqingfen/article/details/12651017)
#. [OSG 一个简单的着色器例子 - Emacs 的专栏 - 博客频道 - CSDN.NET](http://blog.csdn.net/zhuyingqingfen/article/details/8656913)
#. [osg 路径 动画 效果 - Emacs 的专栏 - 博客频道 - CSDN.NET](http://blog.csdn.net/zhuyingqingfen/article/details/8248157)
#. [osg 漫游器 代码框架 - Emacs 的专栏 - 博客频道 - CSDN.NET](http://blog.csdn.net/zhuyingqingfen/article/details/8249501)

---

```lisp
(defun smart-open-line ()
  "Insert an empty line after the current line.
Position the cursor at its beginning, according to the current mode."
  (interactive)
  (move-end-of-line nil)
  (newline-and-indent))

(global-set-key [(shift return)] 'smart-open-line)
```

```elisp
(defun prelude-open-with (arg)
  "Open visited file in default external program.

With a prefix ARG always prompt for command to use."
  (interactive "P")
  (when buffer-file-name
    (shell-command (concat
                    (cond
                     ((and (not arg) (eq system-type 'darwin)) "open")
                     ((and (not arg) (member system-type '(gnu gnu/linux gnu/kfreebsd))) "xdg-open")
                     (t (read-shell-command "Open current file with: ")))
                    " "
                    (shell-quote-argument buffer-file-name)))))
```

```elisp
(defun copy-file-name-to-clipboard ()
  "Copy the current buffer file name to the clipboard."
  (interactive)
  (let ((filename (if (equal major-mode 'dired-mode)
                      default-directory
                    (buffer-file-name))))
    (when filename
      (kill-new filename)
      (message "Copied buffer file name '%s' to the clipboard." filename))))
```

```elisp
(defun indent-buffer ()
  "Indent the currently visited buffer."
  (interactive)
  (indent-region (point-min) (point-max)))

(defun indent-region-or-buffer ()
  "Indent a region if selected, otherwise the whole buffer."
  (interactive)
  (save-excursion
    (if (region-active-p)
        (progn
          (indent-region (region-beginning) (region-end))
          (message "Indented selected region."))
      (progn
        (indent-buffer)
        (message "Indented buffer.")))))
```

```elisp
(defun google ()
  "Google the selected region if any, display a query prompt otherwise."
  (interactive)
  (browse-url
   (concat
    "http://www.google.com/search?ie=utf-8&oe=utf-8&q="
    (url-hexify-string (if mark-active
         (buffer-substring (region-beginning) (region-end))
       (read-string "Google: "))))))
```

```elisp
(defun indent-defun ()
  "Indent the current defun."
  (interactive)
  (save-excursion
    (mark-defun)
    (indent-region (region-beginning) (region-end))))
```

```elisp
(electric-indent-mode +1)
```

```elisp
(global-set-key (kbd "C-c o") 'open-with)
(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)
(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-c g") 'google)
(global-set-key (kbd "C-M-z") 'indent-defun)
(global-set-key (kbd "C-c t") 'visit-term-buffer)
(global-set-key [(control shift up)]  'move-line-up)
(global-set-key [(control shift down)]  'move-line-down)
```

```elisp
(defun visit-term-buffer ()
  "Create or visit a terminal buffer."
  (interactive)
  (if (not (get-buffer "*ansi-term*"))
      (progn
        (split-window-sensibly (selected-window))
        (other-window 1)
        (ansi-term (getenv "SHELL")))
    (switch-to-buffer-other-window "*ansi-term*")))
```

```elisp
(defun move-line-up ()
  "Move up the current line."
  (interactive)
  (transpose-lines 1)
  (forward-line -2)
  (indent-according-to-mode))

(defun move-line-down ()
  "Move down the current line."
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1)
  (indent-according-to-mode))
```

```elisp
(require 'paren)
(setq show-paren-style 'parenthesis)
(show-paren-mode +1)
```

(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "C-c k") 'kill-other-buffers)
(global-set-key (kbd "C-x O") (lambda ()
                                (interactive)
                                (other-window -1)))

```elisp
(defun kill-other-buffers ()
  "Kill all buffers but the current one.
Don't mess with special buffers."
  (interactive)
  (dolist (buffer (buffer-list))
    (unless (or (eql buffer (current-buffer)) (not (buffer-file-name buffer)))
      (kill-buffer buffer))))
```

```elisp
(require 'dash)

(defun prelude-kill-other-buffers ()
  "Kill all buffers but the current one.
Doesn't mess with special buffers."
  (interactive)
  (-each
   (->> (buffer-list)
     (-filter #'buffer-file-name)
     (--remove (eql (current-buffer) it)))
   #'kill-buffer))
```

#. [Repeat last command - Emacs Redux](http://emacsredux.com/blog/2013/03/26/repeat-last-command/)
#. [Copy filename to the clipboard - Emacs Redux](http://emacsredux.com/blog/2013/03/27/copy-filename-to-the-clipboard/)
#. [Open file in external program - Emacs Redux](http://emacsredux.com/blog/2013/03/27/open-file-in-external-program/)
#. [Indent region or buffer - Emacs Redux](http://emacsredux.com/blog/2013/03/27/indent-region-or-buffer/)
#. [Indent defun - Emacs Redux](http://emacsredux.com/blog/2013/03/28/indent-defun/)
#. [Google - Emacs Redux](http://emacsredux.com/blog/2013/03/28/google/)
#. [Network utilities - Emacs Redux](http://emacsredux.com/blog/2013/03/28/network-utilities/)
#. [Automatic(electric) indentation - Emacs Redux](http://emacsredux.com/blog/2013/03/29/automatic-electric-indentation/)
#. [Automatic(electric) character pairing - Emacs Redux](http://emacsredux.com/blog/2013/03/29/automatic-electric-character-pairing/)
#. [Terminal at your fingertips - Emacs Redux](http://emacsredux.com/blog/2013/03/29/terminal-at-your-fingertips/)
#. [Kill other buffers - Emacs Redux](http://emacsredux.com/blog/2013/03/30/kill-other-buffers/)
#. [Go back to previous window - Emacs Redux](http://emacsredux.com/blog/2013/03/30/go-back-to-previous-window/)
#. [Playing with Font Sizes - Emacs Redux](http://emacsredux.com/blog/2013/04/01/playing-with-font-sizes/)
#. [Highlight matching parentheses - Emacs Redux](http://emacsredux.com/blog/2013/04/01/highlight-matching-parentheses/)
#. [Highlight current line - Emacs Redux](http://emacsredux.com/blog/2013/04/02/highlight-current-line/)

---

`sudo update-alternatives –config x-terminal-emulator`{.bash}
`scrot # caputre screenshot`{.bash}

i3

:   ```plain
    X-f: fullscreen
    arrow keys: get focus
    e, s, w
    X-e: toggle
    X-s: stacked
    X-w: tabbed, X-left, X-right
    shift r: restart i3 inplace
    ```

```
%s/重车,运营/运营,重车/g
%s/,超速报警//g
%s/,登录//g
g/,设备工作正常/d
g!/ACC/d
```

删除中文字符: `:%s/\v[^\x00-\xff]+//g`

You could use more expressive version of substitution you employed when assigning OBJECTS

`OBJECTS=$(SOURCES:%.cpp=obj/%.o)`{.makefile}

or use a standard text transformation function

`OBJECTS=$(addprefix obj/,$(SOURCES:.cpp=.o))`{.makefile}

<div class="tzx-tabs">
* [refs](#line14550)
* [codes](#line14551)

<div id="line14550">
* [dynamic_cast Operator](https://msdn.microsoft.com/en-us/library/cby9kycs.aspx)
* [Casting](https://msdn.microsoft.com/en-us/library/x9wzb5es.aspx)
</div>

~~~ {#line14551 .c}
// static_cast_Operator.cpp
// compile with: /LD
class B {};

class D : public B {};

void f(B* pb, D* pd) {
   D* pd2 = static_cast<D*>(pb);   // Not safe, D can have fields
                                   // and methods that are not in B.

   B* pb2 = static_cast<B*>(pd);   // Safe conversion, D always
                                   // contains all of B.
}

// static_cast_Operator_2.cpp
// compile with: /LD /GR
class B {
public:
   virtual void Test(){}
};
class D : public B {};

void f(B* pb) {
   D* pd1 = dynamic_cast<D*>(pb);
   D* pd2 = static_cast<D*>(pb);
}

// static_cast_Operator_3.cpp
// compile with: /LD /GR
typedef unsigned char BYTE;

void f() {
   char ch;
   int i = 65;
   float f = 2.5;
   double dbl;

   ch = static_cast<char>(i);   // int to char
   dbl = static_cast<double>(f);   // float to double
   i = static_cast<BYTE>(ch);
}

// dynamic_cast_1.cpp
// compile with: /c
class B { };
class C : public B { };
class D : public C { };

void f(D* pd) {
   C* pc = dynamic_cast<C*>(pd);   // ok: C is a direct base class
                                   // pc points to C subobject of pd
   B* pb = dynamic_cast<B*>(pd);   // ok: B is an indirect base class
                                   // pb points to B subobject of pd
}

// dynamic_cast_2.cpp
// compile with: /c /GR
class A {virtual void f();};
class B {virtual void f();};

void f() {
   A* pa = new A;
   B* pb = new B;
   void* pv = dynamic_cast<void*>(pa);
   // pv now points to an object of type A

   pv = dynamic_cast<void*>(pb);
   // pv now points to an object of type B
}

// dynamic_cast_3.cpp
// compile with: /c /GR
class B {virtual void f();};
class D : public B {virtual void f();};

void f() {
   B* pb = new D;   // unclear but ok
   B* pb2 = new B;

   D* pd = dynamic_cast<D*>(pb);   // ok: pb actually points to a D
   D* pd2 = dynamic_cast<D*>(pb2);   // pb2 points to a B not a D
}
~~~
</div>

* The emoji repository has a `CNAME` file with the domain `emoji.muan.co`. It
  is owned by muan, whose User Pages repository has a `CNAME` file with the
  domain `muan.co`.
* The Project Pages site at `muan.github.io/emoji` redirects to `muan.co/emoji`
  and is also available at `emoji.muan.co`.

a **type qualifier** is not allowed on a static member function.

```plain
文件夹 PATH 列表
卷序列号为 00000200 BC08:BFBA
D:.
├─data
│  └─textures
├─demo
│  ├─3rdParty
│  │  └─QtPropertyBrowser
│  │      ├─canvas_typed
│  │      ├─canvas_variant
│  │      ├─decoration
│  │      ├─demo
│  │      │  └─images
│  │      ├─extension
│  │      ├─object_controller
│  │      └─simple
│  ├─btExplorerDemo
│  ├─btLoggerDemo
│  ├─btMainWindowDemo
│  ├─btTextureEditorDemo
│  ├─IODemo
│  ├─JsonReaderDemo
│  ├─ModelStructureDemo
│  ├─OSGDemo
│  ├─QtPropertyBrowserVariantDemo
│  ├─RapidJSONDemo
│  ├─SignCutterDemo
│  ├─SignTransformerDemo
│  ├─TextureEditorDemo
│  ├─TextureNotationDemo
│  └─TheBrowserDemo
├─docs
├─images
├─includes
│  ├─OSGDemo
│  └─rapidjson
│      ├─error
│      ├─internal
│      └─msinttypes
├─lib
│  ├─debug
│  └─release
├─notes
│  └─images
│      ├─deprecated
│      ├─icon
│      └─material
├─src
│  ├─3rdParty
│  ├─btGUI
│  ├─Global
│  ├─Handlers
│  ├─IO
│  ├─ModelStructure
│  ├─Parts
│  ├─QtPropertyBrowser
│  │  └─images
│  ├─SignCutter
│  ├─SignLogger
│  ├─SignTransformer
│  ├─TextureEditor
│  ├─TextureNotation
│  ├─TheBrowser
│  └─Utils
└─tryouts
    └─StackedBoxes
        └─images
```

> 'The enjoyment of one's tools is an essential ingredient of successful work.'
> -- Donald E. Knuth

Better Emacs shortcut for Neo users:

* delete last word: ESC Backspace
* get back to last word: ESC b

| Movement | Shortcut |
| :---: | :---: |
| next word | X-s(ESC) d |
| previous word | X-s(ESC) X-d(Backspace) |
| go to previous word | X-s(ESC) b |

Just in case this sounds annoying, the major advantage is that you can always
get back a previous state. In most editors, undoing several changes and then
accidentally typing a character would leave you 'stranded' with no way to redo
what you had undone. Emacs makes this trivial. – phils

`/ə/` 和 `/ʌ/` 这两个发音，在语言学上有区别，在发音中没区别，再说一遍，麻痹没区
别！！！！！！！！！！！！！

朙（míng）月拼音

[gat json](http://whudoc.qiniudn.com/gat.json)
[tag json](http://whudoc.qiniudn.com/tag.json)

you flinched!

- [豆瓣](http://www.douban.com/)
- [Complex Network Notes](file:///D:/tzx/git/blog/publish/post-0084-complex-network-notes.html)
- [Complex network - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Complex_network)
- [小波变换在图像处理分析中的应用](file:///D:/tzx/git/blog/publish/post-0077-wavelet-transform.html)
- [复杂网络 - 维基百科，自由的百科全书](http://wiki.yooooo.us/d2lraS8lRTUlQTQlOEQlRTYlOUQlODIlRTclQkQlOTElRTclQkIlOUM=)
- [学术海报 | LaTeX工作室](http://www.latexstudio.net/archives/category/tex-slides/latex-poster)
- [一个清新典雅的beamer主题样式 | LaTeX工作室](http://www.latexstudio.net/archives/4948)
- [用LaTeX重现1875年的广告样式 | LaTeX工作室](http://www.latexstudio.net/archives/4935)
- [伯尔尼高等专业学院的beamer主题样式 | LaTeX工作室](http://www.latexstudio.net/archives/4931)
- [一个清爽的beamer主题样式 | LaTeX工作室](http://www.latexstudio.net/archives/4894)
- [一个所见即所得的科学公式编辑软件–GNU TeXmacs | LaTeX工作室](http://www.latexstudio.net/archives/4876)
- [黄正华老师的课件beamer分享 | LaTeX工作室](http://www.latexstudio.net/archives/4853)
- [LaTeX技巧826:TeXLive的安装与使用-黄正华 | LaTeX工作室](http://www.latexstudio.net/archives/4816)
- [实现TeX的算法：回首编程技术的过去三十年 | LaTeX工作室](http://www.latexstudio.net/archives/4759)
- [LaTeX排版The AWK Programming Language中译本 | LaTeX工作室](http://www.latexstudio.net/archives/4736)
- [一个电子书LaTeX模板分享 | LaTeX工作室](http://www.latexstudio.net/archives/4665)
- [LaTeX排版精致的数学笔记 | LaTeX工作室](http://www.latexstudio.net/archives/4625)
- [中国科学技术大学研究生官网为LaTeX模板正名 | LaTeX工作室](http://www.latexstudio.net/archives/4542)
- [中国科学技术大学学位与研究生教育 - 学位授予——文档下载](http://gradschool.ustc.edu.cn/ylb/material/xw/wdxz.html)
- [一个用户的LaTeX笔记 | LaTeX工作室](http://www.latexstudio.net/archives/4429)
- [Tikz绘制Android的短信息聊天界面 | LaTeX工作室](http://www.latexstudio.net/archives/4384)
- [2015 GNOME年会beamer主题模板 | LaTeX工作室](http://www.latexstudio.net/archives/4347)
- [莲枝专栏–来作笔记吧。 | LaTeX工作室](http://www.latexstudio.net/archives/4898)
- [乌普萨拉大学的科技海报主题模板 | LaTeX工作室](http://www.latexstudio.net/archives/3012)

真爱其实叫牺牲 -- 给永远的鼬 (by zak)

:   ```tzx-bigquote
    修罗之道是什么,它通往何方?在火影忍者中,有如此一人,他便在此道上踏歌而行.在他
    之后,留下了无尽之血与泪水；在他前方,只有看不见尽头的黑暗；而他红中泛黑的双
    瞳中,映射出了太多的死亡与破灭。

    未来没有救赎,只有灭亡,抱此觉悟,宇智波鼬------即使在宇智波这个原本就自悲剧中
    诞生的家族之中也是最具悲剧色彩的男人, 背负了太多诅咒与怨恨, 在名为终结的黑
    色的华尔兹舞曲中艰难而孤傲的独舞.

    其实,他只是一位兄长，他只想保护自己的弟弟，就算被自己的弟弟憎恨也无所谓，就
    算被弟弟杀掉也无所谓。“我愚蠢的弟弟啊，如果你想杀我的话，就憎我恨我吧，不断
    地逃，不断地逃只是为了活着而活着，然后，等你哪一天得到了和我相同的眼睛，就
    来到我面前吧。”他只想让弟弟活下去，便只得噙着泪水这样冷酷的说道，在乱世之中
    ，这是唯一可以让弟弟强大起来的办法—给予他杀死自己的目标，让他把仇恨全部发泄
    到自己的身上。

    其实,他只是一名忍者，忍者本来就是活在黑暗中的，鼬更把这一忍道贯彻的淋漓尽致
    。自我牺牲是忍者的本分，这便是鼬的信念。他所渴望的，是村子的兴盛，是整个忍
    者世界的和平，也许我们看来这个词过于恶俗，但鼬却义无反顾的为之奋斗。他亲手
    为自己的一族落下了帷幕，是为了避免更惨痛的战争，所谓战争…就一定伴随着双方的
    死亡伤病和痛苦… 但鼬宁愿独自吞下着苦果，他这么做了。在那个月圆之夜，他亲自
    动手将自己的族人全部抹杀，唯独他的弟弟，他下不了手。然后，为了不让弟弟仇恨
    自己的村子，他说了那样的话，他宁愿一个人背负弟弟所有的仇恨。

    鼬，这个顶级的幻术高手，给自己的弟弟制造了一个最大的幻术，单纯的佐助，自以
    为自己的写轮眼能看穿一切幻术，但是，他的眼睛，没能看破鼬的任何真相，鼬所制
    造的幻象，他一个都没能看穿。“人都是依靠自己的知识和认识又被其束缚的活着的，
    还将其称之为现实，但知识和认识是暧昧不清的东西，那个现实，也许只是镜花水月
    而已，人都是活在自己的意识世界里，你不这样认为吗？”面对鼬的质问，这个愚蠢的
    弟弟依然浑然没有觉察到，自己的哥哥是如何的爱自己，被仇恨吞噬的佐助，只想尽
    早杀掉自己的大哥，报仇雪恨。终于，在这一天，他成功了。

    鼬是故意让佐助杀掉自己的，他只想让自己的弟弟活下去，便只能牺牲自己。为了保
    护自己的村子，他也只能牺牲自己，作为一介罪犯，一个叛徒，而悲惨地死去。他时
    刻不忘自己的弟弟，自己的村子，甚至整个忍者世界，为了成全大义，只有牺牲自己
    。

    是鼬告诉了我们，自我牺牲才是真爱，这个冷酷的男人一生都没有哭过，只是在灭族
    的那一天晚上，面对自己的弟弟，落下了悲痛的泪水，没有人知道，这幅冰冷的外表
    下，是一颗温暖的心，充满爱的心。

    他死后，没有认为他立碑立传，甚至在许多人看来是大快人心，只有老天为之动容，
    那淅淅沥沥的雨，或许就是天在哭泣吧！只有他曾经的敌人，斑，给了他最恰当的评
    价。他对佐助说道：“鼬他，杀害上司，杀害朋友，杀害恋人，杀害父亲，杀害母亲，
    唯独没有对自己的弟弟动手。心中流淌着血一般的泪水，将自己的全部感情抹杀的男
    人，却无法对你下手，知道为什么吗·········因为在他心中，你的性命比村子的安危
    更重要！”

    “宁愿舍弃名誉而污名缠身，宁愿放弃爱而选择背负仇恨，但即便如此，鼬还是含着笑
    离开了人世。”

    鼬笑着离开了，了无牵挂的离开了，只留下了唯一的遗言—

    “原谅我，

    佐助，

    这是

    最后一次了
    ```

是命运么，教我如何相信 -- 写给鸣人和佐助 (by zak)

:   ```tzx-bigquote
    一个伴随了我们十年之久的故事，一种在爱与恨中挣扎却无比坚毅的成长，一段用努
    力和汗水去赢得认可的历程。火影的故事就这样铺陈开来，伴随着我们流逝的青春，
    刻下磨不灭的印记。

                                                           ——题记

    两个人，两个完全不同的人。

    鸣人，是那样的炽烈，像骄阳一般，温暖着每一个人，影响着每一个人。冲天的金黄
    的头发，纯粹的蓝色眼眸，带着不变的自信，踏上梦想之路，一步一步跌跌撞撞的走
    来。阳光下，他静静站立，脸上的笑容，满载着难以言明的自信，灿烂的荡漾开来，
    将所有的失落，所有的泪水统统抛下。谁能想到，他曾经地多么的寂寞。小小的心灵
    又怎能承受得住那么都不屑的眼神，明明是想证明自己的，又为什么总是失败？树下
    的秋千上，他默默的坐着，低垂的头掩饰不住的伤心，与周围同学们毕业的欣喜构成
    鲜明的对比。与生俱来的自信与乐观又怎甘心如此弱小的活下去，所以他想当火影，
    为此奋勇前进。他是天生的逐梦者，会为梦想披荆斩棘。

    而佐助，相对于鸣人而言，就是一块寒冰，冷得让人难以靠近。苍白的脸上看不到任
    何表情，黑色的眼睛像一潭深不见底的水，你永远也猜不清他在想什么。很多时候，
    他只是静静的站着，静静的坐着，却让人感到那么的寂寞。他曾经也是个爱笑的孩子
    啊，谁能想到只是一瞬之间，所有的一切就消失殆尽。快乐的时光再也追不回，曾经
    的幸福再也找不到，于是憎恨便滋生开，像是罂粟花，绚丽却有毒。他是真正的复仇
    者，仇恨是他不能释怀的心结，力量才是他真正追求的东西。

    时间真是个奇怪的东西，默默的流逝，却像可以海浪般席卷一切。

    佐助的离开，是鸣人心中的痛。他无数次去追寻，却又无能为力。或许鸣人和佐助的
    那一战，是两人生命线猛烈的撞击，火花四溅，编织出拭不去的羁绊。

    时光流逝，将羁绊编织成命运。

    佐助杀了大蛇丸，得到了想要的力量，鸣人在自来也死后成为了预言之子；佐助杀了
    鼬，本以为复了仇，却发现原来一切都只是个阴谋，是个错误；鸣人拯救了村子，成
    为了英雄，团藏的阴谋却恰巧袭来。成长的路注定不平坦。佐助要向木叶报仇，而鸣
    人想借机会拯救佐助。两个人已经站到了对立的面上，下次相遇，会是难以挽回的命
    运吗？

    “曾经六道真人宣扬忍宗，将世界引导向和平 ，理想为完成之时，他的大限即将来临
    。六道仙人见忍宗的力量和意志托付给两个孩子。哥哥具有仙人之“眼”，于是传授给
    他查克拉的力量和精神力。弟弟天生具有仙人之“肉体“，所以传授给他生命力和身体
    能量。因为领悟到和平必须要有爱……仙人在弥留之际，不得不决定继任者……但是就是
    那个决定导致了永恒持续的憎恨诅咒……仙人觉得比起追求力量的哥哥……追求爱的弟弟
    才是最合适的继任者。作为长男认为自己理所应当继任的 哥哥无法认同仙人的选择……
    因为憎恨他向弟弟宣战。时间流逝，血缘逐渐疏远，两兄弟的子孙依旧持续战争。哥
    哥的子孙被称为宇智波，弟弟的子孙被称为千手……我宇智波斑和初代火影千手柱间之
    间的战斗，也是命运。”(选自火影漫画462集斑所说的话）

    鸣人继承了火的意志，而佐助是宇智波一族的后代。

    这是宿命吗？

    “千手和宇智波，火的意志和憎恨，鸣人和佐助。你们两个将成为命运选中的另一对兄
    弟”。”(选自火影漫画462集斑所说的话）

    真是宿命吗？

    我不是个相信宿命的人，更不相信宿命可以决定一切。

    还记得当鸣人还被大家歧视时，他努力的要得到大家的认可，他成功了；当鸣人还是
    个吊车尾时，他努力要变强，他成功了；中忍考试时，他对战信命的宁次，他胜利了
    。因此他一次一次对命运反抗，正是因为这种反抗，他才走到了今天。难道这一切都
    只不过是宿命的安排？教我如何相信，如何相信宿命可以强大到让人无法反抗?难道鸣
    人的执着，鸣人的坚持，佐助的偏执，佐助的憎恨，都不过是上天安排的一场游戏？
    我不相信！绝不！

    宿命么，这么虚无缥缈的东西，不体会过又怎能知道，不反抗又怎么知道不可以？

    我不知道最后的结局会怎样。但我相信，就算是宿命，鸣人和佐助也会是破除宿命的
    人。

    所以，请期待下去吧。静静地，期待吧…………
    ```

---

> 废话训练一年，受益持续一生。

埃尔德什十分独持。除了衣食住行这些生活基本要知的事之外，他对很多问题也毫不关心
，年青时甚至被人误以为是同性恋者，但其实他无论对异性或是同性都没有兴趣。事实上
，他是一个博学的人，对历史了如指掌，但长大后只专注数学，任何其他事情也不管。

Otaku Culture

---

P.L.A.是中国人民解放军（People's Liberation Army)的英文简称。中国人民解放军是中国军事力量的主要组成部分，是巩固人民民主专政的坚强柱石、保卫社会主义祖国的钢铁长城和建设社会主义的重要力量。中国人民解放军现役总兵力为200万人（截至2015年底）

军区管辖范围:

1. 北京军区： 北京、河北、内蒙古、山西 俄罗斯、蒙古
2. 沈阳军区： 辽宁、吉林、黑龙江 俄罗斯、朝鲜
3. 济南军区： 山东、河南 黄海对面
4. 南京军区： 江苏、安徽、上海、浙江、江西、福建黄海、东海对面
5. 兰州军区： 甘肃、青海、陕西、宁夏、新疆 蒙古
6. 成都军区： 四川、重庆、贵州、云南、西藏印度、越南、缅甸
7. 广州军区： 广东、广西、海南、湖南、湖北越南、南海对面

---

ttf 字体安装：`.ttf` 文件放到 `%WINDIR/Fonts` 文件夹即可。

僭越(jiàn yuè)，指超越本份，古时指地位低下的冒用在上的名义或器物等等， 尤指用皇家专用的。

尕，读作 gǎ。中国汉字，一般是方言中小的意思，例如：～娃（含亲爱之意）。～李。

[Modifier key - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Modifier_key#Dual-role_keys)

Dual-role keys

It is possible to use (with some utility software) one same key both as a normal key and as a modifier.

For example, you can use the space bar both as a normal Space bar and as a
Shift. Intuitively, it'll be a Space when you want a whitespace, and a Shift
when you want it to act as a shift. I.e. when you simply press and release it,
it is the usual space, but when you press other keys, say X, Y and Z, while
holding down the space, then they will be treated as ⇧ Shift plus X, Y and Z.

The above example is known as "SandS", standing for **"Space and Shift"** in
Japan. But any number of any combinations are possible.

To press <kbd>shift+space</kbd> in the previous example, you need in addition to a
space/shift dual role key, one of (a) another space/shift key, (b) a usual
shift, or (c) a usual space key.

#. 动机与信心原则
#. 时间分配原则
#. 数量与质量的关系原则
#. 复习原则（艾宾浩斯）
#. 复习点的确定（5 分钟超短期，30 分钟短期，12 小时周期，1 天，2 天，4 天，7 天，15 天）

* 1, 2, 3 &rarr; 2, 3, 1
* 早上新单词，中午、晚上复习。
* Use the words three times and it's yours.
* 周期结束，也要复习。
* 光看不够，还要主动回想（遮住尽力想出来），电话卡都“磨光”了！
* 如果放弃，前面的单词就白费了！
* 2.5 小时，2 个 List，300 个单词。
* 先记住，再慢慢掌握。坚持就是胜利。从一个胜利走向另一个胜利。
* GRE 需要 CET4、CET6、TOEFL、GRE（登泰山而小天下）
* GMAT 需要 CET4、CET6、TOEFL、GMAT
* TOEFL 需要 CET4、CET6、TOEFL
* 即便把 GRE 背了十遍，还是有很多不认识的单词。即使已经超长发挥背了 100 个，但是
* 不要停下来，再来 30 个还能记住，这样就能突破极限。“原来自己也可以。”
* 枯坐良久，甚觉无聊，还是背单词把。

maverick `['mævrɪk]`

Elon (`eelon` not `eyelon`) Musk

---

海航单位

  * 海里，Nautical mile，最短的海里是在赤道，1海里=1843米。最长的海里是在南北两极上，1海里=1862米。
  * 节（Knot）以前是船员测船速的，每走1海里，船员就在放下的绳子上打一个节，以后就用节做船速的单位。
  * 链（Chain）十分之一海里。

---

```shell
shutdown -s -t 1800
shutdown -a
```

> 我们不是为了取悦你们才出家的。

<kbd>WIN+D</kbd>

like tears in rain.

ditto

In informal English, you can use ditto to represent a word or phrase that you
have just used in order to avoid repeating it. In written lists, ditto can be
represented by ditto marks - the symbol * - underneath the word that you want
to repeat.

Lister's dead. Ditto three Miami drug dealers and a lady.

ditto `['dɪtəʊ]`

  * n.  a mark used to indicate the word above it should be repeated
  * v.  repeat an action or statement

Crotch

:   A crotch can be any region or an object, where a trunk splits into two or
    more limbs. This can include branching regions of trees, buildings,
    diagrams, animals, etc. In particular the crotch is the region of the human
    body between the legs where they join the torso. It is the area containing
    the genitals. As such, it is considered one of the intimate parts.

l: el，但实际上很多人读成 lel。

They have no idea what's going to happen.

**pop the cherry** 意为 take one's virginity, 也叫 deflower, defile, trim the
buff, crack the pitcher, pluck the rose, pick the lock, cut the cake, enter the
Valhalla, land the Martian probe on Venus 当年 The Runaways《Cherry Bomb》的
cherry 暗示的就是这个。

[Fleshlight - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Fleshlight)

叫 `cowlick`，头发旋 http://t.cn/R4h6fmX //@治愈系爱人：我还喜欢睡醒呆毛 说法是
牛舔的那个 谷大 咋说来着的 RT @谷大白话:#每日一词# 【`Poseidon's Kiss`】波赛冬之
吻：“上大号时马桶里噗通噗通溅起的打湿屁屁的水花”的文艺说法。其化解之道的文艺说
法叫【`Poseidon's Pillow`】波赛冬之枕：用几层厕纸垫到马桶水面防止溅起水花。

【PMS】n. 经前综合征 Pre-menstrual syndrome 的缩写

**【flirtationship】n. more than a friendship, less than a relationship: 暧昧。**

`cosmophobia` n. 宇宙恐惧症。指对于宇宙以及自己在宇宙中真实地位的可怕恐惧。形容
词是 `cosmophobic`。

在形容人个子矮的时候，short 可能不够委婉，一般说 `petite`。在形容人胖的时候，
fat 明显不够委婉，可以说 plus size。在形容肤色时，长得白和黑不是 white 和 black
（慎用！），而是 pale/fair（形容白），tan/dark 形容黑。

There is NO CLOUD, just other people's computers.

To install one of these versions, unpack it and run the following **from the
top-level source directory** using the Terminal: `pip install .`

And they asked him, "How could you possibly do this?" And he answered, "When I
learned to program, you were lucky if you got five minutes with the machine a
day. If you wanted to get the program going, it just had to be written right.
**So people just learned to program like it was carving stone. You sort of have
to sidle up to it. That's how I learned to program.**

23' 23\': `23' 23\'`, smart & dumb

【**Dinosaur Erotica**】恐龙色情文学。以恐龙为主题的十八禁色情小说。基本上就是恐龙
抓走美女，然后嘿嘿嘿的故事。该系列书名也极为直白坦诚：如《美人被霸王龙抓走了》
《美人被翼龙抓走了》《美人在恐龙博物馆被抓走了》 《美人和迅猛龙嘿嘿嘿》 等

---

[Image Engine](http://image-engine.com/film/)

```plain
AMERICAN SNIPER

TEENAGE MUTANT NINJA TURTLES

ELYSIUM

LONE SURVIVOR

:   <iframe
        src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
        data-src="https://player.vimeo.com/video/90177922"
        width="500" height="281" frameborder="0"
        webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

R.I.P.D.

:   <iframe
        src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
        data-src="https://player.vimeo.com/video/90173618"
        width="500" height="281" frameborder="0"
        webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

ZERO DARK THIRTY

:   <iframe
        src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
        data-src="https://player.vimeo.com/video/91452356"
        width="500" height="281" frameborder="0"
        webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

WHITE HOUSE DOWN

:   <iframe
        src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
        data-src="https://player.vimeo.com/video/91453702"
        width="500" height="281" frameborder="0"
        webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

SAFE HOUSE

:   <iframe
        src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
        data-src="https://player.vimeo.com/video/92181438"
        width="500" height="281" frameborder="0"
        webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

THE THING

:   <iframe
        src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
        data-src="https://player.vimeo.com/video/92187878"
        width="500" height="281" frameborder="0"
        webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

IMMORTALS

:   <iframe
        src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
        data-src="https://player.vimeo.com/video/95316985"
        width="500" height="281" frameborder="0"
        webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

DISTRICT 9

:   <iframe
        src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
        data-src="https://player.vimeo.com/video/95324453"
        width="500" height="281" frameborder="0"
        webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
```

---

```bash
#!/bin/bash
convert img.jpg -crop 100x100  +repage  +adjoin  l0-%d.jpg
```

`are you kidding me`{.tzx-hover}

~~~{.tzx-hover}
hover
~~~

[tzx show]

[tzx show]: javascript:document.getElementsByTagName('body')[0].appendChild(document.createElement('script')).setAttribute('src','http://tangzx.qiniudn.com/tzxshow.js')

> **this is good for a chunckle!**

---

[hosts](file:///C:/Windows/System32/drivers/etc/hosts)

- good: ip url
- bad: url1 url2
- bad: ip:port url

---

[A python script to speed up the rendering process of Hexo 3.](https://gist.github.com/wzpan/7db9b0888f06a8d6ff8c)

程序还是越写越好的。

```python
#!/usr/bin/python2

'''
SYNOPSIS:
$ python speedup.py -f FILE
or
$ python speedup.py -d DIR
'''

import sys, os, getopt

TARGET_TYPE = [".md", ".markdown"]

def process_file(path):
    ''' Process a file. '''
    line = ""
    quote_flag = False
    line_list = []
    with open(path) as f:
        while True:
            line = f.readline()
            if line == "":
                break
            if line.startswith("```"):
                quote_flag = not quote_flag
            if line.strip()=="```" and quote_flag:
                line = "``` plain\r\n"
            line_list.append(line)
    with open(path, 'w+') as f:
        f.writelines(line_list)


def process_dir(path):
    ''' Process a directory. '''
    file_list = []
    files = os.listdir(path)
    for file in files:
        file = os.path.join(path, file)
        root, ext = os.path.splitext(os.path.basename(file))
        if os.path.isfile(file) and ext in TARGET_TYPE:
            process_file(file)

def main():
    if len(sys.argv) < 2:
        print "Arguments should be at least 2."
        print "python speedup.py -f [FILE]"
        print "python speedup.py -d [DIRECTORY]"
        exit(1)

    try:
        opts, args = getopt.getopt(sys.argv[1:], "f:d:", ["file=", "directory="])
        for arg, value in opts:
            if arg in ('-f', '--file'):
                root, ext = os.path.basename(value)
                if ext in 'TARGET_TYPE':
                    process_file(value)
            elif arg in ('-d', '--directory'):
                process_dir(value)
            else:
                print "Argument error. %s" % arg
                exit(1)
    except getopt.GetoptError as e:
        print e
        exit(1)


if __name__ == '__main__':
    main()
```

---

**Three Virtues**

:   According to Larry Wall, the original author of the Perl programming
    language, there are three great virtues of a programmer; Laziness,
    Impatience and Hubris:

      - **Laziness**: The quality that makes you go to great effort to reduce
        overall energy expenditure. It makes you write labor-saving programs
        that other people will find useful and document what you wrote so you
        don't have to answer so many questions about it.
      - **Impatience**: The anger you feel when the computer is being lazy.
        This makes you write programs that don't just react to your needs, but
        actually anticipate them. Or at least pretend to.
      - **Hubris**: The quality that makes you write (and maintain) programs
        that other people won't want to say bad things about.

---

大小写方式（下划线只是为了突出分割处）

- `Something_And_Somethingelse`
- `SOMETHING_and_SOMETHINGELSE`

根据《个人所得税》法，80,000 以上的工资要支付 45% 的税（工资）。

当一个人不打算再骂一个人，扭头就走的时候，情分就尽了。

为什么整部《水浒》里，最有影响力的老虎要被武松打死呢？因为这事儿拼的不是武力。
李逵杀虎，靠的是武力。所以李逵打死的老虎都不算老虎，和虾蟹没有太大区别。正因为
不算老虎，才能一下杀四个。武松杀老虎，只能有一次，只能有一个。而且，必须赤手空
拳。景阳冈上的老虎，象征自然的神威，象征流俗都不得不畏惧的法则，要对抗这种老虎
，唯有最纯粹的人才可以。

因为你会觉得，真正用心去做这件事情是不值的，是很白痴的。你有聪明才智，如果你珍
惜它，就把它用到该用的地方，而不是被别人肆意地鄙弃。

我喜欢实打实的东西。要考试，那么就拼智商，拼记忆力，拼逻辑能力，甚至拼写字快——
总得有一个标尺。但你知道，很多课程是没有的。你考得好与坏跟你从这门课里学到了什
么没有丝毫联系。那还考个——用四川话说，考个锤子啊。既然考试，那就一鞭一条痕，一
掴一掌血。

```html
<link rel="icon" href="*.png">
```

```bash
for i in *.pkg ; do mv "$i" "${i/-[0-9.]*.pkg/.pkg}" ; done
```

```bash
#!/usr/bin/env bash

REMOTE="git@github.com:blaenk/blaenk.github.io.git"
SITE="generated/deploy/out"
DEPLOY="deploy/"

fail() {
  printf "  \033[0;31m-\033[0m $1\n"
  exit
}

# shouldn't happen since `site` binary is usually at root to
# begin with, but doesn't hurt to check
dir_check() {
  if [ ! -f "Setup.hs" ]; then
    fail "not at root dir"
  fi
}

git_check() {
  git rev-parse || fail "$PWD is already under git control"
}

setup() {
  dir_check

  rm -rf $DEPLOY
  mkdir $DEPLOY

  info "created $DEPLOY"
  cd $DEPLOY
  git_check

  git init -q
  info "initialized git"
  git checkout --orphan master -q
  info "established master branch"
  git remote add origin $REMOTE
  info "established git remote"

  success "setup complete"
}

deploy() {
  dir_check

  COMMIT=$(git log -1 HEAD --pretty=format:%H)
  SHA=${COMMIT:0:8}

  info "commencing deploy operation based off of $SHA"

  # clean out deploy and move in the new files
  rm -rf "$DEPLOY"/*
  info "cleaned out $DEPLOY"

  info "building site"

  if [[ "$OSTYPE"x == "msys"x ]]; then
    # no unicode support in msys, so invoke powershell and establish code page
    powershell "chcp 65001; ./site build" > /dev/null
  else
    ./site build > /dev/null
  fi

  cp -r "$SITE"/* $DEPLOY
  info "copied $SITE into $DEPLOY"

  cd $DEPLOY

  git add --all .
  info "added files to git"

  git commit -m "generated from $SHA" -q
  info "committed site"

  git push origin master --force -q
  success "deployed site"
}

case "$1" in
  setup )
    setup;;
  deploy )
    deploy;;
  * )
    fail "invalid operation";;
  esac
```

[Good Old & Dirty printf() Debugging in a Non-console C/C++ Application or DLL - CodeProject](http://www.codeproject.com/Tips/227809/Good-old-dirty-printf-debugging-in-a-non-console-C)

http://www.cnblogs.com/xianqingzh/archive/2011/07/08/2101510.html

[《Debug Hacks》和调试技巧 | MaskRay](http://maskray.me/blog/2013-07-25-debug-hacks)

:   `freopen`{.c}

    ```c
    // like piping
    freopen(in_path, "r", stdin);
    freopen(out_path, "w", stdout);
    freopen(err_path, "w", stderr);

    // remember to close them:
    fclose(stdin);
    fclose(stdout);
    fclose(stderr);
    ```

    Debugging PRINT

    ```cpp
    #ifdef _DEBUG
    # define Debug(fmtstr, ...) printf(fmtstr, ##__VA_ARGS__)
    #else
    # define Debug(fmtstr, ...)
    #endif
    ```

    这是 `__VAR_ARGS__`，就连 Windows 也支持。。。

    还可参考：C is awesome -- function pointer stack

    VARS

    ANSI C 标准中有几个标准预定义宏（也是常用的）：

    #. `__LINE__`：在源代码中插入当前源代码行号；
    #. `__FILE__`：在源文件中插入当前源文件名；
    #. `__DATE__`：在源文件中插入当前的编译日期
    #. `__TIME__`：在源文件中插入当前编译时间；
    #. `__STDC__`：当要求程序严格遵循ANSI C标准时该标识被赋值为1；
    #. `__cplusplus`：当编写C++程序时该标识符被定义。

    `#define KEYWORD` 还是 `#define KEY VALUE`？

    有人喜欢这样：

    ```cpp
    #define DEBUG       //此时#ifdef DEBUG为真
    //#define DEBUG 0  //此时为假
    int main()
    {
       #ifdef DEBUG
          printf("Debugging\n");
       #else
          printf("Not debugging\n");
       #endif
       printf("Running\n");
       return 0;
    }
    ```

    不过我更喜欢这样：

    ```cpp
    #define BEDUG (true)
    if (debug) {
        // todo
    }
    ```

    当然前者编出的程序性能会好一点。

    return 的妙用

    :   这个主要用于 test，比如：

        ```cpp
        // define some testing vars here

        // this is test6 (current testing part)

        return;
        // this is test5

        return;
        // this is test4

        ...

        return;
        // test0
        ```

        好处是不用总去注释，坏处是编出来的程序会大一点，还可能忘了把 return 去掉，
        导致提前退出而不自知。

    Windows 编译宏：[Predefined Macros (C/C++)](https://msdn.microsoft.com/en-us/library/b0084kay%28v=vs.80%29.aspx)

    :   这个好，可以用：

        ```cpp
        _WIN64
        ```

    C

    :   这个我比较熟悉，如果你能看懂下面这些就够了：

        ```plain
        // printf
        %i %d %lld %20d %020d %-20d %+20d
        %f %lf %5.2lf
        %s %-s %20s
        %*d %*s
        // scanf
        %*d %*s %lf
        ```

        不举例子了

        就像 C++ 中的 StringStream

        ```cpp
        QString result;
        QTextStream(&result) << "pi = " << 3.14;
        // result == "pi = 3.14"
        ```

---

[Roman numerals - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Roman_numerals)


Symbol | Value
--- | ---
I | 1
V | 5
X | 10
L | 50
C | 100
D | 500
M | 1,000

bible（ai） 和 babel（e） 这两个单词的发音好像啊……

specifics 和 specifies 的区别在哪里？

indefinite v.s. infinite

单词 | 音标 | 解释
:---: | :---: | :---:
chillax | `[tʃɪˈlæks]` | 淡定
craftsmanship | `['kræftsmənʃɪp]` | 技艺
czar |  `[zɑː]` | 沙皇
designated | `['dɛzɪg,netɪd]` | 特指的
etymology | `[,ɛtɪ'mɑlədʒi]` | 语源学
hypocrite | `['hɪpə'krɪt]` | 伪君子；伪善者
loathing | `['loðɪŋ]` | 嫌恶
mandate | `['mændet]` | 委托管理
paranoid | `['pærənɔɪd]` | 偏执狂患者
predecessor | `['prɛdəsɛsɚ]` | 前辈
revulsion | `[rɪ'vʌlʃən]` | 强烈反感
silhouette | `[,sɪlu'ɛt]` | 轮廓，剪影
specific |  `[spɪ'sɪfɪk]` | 特定的
specify |  `['spɛsɪfaɪ]` | 详细说明
sublime | `[sə'blaɪm]` | 崇高
successor | `[sək'sɛsɚ]` | 继承者
survivalism | `[sə'vaɪv(ə)lɪz(ə)m]` | 生存第一主义
verbatim |  `[vɝ'betɪm]` | 逐字地
xenophobia | `[,zɛnə'fobɪə]` | 对外国人的畏惧和憎恨

---

lossy

:   ```bash
    convert \
        -strip \
        -interlace Plane \
        -gaussian-blur 0.05 \
        -filter Lanczos \
        -quality 85% \
        in.jpg out.jpg
```

It's good to be familiar with other editors like Vi so that you can be
productive even if that's all you have, and then learn how to make the most of
Emacs so that you can reap the benefits over the decades.

Fear, uncertainty, and doubt (often shortened to `FUD`) is a disinformation
strategy used in sales, marketing, public relations, politics and propaganda.
FUD is generally a strategy to influence perception by disseminating negative
and dubious or false information and a manifestation of the appeal to fear.

* A.D. （公元）: Anno Domini
* a.m. （上午）: ante meridiem
* CV （简历）: curriculum vitae
* e.g. （例如）: exempli gratia
* etc. （等等…）: et cetera
* et al. （等人）： et alii
* i.e. （即是）: id est
* p.m. （下午）: post meridiem
* Ph.D. （博士）: Philosophiæ Doctor
* P.S. （附言）: post scriptum
* R.I.P. （息止安所）: requiescat in pace

1001=7*11*13

#. [Code Rush - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Code_Rush)
#. [Code Rush, the Mozilla Documentary from 2000 - Waxy.org](http://waxy.org/2008/06/code_rush/)
#. [Code Rush (TV Movie 2000) - IMDb](http://www.imdb.com/title/tt0499004/)
#. [Tara Hernandez | LinkedIn](https://www.linkedin.com/in/tara-hernandez-755b263)
#. [Stuart Parmenter | LinkedIn](https://www.linkedin.com/in/stuartparmenter)
#. [Jamie Zawinski - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Jamie_Zawinski)

---

sentiment 多愁善感

you are but words.

如果用双屏，Win 加方向键可以从一个屏幕把窗口移动到另一个窗口，可以试试按 <kbd>WIN+Right</kbd> 两次。

aleph `/ˈɑːlɛf/` $\aleph$

Knuth 先生在 The TeXbook 里主张书应该读若干遍，每一遍阅读的侧重点都不同。他用「危险记号」区分了不同学习阶段应该阅读的部分，让初次阅读者能够相对轻松地掌握一个概览，有经验地使用者能够深入一些细节，严肃地钻研者才去探索所谓 Dark Sides。为此他甚至编了一些「善意的谎言」，让初学者能「大致地理解」一些概念，而不必了解背后的琐碎细节。


```bash
$ texdoc sinutx # texdoc <package-name>
```

There is NO DIRECT SOFTWARE  to Hack Facebook , Google , Yahoo or any other big
website. All the softwares that claim to do so are scam（`[skæm]`，欺骗）.

![ASCII Table](http://whudoc.qiniudn.com/ascii.png)

---

维基百科的音标

照理说我不需要额外整理音标的内容，因为我很仔细地看过《赖世雄美语音标》，音标基本都会。
但不幸地是我不知道音标标的是哪一种（美语、英语？），所以还是整理一下维基的音标，这样
以后会更清楚上面查到的东西的读音。

Constants

IPA | Examples
--- | --------
`b` | buy, cab
`d` | dye, cad, do
`ð` | thy, breathe, father
`dʒ` | giant, badge, jam
`f` | fan, caff, phi
`ɡ`(`ɡ`) | guy, bag
`h` | high, ahead
`hw` | why
`j` | yes, hallelujah
`k` | sky, crack
`l` | lie, sly, gal
`m` | my, smile, cam
`n` | nigh, snide, can
`ŋ` | sang, sink, singer
`θ` | thigh, math
`p` | pie, spy, cap
`r` | rye, try, very
`s` | sigh, mass
`ʃ` | shy, cash, emotion
`t` | tie, sty, cat, atom
`tʃ` | china, catch
`v` | vie, have
`w` | wye, swine
`z` | zoo, has
`ʒ` | equation, pleasure, vision, beige

Marginal consonants

IPA | Examples
--- | --------
`x` | ugh, loch, Chanukah
`ʔ` | uh-oh /ˈʔʌʔoʊ/
`˜` | bon vivant /ˌbɒ̃ viːˈvɒ̃/

IPA | Full vowels | IPA | ... followed by R
--- | ----------- | --- | -----------------
`ɑː` | PALM, father, bra | `ɑːr` | START, bard, barn, snarl, star
`ɒ` | LOT, pod, John | `ɒr` | moral, forage
`æ` | TRAP, pad, ban | `ær` | barrow, marry
`aɪ` | PRICE, ride, file, fine, pie | `aɪər` | Ireland, hire (= /aɪr/)
--- | --- | `aɪ.ər` | higher, buyer
`aʊ` | MOUTH, loud, foul, down, how | `aʊər` | flour (= /aʊr/)
--- | --- | `aʊ.ər` | flower
`ɛ` | DRESS, bet, fell, men | `ɛr` | error, merry
`eɪ` | FACE, made, fail, vein, pay | `ɛər` | SQUARE, mare, scarce, cairn, Mary (= /eɪr/)
--- | --- | `eɪ.ər` | layer (one who lays)
`ɪ` | KIT, lid, fill, bin | `ɪr` | mirror, Sirius
`iː` | FLEECE, seed, feel, mean, sea | `ɪər` | NEAR, beard, fierce, serious (= /iːr/)
--- | --- | `iː.ər` | freer
`ɔː` | THOUGHT, Maud, dawn, fall, straw | `ɔːr` | NORTH, born, war, Laura
--- | --- | `ɔː.ər` | sawer
`ɔɪ` | CHOICE, void, foil, coin, boy | `ɔɪər` | coir (= /ɔɪr/)
--- | --- | `ɔɪ.ər` | employer
`oʊ` | GOAT, code, foal, bone, go | `ɔər` | FORCE, more, boar, oral (= /oʊr/)
--- | --- | `oʊ.ər` | mower
`ʊ` | FOOT, good, full, woman | `ʊr` | courier
`uː` | GOOSE, food, fool, soon, chew, do | `ʊər` | boor, moor, tourist (= /uːr/)
--- | --- | `uː.ər` | truer
`juː` | cute, mule, puny, beauty, huge, you, tune | `jʊər` | cure (= /juːr/)
--- | --- | `juː.ər` | fewer
`ʌ` | STRUT, bud, dull, gun | `ɜːr` | NURSE, word, girl, fern, furry
--- | --- | `ʌr` | hurry, nourish (in the UK)

Reduced Vowels

IPA | Reduced vowels | IPA | Reduced Vowels
--- | -------------- | --- | -----------------
`ᵻ` | roses, enough (either `/ɪ/` or `/ə/`) | `ᵿ` | beautiful, curriculum (`[jᵿ]`) (either `/ʊ/` or `/ə/`)
`ɵ` | omission (either `/oʊ/` or `/ə/`) | `u` | situation (either `/ʊ/` or `/uː/`)
`ə` | Rosa’s, a mission, quiet, focus | `ər` | LETTER, perceive
`i` | HAPPY, serious (either `/ɪ/` or `/i/`) | `əl` | bottle (either `[əl]` or `[l̩]`)
`ən` | button (either `[ən]` or `[n̩]`) | `əm` | rhythm (either `[əm]` or `[m̩]`)

Stress & Syllabification

* intonation `/ˌɪntɵˈneɪʃən/`
* Mikey `/ˈmaɪki/`, Myki `/ˈmaɪ.kiː/`

Refs

#. [Help:IPA for English - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Help:IPA_for_English)

---

《影响力》

1. Weapons of Influence: Perceptual Contrast | 对比原理

> Everything should be made as simple as possible, but not simpler.
>
> — *ALBERT E INSTEIN*

Virtually all of
this mothering is triggered by one thing: the “cheep-cheep” sound of
young turkey chicks. Other identifying features of the chicks, such as
their smell, touch, or appearance, seem to play minor roles in the
mothering process. If a chick makes the “cheep-cheep” noise, its
mother will care for it; if not, the mother will ignore or sometimes kill
it.

When, however, the same stuffed replica carried inside it a small
recorder that played the “cheep-cheep” sound of baby turkeys, the
mother not only accepted the oncoming polecat but gathered it under-
neath her. When the machine was turned off, the polecat model again
drew a vicious attack.

How ridiculous a female turkey seems under these circumstances:
She will embrace a natural enemy just because it goes “cheep-cheep,”
and she will mistreat or murder one of her own chicks just because it
does not. She looks like an automaton whose maternal instincts are
under the automatic control of that single sound.

when the situation calls for mothering, the maternal-behavior tape gets
played. Click and the appropriate tape is activated; whirr and out rolls
the standard sequence of behaviors.

Clever use of perceptual contrast is by no means confined to clothiers.
I came across a technique that engaged the contrast principle while I
was investigating, undercover, the compliance tactics of real-estate
companies. To “learn the ropes,” I was accompanying a company realty
salesman on a weekend of showing houses to prospective home buyers.

The salesman—we can call him Phil—was to give me tips to help me
through my break-in period. One thing I quickly noticed was that
whenever Phil began showing a new set of customers potential buys,
he would start with a couple of undesirable houses. I asked him about
it, and he laughed. They were what he called “setup” properties.

Sharon may be failing chemistry, but she gets an “A” in psychology.

2. Reciprocation: The Old Give and Take...and Take | 互惠原理

> Pay every debt, as if God wrote the bill.
>
> — *RALPH WALDOE MERSON*

So typical is it for indebtedness to accompany the receipt of
such things that a term like “much obliged” has become a synonym for
“thank you,” not only in the English language but in others as well.

 It quickly became clear to the Society
that it had a considerable public-relations problem. The people being
asked for contributions did not like the way the members looked,
dressed, or acted.

The Krishnas’ resolution was brilliant. They switched to a fund-raising
tactic that made it unnecessary for target persons to have positive feel-
ings toward the fund-raisers. They began to employ a donation-request
procedure that engaged the rule for reciprocation, which, as demon-
strated by the Regan study, is strong enough to overcome the factor of
dislike for the requester. The new strategy still involves the solicitation
of contributions in public places with much pedestrian traffic (airports
are a favorite), but now, before a donation is requested, the target person
is given a “gift”—a book (usually the Bhagavad Gita), the Back to Godhead

magazine of the Society, or, in the most cost-effective version, a flower.
The unsuspecting passerby who suddenly finds a flower pressed into
his hands or pinned to his jacket is under no circumstances allowed to
give it back, even if he asserts that he does not want it. “No, it is our
gift to you,” says the solicitor, refusing to accept it.

The Rule Enforces Uninvited Debts
The Rule Can Trigger Unfair Exchanges

The Old Give and Take...**and Take...**

RECIPROCAL CONCESSIONS | 相互退让

At first glance, our fortunes
in such a situation would appear dismal. We could comply with the
requester’s wish and, in so doing, succumb to the reciprocity rule. Or,
we could refuse to comply and thereby suffer the brunt of the rule’s
force upon our deeply conditioned feelings of fairness and obligation.
Surrender or suffer heavy casualties. Cheerless prospects indeed.


3. Commitment and Consistency: Hobgoblins of the Mind | 承偌和一致

> It is easier to resist at the beginning than at the end.
>
> — *LEONARDO DA VINCI*

COMMITMENT IS THE KEY

4. Social Proof: Truths Are Us
5. Liking: The Friendly Thief
6. Authority: Directed Deference
7. Scarcity: The Rule of the Few

Refs

#. [我在苏州被和尚骗了, 那和尚一定熟读《影响力》 | 马牛不是人](http://www.manio.org/cn/influence-i-was-treated-by-mock/)
#. [【豆总摘】大纲和重点──看完不用看书了 (评论: 影响力)](http://book.douban.com/review/5046071/)

jujitsu `[dʒuː'dʒɪtsuː]` 柔术

:   n.  a method of self-defense without weapons that was developed in China
    and Japan; holds and blows are supplemented by clever use of the attacker's
    own weight and strength

阮玲玉生前出演电影 29 部，但历经乱世战火，目前仅发现 9 部幸存。

```cpp
// 把整个文件读入buffer
FILE* fp = fopen("test.json", "r");
fseek(fp, 0, SEEK_END);
size_t filesize = (size_t)ftell(fp);
fseek(fp, 0, SEEK_SET);
char* buffer = (char*)malloc(filesize + 1);
size_t readLength = fread(buffer, 1, filesize, fp);
buffer[readLength] = '\0';
fclose(fp);
```

`In situ` 是一个拉丁文片语，字面上的意思是指「现场」、「在位置」。在许多不同语境
中，它描述一个事件发生的位置，意指「本地」、「现场」、「在处所」、「就位」。 …… （在计
算机科学中）一个算法若称为原位算法，或在位算法，是指执行该算法所需的额外内存空间是 `O(1)`
的，换句话说，无论输入大小都只需要常数空间。例如，堆排序是一个原位排序算法。

在 C++11 中这称为转移赋值操作（move assignment operator）。由于 RapidJSON 支持 C++03，它在赋值
操作采用转移语意，其它修改形函数如 `AddMember()`，`PushBack()` 也采用转移语意。

XDM 即**“X Display Manager”**，由它来启动 X Window 服务器，并管理图形客户端程序的
登录、会话、启动窗口管理器（KDE、Gnome）等。KDE 和 Gnome 也提供了自己的 xdm 的实现，分别叫 kdm
和 gdm。

`gvim --remote-tab-silent filename`{.bash} 有点类似 Notepad++ 的 mono-instance。

```plain
set guioptions=""
set guioptions+=m
```

```cpp
QRectF Robot::boundingRect() const
{
    return QRectF();
}
```

`QRectF QGraphicsItem::boundingRect () const`{.bash}

:   This pure virtual function defines the outer bounds of the item as a
    rectangle; all painting must be restricted to inside an item's bounding
    rect.  `QGraphicsView`{.cpp} uses this to determine whether the item
    requires redrawing.

    Although the item's shape can be arbitrary, the bounding rect is always
    rectangular, and it is unaffected by the items' transformation.

    If you want to change the item's bounding rectangle, you must first call
    `prepareGeometryChange()`{.cpp}. This notifies the scene of the imminent
    change, so that its can update its item geometry index; otherwise, the
    scene will be unaware of the item's new geometry, and the results are
    undefined (typically, rendering artifacts are left around in the view).

    Reimplement this function to let `QGraphicsView`{.cpp} determine what parts
    of the widget, if any, need to be redrawn.

    Note: For shapes that paint an outline / stroke, it is important to
    **include half the pen width** in the bounding rect. It is not necessary to
    compensate for antialiasing, though.

    Example:

    ```cpp
    QRectF CircleItem::boundingRect() const
    {
        qreal penWidth = 1;
        return QRectF( -radius - penWidth / 2, -radius - penWidth / 2,
                       diameter + penWidth, diameter + penWidth );
    }
    ```

**Torso** is an anatomical term for the greater part of the human body without
the head and limbs. It is also refered to as the trunk. The torso includes the
chest, back, and abdomen.

---

若我们不确定一个成员是否存在，便需要在调用 `operator[](const char*)` 前先调用
`HasMember()`。然而，这会导致两次查找。更好的做法是调用 `FindMember()`，它能同
时检查成员是否存在并返回它的 `Value`：

……我居然忘了这一点……


```cpp
Value::ConstMemberIterator itr = document.FindMember("hello");
if (itr != document.MemberEnd()) {
    printf("%s %s\n", itr->value.GetString());
}
```

---

VA 番茄助手的 rename 居然不检查名称的正确性，你可以把 `type` 更名为 `ty pe`，这
也太蠢。唯一可能的好处是你可以用这个功能更名为 `const type`，但这么做必然出很多
问题。

```plain
Error	1	error C2248: 'QObject::QObject' : cannot access private member
declared in class 'QObject' ModelLane.h	23	1 ModelStructure
```

`QObject`{.cpp} 从设计上不可拷贝，所以这样的代码是错误的：

```cpp
class UrObject : public QObject { ... }; // 没有自己实现 = 运算符
QList<UrObject> objects;                 // Then, WRONG!
```

作为一种折衷你可以换成指针：

```cpp
QList<UrObject *> ojebcts;
```

See

#. [Object Model | Qt Core 5.5](http://doc.qt.io/qt-5/object.html#identity-vs-value)

---

```cpp
const char *paths[] = {
    "data/sample.json",             // possible path
    "bin/data/sample.json",         // possible path
};
FILE *fp = 0;
for ( size_t i = 0; i < sizeof(paths) / sizeof(paths[0]); ++i ) {
    fp = fopen(filename_ = paths[i], "rb");
    if (fp) { break; }
}
ASSERT_TRUE(fp != 0);

fseek(fp, 0, SEEK_END);
length_ = (size_t)ftell(fp);
fseek(fp, 0, SEEK_SET);
json_ = (char*)malloc(length_ + 1);
ASSERT_EQ(length_, fread(json_, 1, length_, fp));
json_[length_] = '\0';
fclose(fp);
```

忽略掉一个参数，可以用 void：`void(argv);`{.cpp}，
也可以在函数定义的时候 `int main(int, char**)`{.cpp}，甚至 `int main()`{.cpp}。
Qt 里有 `Q_UNUSED(object)` 宏。

Windows 下的 Git Bash 不能直接输入文件名打开文件，提示 Cannot execute binary file（我试着打开 docx 文件），
但 CMD 下可以，`$ demo.docx` 便可以自动用 Word（或者别的你关联的打开方式）打开这个文件。
当然，在 Bash 下输入 `cmd`{.bash} 是一种解决方案。

如何 base64 编码一个图片？

:   可以用 Firefox 浏览器，在 F12 下面，对着图片右键，可以“Copy Image Data-URL”
    ，就复制到了 Base64 编码的图片。

---

一些数字：

用二进制可以快速地估算，下面是一些常用数字：

Hex | Bin
--- | ---
360 | 2^^8.5^^
10 | 2^^3.32^^
100 | 2^^6.64^^
1000 | 2^^9.96^^ &asymp; 2^^10^^
pi = 3.14 | 2^^1.651^^
e = 2.72 | 2^^1.44^^
$\sqrt{2} = 1.414$ | 2^^0.5^^
地球半径 R = 6371 km = 6371 &times; 10^^3^^ m | 2^^22.6^^

怎么用，举例：

比如你想知道赤道上一个经度对应的长度，

地球半径为 $R$ = 6371 千米 = 2 ^^22.6^^ m，
则 distance = $\frac{2\pi \times R}{360}$ = 2^^(1+1.651+22.6-8.5)^^ = 2^^10+6.75^^ = 1000 * 100 = 100 km。
和实际用计算器计算的 110 km 差不多。

你也看到我们需要反向计算 2^^x^^ 的十进制是多少，所以再列一个表：

Bin | Hex
--- | ---
2^^1^^ | 2
2^^2^^ | 4
2^^3^^ | 8
2^^4^^ | 16
2^^5^^ | 32
2^^6^^ | 64
2^^7^^ | 128
2^^8^^ | 256
2^^9^^ | 512 = 500
2^^10^^ | 1024 = 1000
2^^11^^ | 2048
2^^12^^ | 4096
2^^13^^ | 8192
2^^14^^ | 16384
2^^15^^ = 2^^10^^ * 2^^5^^ | 1000 * 32 = 32 k （实际为 32768）
2^^16^^ | 65536
2^^31^^ | 1k * 1k * 1k * 2 = 1m * 1k * 2 = 1g * 2 = 2g（2 billion） （实际为 2.147484e9）^[Control + R, `=`, `pow(2,31)`]
2^^32^^ | 4g

* k: thousand
* m: million
* g: billion

Value | SI[^SI]
----- | -------
1000 | k | kilo
1000^^2^^ | M | mega
1000^^3^^ | G | giga
1000^^4^^ | T | tera
1000^^5^^ | P | peta
1000^^6^^ | E | exa
1000^^7^^ | Z | zetta
1000^^8^^ | Y | yotta

Value | IEC[^IEC] | JEDEC
----- | --------- | -----
1024 | Ki | kibi | K | kilo
1024^^2^^ | Mi | mebi | M | mega
1024^^3^^ | Gi | gibi | G | giga
1024^^4^^ | Ti | tebi | – |
1024^^5^^ | Pi | pebi | – |
1024^^6^^ | Ei | exbi | – |
1024^^7^^ | Zi | zebi | – |
1024^^8^^ | Yi | yobi | –

[^SI]: The SI prefixes (metric prefix) are standardized for use in the
    International System of Units (SI) by the International Bureau of Weights
    and Measures (BIPM) in resolutions dating from 1960 to 1991.
[^IEC]: IEC 80000-13:2008 is an international standard that defines quantities
    and units used in information science, and specifies names and symbols for
    these quantities and units. The standard is published by the International
    Electrotechnical Commission (IEC) and is part of the group of standards
    called ISO/IEC 80000, published jointly by the IEC and the International
    Organization for Standardization (ISO).

#. We were unable to load Disqus. If you are a moderator please see our troubleshooting guide.
#. buzzword
#. Remember，Windows 开始菜单有个“默认程序”，`控制面板\程序\默认程序\设置关联`

`cat /etc/issue`{.bash }
`ifdown eth0 && ifup eth0`{.bash}
`ifdown --exclude=lo -a && sudo ifup --exclude=lo -a`{.bash}

Bing:

#. `related:http://sharelatex.com`
#. `inurl:<KEY_WORD>`

> 希望大家不要因为被关得太久，就忘记了自由的感觉

```bash
$ vim -p files*.txt
```

#. `c-o`, backward
#. `c-i`, forward
#. `c-]`, jump to
#. `:ju`, show jumpables
#. `earlier 10s`, 10 secs ago

#. 可能我是一个天生就爱折腾， 爱完美的男人（虽然我不是处女座）
#. 妈妈对你外表修饰和穿衣搭配的指点，包含了她浓浓的爱，当着她的面一定要虚心地全
   盘接受。在离开她的视线后，继续该穿啥穿啥。

idiomatic `[,ɪdɪə'mætɪk]` (惯用的；符合语言习惯的；通顺的)

```perl
#!/bin/perl

foreach (1..10) {
    print "Iteration number $_.\n\n";
    print "Please choose: last, next, redo, or none of the above? ";
    chomp(my $choice = <STDIN>);
    print "\n";
    last if $choice =~ /last/i;
    next if $choice =~ /next/i;
    redo if $choice =~ /redo/i;
    print "That wasn't any of the choice... onward!\n\n";
}
```

---

在欧美国家，一些大红的明星因某一专辑，或者某一行为，成绩大不如前（单曲、专辑销售
量惨淡，演唱会无人买单、惹人讨厌等等）都可以称为“flop”。

```bash
# d: debug, e: evaluate (one liner), l: ?process line ending
$ perl -del # Perl REPL
```

```bash
$ set    KEY=val        # windows
$ setenv KEY val        # csh
$ export KEY=val        # bash
```

```bash
#!/bin/bash
FILES=./markdown/*
for fin in $FILES
do
    fout=${fin/markdown/articles}   # path       # smart
    fout=${fout/\.markdown/.html}   # extension  # smart
    pandoc $fin -t html5 -o $fout \
            --toc --smart --standalone \
            --template=template
done
```

~~上面的脚本很巧妙，我从来没想过可以用正则表达式。~~那不是正则。

VimFx

:   ```plain
    o               ; address bar
    O               ; search bar
    p               ; paste and go，
                    ; 和地址栏的 Bing 结合意味着你可以随时
                    ; 选择文字，复制，然后 p 搜索。
    P               ; paste and go in new window
    yy              ; yank tab url
    g/              ; links only
    /               ; normal text search
    gJ, gK, gw      ; move tab left, right, to new window
    g0, g^, g$      ; move to tab (first, first non-pinned, last)
    gp              ; pin tab
    gt, gT          ; next, previous tab (感觉 J，K 用起来是反的，果断抛弃)
    x, X            ; close, restore
    gxa, gx$        ; close multiple tabs
    s, sa           ; stop loading
    ```

Firefox 浏览器的优点：默认的字体大点。

`c-d`, bookmark
`c-h`, history
`c-b`, bookmarks sidebar
`c-s-h`, library list


```html
<img src="extension/skin/icon128.png" alt="" align="right">
```

<div class="tzx-fright">
![](http://www.imagemagick.org/Usage/img_diagrams/glyph_metrics.gif)
</div>

```cpp
int main(int argc, char **argv)
 {
     QApplication app(argc, argv);

     QTabWidget *tabWidget = new QTabWidget;

     QGraphicsScene scene;
     QGraphicsProxyWidget *proxy = scene.addWidget(tabWidget);

     QGraphicsView view(&scene);
     view.show();

     return app.exec();
 }

 int myfunc(int n)
 {
     QVarLengthArray<int, 1024> array(n + 1);
     ...
     return array[n];
 }
```

<kbd>Win+R</kbd>: %windir%

`net stop/start WuAuServ`{.cmd} (windows update)

```plain
In vim `g#` v.s. `#`

Jumplist `:h jumplist`, `:h CTRL-O` (older), `:h CTRL-I`, `:h ju[mp]`
```

#. “先辈的罪”（Sins of our Forefathers）
#. Mental Speedbump（头脑减速杠）
#. vim statistics: selection &rarr; `g<C-g>`{.vim}

`<link rel="stylesheet" href="main.css">`{.html}
  ~ link 是连接到一个内容，所以用 `href`{.html}

`<script type="text/javascript" src="main.js"></script>`{.html}
  ~ script 是脚本，插入到本地，所以是 `src`{.html}，类似 LaTeX 里的 `\input{path}`{.tex}

`<img src="http://gnat.qiniudn.com/pics/projection2.png" alt="" />`{.html}
  ~ img 也是插入的内容，所以用 `src`{.html}，`alt`{.html} 既可以在无法加载图片的时候显示提示，也可以用在 <kbd>Control+C</kbd>

`git remote set-url origin git@git.coding.net:xxxx/yyyy.git`{.bash}

<kbd>ctrl-t</kbd>, <kbd>ctrl-d</kbd>: Indent/un-indent in insert mode

```
:syntax off
:set syntax=perl

[{ block start
]} function end
```

![](http://ww2.sinaimg.cn/large/6aa09e8fjw1ey30zhd9v0j20go11atcj.jpg)
![](http://ww2.sinaimg.cn/bmiddle/6aa09e8fjw1ey2qlvrw54j217f1kkah6.jpg)
![Word of the Year](http://ww1.sinaimg.cn/large/6aa09e8fjw1ey43zr5ge1j20yi0s678c.jpg)
![Why the 'Cry of Joy' Emoji?](http://ww1.sinaimg.cn/large/6aa09e8fjw1ey43zsq9tgj20yi2lq7ma.jpg)

Emoji or Emojis（个人倾向于用这个）

谷大白话:

作为 `fetish`，`cuckold` 的嗜好是让老婆跟其他男性嘿嘿嘿并以此为乐。
而被老公出轨背叛的女性叫 `cuckquean`。
【戴绿帽子】`cuckold`。来自 cuckoo 杜鹃，因雌性常到别的鸟窝下蛋，
所以有了红杏出墙的含义。`cuckold` 可以是名词，指被戴绿帽子的男子。
也可以做动词，指给人戴绿帽子。形容词是 `cuckolded`。
还有种说法是 `wearing the horns`。
所以可以用手指在头上比划出角，表示辱骂对方是被戴绿帽子的乌龟。

> Call me John Snow, I know nothing.

![谷大白话: 美国某网站的调查显示：
    61% 的人在淋浴中尿尿，41% 在泳池尿过尿。
    50% 的人擦屁股前会叠起厕纸，30% 把厕纸随便揉成一团。
    60% 擦屁股是从前往后，20% 是从后往前。43% 冲水前会看一眼马桶，
    37% 擦屁股后会看一眼厕纸。45% 表示上厕所前会把厕纸铺在马桶圈上，
    36% 用脚踩冲水按钮，35% 上厕所时不会坐在马桶圈上。](http://ww1.sinaimg.cn/large/6aa09e8fjw1ey3rjcbr4yj210k11awod.jpg)

<div class="tzx-tabs">
* [oooo](#line602182)
* [codes](#line602183)

<div id="line602182">
nothing here.
</div>

<div id="line602183">
```cpp
int i;
for(i = 0; i < argc; ++i)
{
    if(argv[i])
        commandLine.push_back(argv[i]);  // Reads each argument from the
                                         // command line and pushes it on the vector
    else
        return i;
}
return i;

string CommandLine::GetNextWord()
{
	if((int)pos < (int)commandLine.size())
		return commandLine[pos++];   // Retrieves the next word from the command line vector.
	else							 // State is maintained by 'pos'
		return "";
}
```

```cpp
enum ERRTYPE {NOERROR, WARNING, FATAL};

class VCOption
{
public:
	string vc;
	bool space;
	ERRTYPE error;
};

#include <string>
using namespace std;
#include "VCOption.h"
/* This class simply encapsulates
 * the three string items we'd like to return. */
class ReturnItem
{
public:
	ReturnItem() {bestMatch = ""; bestMap = ""; remainingString = ""; space = true; error=NOERROR;}
	~ReturnItem() {} ;
	// ReturnItem& operator=(ReturnItem const *rhs);
	string bestMatch, bestMap, remainingString;
	bool space;
	ERRTYPE error;
};

#define CCSTATE (0)
#define VCSTATE (1)
#define LINESIZE (80)

class Input
{
public:
	Input() {};
	~Input() {};
	int ReadInputFile(char const *fileName);
	int CreatePairsFromCode();
	ReturnItem BestMapping(string &origOpt);
private:
	bool AddPair(string other, string vc, bool space = true);
	bool AddPair(string other, string vc, ERRTYPE error);
	vector<pair<string, VCOption> > optionPairs;
};

#include <fstream>
#include <iostream>
#include <string>
#include "Input.h"
#include "ReturnItem.h"
#include "VCOption.h"

/*
Function Name: AddPair
Parameters:
string other - This is the switch from the "other" compiler.
string vc - This is the switch that 'other' maps to on VC.
Return Value: true
Actions: This pushes the pair <other, vc> onto the vector optionPairs.
*/
bool Input::AddPair(string other, string vc, bool space)
{
	VCOption vcOption;
	vcOption.space = space;
	vcOption.vc = vc;
	vcOption.error = NOERROR;
	optionPairs.push_back(make_pair(other, vcOption));
	return true;
}

bool Input::AddPair(string other, string vc, ERRTYPE error)
{
	VCOption vcOption;
	vcOption.space = true;
	vcOption.vc = vc;
	vcOption.error = error;
	optionPairs.push_back(make_pair(other, vcOption));
	return true;
}

/*
Function Name: ReadInputFile
Parameters:
char const *fileName - The name of the input file we will be reading from.
Return Value:
-1 if there is an error (unspecified what the error is)
1 if the function executes successfully
Actions: The Input::optionPairs vector is filled with the pairings as specified by the input
file named fileName.
*/
int Input::ReadInputFile(char const *fileName)
{

	if(fileName == NULL)
		return -1;
	string ccOption, vcOption;
	string option;
	char temp[LINESIZE];
	ifstream inputFile(fileName);
	if(!inputFile)
	{
		cerr << "No file named : " << fileName << endl;
		return -1;
	}
	bool spaceState = false;
	int state = CCSTATE;
	while(inputFile >> option)
	{
		switch(state)
		{
		case CCSTATE:
			if(option == "@@@")
			{
				inputFile.getline(temp, LINESIZE);
				break;
			}
			if(option == "~~~")
			{
				return 1;
			}
			if(option == "***")
			{
				spaceState = false;
				state = VCSTATE;
			}
			else
			{
				if(spaceState)
				{
					ccOption += " ";
				}
				spaceState = true;
				ccOption += option;
			}
			break;
		case VCSTATE:
			if(option == "!!!")
			{
				spaceState = false;
				state = CCSTATE;
				AddPair(ccOption, vcOption);
				ccOption = "";
				vcOption = "";
			}
			else if(option == "###")
			{
				spaceState = false;
				state = CCSTATE;
				AddPair(ccOption, vcOption, false);
				ccOption = "";
				vcOption = "";
			}
			else if(option == "EEE")
			{
				spaceState = false;
				state = CCSTATE;
				AddPair(ccOption, vcOption, FATAL);
				ccOption = "";
				vcOption = "";
			}
			else if(option == "^^^")
			{
				spaceState = false;
				state = CCSTATE;
				AddPair(ccOption, vcOption, WARNING);
				ccOption = "";
				vcOption = "";
			}
			else
			{
				if(spaceState)
				{
					vcOption += " ";
				}
				spaceState = true;
				vcOption += option;
			}
			break;
		default:
			cerr << "Invalid State" << endl;
			return -1;
		}
	}
	return 1;
}

// This code here just loads the optionPairs from the code.  It acts like ReadInputFile.
// This is only called if you define CCMEMORY
int Input::CreatePairsFromCode()
{
	AddPair("-Wall", "/Wall");
	AddPair("-O2", "/O2");
	AddPair("-c", "/c");
	AddPair("-S", "/s");
	AddPair("-E", "/EP");
   /*
    $ ./ccWrapper.exe test -E
    cl test /EP
    ...
    */

	AddPair("-o", "/Fe", false);
	AddPair("--help", "/?");
	AddPair("-ansi", "/Za");
	AddPair("-funsigned-char", "/J");
	AddPair("-pedantic", "/Za");
	AddPair("-pedantic-errors", "/Za");
	AddPair("-w", "/W0");
	AddPair("-ggdb", "/Zi");
	AddPair("-gstabs", "/Zi");
	AddPair("-gstabs+", "/Zi");
	AddPair("-gcoff", "/Zi");
	AddPair("-gxcoff", "/Zi");
	AddPair("-O0", "/Od");
	AddPair("-O1", "/O2");
	AddPair("-O2", "/O2");
	AddPair("-O3", "/Ox");
	AddPair("-Os", "/O1");
	AddPair("-float-store", "/Op");
	AddPair("-fno-default-inline", "/Ob0");
	AddPair("-fomit-frame-pointer", "/Oy");
	AddPair("-fno-inline", "/Ob0");
	AddPair("-finline-functions", "/Ob2");
	AddPair("-include", "/FI");
	AddPair("-nostdinc", "/X" );
	AddPair("-undef", "/u" );
	AddPair("-C", "/C" );
	AddPair("-P", "/P" );
	AddPair("-D", "/D");
	AddPair("-U", "/U");
	AddPair("-nodefaultlibs", "/link /NODEFAULTLIB");
	AddPair("-nostdlib",  "/link /NODEFAULTLIB");
	AddPair("-I", "/I");
	AddPair("-L", "/link /LIBPATH:");
	AddPair("-fpack-struct", "/Zp1");
	AddPair("-fstack-check", "/GS");
	return 1;
}

/*
Function Name: BestMapping
Parameters:
string &origOpt - The switch to be mapped from.
Return Value: ReturnItem
This ReturnItem class contains the .bestMatch string which is the best matching switch.
The .bestMap string is the VC switch that .bestMatch maps too.
The .remainingString is what is left of the origOpt string after you remove the .bestMatch string.
Actions: This method finds the switch that best matches origOpt.
If there is more than one switch that matches origOpt then the longest match is selected.
*/
ReturnItem Input::BestMapping(string &origOpt)
{
	ReturnItem bestItem;
	string currentStr;
	string::size_type idx;
	vector<pair<string, VCOption> >::iterator iterOpt, endOpt;
	endOpt = optionPairs.end();
	bestItem.remainingString = origOpt;
	for(iterOpt = optionPairs.begin(); iterOpt != endOpt; ++iterOpt)
	{
		currentStr = iterOpt->first;
		idx = origOpt.find(currentStr, 0);
		if(idx == 0)
		{
			if(currentStr.size() > bestItem.bestMatch.size())
			{
				bestItem.bestMatch = currentStr;
				bestItem.bestMap = iterOpt->second.vc;
				bestItem.remainingString = origOpt.substr(currentStr.size());
				bestItem.space = iterOpt->second.space;
				bestItem.error = iterOpt->second.error;
			}
		}
	}

	return bestItem;
}
```

```cpp
@@@ Sun Flag Mappings
@@@ Simple mappings
-xO1 *** /O2 !!!
-xO2 *** /O2 !!!
-xO3 *** /Ox !!!
-xO4 *** /Ox !!!
-xO5 *** /Ox !!!
-xO *** /O2 !!!
-O1 *** /O2 !!!
-O2 *** /O2 !!!
-O3 *** /Ox !!!
-O4 *** /Ox !!!
-O5 *** /Ox !!!
-D *** /D ###
-I *** /I !!!
-c *** /c !!!
-mt *** /MT !!!
-P *** /P !!!
-P *** /P !!!

@@@ More involved Mappings
-xspace *** /O1 !!!
-386 *** /G3 !!!
-486 *** /G4 !!!
-cg *** see -xcg
+d *** /Ob0 !!!
-g *** /Zi !!!
-E *** /EP !!!
-g0 *** /Zi !!!
-H *** /showIncludes !!!
-xhelp=flags *** /? !!!
-xsbfast *** /FR ###
-xsb *** /FR ###
-fns ***  !!!
-fns=yes ***  !!!
-fns=no *** /Op !!!
-fsimple=0 *** /Op !!!
-fsimple=1 *** /Op !!!
-fsimple=2 ***  !!!
-fstore *** /Op !!!
-G *** /LD !!!
-o  *** /Fe ###
-L *** /link /LIBPATH: !!!
+w *** /W4 !!!
+w2 *** /Wall !!!
-w *** /W1 !!!
-z *** /link !!!
-xwe *** /WX !!!
-fast *** /Ox !!!

@@@ gcc Flag Mappings
@@@ Simple Mappings
-Wall *** /Wall !!!
-O2  *** /O2 !!!
-c *** /c !!!
-S *** /s !!!
-O0 *** /Od !!!
-O1 *** /O2 !!!
-O2 *** /O2 !!!
-O3 *** /Ox !!!
-Os *** /O1 !!!
-C *** /C !!!
-P *** /P !!!
-D *** /D ###
-U *** /U ###
-I *** /I !!!

@@@ More involved Mappings
-E *** /EP !!!
-o *** /Fe ###
--help *** /? !!!
-ansi *** /Za !!!
-funsigned-char *** /J !!!
-pedantic *** /Za !!!
-pedantic-errors *** /Za !!!
-w *** /W0 !!!
-ggdb *** /Zi !!!
-gstabs *** /Zi !!!
-gstabs+ *** /Zi !!!
-gcoff *** /Zi !!!
-gxcoff *** /Zi !!!
-float-store *** /Op !!!
-fno-default-inline *** /Ob0 !!!
-fomit-frame-pointer *** /Oy !!!
-fno-inline *** /Ob0 !!!
-finline-functions *** /Ob2 !!!
-include *** /FI !!!
-nostdinc *** /X !!!
-undef *** /u !!!
-nodefaultlibs *** /link /NODEFAULTLIB !!!
-nostdlib *** /link /NODEFAULTLIB !!!
-L *** /link /LIBPATH: !!!
-fpack-struct *** /Zp1 !!!
-fstack-check *** /GS !!!
-Wno-unknown-pragmas ***  !!!
-Wno-format ***  !!!

@@@ Fatal Errors
-fvolatile *** EEE
-fvolatile-global *** EEE
-fvolatile-static *** EEE

@@@ Warnings
-Xlinker *** ^^^
-aux-info *** ^^^
-fno-asm *** ^^^
-fno-builtin *** ^^^
-fhosted *** ^^^
-ffreestanding *** ^^^
-trigraphs *** ^^^

~~~ All Done!
Nothing down here is processed.  Can be used for additional comments.
No mappings that I know of
-a
-xa

-v
--target-help
-x
-std
-traditional
-traditional-cpp
-fcond-mismatch
-fsigned-char
-fwritable-strings  --- sorta like /Gf
-fshort-wchar
-fno-access-control
-fcheck-new
-fconserve-space
-fno-const-strings
-finline-limit=
-ftrapv
-foptimize-sibling-calls
-fkeep-inline-functions
-fkeep-static-consts
-fno-function-cse
-fstrict-aliasing
-idirafter
-imacros
-iprefix
-iwithprefix
-M
-MM
-MD
-MMD
-MF
-MG
-MP
-MQ
-MT
-H
-A
-l
-dM
-dD
-dN
-dI
-fpreprocessed
-s
-statuc
-shared
-symbolic
-shared-libgcc
-static-libgcc

-u
-I-
-fshort-double
-funwind-tables
-fshared-data
-fno-ident
-pipe
-pass-exit-codes
```

```cpp
#include <string>
#include <iostream>
#include <string.h>
#include <process.h>
#include "Input.h"
#include "CommandLine.h"
#include "ReturnItem.h"

using namespace std;


int main(int argc, char *argv[])
{
	if(argc < 2)
		return -1;

	string theOutput = "cl ";
	string currentArg;
	ReturnItem mapping;
	Input theInput;
	CommandLine theCommandLine;

#ifndef CCMEMORY  // if we compile to read from memory or to read from a file
	if(theInput.ReadInputFile("ccFile.cfg") == -1)  // the file name is fixed
		return -1;
#else
	theInput.CreatePairsFromCode();
#endif
	// here we read in the command line
	theCommandLine.ReadCommandLine(argc - 1, &argv[1]);
	// iterate over each word in the command line
	while("" != (currentArg = theCommandLine.GetNextWord()))
	{
		// find the best mapping for each word
		mapping = theInput.BestMapping(currentArg);
		// create the output string
		if(mapping.error == FATAL)
		{
			cerr << "Error with flag " << mapping.bestMap << " -- ABORTING\n";
			return -1;
		}
		if(mapping.error == WARNING)
		{
			cerr << "Warning: Flag may not be properly supported: " << mapping.bestMap << endl;
		}
		theOutput += mapping.bestMap + mapping.remainingString;
		if(mapping.space)
			theOutput += " ";

	}
	cout << theOutput << endl;
	// execute the generated output string.  'cl.exe' will need to be in the users path
	system(theOutput.c_str());
	return 0;
}
```
</div>
</div>

#. <kbd>Control+f/b</kbd>, move one screen down/up.
#. The Viola/Jones Face Detector

A seminal approach to real-time object detection Key ideas

* Integral images for fast feature evaluation
* Boosting for feature selection
* Attentional cascade for fast rejection of non-face windows

#. P. Viola and M. Jones. Rapid object detection using a boosted cascade of simple features.  CVPR 2001.
#. P. Viola and M. Jones. Robust real-time face detection. IJCV 57(2), 2004.

1. Feature Computation
The “Integral” image representation
2. Feature Selection
The AdaBoost training algorithm
3. Real-timeliness
A cascade of classifiers

All faces share some similar properties
– The eyes region is darker than the
upper-cheeks.
– The nose bridge region is brighter than
the eyes.
– That is useful domain knowledge
• Need for encoding of Domain Knowledge:
– Location - Size:  eyes & nose bridge
region
– Value:  darker / brighter

Integral Image Representation (check back-up slide)

Using the integral image
representation we can compute the
value of any rectangular sum (part of
features) in  constant time
– For example the integral sum inside
rectangle D can be computed as:
ii(d) + ii(a) – ii(b) – ii(c)

Feature Computation: features must be
computed as quickly as possible
2. Feature Selection: select the most
discriminating features
3. Real-timeliness: must focus on potentially
positive image areas (that contain faces)

---

AdaBoost

:   #. stands for “Adaptive” boost
    #. Constructs a “strong” classifier as a
    #. linear combination of weighted simple
    #. “weak” classifiers

---

![parental advisory](http://img.xiami.net/images/album/img82/28482/4126011392865064_2.jpg)

#. &#x2611; [User Ciro Santilli 六四事件 法轮功 包卓轩 - Stack Overflow](http://stackoverflow.com/users/895245/ciro-santilli-%e5%85%ad%e5%9b%9b%e4%ba%8b%e4%bb%b6-%e6%b3%95%e8%bd%ae%e5%8a%9f-%e5%8c%85%e5%8d%93%e8%bd%a9)
#. &#x2611; [User Yu Hao - Stack Overflow](http://stackoverflow.com/users/1009479/yu-hao)

---

`OBJ = 		$(SRC:.c=.o)`{.makefile}

palette `['pælət]`

back off from '`\0`'

`gilarus`，快乐的基因, `nomados`，流浪的基因

#. &#x2610; (hex: `&#x2610;` / dec: `&#9744`;): ballot box (empty, that's how it's supposed to be)
#. &#x2611; (hex: `&#x2611;` / dec: `&#9745`;): ballot box with check
#. &#x2612; (hex: `&#x2612;` / dec: `&#9746`;): ballot box with x
#. &#x2713; (hex: `&#x2713;` / dec: `&#10003`;): check mark, equivalent to `&checkmark;` and `&check;` in most browsers
#. &#x2714; (hex: `&#x2714;` / dec: `&#10004`;): heavy check mark
#. &#x2717; (hex: `&#x2717;` / dec: `&#10007`;): ballot x
#. &#x2718; (hex: `&#x2718;` / dec: `&#10008`;): heavy ballot x

Checking out web fonts for tick symbols? Here's a ready to use s

#. &#x2611; [Unicode Character 0x2713 - "✓" from Unicode Map](http://www.unicodemap.org/details/0x2713/index.html)
#. &#x2611; [Tick symbol in HTML/XHTML - Stack Overflow](http://stackoverflow.com/questions/658044/tick-symbol-in-html-xhtml)

---

Bézier Curve

Try online: [The Bézier Game](http://bezier.method.ac/)

![](https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/B%C3%A9zier_3_big.gif/240px-B%C3%A9zier_3_big.gif)
![](https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/B%C3%A9zier_4_big.gif/240px-B%C3%A9zier_4_big.gif)

Refs

#. &#x2611; [Bézier curve - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/B%C3%A9zier_curve)
#. &#x2611; [Bézier Curve -- from Wolfram MathWorld](http://mathworld.wolfram.com/BezierCurve.html)

---

Fonts

Computer Font

:   A computer font (or font) is an electronic data file containing **a set of
    glyphs, characters, or symbols** such as dingbats^[sometimes more formally
    known as a printer's ornament or printer's character, is an ornament,
    character, or spacer used in typesetting, often employed for the creation
    of box frames.]. Although the term font first
    referred to a set of metal type sorts in one style and size, since the 1990s it
    is generally used to refer to a scalable set of digital shapes that may be
    printed at many different sizes.

    There are three basic kinds of computer font file data formats:

    #. **Bitmap fonts** consist of a matrix of dots or pixels representing the image of
       each glyph in each face and size.
    #. **Outline fonts** (also called vector fonts) use
       Bézier curves, drawing instructions and mathematical formulae to describe each
       glyph, which make the character outlines scalable to any size.
    #. **Stroke fonts** use a series of specified lines and additional
       information to define the profile, or size and shape of the line in a
       specific face, which together describe the appearance of the glyph.

Outline fonts

:   Outline fonts or **vector fonts** are collections of vector images,
    consisting of lines and curves defining the **boundary of glyphs**. Early vector
    fonts were used by vector monitors and vector plotters using their own internal
    fonts, usually with thin single strokes instead of thick outlined glyphs. The
    advent of desktop publishing brought the need for a universal standard to
    integrate the graphical user interface of the first Macintosh and laser
    printers. The term to describe the integration technology was WYSIWYG (What You
    See Is What You Get). **The universal standard was (and still is) Adobe
    PostScript.** Examples are **PostScript Type 1** and **Type 3 fonts**, **TrueType** and
    **OpenType**.

**PostScript fonts** are outline font specifications developed by Adobe Systems for
professional digital typesetting, which uses PostScript file format to encode
font information.

Type 1

:   Type 1 (also known as PostScript, PostScript Type 1, PS1, T1 or Adobe Type
    1) is the font format for single-byte digital fonts for use with Adobe Type
    Manager software and with PostScript printers. It can support font hinting.  It
    was originally a proprietary specification, but Adobe released the
    specification to third-party font manufacturers provided that all Type 1 fonts
    adhere to it.

    Type 1 fonts are natively supported in Mac OS X, and in Windows
    XP and later via the GDI API. (They are not supported in the Windows GDI+, WPF
    or DirectWrite APIs.)

Type 2, 3, 4, 5, 9, 10, 11, 14, 32, 42

**TrueType** is an outline font standard developed by Apple and Microsoft in the
late 1980s as a competitor to Adobe's Type 1 fonts used in PostScript. It has
become the most common format for fonts on both the Mac OS and Microsoft
Windows operating systems.

The primary strength of TrueType was originally that it offered font developers
a high degree of control over precisely how their fonts are displayed, right
down to particular pixels, at various font sizes. With widely varying rendering
technologies in use today, pixel-level control is no longer certain in a
TrueType font.

**OpenType** is a format for scalable computer fonts. It was built on its
predecessor TrueType, retaining TrueType's basic structure and adding many
intricate（复杂的） data structures for prescribing typographic behavior.
**OpenType is a registered trademark of Microsoft Corporation.**

Refs

#. &#x2611; [Computer font - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Computer_font#OUTLINE)
#. &#x2611; [PostScript fonts - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/PostScript_fonts)
#. &#x2611; [OpenType - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/OpenType)
#. &#x2611; [Web Open Font Format - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Web_Open_Font_Format)
#. &#x2611; [TrueType - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/TrueType)

---

设置 Git 的 Upstream

```bash
# 看看当前的 upstream
$ git remote -v
origin	git@github.com:district10/blog.git (fetch)
origin	git@github.com:district10/blog.git (push)

# 添加一个
$ git remote add coding https://git.coding.net/dvorak4tzx/blog.git

# 看看是否加入成功
$ git remote -v
coding	https://git.coding.net/dvorak4tzx/blog.git (fetch)
coding	https://git.coding.net/dvorak4tzx/blog.git (push)
origin	git@github.com:district10/blog.git (fetch)
origin	git@github.com:district10/blog.git (push)

# 把代码传上去
$ git push coding master

# 重命名一个 upstream
git remote rename coding backup

# 换个 url
$ git remote set-url backup git@github.com:USERNAME/OTHERREPOSITORY.git

# 删除 upstream
$ git remote rm backup

# 补充点备忘（`user.name` 和 `user.email` 就不说了）
$ git config --global core.editor vim
$ git remote add origin url.git
$ git push origin master
```

Refs

#. &#x2611; [github - Git push existing repo to a new and different remote repo server? - Stack Overflow](http://stackoverflow.com/questions/5181845/git-push-existing-repo-to-a-new-and-different-remote-repo-server)
#. &#x2611; [Changing a remote's URL - User Documentation](https://help.github.com/articles/changing-a-remote-s-url/)
#. &#x2611; [git命令之git remote的用法 - wangjia55的专栏 - 博客频道 - CSDN.NET](http://blog.csdn.net/wangjia55/article/details/8802490)

---

以前存的 Emojis

|            |      01     |      02     |      03     |      04     |      05     |      06     |      07     |      08     |      09     |      10     |
| :---------:| :---------: | :---------: | :---------: | :---------: | :---------: | :---------: | :---------: | :---------: | :---------: | :---------: |
|     A      | ![][qq-001] | ![][qq-002] | ![][qq-003] | ![][qq-004] | ![][qq-005] | ![][qq-006] | ![][qq-007] | ![][qq-008] | ![][qq-009] | ![][qq-010] |
|     B      | ![][qq-011] | ![][qq-012] | ![][qq-013] | ![][qq-014] | ![][qq-015] | ![][qq-016] | ![][qq-017] | ![][qq-018] | ![][qq-019] | ![][qq-020] |
|     C      | ![][qq-021] | ![][qq-022] | ![][qq-023] | ![][qq-024] | ![][qq-025] | ![][qq-026] | ![][qq-027] | ![][qq-028] | ![][qq-029] | ![][qq-030] |
|     D      | ![][qq-031] | ![][qq-032] | ![][qq-033] | ![][qq-034] | ![][qq-035] | ![][qq-036] | ![][qq-037] | ![][qq-038] | ![][qq-039] | ![][qq-040] |
|     E      | ![][qq-041] | ![][qq-042] | ![][qq-043] | ![][qq-044] | ![][qq-045] | ![][qq-046] | ![][qq-047] | ![][qq-048] | ![][qq-049] | ![][qq-050] |
|     F      | ![][qq-051] | ![][qq-052] | ![][qq-053] | ![][qq-054] | ![][qq-055] | ![][qq-056] | ![][qq-057] | ![][qq-058] | ![][qq-059] | ![][qq-060] |
|     G      | ![][qq-061] | ![][qq-062] | ![][qq-063] | ![][qq-064] | ![][qq-065] | ![][qq-066] | ![][qq-067] | ![][qq-068] | ![][qq-069] | ![][qq-070] |
|     H      | ![][qq-071] | ![][qq-072] | ![][qq-073] | ![][qq-074] | ![][qq-075] | ![][qq-076] | ![][qq-077] | ![][qq-078] | ![][qq-079] | ![][qq-080] |
|     I      | ![][qq-081] | ![][qq-082] | ![][qq-083] | ![][qq-084] | ![][qq-085] | ![][qq-086] | ![][qq-087] | ![][qq-088] | ![][qq-089] | ![][qq-090] |
|     J      | ![][qq-091] | ![][qq-092] | ![][qq-093] | ![][qq-094] | ![][qq-095] | ![][qq-096] | ![][qq-097] | ![][qq-098] | ![][qq-099] | ![][qq-100] |
|     K      | ![][qq-101] | ![][qq-102] | ![][qq-103] | ![][qq-104] | ![][qq-105] | ![][qq-106] | ![][qq-107] | ![][qq-108] | ![][qq-109] | ![][qq-110] |
|     L      | ![][qq-111] | ![][qq-112] | ![][qq-113] | ![][qq-114] | ![][qq-115] | ![][qq-116] | ![][qq-117] | ![][qq-118] | ![][qq-119] | ![][qq-120] |
|     M      | ![][qq-121] | ![][qq-122] | ![][qq-123] | ![][qq-124] | ![][qq-125] | ![][qq-126] | ![][qq-127] | ![][qq-128] | ![][qq-129] | ![][qq-130] |
|     N      | ![][qq-131] | ![][qq-132] | ![][001]    | ![][002]    | ![][003]    | ![][004]    | ![][005]    |

[qq-001]: http://gnat-tang-shared-image.qiniudn.com/emoji/1.gif
[qq-002]: http://gnat-tang-shared-image.qiniudn.com/emoji/2.gif
[qq-003]: http://gnat-tang-shared-image.qiniudn.com/emoji/3.gif
[qq-004]: http://gnat-tang-shared-image.qiniudn.com/emoji/4.gif
[qq-005]: http://gnat-tang-shared-image.qiniudn.com/emoji/5.gif
[qq-006]: http://gnat-tang-shared-image.qiniudn.com/emoji/6.gif
[qq-007]: http://gnat-tang-shared-image.qiniudn.com/emoji/7.gif
[qq-008]: http://gnat-tang-shared-image.qiniudn.com/emoji/8.gif
[qq-009]: http://gnat-tang-shared-image.qiniudn.com/emoji/9.gif
[qq-010]: http://gnat-tang-shared-image.qiniudn.com/emoji/10.gif
[qq-011]: http://gnat-tang-shared-image.qiniudn.com/emoji/11.gif
[qq-012]: http://gnat-tang-shared-image.qiniudn.com/emoji/12.gif
[qq-013]: http://gnat-tang-shared-image.qiniudn.com/emoji/13.gif
[qq-014]: http://gnat-tang-shared-image.qiniudn.com/emoji/14.gif
[qq-015]: http://gnat-tang-shared-image.qiniudn.com/emoji/15.gif
[qq-016]: http://gnat-tang-shared-image.qiniudn.com/emoji/16.gif
[qq-017]: http://gnat-tang-shared-image.qiniudn.com/emoji/17.gif
[qq-018]: http://gnat-tang-shared-image.qiniudn.com/emoji/18.gif
[qq-019]: http://gnat-tang-shared-image.qiniudn.com/emoji/19.gif
[qq-020]: http://gnat-tang-shared-image.qiniudn.com/emoji/20.gif
[qq-021]: http://gnat-tang-shared-image.qiniudn.com/emoji/21.gif
[qq-022]: http://gnat-tang-shared-image.qiniudn.com/emoji/22.gif
[qq-023]: http://gnat-tang-shared-image.qiniudn.com/emoji/23.gif
[qq-024]: http://gnat-tang-shared-image.qiniudn.com/emoji/24.gif
[qq-025]: http://gnat-tang-shared-image.qiniudn.com/emoji/25.gif
[qq-026]: http://gnat-tang-shared-image.qiniudn.com/emoji/26.gif
[qq-027]: http://gnat-tang-shared-image.qiniudn.com/emoji/27.gif
[qq-028]: http://gnat-tang-shared-image.qiniudn.com/emoji/28.gif
[qq-029]: http://gnat-tang-shared-image.qiniudn.com/emoji/29.gif
[qq-030]: http://gnat-tang-shared-image.qiniudn.com/emoji/30.gif
[qq-031]: http://gnat-tang-shared-image.qiniudn.com/emoji/31.gif
[qq-032]: http://gnat-tang-shared-image.qiniudn.com/emoji/32.gif
[qq-033]: http://gnat-tang-shared-image.qiniudn.com/emoji/33.gif
[qq-034]: http://gnat-tang-shared-image.qiniudn.com/emoji/34.gif
[qq-035]: http://gnat-tang-shared-image.qiniudn.com/emoji/35.gif
[qq-036]: http://gnat-tang-shared-image.qiniudn.com/emoji/36.gif
[qq-037]: http://gnat-tang-shared-image.qiniudn.com/emoji/37.gif
[qq-038]: http://gnat-tang-shared-image.qiniudn.com/emoji/38.gif
[qq-039]: http://gnat-tang-shared-image.qiniudn.com/emoji/39.gif
[qq-040]: http://gnat-tang-shared-image.qiniudn.com/emoji/40.gif
[qq-041]: http://gnat-tang-shared-image.qiniudn.com/emoji/41.gif
[qq-042]: http://gnat-tang-shared-image.qiniudn.com/emoji/42.gif
[qq-043]: http://gnat-tang-shared-image.qiniudn.com/emoji/43.gif
[qq-044]: http://gnat-tang-shared-image.qiniudn.com/emoji/44.gif
[qq-045]: http://gnat-tang-shared-image.qiniudn.com/emoji/45.gif
[qq-046]: http://gnat-tang-shared-image.qiniudn.com/emoji/46.gif
[qq-047]: http://gnat-tang-shared-image.qiniudn.com/emoji/47.gif
[qq-048]: http://gnat-tang-shared-image.qiniudn.com/emoji/48.gif
[qq-049]: http://gnat-tang-shared-image.qiniudn.com/emoji/49.gif
[qq-050]: http://gnat-tang-shared-image.qiniudn.com/emoji/50.gif
[qq-051]: http://gnat-tang-shared-image.qiniudn.com/emoji/51.gif
[qq-052]: http://gnat-tang-shared-image.qiniudn.com/emoji/52.gif
[qq-053]: http://gnat-tang-shared-image.qiniudn.com/emoji/53.gif
[qq-054]: http://gnat-tang-shared-image.qiniudn.com/emoji/54.gif
[qq-055]: http://gnat-tang-shared-image.qiniudn.com/emoji/55.gif
[qq-056]: http://gnat-tang-shared-image.qiniudn.com/emoji/56.gif
[qq-057]: http://gnat-tang-shared-image.qiniudn.com/emoji/57.gif
[qq-058]: http://gnat-tang-shared-image.qiniudn.com/emoji/58.gif
[qq-059]: http://gnat-tang-shared-image.qiniudn.com/emoji/59.gif
[qq-060]: http://gnat-tang-shared-image.qiniudn.com/emoji/60.gif
[qq-061]: http://gnat-tang-shared-image.qiniudn.com/emoji/61.gif
[qq-062]: http://gnat-tang-shared-image.qiniudn.com/emoji/62.gif
[qq-063]: http://gnat-tang-shared-image.qiniudn.com/emoji/63.gif
[qq-064]: http://gnat-tang-shared-image.qiniudn.com/emoji/64.gif
[qq-065]: http://gnat-tang-shared-image.qiniudn.com/emoji/65.gif
[qq-066]: http://gnat-tang-shared-image.qiniudn.com/emoji/66.gif
[qq-067]: http://gnat-tang-shared-image.qiniudn.com/emoji/67.gif
[qq-068]: http://gnat-tang-shared-image.qiniudn.com/emoji/68.gif
[qq-069]: http://gnat-tang-shared-image.qiniudn.com/emoji/69.gif
[qq-070]: http://gnat-tang-shared-image.qiniudn.com/emoji/70.gif
[qq-071]: http://gnat-tang-shared-image.qiniudn.com/emoji/71.gif
[qq-072]: http://gnat-tang-shared-image.qiniudn.com/emoji/72.gif
[qq-073]: http://gnat-tang-shared-image.qiniudn.com/emoji/73.gif
[qq-074]: http://gnat-tang-shared-image.qiniudn.com/emoji/74.gif
[qq-075]: http://gnat-tang-shared-image.qiniudn.com/emoji/75.gif
[qq-076]: http://gnat-tang-shared-image.qiniudn.com/emoji/76.gif
[qq-077]: http://gnat-tang-shared-image.qiniudn.com/emoji/77.gif
[qq-078]: http://gnat-tang-shared-image.qiniudn.com/emoji/78.gif
[qq-079]: http://gnat-tang-shared-image.qiniudn.com/emoji/79.gif
[qq-080]: http://gnat-tang-shared-image.qiniudn.com/emoji/80.gif
[qq-081]: http://gnat-tang-shared-image.qiniudn.com/emoji/81.gif
[qq-082]: http://gnat-tang-shared-image.qiniudn.com/emoji/82.gif
[qq-083]: http://gnat-tang-shared-image.qiniudn.com/emoji/83.gif
[qq-084]: http://gnat-tang-shared-image.qiniudn.com/emoji/84.gif
[qq-085]: http://gnat-tang-shared-image.qiniudn.com/emoji/85.gif
[qq-086]: http://gnat-tang-shared-image.qiniudn.com/emoji/86.gif
[qq-087]: http://gnat-tang-shared-image.qiniudn.com/emoji/87.gif
[qq-088]: http://gnat-tang-shared-image.qiniudn.com/emoji/88.gif
[qq-089]: http://gnat-tang-shared-image.qiniudn.com/emoji/89.gif
[qq-090]: http://gnat-tang-shared-image.qiniudn.com/emoji/90.gif
[qq-091]: http://gnat-tang-shared-image.qiniudn.com/emoji/91.gif
[qq-092]: http://gnat-tang-shared-image.qiniudn.com/emoji/92.gif
[qq-093]: http://gnat-tang-shared-image.qiniudn.com/emoji/93.gif
[qq-094]: http://gnat-tang-shared-image.qiniudn.com/emoji/94.gif
[qq-095]: http://gnat-tang-shared-image.qiniudn.com/emoji/95.gif
[qq-096]: http://gnat-tang-shared-image.qiniudn.com/emoji/96.gif
[qq-097]: http://gnat-tang-shared-image.qiniudn.com/emoji/97.gif
[qq-098]: http://gnat-tang-shared-image.qiniudn.com/emoji/98.gif
[qq-099]: http://gnat-tang-shared-image.qiniudn.com/emoji/99.gif
[qq-100]: http://gnat-tang-shared-image.qiniudn.com/emoji/100.gif
[qq-101]: http://gnat-tang-shared-image.qiniudn.com/emoji/101.gif
[qq-102]: http://gnat-tang-shared-image.qiniudn.com/emoji/102.gif
[qq-103]: http://gnat-tang-shared-image.qiniudn.com/emoji/103.gif
[qq-104]: http://gnat-tang-shared-image.qiniudn.com/emoji/104.gif
[qq-105]: http://gnat-tang-shared-image.qiniudn.com/emoji/105.gif
[qq-106]: http://gnat-tang-shared-image.qiniudn.com/emoji/106.gif
[qq-107]: http://gnat-tang-shared-image.qiniudn.com/emoji/107.gif
[qq-108]: http://gnat-tang-shared-image.qiniudn.com/emoji/108.gif
[qq-109]: http://gnat-tang-shared-image.qiniudn.com/emoji/109.gif
[qq-110]: http://gnat-tang-shared-image.qiniudn.com/emoji/110.gif
[qq-111]: http://gnat-tang-shared-image.qiniudn.com/emoji/111.gif
[qq-112]: http://gnat-tang-shared-image.qiniudn.com/emoji/112.gif
[qq-113]: http://gnat-tang-shared-image.qiniudn.com/emoji/113.gif
[qq-114]: http://gnat-tang-shared-image.qiniudn.com/emoji/114.gif
[qq-115]: http://gnat-tang-shared-image.qiniudn.com/emoji/115.gif
[qq-116]: http://gnat-tang-shared-image.qiniudn.com/emoji/116.gif
[qq-117]: http://gnat-tang-shared-image.qiniudn.com/emoji/117.gif
[qq-118]: http://gnat-tang-shared-image.qiniudn.com/emoji/118.gif
[qq-119]: http://gnat-tang-shared-image.qiniudn.com/emoji/119.gif
[qq-120]: http://gnat-tang-shared-image.qiniudn.com/emoji/120.gif
[qq-121]: http://gnat-tang-shared-image.qiniudn.com/emoji/121.gif
[qq-122]: http://gnat-tang-shared-image.qiniudn.com/emoji/122.gif
[qq-123]: http://gnat-tang-shared-image.qiniudn.com/emoji/123.gif
[qq-124]: http://gnat-tang-shared-image.qiniudn.com/emoji/124.gif
[qq-125]: http://gnat-tang-shared-image.qiniudn.com/emoji/125.gif
[qq-126]: http://gnat-tang-shared-image.qiniudn.com/emoji/126.gif
[qq-127]: http://gnat-tang-shared-image.qiniudn.com/emoji/127.gif
[qq-128]: http://gnat-tang-shared-image.qiniudn.com/emoji/128.gif
[qq-129]: http://gnat-tang-shared-image.qiniudn.com/emoji/129.gif
[qq-130]: http://gnat-tang-shared-image.qiniudn.com/emoji/130.gif
[qq-131]: http://gnat-tang-shared-image.qiniudn.com/emoji/131.gif
[qq-132]: http://gnat-tang-shared-image.qiniudn.com/emoji/132.gif
[001]: http://gnat-tang-shared-image.qiniudn.com/emoj/green-happy.png
[002]: http://gnat-tang-shared-image.qiniudn.com/emoj/red-angry.png
[003]: http://gnat-tang-shared-image.qiniudn.com/emoj/white-question.png
[004]: http://gnat-tang-shared-image.qiniudn.com/emoj/yellow-plain.png
[005]: http://gnat-tang-shared-image.qiniudn.com/pic/gnat-favicon.ico

---

Craigslist

被 GFW 墙了。其实不怎么样，天朝这样的网站多了去。（不过还是要吐槽这蛋疼的 GFW。）

Refs

#. &#x2611; [Craigslist - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Craigslist)
#. &#x2611; [Craigslist_百度百科](http://baike.baidu.com/view/703783.htm)

---

Vim Macro

就跟其它所有编辑器一样，宏很好用。

但我不知道在 Vim 里怎么 apply 一个 macro 到文件末尾（在 Notepad++ 里很容易）。

查到的是：`VG:normal @x` 或者 `:%normal @x`，总之就是在一定范围内，用 `normal @x`。
~~可惜我没成功，不知道是不是系统是 Windows 的原因。~~又试了一下，Windows 也可以。

Refs

#. &#x2610; [replay a vim macro until end of buffer - Stack Overflow](http://stackoverflow.com/questions/1291962/replay-a-vim-macro-until-end-of-buffer)

---

NetBIOS Names

Character | ASCII Code  |  Hex Code
--------- | ----------- | -----------
A             | EB   |  45 42
B             | EC   |  45 43
C             | ED   |  45 44
D             | EE   |  45 45
E             | EF   |  45 46
F             | EG   |  45 47
G             | EH   |  45 48
...           | ...  |  ...

NOTE: The above mapping list can be useful while reading network traces because information is sent on the wire in the above encoded format.

（世上还有这么神奇的表示法。）

Refs

#. &#x2611; [Microsoft Support](https://support.microsoft.com/en-us/kb/194203)

---

HTML Entity

在 [Learning HTML](post-0022-learning-html.html#html-entities) 里有部分笔记。
但感觉不够，有时候我都开始用 LaTeX 来标记，但那也太蠢了……

℃，℉，★，☆，☺，☻，☼

* &quot; `&quot;`{.html}
* &amp; `&amp;`{.html}
* &nbsp; `&nbsp;`{.html}
* &yen; `&yen;`{.html}
* &brvbar; `&brvbar;`{.html} broken vertical bar
* &sect; `&sect;`{.html}
* &laquo; `&laquo;`{.html} left double angle quotes
* &raquo; `&raquo;`{.html}
* &deg; `&deg;`{.html}
* &plusmn; `&plusmn;`{.html} plus minus
* &micro; `&micro;`{.html}
* &para; `&para;`{.html}
* &iquest; `&iquest;`{.html}
* &frac14; `&frac14;`{.html}
* &frac12; `&frac12;`{.html}
* &frac34; `&frac34;`{.html}
* &times; `&times;`{.html}
* &divide; `&divide;`{.html}
* &aelig; `&aelig;`{.html} latin small letter ae
* &bull; `&bull;`{.html} bullet
* &hellip; `&hellip;`{.html} horizontal ellipsis
* &prime; `&prime;`{.html}
* &Prime; `&Prime;`{.html}
* &frasl; `&frasl;`{.html} fraction slash
* &larr; `&larr;`{.html}
* &rarr; `&rarr;`{.html}
* &uarr; `&uarr;`{.html}
* &darr; `&darr;`{.html}
* &harr; `&harr;`{.html}
* &lArr; `&lArr;`{.html}
* &rArr; `&rArr;`{.html}
* &uArr; `&hearts;`{.html}
* &dArr; `&dArr;`{.html}
* &hArr; `&hArr;`{.html}
* &crarr; `&crarr;`{.html} downwards arrow wiht corner leftwards (carriage return)
* &not; `&not;`{.html}
* &forall; `&forall;`{.html}
* &exist; `&exist;`{.html}
* &part; `&part;`{.html}
* &nabla; `&nabla;`{.html} `['næblə]`, 劈形算符；微分算符
* &isin; `&isin;`{.html}
* &notin; `&notin;`{.html}
* &ni; `&ni;`{.html}
* &prod; `&prod;`{.html}
* &sum; `&sum;`{.html}
* &minus; `&minus;`{.html}
* &lowast; `&lowast;`{.html} asterisk
* &radic; `&radic;`{.html} square root
* &prop; `&prop;`{.html}
* &infin; `&infin;`{.html}
* &ang; `&ang;`{.html}
* &and; `&and;`{.html}
* &or; `&or;`{.html}
* &cap; `&cap;`{.html}
* &cup; `&cup;`{.html}
* &int; `&int;`{.html} integral
* &there4; `&there4;`{.html} therefore
* &cong; `&cong;`{.html} approximately equal to
* &asymp; `&asymp;`{.html} almost equal to
* &ne; `&ne;`{.html}
* &equiv; `&equiv;`{.html}
* &lt; `&lt;`{.html}
* &gt; `&gt;`{.html}
* &le; `&le;`{.html}
* &ge; `&ge;`{.html}
* &sub; `&sub;`{.html} subset
* &sup; `&sup;`{.html} superset
* &sube; `&sube;`{.html}
* &supe; `&supe;`{.html}
* &nsub; `&nsub;`{.html}
* &oplus; `&oplus;`{.html} circled plus
* &otimes; `&otimes;`{.html} circled times
* &perp; `&perp;`{.html} up tack
* &sdot; `&sdot;`{.html}
* &lceil; `&lceil;`{.html}
* &rceil; `&rceil;`{.html}
* &lfloor; `&lfloor;`{.html}
* &rfloor; `&rfloor;`{.html}
* &lang; `&lang;`{.html}
* &rang; `&rang;`{.html}
* &loz; `&loz;`{.html} lozenge, `['lɑzɪndʒ]`, 菱形
* &hearts; `&hearts;`{.html}

<div class="tzx-fright">
![WWII "ruptured duck" Honorable Discharge Emblem
    lozenge](https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Ruptured_Duck_patch.JPG/220px-Ruptured_Duck_patch.JPG)
</div>

Refs

#. &#x2611; [HTML Codes - Table of ascii characters and symbols](http://www.ascii.cl/htmlcodes.htm)
#. &#x2611; [Entity Reference](http://arpc65.arm.ac.uk/~hmm/Entity_Reference.html)
#. &#x2611; [List of XML and HTML character entity references - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/List_of_XML_and_HTML_character_entity_references)
#. &#x2611; [List of emoticons - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/List_of_emoticons)

---

Assignment Expression

:   **An assignment expression has the value of the left operand after the assignment.**

    出自 C99 standard, section 6.5.16

有赋值表达式的情况下

:   ```python
    if result=func1(...):
        print func2(result)
    ```

无赋值表达式的情况下

:   ```python
    result=func1(...)
    if result:
        print func2(result)
    ```

然后你就知道什么叫赋值表达式了。

Python: `import this`{.python} => The Zen of Python, by Tim Peters

:   ```plain
    Beautiful is better than ugly.
    **Explicit is better than implicit.**
    Simple is better than complex.
    Complex is better than complicated.
    Flat is better than nested.
    Sparse is better than dense.
    Readability counts.
    Special cases aren't special enough to break the rules.
    Although practicality beats purity.
    Errors should never pass silently.
    Unless explicitly silenced.
    In the face of ambiguity, refuse the temptation to guess.
    There should be one-- and preferably only one --obvious way to do it.
    Although that way may not be obvious at first unless you're Dutch.
    Now is better than never.
    Although never is often better than right now.
    If the implementation is hard to explain, it's a bad idea.
    If the implementation is easy to explain, it may be a good idea.
    Namespaces are one honking great idea -- let's do more of those!
    ```

Refs

#. &#x2611; [为什么我不喜欢赋值表达式 - SegmentFault](http://segmentfault.com/a/1190000000402506)
#. &#x2611; [c - What does an assignment return? - Stack Overflow](http://stackoverflow.com/questions/9514569/what-does-an-assignment-return)
#. &#x2611; [C99 - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/C99#References)

Read more

#. &#x2610; [Memory part 5: What programmers can do [LWN.net]](https://lwn.net/Articles/255364/)
#. &#x2611; [Yoda 表示法错在哪里](http://www.yinwang.org/blog-cn/2013/04/14/yoda-notation/)

---

有些是以前读过的，但觉得应再读一遍。

[Citation signal - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Citation_signal)

:   A Legal **citation signal** or **introductory signal** is a set of brief abbreviated phrases or
    words used to clarify the authority or significance of a legal citation as it relates to a proposition.

    * Signal Details
        + Signals that indicate **support**

            #. no signal（直接在后面把引用列出来）
            #. *e.g.*, "exempli gratia"（比如说）
               > The placebo effect is well established. See, *e.g.*, Anne Harrington, The Placebo Effect: An Interdisciplinary Exploration (1999).
            #. Accord（还有，也）
              ~ “I have just cited something that supports my proposition, and now here’s another thing that supports it too.”
            #. See（这个很直接，不解释了）
            #. See also
            #. *Cf.*, compare（就像是说：“他们也是类似的观点”）

               > The Massachusetts Court of Appeals did not reach that question and we decline to address it in the first instance.
               > *Cf.* Coy v. Iowa, 487 U.S. 1012, 1021-1022, 108 S.Ct. 2798, 101 L.Ed.2d 857 (1988).

        + Signals that indicate **background material**
            #. See generally
        + Signals that indicate **contradiction**
            #. *Contra*
            #. But see
            #. *But cf.*
        + Signals that indicate **a useful comparison**
            #. Compare _____ with _______
            #.
        + Using signals as verbs（这是在 footnote 里常用的）
            #. > See Christina L. Anderson, Comment, Double Jeopardy: The Modern Dilemma for Juvenile Justice,
               > 152 U. Pa. L. Rev. 1181, 1204-07 (2004) (discussing four main types of restorative justice programs).
            #. "*Cf.*" becomes "compare" and "*e.g.*" becomes "for example" when these signals are used as verbs.

    * Signal formatting（TODO）

    Read more | 下面是关于 citation 和英文写作比较著名的几本书

    #. [The Bluebook: A Uniform System of Citation](https://en.wikipedia.org/wiki/Bluebook)
    #. [The Chicago Manual of Style Online: Chicago-Style Citation Quick Guide](http://www.chicagomanualofstyle.org/tools_citationguide.html)
    #. [The Elements of Style (豆瓣)](http://book.douban.com/subject/1433835/)
    #. [Style (豆瓣)](http://book.douban.com/subject/4107521/)

[Pitfalls of C](http://www.math.pku.edu.cn/teachers/qiuzy/c/reading/pitfall.htm)

:   这书居然在网上直接放着（其实考研复试那段时间我看完了，有时间再看一下，note some）

[裘宗燕主页 :: Main Page of Qiu Zongyan](http://www.math.pku.edu.cn/teachers/qiuzy/)

:   从 C Traps and Pitfalls 看到这里。这老师很著名。

    里面有一些课程：

    #. 2015年春季课程：计算概论（基于Python的课程）
    #. 2014年秋季课程：数据结构（基于Python的课程）
    #. 2014年春季课程：计算概论（基于Python的课程）
    #. 2014年春季课程：程序设计技术与方法（面向数学学院和信息学院三年级本科生）
       采用MIT的著名教科书Structure and Interpretation of Computer Programs。
    #. 2012年秋季课程：程序设计技术与方法
    #. 2012年春季课程：程序设计语言原理（研究生课程）
    #. 2011年秋季课程：程序设计技术与方法
    #. 2010年秋季课程：程序设计技术与方法
    #. 2010年秋季课程：算法与数据结构---基于Maple的课程
    #. 2010年春季课程：形式化方法 --- 基于 B 方法的软件开发（研究生课）
    #. 2010年春季课程：低年级讨论班（软件）
    #. 2009年秋季课程：程序设计技术与方法


[Requirements for Chinese Text Layout 中文排版需求](http://www.w3.org/TR/clreq/)

:   [w3c/clreq](https://github.com/w3c/clreq)

    句號 `U+3002` IDEOGRAPHIC FULL STOP `[。]`、逗號 `U+FF0C` FULLWIDTH COMMA `[，]`
    以及頓號 `U+3001` IDEOGRAPHIC COMMA `[、]`。句號表示語句結束、逗點表示語氣停頓、
    頓號使用於並列連用、表示次序的字詞之間。

    許多理工書籍、科技文獻、西文教科书语法书籍等內含大量西文詞句，並採用橫排，為求標點符號體例一致，
    也有採用 `U+FF0E` FULLWIDTH FULL STOP `[．]` 為句號、採 `U+002C` COMMA `[,]` 或 `U+FF0C` FULLWIDTH COMMA `[，]`
    為逗號與頓號的案例。^[我也记得从哪儿看到论文里中文也最好用英文标点。]

    橫排時，西文使用比例字體；阿拉伯數字則常用比例字體或等寬字體。
    原則上，漢字與西文字母、數字間使用四分之一個漢字寬的字距或空白。
    但西文出現在行頭或行尾時，則毋須加入空白。（最好中英文就之间加个空格，see [中文排版指北]）
    或可使用西文詞間空格（U+0020 SPACE [ ]，其寬度隨不同字體有所變化）。

[Caliphate - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Caliph)

:   哈里发，`key-lif, kal-if`

---

"Je suis Charlie" (French pronunciation: `​[ʒə sɥi ʃaʁli]`, French for "**I am Charlie**") is
a slogan and a logo created by French art director Joachim Roncin and adopted
by supporters of freedom of speech and freedom of the press after the 7 January 2015 massacre
in which twelve people were killed at the offices of the French satirical weekly newspaper Charlie Hebdo.

![The front cover of edition of 14 January 2015, with a cartoon in the same style
  as 3 November 2011 cover, uses the phrase "Je suis Charlie"](https://upload.wikimedia.org/wikipedia/en/thumb/1/1c/Charlie_Hebdo_Tout_est_pardonn%C3%A9.jpg/220px-Charlie_Hebdo_Tout_est_pardonn%C3%A9.jpg)

Refs

#. [Je suis Charlie - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Je_suis_Charlie)

---

Markded

:   ```html
    <!doctype html>
    <html>
    <head>
      <meta charset="utf-8"/>
      <title>Marked in the browser</title>
    </head>
    <body>
    <div class="tzxMarked">**nice**</div>
    <div class="tzxMarked">
    # good
    **bad**
    ## nice
    ## terrible
    > quoted
    </div>

    <script src="lib/marked.js"></script>
    <script>
    tzxMarkeds = document.getElementsByClassName('tzxMarked');
    for ( var i = 0; i < tzxMarkeds.length; ++i ) {
        m = tzxMarkeds[i];
        ms = m.textContent;
        console.log( ms );
        m.innerHTML = marked( ms );
    }
    </script>
    </body>
    </html>
    ```

Strapdown

:   ```html
    <!DOCTYPE html>
    <html>
    <title>Hello Strapdown</title>

    <xmp theme="united" style="display:none;">
    # Markdown text goes in here

    ## Chapter 1

    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
    tempor incididunt ut labore et dolore magna aliqua.

    ## Chapter 2

    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
    aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in
    voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
    occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit
    anim id est laborum.
    </xmp>

    <script src="http://strapdownjs.com/v/0.2/strapdown.js"></script>
    </html>
    ```

Refs

#. [chjj/marked](https://github.com/chjj/marked)
#. [Strapdown.js - Instant and elegant Markdown documents](http://strapdownjs.com/)

---

那什么 [Emoji cheat sheet for GitHub, Basecamp and other services](http://www.emoji-cheat-sheet.com/)，
不比这个好：[Emoji searcher](http://emoji.muan.co/)

![Emoji 的各种玩法……](https://cloud.githubusercontent.com/assets/1369170/8635052/e333474e-27c7-11e5-8af8-5b0bc2281095.gif)

:sweat_smile:

Refs

#. [notwaldorf/emoji-translate](https://github.com/notwaldorf/emoji-translate)

---

Ballot Box

Unicode Block (Miscellaneous Symbols)

:   `U+2600` ~ `U+26FF`, #characters = 256

    BALLOT BOX WITH CHECK
      ~ &#x2611; `&#x2611;`{.html}

    BALLOT BOX
      ~ &#x2610; `&#x2610;`{.html}

ballot 英 `['bælət]` 美 `['bælət]` n. 投票；投票用纸；投票总数 vi. 投票；抽签决定

Refs

#. [Unicode Character 'BALLOT BOX' (U+2610)](http://www.fileformat.info/info/unicode/char/2610/index.htm)
#. [Unicode Character 'BALLOT BOX WITH CHECK' (U+2611)](http://www.fileformat.info/info/unicode/char/2611/index.htm)

---

French terror attacks: Victim obituaries^[obituaries `oh-bich-oo-er-ee` n. 讣告；讣闻（obituary的复数形式）]

Twelve people died when a bloody attack was launched on the office of France's
satirical magazine Charlie Hebdo. The following day a policewoman was murdered
by Amedy Coulibaly, who held up a Jewish supermarket the next day, killing four
people. Here are brief profiles of all 17 victims.

![19 Sep 2012 issue: An Orthodox Jew pushes an old Muslim in a wheelchair, both
    shouting “You mustn’t make fun!”](http://ichef-1.bbci.co.uk/news/624/media/images/80116000/jpg/_80116101_charliemuslimandjew464.jpg)

死的很多 cartoonist 和 editor，以及一两个 economist，

警察里有 Ahmed Merabet，是个 muslim，"He was a Muslim - a fact picked up by
bloggers seeking to defend the community against "terrorist" slurs."

Witnesses have been describing the dramatic events in France, where two sieges
came to a violent end.

Hostage's mother:

> "My daughter, she's in the supermarket. She's with her Jewish boyfriend. They went shopping.
> he called me 10 minutes ago. She said mum - there's dead people."

Golda, shopper

> "There is a big Jewish community in the area - this area is actually in the
> middle of three Jewish communities.  "Do I feel threatened? Yes. For the
> Jewish community, once again we are being attacked."

![Video footage showed two gunmen firing assault weapons at police in the
    street outside the office](http://ichef.bbci.co.uk/news/624/media/images/80124000/jpg/_80124628_025311653-1.jpg)

![France has been left reeling from the brutal attack](http://ichef.bbci.co.uk/news/624/media/images/80124000/jpg/_80124630_025308133-1.jpg)

'Rivers of blood'

:   One witness told AFP the attack was reminiscent of a scene from a movie:
    "I saw them leaving and shooting. They were wearing masks.
    These guys were serious.... At first I thought it was special forces
    chasing drug traffickers or something."

![Vigil（~~戒严~~祈福） held in Sète, France](http://ichef.bbci.co.uk/live-experience/cps/704/mcs/media/images/80126000/jpg/_80126207_joeytranchinasetevigil.jpg)

![Police officers stand guard outside a flat in Reims as investigators search inside.](http://ichef.bbci.co.uk/live-experience/cps/704/mcs/media/images/80126000/jpg/_80126297_025315148-1.jpg)

![Rallies condemning the attack are taking place across the world, including this one in Quebec, Canada.](http://ichef.bbci.co.uk/live-experience/cps/704/mcs/media/images/80126000/jpg/_80126293_025314033-1.jpg)

![Cartoon by Alex Green](http://ichef.bbci.co.uk/live-experience/cps/512/mcs/media/images/80126000/png/_80126203_alexgreencartoon.png)

![Barbaric](http://ichef.bbci.co.uk/live-experience/cps/512/mcs/media/images/80125000/png/_80125156_mirror.png)

![Victims lay on the pavement in a Paris restaurant Nov. 13, 2015.](http://gnat.qiniudn.com/paris-in-terror/paris-in-terror.png)

法国人唱着国歌撤离球场。

Ernest Hemingway (*For Whom the Bell Tolls*):

> 不要问丧钟为谁鸣，丧钟为你而鸣。

Refs

#. [French terror attacks: Victim obituaries - BBC News](http://www.bbc.com/news/world-europe-30724678)
#. [France sieges end: Witness accounts - BBC News](http://www.bbc.com/news/world-europe-30755914)
#. [As it happened: Charlie Hebdo attack - BBC News](http://www.bbc.com/news/live/world-europe-30710777)
#. [Charlie Hebdo: Gun attack on French magazine kills 12 - BBC News](http://www.bbc.com/news/world-europe-30710883)
#. [Paris attacks: Suspects' profiles - BBC News](http://www.bbc.com/news/world-europe-30722038)
#. [Paris attacks: Dozens killed in series of terror attacks across French capital - CBS News](http://www.cbsnews.com/news/paris-explosion-stadium-shootout-restaurant/)

---

<kbd>Control</kbd> + <kbd>Alt</kbd> + <kbd>Up</kbd>/<kbd>Down</kbd>/<kbd>Left</kbd>/<kbd>Right</kbd>

不知道的话，突然碰到可能会有点不知所措。

---

为了把爬虫放进来[^qiniu-robots-default]，参考 [The Web Robots Pages](http://www.robotstxt.org/robotstxt.html) 写了一个 robots.txt，里面只有两行：

```plain
User-agent: *
Disallow:
```

加了后去百度的 [Robots_站长工具_robots文件检测及生成](http://zhanzhang.baidu.com/robots) 看看生效没。

[^qiniu-robots-default]: 七牛默认在每个 bucket 加了一个 robots 文件，禁止所有爬虫的爬取。

<!--...-->
<script type="text/javascript" src="jquery.min.js"></script>
<script type="text/javascript" src="jquery-ui.min.js"></script>
<script>
$(function() {
    $( ".tzx-tabs" ).tabs();
});
</script>
