% Debian Configurations
% TANG ZhiXiong
% 2015-02-19

Debian Configurations
=====================

## `/etc/apti/sources.list`

<small>
```bash
adduser gnat                                # userdel gnat
visudo                                      # add "gnat ALL=(ALL:ALL) ALL"

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
sudo apt-get install -y nautilus-open-terminal flashplugin-nonfree synaptic sudo file-roller && \
sudo apt-get install -y software-center gnome-tweak-tool gdebi && \
sudo apt-get install -y pinta && \
sudo apt-get install -y gcc g++ make cmake && \
sudo apt-get install -y p7zip p7zip-full p7zip-rar unrar zip unzip cabextract && \
sudo apt-get install -y xclip && \
sudo apt-get install -y python-twisted xclip vim-gnome astyle python-setuptools && \
sudo apt-get install -y xsel htop w3m global && \
sudo apt-get upgrade

dpkg-reconfigure locales                    # us utf 8; zh utf 8, GB, Big5, etc
locales-gen                                 # if skiped locales generation
```
</small>

## Chrome/Firefox Extensions

- [CRX extensions](http://weibo.com/5110199966/BDGhVfMUy)
- [XPI 插件必备](http://weibo.com/5110199966/C2al0ztzs)

其它都不重要，除了 `Copy-as-Markdown.crx`，VimFx。

VimFX notes:

:   - `?`: help
    - `gt`, `gT`

## MISC

### Fonts

Terminal (Mono) Fonts

```bash
sudo apt-get install ttf-inconsolata
sudo apt-get install ttf-droid
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

### Zsh (oh-my-zsh)

```bash
curl -L http://install.ohmyz.sh | sh
```

`.zshrc`

:   ````bash
    plugins=(git colored-man)
    ````

### Emacs 24

```bash
wget http://mirrors.ustc.edu.cn/gnu/emacs/emacs-24.3.tar.xz
tar --xz -xvf emacs*.tar.xz
apt-get install -y \
    libxaw7-dev libxpm-dev libpng12-dev libtiff5-dev \
    libgif-dev libjpeg8-dev libgtk2.0-dev libncurses5-dev
cd emacs*
mkdir build && cd build
../configure
make
make install
```

用 Chenbin 的配置（前端，C++，Evil-mode）：[redguardtoo/emacs.d](https://github.com/redguardtoo/emacs.d)

```bash
wget https://github.com/redguardtoo/emacs.d/archive/master.zip
unzip master.zip
cd ~ && rm -Rf .emacs.d
ln -s path/to/chenbin-emacs .emacs.d
emacs -nw --batch -l ~/.emacs.d/init.el -f package-refresh-contents
```

### Some useful tools

- [Percol](https://github.com/mooz/percol)
- [Banner](http://www.cyberciti.biz/faq/create-large-colorful-text-banner-on-screen/)
- [neo keyboard layout](https://github.com/district10/neo_keyboard_layout)

### Vim

简单的

```plain
set expandtab ts=4 sw=4 ai
%retab
```

强大的

- [amix/vimrc](https://github.com/amix/vimrc)
    + [basic version](https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim)
    + ultimate version
- [spf13/spf13-vim: The ultimate vim distribution](https://github.com/spf13/spf13-vim)

不要忘了 `vim -u NONE`{.bash}

### GCC4.9 (for C++11)

因爲硬件的問題，Debian 一直沒裝上，用了 Xubuntu，驚現原來原裝的 GCC4.8 已經可以
用 `-std=c++11`{.bash}……

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
#    --enable-languages=c,c++ --enable-multilib \
#    --build=x86_64-linux-gnu --enable-checking=release
#    ../configure --prefix=/home/gnat/bin/gcc --program-suffix=-4.9 \
#    --enable-languages=c,c++ --enable-multilib \
#    --build=x86_64-linux-gnu --enable-checking=release
make -j4
make install
```

or to choose an online compiler: [coliru](http://coliru.stacked-crooked.com/)、
[C++ Shell](http://cpp.sh/)。

or [MinGW Distro (open box) for windows users](http://nuwen.net/mingw.html)

QtCreator 建 C++ 工程（cmake），在 cmake 文件里加上

```cmake
set( CMAKE_CXX_FLAGS "-std=c++11" )                # Add c++11 functionality
```

[C++ 的 man 文档](https://github.com/jeaye/stdman)，超赞！

![`man std::string::c_str`{.bash}](http://whudoc.qiniudn.com/stdman.gif)

### [gPhoto2](http://www.yannock.be/computer/compiling-gphoto2-on-the-raspberry-pi)

<small>
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
</small>

详细见 [gPhoto2 指南](post-0004-gphoto2.html)。

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
sudo cnpm install -g http-server # better than: python -m SimpleHTTPServer
sudo cnpm install -g csslint
sudo cnpm install -g jshint
```

### Gems

用淘宝的 [RubyGems 源](http://ruby.taobao.org/)

```bash
gem sources -l                              # 看看是什么，把它去除
gem sources --remove http://rubygems.org/
gem sources -a https://ruby.taobao.org
```

注意 `http://rubygems.org` 不要打成 `http://rubygems.org/`。

装个 [pry](http://pryrepl.org/)：

:   ```bash
    sudo gem install pry
    ```

## Bonus

### [GDAL](http://gis.stackexchange.com/questions/21728/how-can-i-install-gdal-1-9-0-on-my-linux-ubuntu-server-10-04)

<http://download.osgeo.org/gdal>

:   ```bash
    cd gdal-1.9.0
    ./configure --with-python
    make
    sudo make install
    sudo ldconfig                   ## update the shared library cache
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

<small><small><small>
```bash
version="$(wget -q -O - http://sourceforge.net/projects/opencvlibrary/files/opencv-unix | egrep -m1 -o '\"[0-9](\.[0-9]+)+' | cut -c2-)"
echo "Installing OpenCV" $version
mkdir OpenCV
cd OpenCV
echo "Removing any pre-installed ffmpeg and x264"
sudo apt-get -qq remove ffmpeg x264 libx264-dev
echo "Installing Dependenices"
sudo apt-get -qq install -y libopencv-dev build-essential checkinstall cmake \
    pkg-config yasm libjpeg-dev libjasper-dev libavcodec-dev libavformat-dev \
    libswscale-dev libdc1394-22-dev libxine-dev libgstreamer0.10-dev \
    libgstreamer-plugins-base0.10-dev libv4l-dev python-dev python-numpy libtbb-dev \
    libqt4-dev libgtk2.0-dev libfaac-dev libmp3lame-dev libopencore-amrnb-dev \
    libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev x264 \
    v4l-utils ffmpeg
echo "Downloading OpenCV" $version
wget -O OpenCV-$version.zip \
    http://sourceforge.net/projects/opencvlibrary/files/opencv-unix/$version/opencv-"$version".zip/download
echo "Installing OpenCV" $version
unzip OpenCV-$version.zip
cd opencv-$version
mkdir build
cd build
cmake \
    -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D WITH_TBB=ON -D BUILD_NEW_PYTHON_SUPPORT=ON -D WITH_V4L=ON \
    -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON \
    -D BUILD_EXAMPLES=ON -D WITH_QT=ON -D WITH_OPENGL=ON ..
make -j4
sudo checkinstall
sudo sh -c 'echo "/usr/local/lib" > /etc/ld.so.conf.d/opencv.conf'
sudo ldconfig
echo "OpenCV" $version "ready to be used"
```
</small></small></small>

### [PCL](pointclouds.org/downloads/linux.html)

Ubuntu :

```bash
sudo add-apt-repository ppa:v-launchpad-jochen-sprickerhof-de/pcl
sudo apt-get update
sudo apt-get install libpcl-all
```

Debian:

<small>
```bash
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 19274DEF
sudo echo \
    "deb http://ppa.launchpad.net/v-launchpad-jochen-sprickerhof-de/pcl/ubuntu maverick main" \
    >> /etc/apt/sources.list
sudo apt-get update
sudo apt-get install libpcl-all
```
</small>

Deps:

* [Eigen](http://eigen.tuxfamily.org/index.php?title=Main_Page)
* [FLANN](http://www.cs.ubc.ca/research/flann/)

ag 搜索源码的好工具

```bash
apt-get install silversearcher-ag
```

Windows 二进制：<http://gnat.qiniudn.com/ag.exe>

比如，用 `ag`{.bash} 搜索 three.js 中的 “fisheye”，基本是回车即显：

![ag - The Silver Searcher](http://whudoc.qiniudn.com/ag-fisheye.png)

还有一个 [pt](https://github.com/monochromegane/the_platinum_searcher) 和它类似，
对中文比较友好。

tmux & [tmuxinator](https://github.com/tmuxinator/tmuxinator)

查看文件中的 <kbd>Tab</kbd>：`ag '\t'`{.bash}

```bash
sudo apt-get install tmux
sudo gem install tmuxinator
```

[Wemux](https://github.com/zolrath/wemux)

![wemux](http://whudoc.qiniudn.com/wemux.png)

```bash
sudo git clone git://github.com/zolrath/wemux.git /usr/local/share/wemux
sudo ln -s /usr/local/share/wemux/wemux /usr/local/bin/wemux
sudo cp /usr/local/share/wemux/wemux.conf.example /usr/local/etc/wemux.conf
sudo vim /usr/local/etc/wemux.conf # host_list=(root gnat)，改成自己的 ID
```

![](http://gnat-tang-shared-image.qiniudn.com/file_colored_zsh.png)

---

Refs

#. <https://lug.ustc.edu.cn/wiki/mirrors/help/debian>
#. <http://www.2cto.com/Article/201304/200418.html>
#. and many more.
