% Vim Rules
% TANG ZhiXiong
% 2015-11-23

Vim Rules
=========

Vim rules. Rules, a verb. Vim rules. Rules, a noun.

Cmds
----

delete trailing whitespace

`:%s/\s\+$//`



每天必用的 Vim 宏
-----------------

注意，这里有不可见字符！使用的时候拷贝到相应寄存器再 `@x` 即可调用。

QObject &rarr; `QObject`{.cpp}
:   ```
    viwbi`ea`{.cpp}k
    ```

tr() &rarr; `tr()`{.cpp}, QObject::tr() &rarr; `QObject::tr()`{.cpp},

:   ```
    viWBi`f)a`{.cpp}k
    ```

Qt::SolidPattern, `Qt::SolidPattern`{.cpp}

每天必守 Vim 家规
-----------------

寄存器

#. `a`, `b`: temp register
#. `c`: class: QObject &rarr; `QObject`{.cpp}
#. `g`: namespace: Qt::Red &rarr; `Qt::Red`{.cpp}
#. `f`: function: QObject::tr() &rarr; `QObject::tr()`{.cpp}
#. `r`: refs
#. `n`: now
#. `m`:
#. `v`:
#. `w`:
#. `t`: tilde: word &rarr; `word`