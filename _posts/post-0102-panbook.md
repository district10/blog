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

```html
<head>
<link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.6.0/pure-min.css">

<meta name="viewport" content="width=device-width, initial-scale=1">


<!--[if lte IE 8]>
    <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.6.0/grids-responsive-old-ie-min.css">
<![endif]-->
<!--[if gt IE 8]><!-->
    <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.6.0/grids-responsive-min.css">
<!--<![endif]-->
</head>
```

- 5ths-Based Units, `1`, `1-1`, `5-5`, `{1..4}-5`

irresponsive: 33.33%

```
<div class="pure-g">
    <div class="pure-u-1-3"> ... </div>
    <div class="pure-u-1-3"> ... </div>
    <div class="pure-u-1-3"> ... </div>
</div>
```

responsive: 100% (small screens) - 33.33% (on medium-sized screens and above)

```
<div class="pure-g">
    <div class="pure-u-1 pure-u-md-1-3"> ... </div>
    <div class="pure-u-1 pure-u-md-1-3"> ... </div>
    <div class="pure-u-1 pure-u-md-1-3"> ... </div>
</div>
```

```
<style>
    .pure-g > div {
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
    }
    .l-box {
        padding: 1em;
    }
</style>
```
