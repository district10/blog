---
title: 让 Shell 喊你回家吃饭
date: 2015-02-13
key-words:
tags:
    - shell
...

让 Shell 喊你回家吃饭
====================

我已经不知道是哪天在哪个网站看到的这个 tip，在 `.zshrc` 加了这句话：

```bash
cowsay -f $(ls /usr/share/cowsay/cows | shuf -n 1 | cut -d. -f1) $(whatis $(ls /bin) 2>/dev/null | shuf -n 1)
```

下次打开 Shell 就会有个小动物像你问好，就像这样：

```tzx-plain
                         __________________________________
                        < dd (1) - convert and copy a file >
                         ----------------------------------
                           \         ,        ,
                            \       /(        )`
                             \      \ \___   / |
                                    /- _  `-/  '
                                   (/\/ \ \   /\
                                   / /   | `    \
                                   O O   ) /    |
                                   `-^--'`<     '
                                  (_.)  _  )   /
                                   `.___/`    /
                                     `-----' /
                        <----.     __ / __   \
                        <----|====O)))==) \) /====
                        <----'    `--' `.__,' \
                                     |        |
                                      \       /
                                ______( (_  / \______
                              ,'  ,-----'   |        \
                              `--{__________)        \/

```

不过，然后就被雷到了。

![cowsay 你不要（突然）这么重口……](http://gnat-tang-shared-image.qiniudn.com/cowsay.jpg)
