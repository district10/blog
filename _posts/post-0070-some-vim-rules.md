% Vim Rules
% TANG ZhiXiong
% 2015-11-23

Vim Rules
=========

Vim rules. Rules, a verb. Vim rules. Rules, a noun.

一些有用的 Vim 宏
-----------------

注意，这里有不可见字符！使用的时候拷贝到相应寄存器再 `@x` 即可调用。

QObject &rarr; `QObject`{.cpp}
:   ```
    viwbi`ea`{.cpp}
    ```

QObject::tr() &rarr; `QObject::tr()`{.cpp}

:   ```
    viWBi`f)a`{.cpp}
    ```
