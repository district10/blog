---
title: Trevor Burnham's Book
date: 2016-04-02
keywords:
tags:
    - hacker
    - reading
    - javascript
    - functional programming
...

Trevor burnham 的书
===================

## Eloquent JavaScript

it's open source and can be read online, see

  - [marijnh/Eloquent-JavaScript: The second edition of Eloquent JavaScript](https://github.com/marijnh/Eloquent-JavaScript)
  - [Eloquent JavaScript](http://eloquentjavascript.net/)
  - [Eloquent JavaScript :: Code Sandbox](http://eloquentjavascript.net/code/)

Eloquent JavaScript
A Modern Introduction to Programming

### Introduction

[Introduction :: Eloquent JavaScript](http://eloquentjavascript.net/00_intro.html)

I do not enlighten those who are not eager to learn, nor arouse those who are not anxious to give an explanation themselves. If I have presented one corner of the square and they cannot come back to me with the other three, I should not go over the points again.

-- Confucius

Overview of this book

### Part 1: Language

#### Values, Types, and Operators

[Values, Types, and Operators :: Eloquent JavaScript](http://eloquentjavascript.net/01_values.html)

Undefined values

:   There are two special values, written null and undefined, that are used to denote the absence of a meaningful value. They are themselves values, but they carry no information.

    Many operations in the language that don’t produce a meaningful value (you’ll see some later) yield undefined simply because they have to yield some value.

    The difference in meaning between undefined and null is an accident of JavaScript’s design, and it doesn’t matter most of the time. In the cases where you actually have to concern yourself with these values, I recommend treating them as interchangeable (more on that in a moment).

Automatic type conversion

```javascript
console.log(8 * null)
// → 0
console.log("5" - 1)
// → 4
console.log("5" + 1)
// → 51
console.log("five" * 2)
// → NaN
console.log(false == 0)
// → true

console.log(null == undefined);
// → true
console.log(null == 0);
// → false
```

Because of this, expressions like 0 == false and "" == false are also true. For cases like this, where you do not want any automatic type conversions to happen, there are two extra operators: === and !==. The first tests whether a value is precisely equal to the other, and the second tests whether it is not precisely equal. So "" === false is false as expected.

I recommend using the three-character comparison operators defensively to prevent unexpected type conversions from tripping you up. But when you’re certain the types on both sides will be the same, there is no problem with using the shorter operators.

Short-circuiting of logical operators

#### Program Structure

[Program Structure :: Eloquent JavaScript](http://eloquentjavascript.net/02_program_structure.html)

```javascript
confirm("Shall we, then?");
prompt("Tell me everything you know.", "...");

var theNumber = Number(prompt("Pick a number", ""));
alert("Your number is the square root of " +
      theNumber * theNumber);
```

```javascript
for (var number = 0; number <= 12; number = number + 2) {
  if (...) { break; }
  console.log(number);
}
// → 0
// → 2
//   … etcetera
```

```javascript
// C 语言里是不能这么用的。
switch (prompt("What is the weather like?")) {
  case "rainy":
    console.log("Remember to bring an umbrella.");
    break;
  case "sunny":
    console.log("Dress lightly.");
  case "cloudy":
    console.log("Go outside.");
    break;
  default:
    console.log("Unknown weather type!");
    break;
}
```

```
var str = '';
for (var i = 0; i < 8; i++) {
  for (var j = 0; j < 8; j++) {
    if ((i+j)%2!=0) { str += '#'; }
    else { str += ' '; }
    if ( j == 7 ) { str += '\n'; }
  }
}
console.log(str);
```

#### Functions

People think that computer science is the art of geniuses but the actual reality is the opposite, just many people doing things that build on each other, like a wall of mini stones.

-- Donald Knuth

```
var landscape = function() {
  var result = "";
  var flat = function(size) {
    for (var count = 0; count < size; count++)
      result += "_";
  };
  var mountain = function(size) {
    result += "/";
    for (var count = 0; count < size; count++)
      result += "'";
    result += "\\";
  };

  flat(3);
  mountain(4);
  flat(6);
  mountain(1);
  flat(1);
  return result;
};

console.log(landscape());
// → ___/''''\______/'\_
```

closure

```
function wrapValue(n) {
  var localVariable = n;
  return function() { return localVariable; };
}

var wrap1 = wrapValue(1);
var wrap2 = wrapValue(2);
console.log(wrap1());
// → 1
console.log(wrap2());
// → 2
```

```
function isEven(num)
{
  if ( num < 0 ) { return isEven(1-num); }
  if ( num === 0 ) { return true; }
  if ( num === 1 ) { return false; }
  return isEven( num - 2 );
}

console.log(isEven(50));
// → true
console.log(isEven(75));
// → false
console.log(isEven(-1));
```

```
function countChar(s, c)
{
  var hits = 0;
  for ( var i = 0; i < s.length; ++i ) {
    if ( s.charAt(i) === c ) {
      ++hits;
    }
  }
  return hits;
}

function countBs(s) {
  return countChar(s, 'B');
}

console.log(countBs("BBC"));
// → 2
console.log(countChar("kakkerlak", "k"));
// → 4
```

```
null.length;
// → TypeError: Cannot read property 'length' of null

var doh = "Doh";
console.log(typeof doh.toUpperCase);
// → function
console.log(doh.toUpperCase());
// → DOH
```

```
arr.push(elem[, elem])
obj.node // undefined
```

```
var anObject = {left: 1, right: 2};
console.log(anObject.left);
// → 1
delete anObject.left;
console.log(anObject.left);
// → undefined
console.log("left" in anObject);
// → false
console.log("right" in anObject);
// → true
```

you typically write array.length because that is easier to write than array["length"].

Mutability

```
var object1 = {value: 10};
var object2 = object1;
var object3 = {value: 10};

console.log(object1 == object2);
// → true
console.log(object1 == object3);
// → false

object1.value = 15;
console.log(object2.value);
// → 15
console.log(object3.value);
// → 10
```

The lycanthrope’s (`['laɪk(ə)n,θrəʊp]`, 变狼狂患者) log

中文:狼人;英语:werewolf;日语:狼男;法语:lycanthrope;韩语:늑대인간;

coefficient

```
function phi(table) {
  return (table[3] * table[0] - table[2] * table[1]) /
    Math.sqrt((table[2] + table[3]) *
              (table[0] + table[1]) *
              (table[1] + table[3]) *
              (table[0] + table[2]));
}

console.log(phi([76, 9, 4, 1]));
// → 0.068599434
```

objects as maps

```
var map = {};
function storePhi(event, phi) {
  map[event] = phi;
}
```

```
console.log([1, 2, 3, 2, 1].indexOf(2));
// → 1
console.log([1, 2, 3, 2, 1].lastIndexOf(2));
// → 3

console.log([0, 1, 2, 3, 4].slice(2, 4));
// → [2, 3]
console.log([0, 1, 2, 3, 4].slice(2));
// → [2, 3, 4]

function remove(array, index) {
  return array.slice(0, index)
    .concat(array.slice(index + 1));
}
console.log(remove(["a", "b", "c", "d", "e"], 2));
// → ["a", "b", "d", "e"]

console.log("e oee".indexOf("ee"));
// 3
```

The trim method removes whitespace (spaces, newlines, tabs, and similar characters) from the start and end of a string.

```
console.log("  okay \n ".trim());
// → okay
```

The arguments object

```
function packArgs()
{
  return arguments;
}
console.log(packArgs({nice:"good"}, "shit", 23));
// {0: {nice: "good"}, 1: "shit", 2: 23}
```

The Math object

As we’ve seen, Math is a grab-bag of number-related utility functions, such as
Math.max
Math.min
Math.sqrt
Math.random
Math.floor
Math.ceil
Math.round

The global object

```
for (var name in object)
```

```
// Your code here.
function range(a,b,d)
{
  if (!d) { d = 1; }
  var arr = [];
  var cur = a;
  while( (d>0&&cur<=b) || (d<0&&cur>=b) ) {
    arr.push(cur);
    cur += d;
  }
  return arr;
}
function sum(arr) {
  var result = 0;
  for ( var i = 0; i < arr.length; ++i ) {
    result += arr[i];
  }
  return result;
}

console.log(range(1, 10));
// → [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
console.log(range(5, 2, -1));
// → [5, 4, 3, 2]
console.log(sum(range(1, 10)));
// → 55
```

#### Data Structures: Objects and Arrays

```
// Your code here.
function reverseArray(arr)
{
  var result = [];
  for ( var i = arr.length-1; i >= 0; --i ) {
    result.push( arr[i] );
  }
  return result;
}

function reverseArrayInPlace(arr)
{
  for ( var i = 0, j = arr.length-1; i < j; ++i, --j ) {
    var tmp = arr[i];
    arr[i] = arr[j];
    arr[j] = tmp;
  }
}

console.log(reverseArray(["A", "B", "C"]));
// → ["C", "B", "A"];
var arrayValue = [1, 2, 3, 4, 5];
reverseArrayInPlace(arrayValue);
console.log(arrayValue);
// → [5, 4, 3, 2, 1]
```

```
// Your code here.
function arrayToList(arr)
{
  if (!arr.length) { return null; }
  var value = arr[0];
  var rest = arrayToList(arr.splice(1));
  return {value: value, rest: rest};
}
function listToArray(list)
{
  var arr = [];
  arr.push(list.value);
  while( list.rest != null ) {
    arr.push(list.rest.value);
    list = list.rest;
  }
  return arr;
}
function prepend(elem, arr)
{
  return {value: elem, rest: arr};
}

function nth(list, index)
{
  return listToArray(list)[index];
}

console.log(arrayToList([10, 20]));
// → {value: 10, rest: {value: 20, rest: null}}
console.log(listToArray(arrayToList([10, 20, 30])));
// → [10, 20, 30]
console.log(prepend(10, prepend(20, null)));
// → {value: 10, rest: {value: 20, rest: null}}
console.log(nth(arrayToList([10, 20, 30]), 1));
// → 20
```

```
// Your code here.
function deepEqual(a, b)
{
  if (typeof a === typeof {}) {
    return false;
  }
}

var obj = {here: {is: "an"}, object: 2};
console.log(deepEqual(obj, obj));
// → true
console.log(deepEqual(obj, {here: 1, object: 2}));
// → false
console.log(deepEqual(obj, {here: {is: "an"}, object: 2}));
// → true
```

#### Higher-order Functions

```
function greaterThan(n) {
  return function(m) { return m > n; };
}
var greaterThan10 = greaterThan(10);
console.log(greaterThan10(11));
// → true
```

```
function transparentWrapping(f) {
  return function() {
    return f.apply(null, arguments);
  };
}
```

This format is called JSON (pronounced “Jason”), which stands for JavaScript Object Notation. It is widely used as a data storage and communication format on the Web.

var string = JSON.stringify({name: "X", born: 1980});
console.log(string);
// → {"name":"X","born":1980}
console.log(JSON.parse(string).born);
// → 1980


filter(arr, function (elem){
    return true/false;
});

arr.filter = f(elem)

Transforming with map

Summarizing with reduce

bind and apply.

[1,3,5].reduce(function(a,b){return a*b;})
// 15

Mother-child age difference

#### The Secret Life of Objects

The problem with object-oriented languages is they’ve got all this implicit environment that they carry around with them. You wanted a banana but what you got was a gorilla holding the banana and the entire jungle.

-- Joe Armstrong, interviewed in Coders at Work

Usually a method needs to do something with the object it was called on. When a function is called as a method—looked up as a property and immediately called, as in object.method()—the special variable this in its body will point to the object that it was called on

There is a method similar to apply, called call. It also calls the function it is a method of but takes its arguments normally, rather than as an array. Like apply and bind, call can be passed a specific this value.

speak.apply(fatRabbit, ["Burp!"]);
// → The fat rabbit says 'Burp!'
speak.call({type: "old"}, "Oh my.");
// → The old rabbit says 'Oh my.'

Watch closely.

var empty = {};
console.log(empty.toString);
// → function toString(){…}
console.log(empty.toString());
// → [object Object]

I just pulled a property out of an empty object. Magic!

Well, not really. I have simply been withholding information about the way JavaScript objects work. In addition to their set of properties, almost all objects also have a prototype. A prototype is another object that is used as a fallback source of properties. When an object gets a request for a property that it does not have, its prototype will be searched for the property, then the prototype’s prototype, and so on.

So who is the prototype of that empty object? It is the great ancestral prototype, the entity behind almost all objects, Object.prototype.

console.log(Object.getPrototypeOf({}) ==
            Object.prototype);
// → true
console.log(Object.getPrototypeOf(Object.prototype));
// → null

console.log(Object.getPrototypeOf(isNaN) ==
            Function.prototype);
// → true
console.log(Object.getPrototypeOf([]) ==
            Array.prototype);
// → true

var protoRabbit = {
  speak: function(line) {
    console.log("The " + this.type + " rabbit says '" +
                line + "'");
  }
};
var killerRabbit = Object.create(protoRabbit);
killerRabbit.type = "killer";
killerRabbit.speak("SKREEEE!");
// → The killer rabbit says 'SKREEEE!'

constructor

Constructors (in fact, all functions) automatically get a property named prototype, which by default holds a plain, empty object that derives from Object.prototype. Every instance created with this constructor will have this object as its prototype. So to add a speak method to rabbits created with the Rabbit constructor, we can simply do this:

Rabbit.prototype.speak = function(line) {
  console.log("The " + this.type + " rabbit says '" +
              line + "'");
};
blackRabbit.speak("Doom...");
// → The black rabbit says 'Doom...'

It is important to note the distinction between the way a prototype is associated with a constructor (through its prototype property) and the way objects have a prototype (which can be retrieved with Object.getPrototypeOf). The actual prototype of a constructor is Function.prototype since constructors are functions. Its prototype property will be the prototype of instances created through it but is not its own prototype.

When you add a property to an object, whether it is present in the prototype or not, the property is added to the object itself, which will henceforth have it as its own property. If there is a property by the same name in the prototype, this property will no longer affect the object. The prototype itself is not changed.

![](http://eloquentjavascript.net/img/rabbits.svg)

console.log(Array.prototype.toString ==
            Object.prototype.toString);
// → false
console.log([1, 2].toString());
// → 1,2


That function doesn’t know about arrays, so it simply puts the word “object” and the name of the type between square brackets.

console.log(Object.prototype.toString.call([1, 2]));
// → [object Array]

for (var name in map)

Prototype interference

Oddly, toString did not show up in the for/in loop, but the in operator did return true for it. This is because JavaScript distinguishes between enumerable and nonenumerable properties.

All properties that we create by simply assigning to them are enumerable. The standard properties in Object.prototype are all nonenumerable, which is why they do not show up in such a for/in loop.

Object.defineProperty(Object.prototype, "hiddenNonsense",
                      {enumerable: false, value: "hi"});

console.log(map.hasOwnProperty("toString"));
// → false

Prototype-less objects

var map = Object.create(null); // objet without a prototype
map["pizza"] = 0.069;
console.log("toString" in map);
// → false
console.log("pizza" in map);
// → true

Polymorphism

Laying out a table

Getters and setters

var pile = {
  elements: ["eggshell", "orange peel", "worm"],
  get height() {
    return this.elements.length;
  },
  set height(value) {
    console.log("Ignoring attempt to set height to", value);
  }
};

console.log(pile.height);
// → 3
pile.height = 100;
// → Ignoring attempt to set height to 100

#### Project: Electronic Life
#### Bugs and Error Handling
#### Regular Expressions
#### Modules

### Part 2: Browser

#### JavaScript and the Browser
#### The Document Object Model
#### Handling Events
#### Project: A Platform Game
#### Drawing on Canvas
#### HTTP
#### Forms and Form Fields
#### Project: A Paint Program

### Part 3: Node

#### Node.js
#### Project: Skill-Sharing Website

---

# JavaScript: The Good Parts

## Good Parts

JavaScript’s functions are first class objects with (mostly) lexical scoping. JavaScript
is the first lambda language to go mainstream. Deep down, JavaScript has more in
common with Lisp and Scheme than with Java. It is Lisp in C’s clothing. This makes
JavaScript a remarkably powerful language.

document.writeln('Hello, world!');

Function.prototype.method = function (name, func) {
    this.prototype[name] = func;
    return this;
};

## Grammar

railroal diagrams

## Objects

```
var obj = {};
var obj = {
    k : "v",
    ...
}

obj.k
obj["k"]
```

The || operator can be used to fill in default values:
var middle = stooge["middle-name"] || "(none)";
var status = flight.status || "unknown";

Objects are passed around by reference. They are never copied:

Every object is linked to a prototype object from which it can inherit properties.
All objects created from object literals are linked to Object.prototype , an object that
comes standard with JavaScript.

if (typeof Object.create !== 'function') {
    Object.create = function (o) {
        var F = function () {};
        F.prototype = o;
        return new F();
    };
}
var another_stooge = Object.create(stooge);

Reflection

typeof flight.toString // 'function'
typeof flight.constructor // 'function'

Deletion

The delete operator can be used to remove a property from an object. It will remove
a property from the object if it has one. It will not touch any of the objects in the proto-
type linkage.
Removing a property from an object may allow a property from the prototype link-
age to shine

another_stooge.nickname; // local
delete another_stooge.nickname;
another_stooge.nickname; // prototype

Global Abatement (减轻)

避免过多的 global 变量，可以全部放到一个 obj 里面。

## Functions

Function Objects

Functions in JavaScript are objects. Objects are collections of name/value pairs hav-
ing a hidden link to a prototype object. Objects produced from object literals are
linked to Object.prototype . Function objects are linked to Function.prototype
(which is itself linked to Object.prototype ). Every function is also created with two
additional hidden properties: the function’s context and the code that implements
the function’s behavior.

Function Literal

// Create a variable called add and store a function
// in it that adds two numbers.
var add = function (a, b) {
    return a + b;
};

Function Literal， 4 parts = "function" + [function name] +  '(' [params] ')' + { set of statements };

Invocation

The Method Invocation Pattern

When a function is stored as a property of an object, we call it a method.

obj.method,
obj['method']

A method can use this to access the object so that it can retrieve values from the
object or modify the object. The binding of this to the object happens at invocation
time. This very late binding makes functions that use this highly reusable. Methods
that get their object context from this are called public methods.

The Function Invocation Pattern

A consequence of this error is that a method cannot
employ an inner function to help it do its work because the inner function does not
share the method’s access to the object as its this is bound to the wrong value.

myObject.double = function () {
    var that = this; // Workaround.
    var helper = function () {
        that.value = add(that.value, that.value);
    };
    helper(); // Invoke helper as a function.
};

The Constructor Invocation Pattern

JavaScript is a prototypal inheritance language. That means that objects can inherit
properties directly from other objects. The language is class-free.

// Create a constructor function called Quo.
// It makes an object with a status property.
var Quo = function (string) {
this.status = string;
};
// Give all instances of Quo a public method

// called get_status.
Quo.prototype.get_status = function () {
    return this.status;
};
// Make an instance of Quo.
var myQuo = new Quo("confused");
document.writeln(myQuo.get_status()); // confused

Functions that are intended to be used with the new prefix are called constructors. By
convention, they are kept in variables with a capitalized name. If a constructor is
called without the new prefix, very bad things can happen without a compile-time or
runtime warning, so the capitalization convention is really important.

The Apply Invocation Pattern

Because JavaScript is a functional object-oriented language, functions can have
methods.

The apply method takes two parame-
ters. The first is the value that should be bound to this . The second is an array of
parameters.

Arguments

Because of a design error, arguments is not really an array. It is an array-like object.
arguments has a length property, but it lacks all of the array methods. We will see a
consequence of that design error at the end of this chapter.

Return

If the function was invoked with the new prefix and the return value is not an object,
then this (the new object) is returned instead.

Exceptions

var add = function (a, b) {
    if (typeof a !== 'number' || typeof b !== 'number') {
        throw {
            name: 'TypeError',
            message: 'add needs numbers'
        };
    }
    return a + b;
}

var try_it = function () {
    try {
        add("seven");
    } catch (e) {
        document.writeln(e.name + ': ' + e.message);
    }
}

The throw statement interrupts execution of the function. It should be given an
exception object containing a name property that identifies the type of the exception,
and a descriptive message property. You can also add other properties.

Augmenting Types


For example, by augmenting Function.prototype , we can make a method available to
all functions:

Function.prototype.method = function (name, func) {
    this.prototype[name] = func;
    return this;
};

Number.method('integer', function () {
    return Math[this < 0 ? 'ceiling' : 'floor'](this);
});

document.writeln((-10 / 3).integer()); // -3

JavaScript lacks a method that removes spaces from the ends of a string. That is an
easy oversight to fix:

String.method('trim', function () {
    return this.replace(/^\s+|\s+$/g, '');
});
document.writeln('"' + " neat ".trim() + '"');

Recursion


