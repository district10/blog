% All About Encoding
% TANG ZhiXiong
% 2015-11-19

All About Encoding
==================


文件不多，用 Notepad++ 就可以。但如果……（總之命令行的好處就在這裏，人工畢竟太累。）

```shell
# 檢測
$ file -i *
file1: text/plain; charset=utf-8
file2: text/plain; charset=iso-8859-1
file3: text/plain; charset=gbk

# 轉化
$ iconv -f gbk -t utf-8 file3 > file3-utf8.txt # or '-f GBK'

# 列出支持的編碼
iconv -l               # list all supported encodings
```

或者，用 Vim：

```shell
$ vim file3.txt
# convert to utf-8 in place
:w ++enc=utf-8
# write to another file
:w ++enc=utf-8 file3-utf8.txt
```

### vim 相關：

```shell
# view in terminal
:set encoding=utf-8

# file in filesystem
:set fileencoding=utf-8

# file format: unix, mac, dos
:set ff=unix 
```

### 
![](http://imglf2.ph.126.net/DZGTG_n9WiDBU6fZ0u2d7w==/6631199707095070424.png)