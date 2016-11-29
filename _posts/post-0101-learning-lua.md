---
title: Learning Lua
date: 2016-05-09
keywords:
tags:
    - learning
    - lua
---

Learning Lua
============

[4ker/lua-style-guide: Olivine Labs Lua Style Guide](https://github.com/4ker/lua-style-guide)

[Lua crash course](http://www.coppeliarobotics.com/helpFiles/en/luaCrashCourse.htm)

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

- [TannerRogalsky/love.js: LÖVE ported to the web using Emscripten](https://github.com/TannerRogalsky/love.js)
- [TannerRogalsky / love / source / — Bitbucket](https://bitbucket.org/TannerRogalsky/love/src)
- [Download - ZeroBrane Studio - Lua IDE/editor/debugger for Windows, Mac OSX, and Linux](https://studio.zerobrane.com/download?not-this-time)
- [LewisJEllis/awesome-lua: A curated list of quality Lua packages and resources.](https://github.com/LewisJEllis/awesome-lua)
- [Step By Step(C调用Lua) - Stephen_Liu - 博客园](http://www.cnblogs.com/stephen-liu74/archive/2012/07/20/2460634.html)
- [云风的 BLOG: 为 Lua 绑定 C/C++ 对象](http://blog.codingnow.com/2013/01/binding_c_object_for_lua.html)
- [4ker/lua-pong: Very simple example of a game engine written in C and game logic written in Lua.](https://github.com/4ker/lua-pong)
- [lua-pong/engine.c at master · 4ker/lua-pong](https://github.com/4ker/lua-pong/blob/master/engine.c)
- [lua-pong/pong.lua at master · 4ker/lua-pong](https://github.com/4ker/lua-pong/blob/master/pong.lua)
- [在Ubuntu系统下安装luci的步骤和注意事项 - Merlin-magic - 博客园](http://www.cnblogs.com/tfanalysis/articles/4108188.html)

[4ker/luapp: Using lua in C++ style. Build system is CMake.](https://github.com/4ker/luapp) &hearts;


refs and see also

-   [Getting Started - LOVE](https://love2d.org/wiki/Getting_Started)
-   [MisterDA/love-release: Lua script that makes LÖVE game release easier](https://github.com/MisterDA/love-release)
-   [rude / love / Downloads — Bitbucket](https://bitbucket.org/rude/love/downloads)
-   [love2d-community/awesome-love2d: A curated list of amazingly awesome LÖVE libraries, resources and shiny things.](https://github.com/love2d-community/awesome-love2d)
-   [Learn Lua in 15 Minutes](http://tylerneylon.com/a/learn-lua/)
-   [LuaDist/lua: The Lua programming language with CMake based build](https://github.com/LuaDist/lua), my fork: [4ker/lua: The Lua programming language with CMake based build](https://github.com/4ker/lua)
-   [LewisJEllis/awesome-lua: A curated list of quality Lua packages and resources.](https://github.com/LewisJEllis/awesome-lua)
-   [Issues · vinniefalco/LuaBridge](https://github.com/vinniefalco/LuaBridge/issues)
-   [ToyAuthor/luapp: Using lua in C++ style. Build system is CMake.](https://github.com/ToyAuthor/luapp) &hearts;
-   [davidsiaw/luacppinterface: A Simple C++ Interface to Lua](https://github.com/davidsiaw/luacppinterface)
-   [tutorial: quick ‘n’ dirty — Sol 2.5.2 documentation](http://sol2.readthedocs.io/en/latest/tutorial/all-the-things.html)
-   [ThePhD/sol2: Sol v2.0 - a C++ <-> Lua API wrapper with advanced features and top notch performance - is here, and it's great! Documentation:](https://github.com/ThePhD/sol2)
