---
title: 想起了 CASIO-82ES 调牛顿解方程
date: 2014-04-15
key-words:
tags:
    - casio
    - hack
...

想起了 CASIO-82ES 调牛顿解方程
==============================

无事，看 [SICP][sicp]，顺带敲过来。

[sicp]: http://book.douban.com/subject/1451622/ "看来 SICP 有生之年是看不完了。。。"

抄录的内容
----------

**Examples: square roots by newton's method**

**Procedures**, as introduced above, are much like ordinary mathematical functions. they specify a value that is determined by one or more parameters. but there is an important difference between mathematical functions and computer procedures. procedures must be effective.

As a case in point, consider the problem of computing square roots. **we can define the square-root functions as**

... (省略一些)

this describes a perfectly legitimate mathematical function. we could use it to recognize wether one number is the square root of another, or to derive facts about square roots in general. on the other hand, the definition does not describe a procedure. indeed, it tells us almost nothing about how  to actually find the square root of a given number. it will not help matters to rephrase this definition in pseudo-lisp:

```lisp
(define (sqrt x)
    (the y (and (>= y 0)
                (= (square y) x))))
```

this only begs the question. （关键是那个 **`the y`** 怎么来的撒）

the contrast between function and procedure is a reflection of the general distinction between describing properties of things and describing how to do things, or , as  it is something referred to , the distinction between declarative (whit  is) descriptions, whereas in computer science we are usually concerned with imperative (how to) descriptions.

how does one compute square roots? the most common way is to **use newtons's method of successive approximations**, which says that whenever we have a guess y for the value of the square root of a number x, we can perform a simple manipulation to get a better guess (one  closer to the actual square root) by averaging y with x/y. for examplw, we can compute the square root of 2 as follows. suppose our initial guess is 1:

| guess | quotient | average |
| :------- | ------: | ------: |
| 1 | (2/1)=2 | ((2+1)/2)=1.5 |
| 1.5 | (2/1.5)=1.3333 | ((1.3333+1.5)/2)=1.4167 |
| 1.4167 | ... | ... |
| 1.4142 | ... | ... |

continuing this process, we obtain **better and better approximations to the square root**.

now let's formative the process in term of procedures. we start with a value for the radicand (the number whose square root we are trying to compute) and a value for the guess. if the guess is good enough for our purposes, we are done; if not, we must repeat the process with an improved  guess. we write this basic strategy as a procedure:

```lisp
(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))
```

A guess is improved by averaging it with the quotient of the radicand and the old guess:

```lisp
(define (improve guess x)
    (average guess (/ x guess)))
```

where

```lisp
(define (average x y)
        (/ (+ x y) 2))
```

we also have to say what we mean by "good enough," the following will do for illustration, but it is not really a very good test. the idea is to improve the answer until it is close enough so that its square differs from the radicand by less than a predetermined tolerance.

```lisp
(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))
```

finally, we need a way to get started. for instance, we can always guess that the square root of any number is 1.

```lisp
(define (sqrt x)
    (sqrt-iter 1.0 x))
```

if we type these definitions to te interpreter, we can use sqrt just as we can use any procedure:

```lisp
(sqrt 9)
3.00009155...
```

---

想起了高中的时候，在网上找 Casio fx 82ES 刷机教程，其中有一个就是 “**牛顿解方程**” 模式，
一直觉得这个名字好霸气（毕竟和牛顿扯上关系了）。牛顿解方程很好用，比如求一个方程（一元）的解，
直接把方程输到计算器就成（对于我这种粗心大意的又懒的人，简直不能更好）。
一直不知道为什么这个刷机模式为什么叫“牛顿解方程”，记得当时余意老师讲过一种迭代求根的方法，
我又不用，早忘了，但我会按计算器嘛！

没有计算器的数学考试我可以去死，宁可不写。2 位以上的计算我都不太习惯思考，`sin
30 45 60` 就没搞清楚过，从来都是直接按计算器。那时按计算器还挺快，在 15 班时还
一群人拼谁刷机快……[^class15]后来刷机的方法学的越来越多，可以刷出 `base-n` 进制
转换，求方程组，求积分和导数（高中不教这个所以也不怎么会用），矩阵向量统计什么
的，还有一些很 fancy 的爆机方法，最牛逼的是 LU WangChen 的那个，可以让计算器瞬
间无法开机，除非用起子打开壳子把电池抠出来放一会。如此强大，以至于每次考数学前
都要去欺负 Peng Wei，“乖点不然把你计算器刷死……”^[好贱……]

[^class15]: 相比，1 班同学在这上面探索欲不强。

后来高考前把计算器换成了 991，现在还在用，不用刷就有了所有 82ES b 版按百来个键
才能刷出来的功能，省去了刷机的麻烦，也少个那个乐趣。

翻到了以前刷机看的文档：

![](http://whudoc.qiniudn.com/casio-82-es.jpg)
