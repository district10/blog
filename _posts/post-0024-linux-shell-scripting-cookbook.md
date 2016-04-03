---
title: Linux Shell 脚本菜谱 | Linux Shell Scripting Cookbook
date: 2014-02-02
keywords:
    - linux
    - bash
    - shell
tags:
    - linux
    - bash
    - shell
...

Linux Shell 脚本菜谱 | Linux Shell Scripting Cookbook
=====================================================

> Notice:
> 那时我第一次用 Markdown。（The Old Golden Days）

Chap 1: Shell Something Out
---------------------------

Bash (`B`ourne `A`gain `Sh`ell)

:   * 提示符： `#`(root) and `$`(non root);
    * `#!/bin/bash`{.bash} (Shebang),
    * `bash script.sh`{.bash},
    * `chmod +x script.sh && ./script.sh`{.bash}
    * `;`{.bash} is like a newline in bash
    * Comment Example

        ```bash
        #!/bin/bash

        echo Hello

        # one line comment

        : '
        multi line
        comments
        其实这是一条命令，comments 当成参数传入冒号（这个 cmd），
        然后不处理，于是 comment 掉了
        you can not see these lines
        '

        echo Comments Are Something You Can Not See
        ```

    * Printing in the terminal (`echo`{.bash} & `printf`{.bash})

        ```bash
        text="apple"
        echo "some $text"
        echo 'some $text'
        # More options: "-n" no newline; "-e" convert "\t\n" etc

        printf "%-10s %4.2f\n" price 4.24 # '-' -> left align
        ```

    * Colored output

        ```plain
        Text: reset  =  0, black = 30, red     = 31, green = 32,
              yellow = 33, blue  = 34, magenta = 35, cyan  = 36, and white = 37
        Back: reset  =  0, black = 40, red     = 41, green = 42,
              yellow = 43, blue  = 44, magenta = 45, cyan  = 46, and white = 47
        ```

        ```bash
        echo -e "\e[1;42m \e[1;31m Green Background, red Text \e[0m"
        ```

    * Variables and Environment Variables

        + `$environ`{.bash}

            ```bash
            PID=`pidof geany`
            cat /proc/$PID/environ | tr '\0' '\n'
            echo $PATH | tr ':' '\n'
            ```

        + `\0`{.bash}: null character
            - to get `$PID`: `pgrep geany`{.bash} or `pidof geany`{.bash}
            - length = `${#var}`{.bash}

            ```bash
            if [ $UID -ne 0 ];
            then  echo "you are not root";
            else  echo "you are root";
            fi
            ```

    * Modify the Bash Prompt String
        + `cat ~/.bashrc | grep "PS1"`{.bash}
        + `\u` ==> expands to username
        + `\w` ==> expands to the current working directory
        + `\h` ==> expands hostname
    * Math with the shell: `let`{.bash}, `expr`{.bash}, `$[]`{.bash}, `$(())`{.bash}, `bc`{.bash}

        ```bash
        # let
        a=4 && b=6
        let sum=a+b      && echo $sum

        # $[], $(())
        sum=$[  a + b  ] && echo $sum
        sum=$[  a + 10 ] && echo $sum
        sum=$(( a + b )) && echo $sum

        sum=`expr 24 + 40`
        sum=`expr 42 + $a`

        echo "420 * 04 / 42" | bc
        echo "scale=2;  3/8" | bc
        ```

    * File descriptors and Redirection

        fid | fd name
        --- | ---
         0  | stdin
         1  | stdout
         2  | stderr

        ```bash
        # ">" redirection, ">>" redirection and append (stdout)
        # "2>", "2>>"                                  (stderr)
        # "&>", "2>&1"                        (stdout & stderr)
        ```

        Trash Can(Black Hole)
          ~ `/dev/null`

        pipe
          ~ `cat file.txt | tee out.txt | cat -n`{.bash}

        read as stdin (heredoc)
          ~ `cat <<DONE > output.txt`{.bash}

        customize file descriptor
          ~ `exec`{.bash} (read mode, write with truncate mode, write with append mode)
          ~ ```bash
            exec 4>>log.txt # 4 is our customized fd now
            echo "hello" >&4
            echo "world" >&4
            cat log.txt # "cat<log.txt" or"cat < log.txt", both fine
            ```

    * Arrays and Associative Arrays

        ```bash
        array_var=(10 20 30 40 50); index=3
        echo $array_var
        echo ${array_var[0]}
        echo ${array_var[*]}
        echo ${array_var[@]}
        echo ${array_var[$index]}
        echo ${#array_var[*]}
        echo ${#array_var[@]}

        declare -A ass_array
        ass_array=([gnat]=124 [tang]="name") && echo ${ass_array[tang]} && echo ${ass_array[*]}
        echo ${!ass_array[*]}
        ```

    * Visiting Alias: `alias install="sudo apt-get install"`{.bash}

    * Grabbing info about the terminal

        ```bash
        # tput
        # :   initialize a terminal or query terminfo database
        tput cols/lines/longname
        tput cup 100 100 # set cursor position
        tput setb/setf NUM     # set background/font color, NUM: 0~7 (I think its better than "/e[1;32")
        tput setb 2 setf 7 && echo "green background && white text"  # you should "setb" first then "setf"
        tput bold, tput smul, tput rmul  # bold, set underline, remove underline
        tput ed # I dont understand this...
        ```

        ```bash
        #!/bin/bash
        #Filename: sleep.sh
        echo -n Count:
        tput sc
        count=0;
        while true;
        do
                 if [ $count -lt 40 ];
                 then
                    let count++;
                    sleep 1;
                    tput rc
                    tput ed
                    echo -n $count;
                 else exit 0;
                 fi
        done
        ```

        ```bash
        # stty
        # :   change and print terminal line settings
        stty -echo # Fantastic way to joke others
        stty echo  # resume
        ```

    * Getting and Setting dates and delays
        + In Unix-like System: *1970-01-01 00:00:00 UTC*, is called `Epoch` or `Unix Time`

            ```bash
            date
            date +%s
            date --date "Sun Feb  2 18:48:51 CST 2014" +%s # specify date/time
            date "+%d %B %Y" # customize output format
            date -s "2 Feb  2014 18:48:51" # set data/time, i prefer NOT try it

            # Count time
            start=$(date +%s)
            end=$(date +%s)
            diff=$((end - start))
            echo "passed $diff seconds"
            ```

        + see Formats[^datefrmt]

    * Debugging the Script

        ```bash
        bash -x script.sh # specify when running script
        # or the so-called "Shebang hack"
        "#!/bin/bash -xv" # "-xv" ==> enable debugging
        ```

    * Functions and Arguments

        ```bash
        fname() { \
            echo -n Arg1: $1 " "; \
            echo Arg2: $2; echo Args: $@; \
            return 0; \
        } && fname how are you
        # $@ v.s. $*, we prefer the former
        # $*(expands as "$1c$2c$3", where c is the first character of IFS)
        ```

        + The Recusive Funcs:

            ```bash
            F() { echo $1; sleep 1; F hello;} && F hello
            ```

        + Fork Bomb（不要在自己电脑上试！！）

            ```bash
            # Do not Try it Yourself !!!
            :(){ :|:& };:
            # ":" is the function name, no params. in "{}", the first ":" calls
            # itself, and ":&" fork the process. by ";" the function is defined,
            # and the final ":" runs the function. You can check wikipedia for
            # more information
            ```

            > We can write a recursive function, which is basically a function
            > that **calls itself**, it **infinitely spawns processes** and
            > ends up in a **denial-of-service** attack.

        + Exporting Functions:  `export -f fname`{.bash}
        + Reading the return status of last command:
          `cmd; echo $? # retrieve exit status`{.bash}
        + Passing arguments to commands
        + Reading the output of a sequence of commands in a variable

            ```bash
            # Filters: cmd1 | cmd2 | cmd3 e.g.
            ls | grep "os" | cat -n > output.txt
            # Subshell Method: e.g.
            cmd_output=$(ls | cat -n)
            # Back tick/ Back quotes:  e.g.
            cmd_output=`ls | cat -n` # I like it a lot
            ```

        + More Subshell:
            - Spawning a separate process with subshell: e.g.: `pwd; (cd /usr; ls); pwd`{.bash}
            - Subshell quoting to preserve spacing and the newline character: `out=$(cat file.txt)`{.bash}

    * Read

        ```bash
        # read -n num_of_chars variable
        read -n 4 year
        # nonecho mode for reading password
        read -s password
        read -p "enter your username: " username # read with a message/prompt
        read -t seconds var # read with a timeout
        # read with a specified delim char
        read -d ',' var
        ```

    * Repeat func

        ```bash
        repeat() { while true; do $@ && return; done;}; # define it
        # repeat doing what you want to do, till it's done. e.g.
        repeat read forever
        # revised edition
        repeat() { while :; do $@ && return; done;}; && \
        repeat read forever
        repeat() { while :; do $@ && return; sleep 30; done;}; && \
        repeat read forever
        # why i need it? see below,
        repeat wget -c www.sourceforge.com/somefile.tar.gz
        ```

    * File Separators and Iterators
        + [IFS - Internal Field Iterator](http://en.wikipedia.org/wiki/Internal_field_separator)
        + [CSV - Comma Separated Values](http://en.wikipedia.org/wiki/Comma_Separated_Values)
        + example:

            ```bash
            data="how,are,you"
            oldIFS=$IFS
            IFS=,
            for item in $data
            do echo item: $item
            done
            IFS=$oldIFS
            ```

            ```bash
            echo {a..z}; echo {1..420};
            for((i=0; i<24; i++)){ echo $i;}
            # while condition; do something; done;
            # until condition; do somthing; done;
            ```

    * Comparisons and tests

        ```bash
        # if condition;
        # then do_something;
        # else if condition;
        # then do_something;
        # else do_something;
        # fi;

        # or
        # [ condition ] && something
        # [ condition ] || something
        ```

    * Conditions

        + `-gt, -lt, -ge, -le`{.bash}: greater/less than/equal
        + `-a, -o`{.bash}: and/or
        + `-f, -d`{.bash}: file/dir
        + `-x, -e`{.bash}: executable/exists
        + `-c, -b`{.bash}: char/block devices
        + `-w, -r`{.bash}: writeable/readable
        + `-L`{.bash}: symlink
        + Example:

            ```bash
            if [ -e /bin/bash ]; then echo exists; else echo not exists; fi
            if [ -e "/bin/bash" ]; then echo exists; else echo not exists; fi
            ```

    * String comparason

        ```bash
        [[ $str1 == $str2 ]], [[ $str1 = $str2 ]] # same thing
        [[ $str1 != $str2 ]]
        [[ $str1 < $str2 ]]; [[ $str1 >$str2 ]]
        [[ -z $str ]]; [[ -n $str ]] # empty/non-empty
        ```

[^datefrmt]: date fomats

    | `date`{.bash} | format |
    | :---: | :---: |
    | Weekday | `%a`(Sun) or `%A`(Sunday) |
    | Month | `%b`(Feb) or  `%B`(February) |
    | Day | `%d`(02) |
    | Date in Format(mm/dd/yy) | `%D`(02/02/14) |
    | Year | `%y`(14) or `%Y`(2014) |
    | Hour | `%I`(06) `%H`(18) |
    | Minute | `%M` |
    | Second | `%S` |
    | Nano Second | `%N` |
    | Epoch Unix Time in seconds | `%s` |

Chap 2: Have a Good Command
---------------------------

Concatenating with Cat

:   ```bash
    # cat somefile.list or `someoutput | cat`
    cat a.txt b.txt
    echo "hello" | cat
    # Getting rid of blank lines
    cat -s file.txt
    # more options:
    #     -T(Display Tab as ^T);
    #     -n(line numbers);
    #     -b(line numbers, exculding blank lines)
    ```

Recording and Playing back of terminal session

:   ```bash
    # start recording
    script -t 2> timing.log -a output.session
    # do whatever you want here
    pwd; echo "hello, scripting recording"; dir -al;
    # exit recording
    exit
    # yesterday once more!
    scriptreplay timing.log output.session
    ```

Finding files and file listing

:   * find

        ```bash
        path="/bin" # specify a path
        find $path # equals to "find $path -print"
        find $path -print0 # delimed by '\0'
        ```
    * more found(fun)

        ```bash
        find $path -name "*.txt" # or we can use "-iname"(ignore case)
        find $path \( -name "*.txt" -o -name "*.pdf" \) # and
        find $path -path "*/gnat/*"
        find $path -regex ".*\(\.py\|\.sh\)"
        # or ignore case when applying regexpr, "-iregex"
        # do not try hard to memorize it, check it when you use them
        find $path ! -name "*.txt" # excluding
        ```

Playing with Xargs

:   * Converting multi lines of input to a single-line output

        ```bash
        cat files.txt | xargs
        ```

    * Converting single-line of input to multi lines of output

        ```bash
        cat file.txt | xargs -n 3 # default delim: $IFS
        ```

    * more xargs:

        ```bash
        # -d $X option, specify delim, now $X is the delim

        # each time pass 2 args to "process_args.sh"
        cat args.txt | xargs -n 2 ./process_args.sh

        # precise replacement
        cat args.txt | xargs -I {} ./process_args.sh -p {} -l

        # bad
        find $some_filters -print   | xargs     rm -f
        # better, for -0 specify the delim is '\0'
        find $some_filters -print0  | xargs -0 rm -f

        # LOC (Lines of Code)
        find $path -type f -name "*.c" -print0 | xargs -0 wc -l
        cat files.txt | ( while read arg; do cat $arg; done )
        # like "cat files.txt | xargs -I {} cat {}"
        ```

Translating with tr

:   `tr [option] set1 set2`{.bash}

    mapping from set1 to set2 (with specified options), notice the len(set1) &&
    len(set2) issue

    ```bash
    echo "WHO IS THIS" | tr 'A-Z' 'a-z' # other valid sets: 'a-fg-z', 'a-n0-9', 'aA'...

    tr '0-9' '987654321' # encription
    tr '987654321' '0-9' # decryption

    # the famous ROT13 Encryption.
    # symmetric, use it the second time to decrypt
    tr 'a-zA-Z' 'n-za-mN-ZA-M'

    # Deleting chars
    tr -d '[set1]'

    # more options:
    #      Complementing character set: -c
    #      Squeezing Characters with tr: tr -s ' '
    # Character Classes, e.g. '[:alnum:]':
    #      1. alnum, alpha, digit
    #      2. cntrl: control (nonprinting) chars
    #      3. graph (graphic), print (printable)
    #      4. lower, upper, space (whitespace chars)
    #      5. punct, xdigit (hexadecimal chars)
    ```

Just for fun from dvorak4tzx

:   ```bash
    for x in {30..37};
    do
        for y in {40..47};
        do
            echo -e -n "\e[1;${x}m \e[1;${y}m bash ";
        done;
        echo -e "\e[1;30m";
    done
    ```

    ![colorful bash](http://gnat.qiniudn.com/tmp/bash.png)

Checksum and Verification

:   * md5sum
        + `md5sum filename`{.bash} ==> 32-Character Hexadecimal String
        + `md5sum -c filename.md5sum`{.bash} ==> Ok/Filed # dont have to specify filename, it is in filename.md5sum
    * `sha1sum`{.bash}, like `md5sum`{.bash}, but with 40-character Hex code
    * Checksum for Directories

        ```bash
        # -r(recursive), -l(use relative path)
        md5deep / sha1deep -rl dir
        ```

Crptographic tools and Hashes

Sorting Unique and Duplicates

:   ```bash
    # or `sort files > output.txt`
    sort files -o output.txt

    # more options:
    #    -n: numeric sort, -M: sort Months, -r: Reverse
    #    -m: merge two sorted file: `sort -m sorted1.txt sorted2.txt`
    #    -k NUM: sort by colomun NUM(1..INF)
    sort file1.txt file2.txt | unique
    # `unique` options:
    #   -u(dups will not print out),
    #   -c(count),
    #   -d(only dups),
    #   -s, -w(#pass, #compare)
    ```

Temporary file naming and random numbers

:   ```bash
    filename=`mktemp`
    dirname=`mktemp -d`

    # generate a name but not create it now
    mktemp -u

    # with file name prefixed with "test" and
    # suffixed with randomly generated 3 chars
    mktemp test.XXX
    ```

Spliting files and data

:   ```bash
    # split [args] [prefix], e.g.
    # -d: numeric suffix, -a 4: 4 suffix)
    split -b 10k data.file -d -a 4

    # ==> part01, part02, ...
    split -b 10k data.file -d -a 2 part

    # split to several text files each with 10 lines of text
    split -l 10 Python.txt

    # csplit - split a file into sections determined by context lines, e.g.
    csplit server.log /SERVER/ -n 2 -s {*} -f server -b "%2d.log"

    # Slicing filenames based on extension
    file="sample.jpg"; name=${file%.*}; echo $name
    # ==> "sample" (% is nongreedy, %% is greedy)

    file="sample.jpg"; name=${file#*.}; echo $name
    # ==> "jpg" (from left, ##: greedy)
    ```

Renaming and Moving files in Bulk

:   ```bash
    mv $before $after

    # rename all jpg files to JPG files
    rename *.jpg *.JPG

    # <space> to "_"
    rename 's/ /_/g'

    # Upper to Lower:
    rename 'y/A-Z/a-z/' *
    # Lower to Upper:
    rename 'y/a-z/A-Z/' *
    ```

Spell Checking and dictionary manipulation

:   ```bash
    ls /usr/share/dict
    ```

dvorak4tzx found something

:   - In a word-processing app like geany, the line num is not the real one
    - Because of the **offset-by-1**, for an empty file has 1 line but actually
      there is nothing

Automating interactive Input

Making commands quicker by running parallel processes

Chap 3: File in, File out
-------------------------

Generating files of any size

:   - `dd if=/dev/zero of=./junk.data count=50 bs=1M`{.bash}
    - `M` can alse be `c`, `w`, `b`, `k`, `M`, `G`

The Intersection and set difference (A-B) on text files

:   * `comm`{.bash}: compare two sorted files line by line
    * `sort`{.bash}: sort lines of text files

    ```bash
    # in place sort

    # sort A.txt and output to A.txt
    sort A.txt -o A.txt

    # 1st col: from A, 2nd col: from B, 3rd col: A and B
    comm A.txt B.txt

    # no 1st, 2nd col
    comm A.txt B.txt -1 -2

    # no 3rd col
    comm A.txt B.txt -3

    # produce a unified output, `^` is the start of the line marker
    comm A.txt B.txt -3 | sed 's/^\t//'

    # Set difference for A.txt:
    comm A.txt B.txt -2 -3

    # Set difference for B.txt:
    comm A.txt B.txt -1 -3
    ```

Finding and deleting duplicate files

:   ```bash
    # create some duplicated files
    echo "hello" > test ;
    cp test test_copy1 ;
    cp test test_copy2;
    echo "next" > other;
    ```

    ```bash
    #!/bin/bash
    # Filename: remove_duplicates.sh
    # Description: Find and remove duplicate files and
    #              keep one sample of each file.
    ls -lS --time-style=long-iso | \
    awk 'BEGIN {
        getline; getline;
        name1=$8; size=$5
        }
        {
            name2=$8;
            if (size==$5) {
                "md5sum "name1 | getline; csum1=$1;
                "md5sum "name2 | getline; csum2=$1;
                if ( csum1==csum2 ) {
                    print name1; print name2
                }
            };
            size=$5; name1=name2;
        }' | \
    sort -u > duplicate_files

    cat duplicate_files | \
    xargs -I {} md5sum {} | \
    sort | uniq -w 32 | \
    awk '{ print "^"$2"$" }' | \
    sort -u > duplicate_sample

    echo Removing..
    comm duplicate_files duplicate_sample -2 -3 | \
    tee /dev/stderr | xargs rm

    echo Removed duplicates files successfully.
    ```

Working with file permissions, ownership, and sticky bit

:   File permissions and ownership are one of the **distinguishing features**
    of the Unix/Linux filesystems such as **extfs** (extended FS).

    formats:
      ~ ```bash
        # permission set
        -r, -w, -x
        # special permissions
        # file, x -> S, Permission S (S)
        user:  setuid
        # The setuid permission enables an executable file to be executed
        # effectively as its owner, even when the executable is run by another
        # user.

        group: setgid
        # This enables the item to run an executable file with an effective
        # group as the owner group.

        others:  NULL
        # Others have the same read, write, and execute permissions as the user
        # and group. But it does not have permission S (such as setuid or
        # setgid).

        # directories, Sticky Bit (t, T)
        # only the user who created the directory can delete the files in the
        # directory, even if the group and others have write permissions.

        # ------rwt , ------rwT
        cd /tmp; dir -al # to have a look
        ```

    `chmod`{.bash}, `chown`{.bash}
      ~ ```bash
        # chmod
        chmod u=rwx g=rw o=r filename
        chmod 764 filename
        chmod a+x filename
        chmod a-x filename
        # Setting sticky bit
        chmod a+t directory_name
        # Applying permissions recursively to files
        chmod 777 . -R
        # chown: `chown user.group filename`, e.g.
        chown slynux.slynux test.sh
        # set setuid S
        chmod +s executable_file
        ```

    `setuid`{.bash} is restricted such that setuid would not work for scripts,
    but only for Linux **ELF** binaries

Making files Immutable

:   Check mounted partion: `cat /etc/mtab`{.bash}

    ```plain
    rootfs / rootfs rw 0 0
    sysfs /sys sysfs rw,nosuid,nodev,noexec,relatime 0 0
    /dev/sda2 /media/Share fuseblk rw,nosuid,nodev,relatime,user_id=0,group_id=0,allow_other,blksize=4096 0 0
    ```

    ```bash
    # /etc/resolv.conf, stores a list of DNS servers, by default is set to your
    # ISP's DNS Server
    chattr +i file # make immutable
    chattr -i file # make not immutable
    ```

`touch`{.bash}

:   `touch -d "Fri Jun 25 20:50:14 IST 1999" filename`{.bash}, specify timestamp

    other options: `-a` modifies only the access time, `-m` for modification time

Finding symbolic links and their target

:   `ln`{.bash}

    ```bash
    ln -s target symbolic_link_name # create symbolic link
    ls -l symbolic_link_name # print out symlink
    ls -l | grep "^l" # print out all symbolic links
    find . -type l -print # use `find`, can also print out subdir files
    readlink symbolic_link_name
    ```

Enumeration file types statics

:   `file`{.bash}

    ```bash
    file /etc/passwd # ==> /etc/passwd: ASCII text
    file -b /etc/passwd # excluding file name, ==> ASCII text
    ```
    make it a script to automate

    ```bash
    #!/bin/bash

    if [ $# -ne 1 ];
    then
        echo "Usage is $0 basepath";
        exit
    fi
    path=$1
    declare -A statarray;
    while read line;
    do
        ftype=`file -b "$line" | cut -d, -f1`
        let statarray["$ftype"]++;
    done < <(find $path -type f -print) # notice the <space> between "<", WHY?
    echo ============ File types and counts =============
    for ftype in "${!statarray[@]}";
    do
        echo $ftype : ${statarray["$ftype"]}
    done
    ```

    run `` bash filestat.sh `pwd` ``{.bash}, and on my computer I get:

    ```plain
    ============ File types and counts =============
    assembler source : 2
    PDF document : 1
    HTML document : 1
    Emacs v18 byte-compiled Lisp data : 1
    GIF image data : 1
    PNG image data : 1
    Bourne-Again shell script : 1
    ASCII text : 1
    ```

    On WHY?

    `<(find $path -type f -print)`{.bash} is equivalent to a filename,
    the first `<`{.bash} is for input redirection and the second `<`{.bash} is
    for converting the subprocess output to a filename.
    In Bash 3.x and higher we have a new operator `<<<`{.bash} that lets us use
    a string output as an input file. So we can do this:

    ```bash
    done <<< "`find $path -type f -print`"
    ```

Using loopback files

:   * Creat a block file, format and mount it

        ```bash
        # create a block file
        dd if=/dev/zero of=loopbackfile.img bs=1M count=20

        # format it to an ext4 filesystem
        mkfs.ext4 loopbackfile.img

        # check what is it
        file loopbackfile.img

        # mount it
        mkdir /mnt/loopback
        mount -o loop loopbackfile.img /mnt/loopback

        # or mount it this way:
        # `losetup /dev/loop1 loopbackfile.img; mount /dev/loop1 /mnt/loopback`

        # umount it, syntax: mount <mount_point>
        umount /mnt/loopback

        # or unmount it this way: `umount /dev/loop1`
        ```

* Creating partions inside it

    ```bash
    losetup /dev/loop1 loopbackfile.img
    fdisk /dev/loop1
    losetup -o 32256 /dev/loop2 loopbackfile.img

    # Here,
    #    /dev/loop2 will represent the first partition,
    #    -o is the offset flag, 32256 bytes are for a DOS partition scheme.
    #    The first partition starts after an offset of 32256 bytes from the
    #    start of the hard disk.
    ```

* Quicker way to mount loopback disk images with partitions

    ```bash
    # this part have not tested myself
    kpartx -v -a diskimage.img

    # output:
    # "add map loop0p1 (252:0): 0 114688 linear /dev/loop0 8192"
    # "add map loop0p2 (252:1): 0 15628288 linear /dev/loop0 122880"

    # This creates mappings from the partitions in the disk image to devices in
    # /dev/mapper which you can then mount.
    mount /dev/mapper/loop0p1 /mnt/disk1 # mount it

    # do something and then unmount it
    unmount /mnt/disk1

    # remove the mappings by
    kpartx -d diskimage.img
    ```

    * Mounting ISO files as loopback, generating an ISO

        ```bash
        mkdir /mnt/iso
        mount -o loop linux.iso /mnt/iso

        # Flush changing immediately with sync
        sync

        # Creating ISO files and hybrid ISO
        cat /dev/cdrom > image.iso # simply cat
        dd if=/dev/cdrom of=image.iso # better choice
        mkisofs -V "Label" -o image.iso source_dir/

        # `mkisofs` util has been replaced by `genisoimage` util, see
        #    genisoimage -V "books" -o books.iso pdfs/ # and it works
        ```

    * Hybrid ISO that boots off a flash drive or hard disk
        + What is Hybrid ISO?
          ~ Usually, bootable ISO files cannot be transferred or written to a
            USB storage device and booted the OS from the USB key.  But,
            special type of ISO files called hybrid ISOs can be flashed and
            they are capable of booting from such devices.

        ```bash
        # generate a hybrid iso
        isohybrid image.iso

        # write the iso file to usb device # this "cat image.iso >> /dev/usb0"
        # works too, but I do not recommand
        dd if=image.iso of=/dev/usb0
        ```

    * More about ISO

        ```bash
        # Burning an ISO from the command line
        cdrecord -v dev=/dev/cdrom image.iso
        eject # works! and my cdrom driver ejected
        ```

Finding the difference between files, patching

:   `diff`{.bash}, `patch`{.bash}

    ```bash
    diff version1.txt version2.txt
    diff -u version1.txt version2.txt
    diff -u version1.txt version2.txt > version.patch

    # version1.txt is no difference with version2.txt now
    patch -p1 version1.txt < version.patch
    ```

Using head and tail for printing the last or first 10 lines

:   ```bash
    head file # print out 10 lines
    cat text | head # read from stdin
    head -n 4 file # 4 lines
    head -n -4 flie # print all lines except the last 4 lines
    seq 11 | head -n -4

    # tail is  like head, except
    tail -n +4 file # syntax: tail -n +M, print all except first (M-1) lines

    # -f --follow option
    tail -f /var/log/message

    # this can read  last lines of log file, but can't keep tracking on
    dmesg | tail -f

    # Suppose we are reading a growing file, and a process Foo is appending
    # data to the file, the -f tail should be executed until the process Foo
    # dies.
    tail -f file --pid $(pidof geany) # $(pidof geany) or $(pgrep geany)
    ```

Several ways to list dirs

:   ```bash
    ls -d */
    ls -F | grep "/$"
    ls -l | grep "^d"
    print . -type d -maxdepth 1 -print
    # I prefer `dir`, instead of `ls`, though there is one more typing
    ```
Fast command-line navigation

:   `pushd`{.bash} and `popd`{.bash}

    ```bash
    pushd /var/www
    pushd /usr/src
    pushd +3 # 0, 1, 2, 3
    dirs | tr ' ' '\n' | cat -n # I prefer this
    popd
    # more useful tricks
    cd - # switching to last path
    cd # switching to home dir
    ```

Counting the number of lines, words, and characters in a file

:   `wc`{.bash}: print newline, word, and byte counts for each file

    ```bash
    wc -l file # count lines
    wc -w file # count words
    wc -c file # count characters
    echo -n 1234 | wc -c # 4
    echo    1234 | wc -c # 5, "1234\n"
    wc file # lines, words, chars
    wc file -L # the lenth of the longest line (metric: char)
    ```

Printing the directory tree

:   `tree`{.bash}

    ```bash
    # tree path -P PATTERN, e.g.
    tree -P "*.txt"
    tree /root/Desktop -P "*.txt" -h # -h: print filesize in human way
    tree PATH -H http://localhost -o output.html # output to a html file
    tree -H `pwd` -o refs.html # create reference html pages
    ```

Chap 4: Texting and Driving
------------------------------

Using regular expressions

:   * notation & meaning

        notation | meaning
        ------- | -------
        `^`     | the start of the line marker
        `$`     | the end of the line marker
        `.`     | matches any one character
        `?`     | This means that the preceding item must match one or zero times
        `+`     | This means that the preceding item must match one or more times
        `*`     | This means that the preceding item must match zero or more times
        `[ ]`   | matches any one of the characters enclosed  in `[chars]`
        `[^]`   | except those that are enclosed in `[^chars]`
        `[a-z]` | This matches any character within the range specified in `[]`
        `( )`   | This treats the terms enclosed as one entity, e.g. `(how)?`
        `{n}`   | This means that the preceding item must match n times.
        `{n, }` | at least n times
        `{n,m}` | n to m times
        `|`     | This specifies the alternation—one of the items on either of side of `|` should match
        `\`     | escape char

    * [visualize regular expr](http://www.regexper.com)
    * examples

        ```bash
        # ip address:
        [0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}
        # {1, 3} for 1 to 3 digits

        [[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}
        ```

    * `grep`{.bash}: print lines matching a pattern

        ```bash
        # grep pattern filename(s)
        grep -E "[a-z]+" file # or
        egrep "[a-z]+" file

        # format output
        echo this is a line. | egrep -o "[a-z]+\." # or
        echo this is a line. | grep -oE "[a-z]+\."

        # -v: excluding, -c: count matching lines, -n: with line number
        # -i: ignore case, -e: multiple patterns, e.g.
        grep -e "text" -e "the" . -R -n

        # regpack.txt contains regexprs
        cat file.txt | grep -f regpack.txt
        echo -e "1 2 3 4\nhello\n5 6789" | egrep -o "[0-9]"
        # ==> 9 lines of [1..9]

        grep "text" . -R -n # recursively search many files

        # --include *.{c,cpp}: grep c cpp files
        # --exclude-dir: exclude dirs
        # --exclude-from FILE
        ```

    * `cut`{.bash}: cut a file column-wise

        ```bash
        # Syntax: cut -f FIELD_LIST filename
        echo -e \
            "No Name Mark Percent\n1 Sarath 45 90\n2 Alex 49 98\n3 Anu 45 99" \
        > student_data.txt

        cut -f1 student_data.txt
        cut -f1, 2 student_data.txt
        cut -f2,3 -d';' student_data.txt
        echo -e \
            "abcdefghijklmnopqrstuvwxyz\nabcdefghijklmnopqrstuvwxyz\n\
            abcdefghijklmnopqrstuvwxyz\nabcdefghijklmnopqrstuvwxy" \
        > rangefields.txt

        cut -c1-5 range_fields.txt # --characters
        cut range_fields.txt -c1-3,6-9 --output-delimiter ","
        ```

    * `sed`{.bash}: stream editor for filtering and transforming text

        ```bash
        # Syntax: sed 's/pattern/replace_string/' file
        # -i: in place
        sed 's/this/THIS/' file # replace the first occurrence
        sed 's/this/THIS/g' file # for every occurence
        sed 's/this/THIS/20g' file # form 20 occurence onwards, 1-based index
        echo thisthisthisthis | sed 's/this/THIS/2g' # ==> thisTHISTHISTHIS
        # we can use other delims
        sed 's:text:replace:g' # escape delim: "\:"
        sed 's|text|replace|g' # escape delim: "\|"
        # remove blank lines
        sed '/^$/d' file
        # Matched string notation (&)
        echo not matched | sed 's/\w\+/[&]/g'
        # Substring match notation (\1)
        echo this is digit 7 in a number | sed 's:digit \([0-9]\):\1:'
        # Combination of multiple expressions
        sed 'expression1' | sed 'expression2' # method 1
        sed 'expression1; expression2' # method 2
        sed -e 'expression1' -e 'expression2' # method 3
        ```

    * `awk`{.bash}: pattern scanning and processing language. (Better See my other post: [awk-tutorial])

        ```bash
        # Syntax:
        # awk 'BEGIN{ print "start" } pattern { commands } END{ print "end" }
        echo -e "line1\nline2" | \
        awk \
        'BEGIN{ print "START" } { print } END{ print "END" } '

        # "v1 v2 v3"
        echo | awk \
        '{ var1="v1"; var2="v2"; var3="v3"; print var1,var2,var3 ; }'

        # "v1v2v3"
        echo | awk \
        '{ var1="v1"; var2="v2"; var3="v3"; print var1 var2 var3 ; }'

        # "v1-v2-v3"
        echo | awk \
        '{ var1="v1"; var2="v2"; var3="v3"; print var1 "-" var2 "-" var3 ; }'

        # print options: "NR": record number(line num), "NF": num of
        # fields(delimed by <space>)
        echo -e "line1 f2 f3\nline2 f4 f5\nline3 f6 f7" | \
        awk \
        '{print "Line no:"NR",No of fields:"NF, "$0="$0, "$1="$1,"$2="$2,"$3="$3 }'

        awk '{ print $3,$2 }' file
        ```

[awk-tutorial]: post-0012-awk.html

---

Refs

#. [Linux Shell Scripting Cookbook](http://book.douban.com/subject/24669816/)
