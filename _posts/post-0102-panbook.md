---
title: PanBook
date: 2016-05-09
keywords:
tags:
    - panbook
...

PanBook
=======

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

[Pandoc - Scripting with pandoc](http://pandoc.org/scripting.html)

:

regexp? -> ast -> filter

filter
:

```tzx-bigquote
                         source format
                              ↓
                           (pandoc)
                              ↓
                      JSON-formatted AST
                              ↓
                           (filter)
                              ↓
                      JSON-formatted AST
                              ↓
                           (pandoc)
                              ↓
                        target format
```

```haskell
#!/usr/bin/env runhaskell
-- behead2.hs
import Text.Pandoc.JSON

main :: IO ()
main = toJSONFilter behead
  where behead (Header n _ xs) | n >= 2 = Para [Emph xs]
        behead x = x
```


    ```bash
    pandoc -f SOURCEFORMAT -t json | runhaskell behead2.hs | \
      pandoc -f json -t TARGETFORMAT

    # or
    pandoc -f SOURCEFORMAT -t TARGETFORMAT --filter ./behead2.hs # chmod +x behead2.hs

    # or, compile it first
    ghc --make behead2.hs
    pandoc -f SOURCEFORMAT -t TARGETFORMAT --filter ./behead
    ```

    include multiple instances of --filter: the filters will be applied in
    sequence.

```bash
$ cat test.txt
### my header

text with *italics*
$ pandoc -t native test.txt
[Header 3 ("my-header",[],[]) [Str "my",Space,Str "header"]
,Para [Str "text",Space,Str "with",Space,Emph [Str "italics"]]]
```

-   Download ghc: [The Glasgow Haskell Compiler](https://www.haskell.org/ghc/)
-   [Appendix A. Installing GHC and Haskell libraries](http://book.realworldhaskell.org/read/installing-ghc-and-haskell-libraries.html)

    ```bash
    cabal update
    cabal install -pandoc # 管理员身份运行
    ```

    from source

    ```bash
    runghc Setup configure -p # runghc Setup configure --user --prefix=$HOME -p
    runghc Setup build
    sudo runghc Setup install # runghc Setup install
    ```
