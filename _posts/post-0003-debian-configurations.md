% Debian Configurations
% Tang Zhixiong
% 2015-02-19


Debian Configurations
=====================

`/etc/apti/sources.list`
------------------------

```bash
adduser gnat # userdel gnat
visudo # add "gnat ALL=(ALL:ALL) ALL"

# 用 USTC 的镜像
# For Debian
deb http://mirrors.ustc.edu.cn/debian stable main contrib non-free
deb-src http://mirrors.ustc.edu.cn/debian stable main contrib non-free
deb http://mirrors.ustc.edu.cn/debian stable-proposed-updates main contrib non-free
deb-src http://mirrors.ustc.edu.cn/debian stable-proposed-updates main contrib non-free

sudo apt-get update && \
sudo apt-get install -y build-essential python-all-dev python3  python-pip && \
sudo apt-get install -y geany vim vim-gnome terminator pandoc && \
sudo apt-get install -y audacious vlc chromium calibre nautilus-dropbox
sudo apt-get install -y zsh git curl nasm ascii && \
sudo apt-get install -y nautilus-open-terminal flashplugin-nonfree synaptic sudo file-roller gdebi && \
sudo apt-get install -y software-center gnome-tweak-tool && \
sudo apt-get install -y pinta && \
sudo apt-get install -y gcc g++ make cmake && \
sudo apt-get install -y p7zip p7zip-full p7zip-rar unrar zip unzip cabextract && \
sudo apt-get install -y xclip && \
sudo apt-get install -y python-twisted xclip vim-gnome astyle python-setuptools && \
sudo apt-get install -y xsel htop w3m global && \
sudo apt-get upgrade

dpkg-reconfigure locales # us utf 8; zh utf 8, GB, Big5, etc
locales-gen # if skiped locales generation
```

Chrome/Firefox Extensions
-------------------------

[CRX extensions](http://weibo.com/5110199966/BDGhVfMUy)
[XPI 插件必备](http://weibo.com/5110199966/C2al0ztzs)

其它都不重要，除了 Copy-as-Markdown.crx，Vimperator。

Vimperator 简单教程：（用 `:help` 打开帮助）

| Key(s) | Function |
| :---: | :---: |
| `H`, `L`, `r` | {backward, backward} history, refresh; like `<c-o>`, `<c-i>`, `<c-0>` |
| `<c-n>`/`gt`, `<c-p>`/`gT` | {next, previous} tab |
| `g0`, `g$` | first, last tab |
| `<c-6>` | switch between two tabs |
| `d`, `u` | close tab, reopen closed tab |
| `zi`, `zo`, `zz` | zoom {in, out, to default} |
| `/`, `?` | search {forward, backward} |
| `gg`, `G` | `<c-HOME>`, `<c-END>` |
| `]]`, `[[` | next, previous page |
| `gf` | toggle source code |
| `gu` | `cd ..` |
| `:o url`, `:t url`, `:w url` | open url in {{current, new} tab, new window} |

Vimperator config:

```plain
set hintchars="etsoir,lna"
```

MISC
----

### Fonts

Terminal (Mono) Fonts

```bash
# MONOSPACE is my favorite, not inconsolate
sudo apt-get install ttf-inconsolata
sudo apt-get install ttf-droid
# ua-square font
```

Chinese fonts

1. `apt-get install fonts-wqy-microhei fonts-wqy-zenhei`{.bash}
2. Install LaTeX to get more fonts.
3. 如果你要偷字体
    1. `c:\windows\fonts`{.bash}，偷点字体
    2. `cd /usr/share/fonts/ && mkdir winfonts`{.bash}，放这里
    3. 处理一下：

        ```bash
        cd winfonts
        mkfontscale && mkfontdir
        fc-cache
        ```

### Zsh (oh my zsh.)

```bash
curl -L http://install.ohmyz.sh | sh
```

.zshrc

````bash
plugins=(git colored-man)
````

### Emacs 24

```bash
# sudo aptitude install -t wheezy-backports emacs24-lucid # this work?
# I didn't try. Lets compile from source (get it from USTC mirror site, 
# `wget http://mirrors.ustc.edu.cn/gnu/emacs/emacs-24.3.tar.xz`)
apt-get install libxaw7-dev libxpm-dev libpng12-dev libtiff5-dev \
                libgif-dev libjpeg8-dev libgtk2.0-dev libncurses5-dev  
cd emacs-24.3
mkdir build && cd build
../configure
make
make install # much easier than compiling gcc... see: emacs --version
# GNU Emacs 24.3.1
# Copyright (C) 2013 Free Software Foundation, Inc.
# GNU Emacs comes with ABSOLUTELY NO WARRANTY.
# You may redistribute copies of Emacs
# under the terms of the GNU General Public License.
# For more information about these matters, see the file named COPYING.
# c-x c-c to close... long time no use... go get my evil-mode now
```

用 Chenbin 的配置（前端，C++，Evil-mode）：[redguardtoo/emacs.d](https://github.com/redguardtoo/emacs.d)

```
wget https://github.com/redguardtoo/emacs.d/archive/master.zip
unzip master.zip
cd ~ && rm -Rf .emacs.d
ln -s path/to/chenbin-emacs .emacs.d
emacs -nw --batch -l ~/.emacs.d/init.el -f package-refresh-contents
```

### Some useful tools

* [Percol](https://github.com/mooz/percol)
* xcape
* [Banner](http://www.cyberciti.biz/faq/create-large-colorful-text-banner-on-screen/)

### Vim 

简单的

```plain
set expandtab ts=4 sw=4 ai
%retab
```

强大的：<https://github.com/ma6174/vim>

![ma6174-vim.png](http://upload-images.jianshu.io/upload_images/29284-17576a33d43ce6a0.png)

```bash
wget -qO- https://raw.github.com/ma6174/vim/master/setup.sh | sh
```

### GCC4.9 (for C++11)

因爲硬件的問題，Debian 一直沒裝上，用了 Xubuntu，驚現原來原裝的 GCC4.8 已經可以用 `-std=c++11`{.bash}……

Compile GCC：<http://gcc.gnu.org/wiki/InstallingGCC>

```bash
./configure
make
sudo make install
```

[Other choice: How to compile GCC 4.9](http://zisxks.com/2014/04/11/compile-and-install-GCC-4.9-in-Ubuntu-12.04/)

```bash
sudo apt-get install flex bison build-essential gcc-multilib
cd gcc-4.9.1 && ./contrib/download_prerequisites 
mkdir build && cd build
# ../configure --prefix=/opt/gcc_4_9 --program-suffix=-4.9 \
--enable-languages=c,c++ --enable-multilib \
--build=x86_64-linux-gnu --enable-checking=release 
../configure --prefix=/home/gnat/bin/gcc --program-suffix=-4.9 \
--enable-languages=c,c++ --enable-multilib \
--build=x86_64-linux-gnu --enable-checking=release 
make -j # origin: make -j4, Modified by gnat 
make install
```

or to choose an online compiler: [coliru](http://coliru.stacked-crooked.com/)、
[C++ Shell](http://cpp.sh/)。

or [MinGW Distro (open box) for windows users](http://nuwen.net/mingw.html)

QtCreator 建 C++ 工程（cmake），在 cmake 文件里加上

```cmake
SET(CMAKE_CXX_FLAGS "-std=c++11") # Add c++11 functionality
```

[C++ 的 man 文档](https://github.com/jeaye/stdman)，超赞！

![`man std::string::c_str`{.bash}](http://upload-images.jianshu.io/upload_images/29284-3e49d6b577894f60.gif)

### [gPhoto2](http://www.yannock.be/computer/compiling-gphoto2-on-the-raspberry-pi)

```bash
# deps
sudo apt-get install \
subversion dh-autoreconf \
libglib2.0-dev \
libusb-dev libusb-1.0-0-dev \
libexif-dev libpopt-dev libfuse-dev \
mono-devel monodoc-base libmono-2.0.1 mono-gmcs \
python-pyrex
# source
wget http://sourceforge.net/projects/gphoto/files/libgphoto/2.5.2/libgphoto2-2.5.2.tar.gz
wget http://sourceforge.net/projects/gphoto/files/gphoto/2.5.2/gphoto2-2.5.2.tar.gz
# unzip, ./configure, make, make install
```

### NPM

The best: [快速搭建 Node.js 开发环境以及加速 npm](https://cnodejs.org/topic/5338c5db7cbade005b023c98)

```bash
# GIT_DIR="Your Git Folder"
cd $GIT_DIR
git clone https://github.com/creationix/nvm.git
nvm && source nvm.sh
NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/dist nvm install 0.11.11
npm --registry=https://registry.npm.taobao.org install koa
```

add to `.bashrc` (or `.zshrc`, etc)

```bash
# nvm
GIT_DIR=~/git/others
export NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/dist
source $GIT_DIR/nvm/nvm.sh
```

Install cnpm

```bash
sudo npm install -g cnpm --registry=https://registry.npm.taobao.org
```

then use `cnpm`{.bash} instead of `npm`

一些有用的东东：

```bash
sudo cnpm install -g http-server # 可以在不同端口开数个服务器，不像 python -m SimpleHTTPServer 只能在 。8000 开一个端口服务
sudo cnpm install -g csslint
sudo cnpm install -g jshint
```

### Gems

用淘宝的 [RubyGems 源](http://ruby.taobao.org/)

```bash
gem sources -l # 看看是什么，把它去除
gem sources --remove http://rubygems.org/
gem sources -a https://ruby.taobao.org
```

吐槽：

* 这特么都不能错！！！
* 还有区别！`http://rubygems.org` $\neq$ `http://rubygems.org/`

try it, install [pry](http://pryrepl.org/)

```bash
sudo gem install pry
```

## Bonus

### [GDAL](http://gis.stackexchange.com/questions/21728/how-can-i-install-gdal-1-9-0-on-my-linux-ubuntu-server-10-04)

```bash
# http://download.osgeo.org/gdal
cd gdal-1.9.0
./configure --with-python
make
sudo make install
sudo ldconfig ## update the shared library cache
```

### [CGAL](http://doc.cgal.org/latest/Manual/installation.html)

`sudo apt-get install libcgal-dev`{.bash}

或者自己编译：

```bash
# GMP
sudo apt-get install libgmp3-dev
# MPFR
wget http://www.mpfr.org/mpfr-current/mpfr-3.1.2.tar.xz
./configure && make -j 4
sudo make install
# BOOST
sudo apt-get install libboost-all-dev
# CGAL
cmake . && make -j 4
sudo make install
```

### [Open CV](https://help.ubuntu.com/community/OpenCV)

A Script to install OpenCV:

```bash
version="$(wget -q -O - http://sourceforge.net/projects/opencvlibrary/files/opencv-unix | egrep -m1 -o '\"[0-9](\.[0-9]+)+' | cut -c2-)"
echo "Installing OpenCV" $version
mkdir OpenCV
cd OpenCV
echo "Removing any pre-installed ffmpeg and x264"
sudo apt-get -qq remove ffmpeg x264 libx264-dev
echo "Installing Dependenices"
sudo apt-get -qq install libopencv-dev build-essential checkinstall cmake pkg-config yasm libjpeg-dev libjasper-dev libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev libxine-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev python-dev python-numpy libtbb-dev libqt4-dev libgtk2.0-dev libfaac-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev x264 v4l-utils ffmpeg
echo "Downloading OpenCV" $version
wget -O OpenCV-$version.zip http://sourceforge.net/projects/opencvlibrary/files/opencv-unix/$version/opencv-"$version".zip/download
echo "Installing OpenCV" $version
unzip OpenCV-$version.zip
cd opencv-$version
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_TBB=ON -D BUILD_NEW_PYTHON_SUPPORT=ON -D WITH_V4L=ON -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D BUILD_EXAMPLES=ON -D WITH_QT=ON -D WITH_OPENGL=ON ..
make -j2
sudo checkinstall
sudo sh -c 'echo "/usr/local/lib" > /etc/ld.so.conf.d/opencv.conf'
sudo ldconfig
echo "OpenCV" $version "ready to be used"
```

### [PCL](pointclouds.org/downloads/linux.html)

Ubuntu :

```bash
sudo add-apt-repository ppa:v-launchpad-jochen-sprickerhof-de/pcl
sudo apt-get update
sudo apt-get install libpcl-all
```

Debian:

```bash
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 19274DEF
sudo echo "deb http://ppa.launchpad.net/v-launchpad-jochen-sprickerhof-de/pcl/ubuntu maverick main" >> /etc/apt/sources.list
sudo apt-get update
sudo apt-get install libpcl-all
```

Deps:

* [Eigen](http://eigen.tuxfamily.org/index.php?title=Main_Page)
* [FLANN](http://www.cs.ubc.ca/research/flann/)

ag 搜索源码的好工具

```bash
apt-get install silversearcher-ag 
```

Windows 二进制：<http://gnat.qiniudn.com/ag.exe>

比如，用 `ag`{.bash} 搜索 three.js 中的 “fisheye”，基本是回车即显：

![ag - The Silver Searcher](http://upload-images.jianshu.io/upload_images/29284-f35d07a835d53bad.png)

tmux & [tmuxinator](https://github.com/tmuxinator/tmuxinator)

查看文件中的 <kbd>Tab</kbd>：`ag '\t'`{.bash}

```bash
sudo apt-get install tmux
sudo gem install tmuxinator
```

[Wemux](https://github.com/zolrath/wemux)

![wemux](http://upload-images.jianshu.io/upload_images/29284-e8032350ed4a7d86.png)

```bash
sudo git clone git://github.com/zolrath/wemux.git /usr/local/share/wemux
sudo ln -s /usr/local/share/wemux/wemux /usr/local/bin/wemux
sudo cp /usr/local/share/wemux/wemux.conf.example /usr/local/etc/wemux.conf
sudo vim /usr/local/etc/wemux.conf # host_list=(root gnat)，改成自己的 ID
```

---

Refs

* <https://lug.ustc.edu.cn/wiki/mirrors/help/debian>
* <http://www.2cto.com/Article/201304/200418.html>
* and many more.