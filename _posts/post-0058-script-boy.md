% 一些脚本（豆瓣，etc）
% TANG ZhiXiong
% 2015-11-16

一些脚本（豆瓣，etc）
==================

豆瓣脚本
--------

我把自己在豆瓣上想看/看过/在看的书和电影都导出了，用的是自己
写的两个 JavaScript 脚本。

<div id="buckets">
<div>[豆瓣读书](javascript:document.getElementsByTagName('body')[0].appendChild(document.createElement('script')).setAttribute('src','http://tangzx.qiniudn.com/doubanBook.js');)</div>
<div>[豆瓣电影](javascript:document.getElementsByTagName('body')[0].appendChild(document.createElement('script')).setAttribute('src','http://tangzx.qiniudn.com/doubanMovie.js'))</div>
<div class="tzx">[TZX SHOW](javascript:document.getElementsByTagName('body')[0].appendChild(document.createElement('script')).setAttribute('src','http://tangzx.qiniudn.com/tzxshow.js'))</div>
</div>

把上面两个按钮拖到自己的书签栏，在【豆瓣电影】和【豆瓣读书】的电影/书籍页面点击按钮，
页面下方就会输出当前页面的电影/书籍的 Markdown 格式的列表。（后来 豆瓣电影/读书 用了 https，于是这些脚本不能如愿运行了。）

比如：

![在豆瓣读书运行【豆瓣读书】脚本后](http://gnat.qiniudn.com/doubanBook.png)

```markdown
[![](http://img4.douban.com/mpic/s9233126.jpg)](http://book.douban.com/subject/3004255/ "编程之美")
[![](http://img3.douban.com/mpic/s28049911.jpg)](http://book.douban.com/subject/25863979/ "民主的阴暗面")
[![](http://img3.douban.com/mpic/s28110752.jpg)](http://book.douban.com/subject/19973015/ "Operating Systems")
[![](http://img3.douban.com/mpic/s2254394.jpg)](http://book.douban.com/subject/1126207/ "斯巴达克斯")
[![](http://img4.douban.com/mpic/s3865447.jpg)](http://book.douban.com/subject/3826899/ "布鲁克林有棵树")
```

这样的 Markdown 代码放到本站，就是这样：

[![](http://img4.douban.com/mpic/s9233126.jpg)](http://book.douban.com/subject/3004255/ "编程之美")
[![](http://img3.douban.com/mpic/s28049911.jpg)](http://book.douban.com/subject/25863979/ "民主的阴暗面")
[![](http://img3.douban.com/mpic/s28110752.jpg)](http://book.douban.com/subject/19973015/ "Operating Systems")
[![](http://img3.douban.com/mpic/s2254394.jpg)](http://book.douban.com/subject/1126207/ "斯巴达克斯")
[![](http://img4.douban.com/mpic/s3865447.jpg)](http://book.douban.com/subject/3826899/ "布鲁克林有棵树")

怎么弄的？

按钮的 href 是 `javascript:document.getElementsByTagName('body')[0].appendChild(document.createElement('script')).setAttribute('src','http://tangzx.qiniudn.com/hello.js')`{.json}。

代码你在 <http://tangzx.qiniudn.com/hello.js> 写好就行。

豆瓣读书和豆瓣电影的两个脚本：

#. <http://tangzx.qiniudn.com/doubanBook.js>
#. <http://tangzx.qiniudn.com/doubanMovie.js>

这个技能是从 Mendeley 的浏览器插件学得。

Shell 脚本
----------

```bash
# /bin/bash

: '
4096 Jan 10 02:10 .
drwxr-xr-x 46 gnat gnat 28672 Jan 10 02:17 ..
lrwxrwxrwx  1 gnat gnat    45 Jan  6 00:50 c11 -> /home/gnat/git/mine/ring/scripts/gcc_cxx11.sh
lrwxrwxrwx  1 gnat gnat    44 Jan  6 00:52 doc -> /home/gnat/git/mine/ring/scripts/doc_host.sh
lrwxrwxrwx  1 gnat gnat    49 Jan  6 09:16 doc_index -> /home/gnat/git/mine/ring/scripts/gen_doc_index.sh
lrwxrwxrwx  1 gnat gnat    29 Jan  6 21:22 eclipse -> /home/gnat/bin/kepler/eclipse
lrwxrwxrwx  1 gnat gnat    47 Jan  6 01:18 feed -> /home/gnat/git/mine/ring/scripts/meta_gen_sl.sh
lrwxrwxrwx  1 gnat gnat    42 Jan  6 00:54 i -> /home/gnat/git/mine/ring/scripts/p_note.sh
lrwxrwxrwx  1 gnat gnat    47 Jan  6 09:13 make_x -> /home/gnat/git/mine/ring/scripts/meta_make_x.sh
lrwxrwxrwx  1 gnat gnat    39 Jan 10 02:10 neo -> /home/gnat/git/mine/ring/scripts/neo.sh
lrwxrwxrwx  1 gnat gnat    48 Jan  3 11:51 note -> /home/gnat/git/mine/ring/scripts/append_notes.sh
lrwxrwxrwx  1 gnat gnat    50 Jan  6 00:48 opencv -> /home/gnat/git/mine/ring/scripts/compile_opencv.sh
lrwxrwxrwx  1 gnat gnat    56 Jan  6 01:13 opencv11 -> /home/gnat/git/mine/ring/scripts/compile_opencv_c++0x.sh
'

ln -s /home/gnat/git/mine/ring/scripts/gcc_cxx11.sh c11
ln -s /home/gnat/git/mine/ring/scripts/doc_host.sh doc
ln -s /home/gnat/git/mine/ring/scripts/gen_doc_index.sh doc_index
ln -s /home/gnat/git/mine/ring/scripts/meta_gen_sl.sh feed
ln -s /home/gnat/git/mine/ring/scripts/p_note.sh i
ln -s /home/gnat/git/mine/ring/scripts/meta_make_x.sh make_x
ln -s /home/gnat/git/mine/ring/scripts/neo.sh neo
ln -s /home/gnat/git/mine/ring/scripts/append_notes.sh note
ln -s /home/gnat/git/mine/ring/scripts/compile_opencv.sh opencv
ln -s /home/gnat/git/mine/ring/scripts/compile_opencv_c++0x.sh opencv11

echo done
```

doc

:   ```bash
    #/bin/bash

    cd $HOME/docs &&  python -m "SimpleHTTPServer"
    ```

doc_index

:   ```bash
    #/bin/bash

    DOCDIR="$HOME/docs"
    OUTMD="$DOCDIR/index.md"
    OUTHTML="$DOCDIR/index.html"
    DATE=`date`

    echo docs dir: $DOCDIR
    echo "# Docs arranged by Gnat\n\n\n" > $OUTMD
    echo '<link href="index.css" />' >> $OUTMD
    echo "\n\n\n\n" >> $OUTMD
    cd $DOCDIR
    for f in */;
    do
        # echo "\* \[${f}\]\(${f}\)" >> $OUTMD
        echo "* [${f}](${f})" >> $OUTMD
    done

    echo "\n\n\n Generation time: ${DATE}" >> $OUTMD
    echo "${OUTMD} done"
    cat $OUTMD

    pandoc $OUTMD -o $OUTHTML
    echo "${OUTHTML} done"
    ```

feed

:   ```bash
    #/bin/bash

    OUTDIR="$HOME/git/mine/ring/scripts"
    SRCDIR="$HOME/bin2"
    OUTFILE="$OUTDIR/links.txt"
    TMP="/tmp/`date +%s`.txt"

    cd $SRCDIR
    cat $OUTFILE > $TMP
    echo "Bin2 Index\n           Generated at `date`.\n\n" > $OUTFILE
    ls -al >> $OUTFILE
    echo "\n\n--------------------------------------\n\n" >> $OUTFILE
    cat $TMP >> $OUTFILE
    rm $TMP

    echo "${OUTFILE} done"
    echo "======================================================="
    cat $OUTFILE
    ```

i

:   ```bash
    #/bin/zsh

    vim + $HOME/git/mine/me/001.md # 打开文件末尾
    ```

note

:   ```bash
    #/bin/bash

    DIR="${HOME}/git/mine/ring"
    TMP=`cat ${DIR}/p_notes`
    NOTE=${DIR}/${TMP}

    TIME=`date`

    echo DIR: ${DIR}
    echo NOTE: ${NOTE}


    echo -n "                              " >> ${NOTE}
    echo ${TIME} >> ${NOTE}
    echo $1 >> ${NOTE}
    cat ${NOTE}
    ```

opencv

:   ```bash
    #!/bin/bash

    # copied from https://help.ubuntu.com/community/OpenCV

    echo "compiling $1"
    if [[ $1 == *.c ]]
    then
        gcc -ggdb `pkg-config --cflags opencv` -o `basename $1 .c` $1 `pkg-config --libs opencv`;
    elif [[ $1 == *.cpp ]]
    then
        g++ -ggdb `pkg-config --cflags opencv` -o `basename $1 .cpp` $1 `pkg-config --libs opencv`;
    else
        echo "Please compile only .c or .cpp files"
    fi
    echo "Output file => ${1%.*}"
    ```

c11

:   ```bash
    # /bin/bash

    $HOME/bin/gcc/bin/g++ -Wl,-rpath,$HOME/bin/gcc/lib64 -std=gnu++11 -Wall -Wextra -g "$@"
    ```

opencv11

:   ```bash
    #!/bin/bash

    echo "compiling $1"

    if [[ $1 == *.cpp ]]
    then
        c11 -ggdb `pkg-config --cflags opencv` -o `basename $1 .c` $1 `pkg-config --libs opencv`;
    fi

    echo "Output file => ${1%.*}"
    ```

zshrc

:   ```plain
    # source $HOME/git/nvm/nvm.sh

    ZSH_THEME="robbyrussell"

    plugins=(\
    git autojump colored-man \
    )

    export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/home/gnat/bin"
    # export MANPATH="/usr/local/man:$MANPATH"

    source $ZSH/oh-my-zsh.sh

    # copied from https://github.com/mooz/percol
    function ppgrep() {
        if [[ $1 == "" ]]; then
            PERCOL=percol
        else
            PERCOL="percol --query $1"
        fi
        ps aux | eval $PERCOL | awk '{ print $2 }'
    }

    function ppkill() {
        if [[ $1 =~ "^-" ]]; then
            QUERY=""            # options only
        else
            QUERY=$1            # with a query
            [[ $# > 0 ]] && shift
        fi
        ppgrep $QUERY | xargs kill $*
    }

    function exists { which $1 &> /dev/null }

    if exists percol; then
        function percol_select_history() {
            local tac
            exists gtac && tac="gtac" || { exists tac && tac="tac" || { tac="tail -r" } }
            BUFFER=$(fc -l -n 1 | eval $tac | percol --query "$LBUFFER")
            CURSOR=$#BUFFER         # move cursor
            zle -R -c               # refresh
        }

        zle -N percol_select_history
        bindkey '^R' percol_select_history
    fi


    function gall() {
        if [[ $1 == "" ]]; then
            CMT_MSG="Lazy Commit"
        else
            CMT_MSG=$1
        fi
        git add -A ; git commit -m $CMT_MSG ; git push
    }


    # editors
    alias emacs="emacs -nw"
    alias es="emacs --daemon"
    alias ec="emacsclient -nw"
    alias vi="vim -u NONE"
    alias gvim="/usr/bin/vim.gnome -u NONE"
    alias e="vim -u NONE"

    # commands
    alias percol="percol --match-method regex"
    alias say="cowsay -f $(ls /usr/share/cowsay/cows | shuf -n 1 | cut -d. -f1) $(whatis $(ls /bin) 2>/dev/null | shuf -n 1)"
    alias neo="(cd /home/tzx/git/neo_keyboard_layout/neo2015/ && ./neo.sh)"
    alias ring="(cd /home/gnat/git/ring && gall)"
    alias now="date +[%H:%M:%S@%Y-%m-%d]"
    alias paste="xsel -ob"
    alias clip="xclip -selection c"

    # GTD
    NOTE="/home/gnat/git/note/2015-04.md"
    READ="/home/gnat/git/read/2015.md"
    TODO="/home/gnat/git/todo/2015.md"
    INDEX="/home/gnat/git/index/README.md"
    SITES="/home/gnat/git/index/md/sites.md"
    alias n="echo >> ${NOTE}"
    alias N="vi ${NOTE}"
    alias note="(cd $(dirname ${NOTE}) && gall)"
    alias r="echo >> ${READ} '* ![][o]'"
    alias R="vi ${READ}"
    alias read="(cd $(dirname ${READ}) && gall)"
    alias t="echo >> ${TODO} '* ![][y]'"
    alias T="vi ${TODO}"
    alias todo="(cd $(dirname ${TODO}) && gall)"
    alias I="vi ${INDEX}"
    alias S="vi ${SITES}"

    alias clj="java -cp ~/tmp/clojure/clojure-1.6.0/clojure-1.6.0.jar"
    alias clooj="java -jar ~/tmp/clojure/clooj/target/clooj-0.5-standalone.jar"

    # nvm
    source /opt/ros/indigo/setup.zsh
    export NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/dist

    # grunt
    # eval "$(grunt --completion=zsh)"

    # alias url="curl -i http://git.io -F \url=$1\""

    export TERM=xterm-256color
    export PATH="$HOME/.linuxbrew/bin:$PATH"
    export LD_LIBRARY_PATH="$HOME/.linuxbrew/lib:$LD_LIBRARY_PATH"

    ### Added by the Heroku Toolbelt
    export PATH="/usr/local/heroku/bin:$PATH"
    ```
