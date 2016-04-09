---
title: Learning JavaScript
date: 2016-04-08
keywords:
tags:
    - javascript
    - es6
...

Learning JavaScript
===================

[ECMAScript 6入门](http://es6.ruanyifeng.com/#undefined)

《ECMAScript 6入门》是一本开源的JavaScript语言教程，全面介绍ECMAScript 6新引入的语法特性。

## ECMAScript 6简介

### ECMAScript和JavaScript的关系
### ECMAScript的历史
### 部署进度

nvm -> node -> cnpm

```bash
$ node --v8-options | grep harmony

  --harmony_typeof
  --harmony_scoping
  --harmony_modules
  --harmony_symbols
  --harmony_proxies
  --harmony_collections
  --harmony_observation
  --harmony_generators
  --harmony_iteration
  --harmony_numeric_literals
  --harmony_strings
  --harmony_arrays
  --harmony_maths
  --harmony
```

### Babel转码器

Babel是一个广泛使用的ES6转码器，可以将ES6代码转为ES5代码，从而在现有环境执行。
这意味着，你可以用ES6的方式编写程序，又不用担心现有环境是否支持。下面是一个例子。

```javascript
// 转码前
input.map(item => item + 1);

// 转码后
input.map(function (item) {
  return item + 1;
});
```

`.babelrc`

preset, 预调装置

```bash
# ES2015转码规则
$ npm install --save-dev babel-preset-es2015

# react转码规则
$ npm install --save-dev babel-preset-react

# ES7不同阶段语法提案的转码规则（共有4个阶段），选装一个
$ npm install --save-dev babel-preset-stage-0
$ npm install --save-dev babel-preset-stage-1
$ npm install --save-dev babel-preset-stage-2
$ npm install --save-dev babel-preset-stage-3
```

presets字段设定转码规则，官方提供以下的规则集，你可以根据需要安装。

```json
{
    "presets": [
        "es2015",
        "react",
        "stage-2"
    ],
    "plugins": []
}
```

Babel提供babel-cli工具，用于命令行转码。

babel-cli工具自带一个babel-node命令，提供一个支持ES6的REPL环境。它支持Node的REPL环境的所有功能，而且可以直接运行ES6代码。

它不用单独安装，而是随babel-cli一起安装。然后，执行babel-node就进入REPL环境。

babel-register模块改写require命令，为它加上一个钩子。此后，每当使用require加载.js、.jsx、.es和.es6后缀名的文件，就会先用Babel进行转码。

Babel也可以用于浏览器环境。但是，从Babel 6.0开始，不再直接提供浏览器版本，而是要用构建工具构建出来。如果你没有或不想使用构建工具，可以通过安装5.x版本的babel-core模块获取。

[Babel · The compiler for writing next generation JavaScript](https://babeljs.io/repl/)

### Traceur转码器
### ECMAScript 7

## let和const命令

### let命令

作用域， block level

```javascript
var a = [];
for (let i = 0; i < 10; i++) {
  a[i] = function () {
    console.log(i);
  };
}
a[6](); // 6
// var 的话可是 9！
```

let不像var那样会发生“变量提升”现象。所以，变量一定要在声明后使用，否则报错。

```javascript
console.log(foo); // 输出undefined
console.log(bar); // 报错ReferenceError

var foo = 2;
let bar = 2;
```

上面代码中，变量foo用var命令声明，会发生变量提升，即脚本开始运行时，变量foo
已经存在了，但是没有值，所以会输出undefined。变量bar用let命令声明，不会发生
变量提升。这表示在声明它之前，变量bar是不存在的，这时如果用到它，就会抛出一
个错误。

ES6明确规定，如果区块中存在let和const命令，这个区块对这些命令声明的变量，从一开始就形成了封闭作用域。凡是在声明之前就使用这些变量，就会报错。

“暂时性死区”（temporal dead zone，简称TDZ）。

总之，暂时性死区的本质就是，只要一进入当前作用域，所要使用的变量就已经存在了，但是不可获取，只有等到声明变量的那一行代码出现，才可以获取和使用该变量。

不允许重复声明

### 块级作用域

为什么需要块级作用域？

  - 第一种场景，内层变量可能会覆盖外层变量。
  - 第二种场景，用来计数的循环变量泄露为全局变量。（for var i）

块级作用域的出现，实际上使得获得广泛应用的立即执行匿名函数（IIFE）不再必要了。

```javascript
// IIFE写法
(function () {
  var tmp = ...;
  ...
}());

// 块级作用域写法
{
  let tmp = ...;
  ...
}
```

```javascript
function f() { console.log('I am outside!'); }
(function () {
  if(false) {
    // 重复声明一次函数f
    function f() { console.log('I am inside!'); }
  }

  f();
}());
```

### const命令

```javascript
'use strict';

const PI = 3.1415;
```

const的作用域与let命令相同：只在声明所在的块级作用域内有效。

```javascript
const foo = {};
foo.prop = 123;

foo.prop
// 123

foo = {} // TypeError: "foo" is read-only

const a = [];
a.push("Hello"); // 可执行
a.length = 0;    // 可执行
a = ["Dave"];    // 报错
```

如果真的想将对象冻结，应该使用Object.freeze方法。

```javascript
const foo = Object.freeze({});

// 常规模式时，下面一行不起作用；
// 严格模式时，该行会报错
foo.prop = 123;
```

除了将对象本身冻结，对象的属性也应该冻结。下面是一个将对象彻底冻结的函数。

```javascript
var constantize = (obj) => {
  Object.freeze(obj);
  Object.keys(obj).forEach( (key, value) => {
    if ( typeof obj[key] === 'object' ) {
      constantize( obj[key] );
    }
  });
};
```

### 跨模块常量

上面说过，const声明的常量只在当前代码块有效。如果想设置跨模块的常量，可以采用下面的写法。

```javascript
// constants.js 模块
export const A = 1;
export const B = 3;
export const C = 4;

// test1.js 模块
import * as constants from './constants';
console.log(constants.A); // 1
console.log(constants.B); // 3

// test2.js 模块
import {A, B} from './constants';
console.log(A); // 1
console.log(B); // 3
```

### 全局对象的属性

全局对象是最顶层的对象，在浏览器环境指的是window对象，在Node.js指的是global对象。ES5之中，全局对象的属性与全局变量是等价的。

```javascript
window.a = 1;
a // 1

a = 2;
window.a // 2
```

一方面规定，var命令和function命令声明的全局变量，依旧是全局对象的属性；另一方面规定，let命令、const命令、class命令声明的全局变量，不属于全局对象的属性。

```javascript
var a = 1;
// 如果在Node的REPL环境，可以写成global.a
// 或者采用通用方法，写成this.a
window.a // 1

let b = 1;
window.b // undefined
```

## 变量的解构赋值

### 数组的解构赋值

```javascript
var [a, b, c] = [1, 2, 3];
let [foo, [[bar], baz]] = [1, [[2], 3]];
let [foo, [[bar], baz]] = [1, [[2], 3]];
foo // 1
bar // 2
baz // 3

let [ , , third] = ["foo", "bar", "baz"];
third // "baz"

let [x, , y] = [1, 2, 3];
x // 1
y // 3

let [head, ...tail] = [1, 2, 3, 4];
head // 1
tail // [2, 3, 4]

let [x, y, ...z] = ['a'];
x // "a"
y // undefined
z // []

// 报错
let [foo] = 1;
let [foo] = false;
let [foo] = NaN;
let [foo] = undefined;
let [foo] = null;
let [foo] = {};
```

解构赋值不仅适用于var命令，也适用于let和const命令。

```javascript
let [x, y, z] = new Set(["a", "b", "c"])
```

事实上，只要某种数据结构具有Iterator接口，都可以采用数组形式的解构赋值。

```javascript
function* fibs() {
  var a = 0;
  var b = 1;
  while (true) {
    yield a;
    [a, b] = [b, a + b];
  }
}

var [first, second, third, fourth, fifth, sixth] = fibs();
sixth // 5
```

上面代码中，fibs是一个Generator函数，原生具有Iterator接口。解构赋值会依次从这个接口获取值。

```javascript
[x, y = 'b'] = ['a'] // x='a', y='b'
[x, y = 'b'] = ['a', undefined] // x='a', y='b'

let [x = 1, y = x] = [];     // x=1; y=1
let [x = 1, y = x] = [2];    // x=2; y=2
let [x = 1, y = x] = [1, 2]; // x=1; y=2
let [x = y, y = 1] = [];     // ReferenceError
```

### 对象的解构赋值

```javascript
var { foo, bar } = { foo: "aaa", bar: "bbb" };
foo // "aaa"
bar // "bbb"

var { baz } = { foo: "aaa", bar: "bbb" };
baz // undefined

let obj = { first: 'hello', last: 'world' };
let { first: f, last: l } = obj;
f // 'hello'
l // 'world'

let foo;
let {foo} = {foo: 1}; // SyntaxError: Duplicate declaration "foo"

let baz;
let {bar: baz} = {bar: 1}; // SyntaxError: Duplicate declaration "baz"
({foo} = {foo: 1}); // 成功

var obj = {
  p: [
    "Hello",
    { y: "World" }
  ]
};

var { p: [x, { y }] } = obj;
x // "Hello"
y // "World"


let obj = {};
let arr = [];

({ foo: obj.prop, bar: arr[0] } = { foo: 123, bar: true });

obj // {prop:123}
arr // [true]

let { log, sin, cos } = Math;
```

### 字符串的解构赋值

```javascript
const [a, b, c, d, e] = 'hello';
let {length : len} = 'hello';
```

### 数值和布尔值的解构赋值

```javascript
let {toString: s} = 123;
s === Number.prototype.toString // true

let {toString: s} = true;
s === Boolean.prototype.toString // true
```javascript

### 函数参数的解构赋值

```javascript
function add([x, y]){
  return x + y;
}

add([1, 2]) // 3

[[1, 2], [3, 4]].map(([a, b]) => a + b)
// [ 3, 7 ]

function move({x = 0, y = 0} = {}) {
  return [x, y];
}

move({x: 3, y: 8}); // [3, 8]
move({x: 3}); // [3, 0]
move({}); // [0, 0]
move(); // [0, 0]
```

### 圆括号问题

解构赋值虽然很方便，但是解析起来并不容易。对于编译器来说，一个式子到底是模式，还是表达式，没有办法从一开始就知道，必须解析到（或解析不到）等号才能知道。

由此带来的问题是，如果模式中出现圆括号怎么处理。ES6的规则是，只要有可能导致解构的歧义，就不得使用圆括号。

但是，这条规则实际上不那么容易辨别，处理起来相当麻烦。因此，建议只要有可能，就不要在模式中放置圆括号。

可以使用圆括号的情况只有一种：赋值语句的非模式部分，可以使用圆括号。

```javascript
[(b)] = [3]; // 正确
({ p: (d) } = {}); // 正确
[(parseInt.prop)] = [3]; // 正确
```

### 用途

```javascript
[x, y] = [y, x];

var jsonData = {
  id: 42,
  status: "OK",
  data: [867, 5309]
}

let { id, status, data: number } = jsonData;
// let { id, status, data } = jsonData;

console.log(id, status, number)
// console.log(id, status, data)
// 42, "OK", [867, 5309]
```

```javascript
// 函数参数的默认值
jQuery.ajax = function (url, {
  async = true,
  beforeSend = function () {},
  cache = true,
  complete = function () {},
  crossDomain = false,
  global = true,
  // ... more config
}) {
  // ... do stuff
};
```

```javascript
var map = new Map();
map.set('first', 'hello');
map.set('second', 'world');

for (let [key, value] of map) {
  console.log(key + " is " + value);
}
// first is hello
// second is world

// 获取键名
for (let [key] of map) {
  // ...
}

// 获取键值
for (let [,value] of map) {
  // ...
}
```

```javascript
// 输入模块的指定方法
const { SourceMapConsumer, SourceNode } = require("source-map");
```

## 字符串的扩展

ES6加强了对Unicode的支持，并且扩展了字符串对象。

### 字符的Unicode表示法

```javascript
"\u0061" // \uxxxx
// "a"
"\uD842\uDFB7"
// "𠮷"

"\u{20BB7}"
// "𠮷"

"\u{41}\u{42}\u{43}"
// "ABC"

"\u{20BB7}"
// "𠮷"

"\u{41}\u{42}\u{43}"
// "ABC"

let hello = 123;
hell\u{6F} // 123

'\u{1F680}' === '\uD83D\uDE80'
// true
```

上面代码中，最后一个例子表明，大括号表示法与四字节的UTF-16编码是等价的。

```javascript
'\z' === 'z'  // true
'\172' === 'z' // true
'\x7A' === 'z' // true
'\u007A' === 'z' // true
'\u{7A}' === 'z' // true
```

### `codePointAt()`

JavaScript内部，字符以UTF-16的格式储存，每个字符固定为2个字节。对于那些需要4个字节储存的字符（Unicode码点大于0xFFFF的字符），JavaScript会认为它们是两个字符。

```javascript
String.fromCodePoint()

String.fromCodePoint(0x20BB7)
// "𠮷"
String.fromCodePoint(0x78, 0x1f680, 0x79) === 'x\uD83D\uDE80y'
// true
```

### 字符串的遍历器接口

```javascript
for (let i of text) {
  console.log(i);
}
// "𠮷"

// charAt()  -> at()
'abc'.at(0) // "a"
'𠮷'.at(0) // "𠮷"
```

### `normalize()`

ES6提供字符串实例的normalize()方法，用来将字符的不同表示方法统一为同样的形式，这称为Unicode正规化。

normalize方法可以接受四个参数。

  - NFC，默认参数，表示“标准等价合成”（Normalization Form Canonical Composition），返回多个简单字符的合成字符。所谓“标准等价”指的是视觉和语义上的等价。
  - NFD，表示“标准等价分解”（Normalization Form Canonical Decomposition），即在标准等价的前提下，返回合成字符分解的多个简单字符。
  - NFKC，表示“兼容等价合成”（Normalization Form Compatibility Composition），返回合成字符。所谓“兼容等价”指的是语义上存在等价，但视觉上不等价，比如“囍”和“喜喜”。（这只是用来举例，normalize方法不能识别中文。）
  - NFKD，表示“兼容等价分解”（Normalization Form Compatibility Decomposition），即在兼容等价的前提下，返回合成字符分解的多个简单字符。

### `includes()`, `startsWith()`, `endsWith()`

  - includes()：返回布尔值，表示是否找到了参数字符串。
  - startsWith()：返回布尔值，表示参数字符串是否在源字符串的头部。
  - endsWith()：返回布尔值，表示参数字符串是否在源字符串的尾部。

这三个方法都支持第二个参数，表示开始搜索的位置。

### `repeat()`

```javascript
'x'.repeat(3) // "xxx"
'hello'.repeat(2) // "hellohello"
'na'.repeat(0) // ""
```

参数如果是小数，会被取整。

```javascript
'na'.repeat(2.9) // "nana"
'na'.repeat(NaN) // ""
'na'.repeat('na') // ""
'na'.repeat('3') // "nanana"
```

### `padStart()`，`padEnd()`

```javascript
'x'.padStart(5, 'ab') // 'ababx'
'x'.padStart(4, 'ab') // 'abax'

'x'.padEnd(5, 'ab') // 'xabab'
'x'.padEnd(4, 'ab') // 'xaba'
```

### 模板字符串

```javascript
$("#result").append(
  "There are <b>" + basket.count + "</b> " +
  "items in your basket, " +
  "<em>" + basket.onSale +
  "</em> are on sale!"
);

$("#result").append(`
  There are <b>${basket.count}</b> items
   in your basket, <em>${basket.onSale}</em>
  are on sale!
`);
```

实例：模板编译

```javascript
var x = 1;
var y = 2;

`${x} + ${y} = ${x + y}`
// "1 + 2 = 3"

`${x} + ${y * 2} = ${x + y * 2}`
// "1 + 4 = 5"

var obj = {x: 1, y: 2};
`${obj.x + obj.y}`
// 3

function fn() {
  return "Hello World";
}

`foo ${fn()} bar`
// foo Hello World bar
```

标签模板

`String.raw()`

## 正则的扩展

### RegExp构造函数

```
var regex = new RegExp('xyz', 'i');
var regex = new RegExp(/xyz/i);
// 等价于
var regex = /xyz/i;

new RegExp(/abc/ig, 'i').flags
// "i"
```

### 字符串的正则方法
### u修饰符
### y修饰符
### sticky属性
### flags属性
### RegExp.escape()
### 后行断言

## 数值的扩展

### 二进制和八进制表示法
### Number.isFinite(), Number.isNaN()
### Number.parseInt(), Number.parseFloat()
### Number.isInteger()
### Number.EPSILON
### 安全整数和Number.isSafeInteger()
### Math对象的扩展
### 指数运算符

## 数组的扩展

### Array.from()
### Array.of()
### 数组实例的copyWithin()
### 数组实例的find()和findIndex()
### 数组实例的fill()
### 数组实例的entries()，keys()和values()
### 数组实例的includes()
### 数组的空位
### 数组推导

## 函数的扩展

### 函数参数的默认值
### rest参数
### 扩展运算符
### name属性
### 箭头函数
### 函数绑定
### 尾调用优化
### 函数参数的尾逗号

## 对象的扩展

### 属性的简洁表示法
### 属性名表达式
### 方法的name属性
### Object.is()
### Object.assign()
### 属性的可枚举性
### 属性的遍历
### __proto__属性，Object.setPrototypeOf()，Object.getPrototypeOf()
    Object.values()，Object.entries()
    对象的扩展运算符
    Object.getOwnPropertyDescriptors()

## Symbol

### 概述
### 作为属性名的Symbol
### 实例：消除魔术字符串
### 属性名的遍历
### Symbol.for()，Symbol.keyFor()
### 内置的Symbol值

## Proxy和Reflect

### Proxy概述
### Proxy实例的方法
### Proxy.revocable()
### Reflect概述
### Reflect对象的方法

## 二进制数组

### ArrayBuffer对象
### TypedArray视图
### 复合视图
### DataView视图
### 二进制数组的应用

## Set和Map数据结构

### Set
### WeakSet
### Map
### WeakMap

## Iterator和for...of循环

### Iterator（遍历器）的概念
### 数据结构的默认Iterator接口
### 调用Iterator接口的场合
### 字符串的Iterator接口
### Iterator接口与Generator函数
### 遍历器对象的return()，throw()
### for...of循环

## Generator 函数

### 简介
### next方法的参数
### for...of循环
### Generator.prototype.throw()
### Generator.prototype.return()
### yield*语句
### 作为对象属性的Generator函数
### Generator函数的this
### Generator函数推导
### 含义
### 应用

## Promise对象

### Promise的含义
### 基本用法
### Promise.prototype.then()
### Promise.prototype.catch()
### Promise.all()
### Promise.race()
### Promise.resolve()
### Promise.reject()
### 两个有用的附加方法
### 应用
### async函数

## 异步操作和Async函数

### 基本概念
### Generator函数
### Thunk函数
### co模块
### async函数

### Class

### Class基本语法
### Class的继承
### 原生构造函数的继承
### Class的取值函数（getter）和存值函数（setter）
### Class的Generator方法
### Class的静态方法
### Class的静态属性和实例属性
### new.target属性
### Mixin模式的实现

## 修饰器

### 类的修饰
### 方法的修饰
### 为什么修饰器不能用于函数？
### core-decorators.js
### 使用修饰器实现自动发布事件
### Mixin
### Trait
### Babel转码器的支持

## Module

### 严格模式
### export命令
### import命令
### 模块的整体加载
### export default命令
### 模块的继承
### ES6模块加载的实质
### 循环加载
### ES6模块的转码

## 编程风格

### 块级作用域
### 字符串
### 解构赋值
### 对象
### 数组
### 函数
### Map结构
### Class
### 模块
### ESLint的使用

## 读懂 ECMAScript 规格

### 概述
### 相等运算符
### 数组的空位
### 数组的map方法

## 参考链接

### 官方文件
### 综合介绍
### let和const
### 解构赋值
### 字符串
### 正则
### 数值
### 数组
### 函数
### 对象
### Proxy和Reflect
### Symbol
### 二进制数组
### Set和Map
### Iterator
### Generator
### Promise对象
### 异步操作和Async函数
### Class
### Decorator
### Module
### 工具
