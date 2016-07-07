---
title: 相机控制软件 gPhoto2 的简要介绍
date: 2015-02-19
keywords:
    - gphoto2
    - linux
tags:
    - gphoto2
    - linux
...

相机控制软件 gPhoto2 的简要介绍
===============================

相机的拍摄，可以通过相机自带的驱动程序和应用软件。也可以通过 gPhoto2，它的[官网](http://www.gphoto.org/)上
这么介绍到：

>   gPhoto2 is a free, redistributable, ready to use set of digital camera
>   software applications for Unix-like systems, written by a whole team of
>   dedicated volunteers around the world. It supports more than 2100 cameras...

我们用 gPhoto2 来控制 Nikon 相机和一个工业鱼眼镜头，实现定时触发的拍摄，用于室内全景图的采集。
本文先介绍 Linux 下 Bash 基础知识，再介绍 gPhoto2 的安装和使用，以及相机的配置方法。

Bash 指南
---------

Linux 下命令行环境为一种 shell，通常默认为 Bash（borne-again shell）。

### Tab 补全

命令不需要全部手敲，按 `Tab` 键命令可自动补全。
如：<kbd>ec&lt;TAB&gt;</kbd>（这里的 <kbd>&lt;TAB&gt;</kbd> 指的是键盘上的 `Tab` 键），
Bash 会自动补全为 `echo`{.bash}，接着敲空格，再 `hello Bash`，
即整个语句是 `echo hello Bash`{.bash}，输出为 `hello Bash`{.plain}。

### 命令 + 参数

`echo`{.bash} 是命令，`hello Bash`{.bash} 是参数。
结果就是打印 `hello Bash`{.plain} 到标准输出流（即命令行）。

### man 文档

几乎所有命令都有详细的使用文档，所以不必背太多指令。
不知道 `gphoto2` 怎么用，就 `man gphoto2`{.bash}，
或者试试 `gphoto2 --help`{.bash}，或者直接 `gphoto2`，使用方法会打印在屏幕上
（Linux 用起来其实很容易）：

![gphoto2 help](http://gnat.qiniudn.com/misc/gphoto2.png)

### 可以把命令写成脚本下次直接使用

拍一张照片，用 `gphoto2 --capture-image`{.bash} 即可，写到一个文件里比如 `run.sh`：

```bash
#/bin/bash

# 这是单行注释，下面是命令
gphoto2 \
--capture-image
: '
这是多行注释，上面冒号前的两行是命令。反斜杠用来续行，上面的命令等价于
    gphoto2 --capture-image
两种表达一模一样。
多行注释结束。
'
```

保存好 `run.sh`，添加执行权限（不然文本就是文本，不能运行）：`chmod +x ./run.sh`{.bash}，
最后运行：`./run.sh`{.bash}，即可拍一张照片。

安装 gPhoto2
------------

我主要参考了这篇文章：[Compiling gphoto2 on the Raspberry Pi – One life and a few more things](http://www.yannock.be/computer/compiling-gphoto2-on-the-raspberry-pi)，
大致的流程是：

```bash
# 安装依赖
sudo apt-get install \
    subversion dh-autoreconf \
    libglib2.0-dev \
    libusb-dev libusb-1.0-0-dev \
    libexif-dev libpopt-dev libfuse-dev \
    mono-devel monodoc-base libmono-2.0.1 mono-gmcs \
    python-pyrex

# 下载安装 libgphoto2
wget http://sourceforge.net/projects/gphoto/files/libgphoto/2.5.2/libgphoto2-2.5.2.tar.gz
tar xvf libgphoto2*.tar.gz
cd libgphoto2*
./configure
make -j4
sudo make install

# 下载安装 gphoto2
wget http://sourceforge.net/projects/gphoto/files/gphoto/2.5.2/gphoto2-2.5.2.tar.gz
tar xvf gphoto2*.tar.gz
cd gphoto2*
./configure
make -j4
sudo make install
```

### 几个脚本

拍照：（保留一些注释掉的命令）

```bash
#/bin/bash

gphoto2 \
--capture-image \
--capture-image \
--capture-image \

: '
更改一些设置，改一次就好，用了就注释掉

gphoto2 \
    --set-config /main/capturesettings/nikonflashmode=3 \
    --set-config /main/capturesettings/shootingspeed=3 \
    --set-config /main/capturesettings/flashmode=1 \
    --set-config /main/capturesettings/shutterspeed=15 \
    --set-config /main/capturesettings/shutterspeed2=17 \
    --set-config /main/capturesettings/exposuredelaymode=0 \
    --set-config /main/capturesettings/burstnumber=1 \
    --set-config /main/other/500c=1 \
    --set-config /main/other/500d=15 \
    --set-config /main/other/500f=0 \
    --set-config /main/other/5018=0 \
    --set-config /main/other/d068=3 \
    --set-config /main/other/d06a=3 \
    --set-config /main/other/d1b1=36 \
'

: '
# 这是原来的设置，恢复的时候用

    --set-config /main/capturesettings/nikonflashmode=0 \
    --set-config /main/capturesettings/shootingspeed=3 \
    --set-config /main/capturesettings/flashmode=1 \
    --set-config /main/capturesettings/shutterspeed=15 \
    --set-config /main/capturesettings/shutterspeed2=17 \
    --set-config /main/capturesettings/exposuredelaymode=0 \
    --set-config /main/capturesettings/burstnumber=1 \
    --set-config /main/other/500c=1 \
    --set-config /main/other/500d=15 \
    --set-config /main/other/500f=0 \
    --set-config /main/other/5018=0 \
    --set-config /main/other/d068=3 \
    --set-config /main/other/d06a=3 \
    --set-config /main/other/d1b1=36 \
    '
    ```

注意 `--capture-preview`{.bash} 和 `--capture-image`{.bash} 的区别，可换着试试看。

获取 Thumbnail（把相机里的照片缩略图传回电脑）：

```bash
gphoto2 --get-all-thumbnails
```

![缩略图--遥感楼内部：thumb_DSC_2221.jpg](http://gnat.qiniudn.com/misc/thumb1.jpg)

自动分类存到文件夹

```bash
#/bin/bash

# BASENAME=$(date +%s_%F_%H:%M:%S_%N)

BASEDIR="/tmp/"
EXTENTION="jpg"

repeat() { while true; do $@; done;};
capture() {
    FOLDER="${BASEDIR}./$(date +%F/%H/%M)" && \
    IMG="$(date +%s_%F_%H:%M:%S_%N).${EXTENTION}"
    mkdir -p $FOLDER
    echo @___folder: [$FOLDER]
    echo @____image: [$IMG]
    # 照相命名并分类保存
    gphoto2 --capture-image --filename $IMG && mv $IMG $FOLDER
    # echo  'hello(`date +%s`)' > $IMG && mv $IMG $FOLDER
    # read -t 1 || return
    # echo sleep 3 seconds && sleep 3 && echo sleep done
};

repeat capture # 持续拍照
```

可以通过 gphoto2 获取相机的当前设置：`gphoto2 --summary`{.bash}，
这里是部分输出：

```
Camera summary:
Manufacturer: Nikon Corporation
Model: D7100
  Version: V1.01
  Serial Number: 61778820000000000000000000000000
Vendor Extension ID: 0xa (1.0)
Vendor Extension Description: microsoft.com: 1.0

Capture Formats: JPEG Undefined Type
Display Formats: Undefined Type, Association/Directory, Script, DPOF, Apple Quicktime, JPEG

Device Capabilities:
    File Download, File Deletion, File Upload
    Generic Image Capture, No Open Capture, Nikon Capture 1, Nikon Capture 2, Nikon Capture 3
```

全部输出：[summary.txt](http://gnat.qiniudn.com/tmp/gphoto2/summary.txt)。

还可以输出相机的所有的参数候选项，大概长这样（[`list-all-config`{.bash}][list-all-config.txt](  <= 点我查看全部内容)）：

```
/main/actions/autofocusdrive
Label: Drive Nikon DSLR Autofocus
Type: TOGGLE
Current: 0
/main/actions/manualfocusdrive
Label: Drive Nikon DSLR Manual focus
Type: RANGE
Current: 0
Bottom: -32767
Top: 32767
Step: 1
/main/actions/changeafarea
Label: Set Nikon Autofocus area
Type: TEXT
Current: 0x0
/main/actions/controlmode
Label: Set Nikon Control Mode
Type: TEXT
Current: 0
/main/settings/capturetarget
Label: Capture Target
Type: RADIO
Current: Internal RAM
Choice: 0 Internal RAM
Choice: 1 Memory card
```

利用这些可以设置相机，比如上面的 `/main/settings/capturetarget` 的类型是 RADIO
（就是 Qt/MFC 里的 Radio button，HTML 里的 Radio input，一样一样的），二选一。

那么，设置照片保存在 RAM 上就可以：

`gphoto2 --set-config /main/settings/capturetarget=0`{.bash}。

其他参数也是这样设置。

[list-all-config.txt]: http://gnat.qiniudn.com/tmp/gphoto2/list-all-config.txt
