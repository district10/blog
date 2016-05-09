---
title: Learning Lua
date: 2016-05-09
keywords:
tags:
    - lua
    - programming
...

Learning Lua
============

[Category:Software - LOVE](https://love2d.org/wiki/Category:Software)

-   love.exe

    +   win portable: <http://whudoc.qiniudn.com/2016/love-0.10.1-win64.7z>

    +   linux src: <http://whudoc.qiniudn.com/2016/love-0.10.1-linux-src.tar.gz>

        ```bash
        tar -xvf love-0.10.1-linux-src.tar.gz
        cd love-0.10.1
        sudo apt-get install -y libsdl2-dev
        sudo apt-get install -y libopenal1 libopenal-dev
        sudo apt-get install -y libmodplug-dev
        sudo apt-get install -y libvorbis-dev libvorbisfile3
        sudo apt-get install -y libtheora-dev
        sudo apt-get install -y libphysfs-dev
        sudo apt-get install -y libluajit-dev
        sudo apt-get install -y lua5.2
        sudo apt-get install -y luarocks
        sudo apt-get install -y libluajit-5.1-dev libluajit-5.1-common
        sudo apt-get install -y libmpg123-dev
        ./configure
        make
        sudo make install
        love --version
        ```

-   `hello.lua` -> `main.lua` -> `main.zip` -> `hello.love`

    `hello.lua`

    :   ```lua
        function love.draw()
            love.graphics.print("Hello World!", 400, 300)
        end
        ```

-   `./path/to/love.exe hello.love`{.bash}

    ![](http://whudoc.qiniudn.com/2016/love-hello.png)

    like `getchar()` hack for windows: `"C:\Program Files\LOVE\love.exe" --console`

-   via makefile, see [district10/mari0: Mario + Portal game in LÖVE](https://github.com/district10/mari0).

-   executable

    [Compress and uncompress files (zip files) - Windows Help](http://windows.microsoft.com/en-hk/windows/compress-uncompress-files-zip-files#1TC=windows-7)

    ```bash
    # win
    copy /b love.exe+SuperGame.love SuperGame.exe
    ```

    win, create a `lovec.bat`: `copy /b love.exe+%1 "%~n1.exe"`{.bash}

    linux: `cat love.exe SuperGame.love > SuperGame.exe`{.bash}
    ```

refs and see also

  - [Getting Started - LOVE](https://love2d.org/wiki/Getting_Started)
  - [MisterDA/love-release: Lua script that makes LÖVE game release easier](https://github.com/MisterDA/love-release)
  - [rude / love / Downloads — Bitbucket](https://bitbucket.org/rude/love/downloads)
  - [love2d-community/awesome-love2d: A curated list of amazingly awesome LÖVE libraries, resources and shiny things.](https://github.com/love2d-community/awesome-love2d)
