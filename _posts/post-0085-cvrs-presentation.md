% Presentation
% TANG ZhiXiong
% 2016-02-24

Presentation
============

<link rel="stylesheet" type="text/css" href="asciinema-player.css" />
<script src="asciinema-player.js"></script>

[asciinema - Record and share your terminal sessions, the right way](https://asciinema.org/)

<div id="player-container"></div>
<script>
  asciinema_player.core.CreatePlayer('player-container', 'demo.json');
</script>

## = R A M P =

#. <kbd>R</kbd>egExp
#. <kbd>A</kbd>sync & <kbd>M</kbd>ake
#. <kbd>P</kbd>ipe

### RegExP - `R`AMP

1. everything


2. ag


* [ggreer/the_silver_searcher: A code-searching tool similar to ack, but faster.](https://github.com/ggreer/the_silver_searcher)

`ag 'gpu::cornerHarris\(.*src.*\)'`{.bash}

3. notepad++

Why You Need It.

### Async & Make (Part I) - R`A`MP

1. Async in Javascript Community: Node.js

pic 1, pic 2

2. Async in C++: STL, Boost, folly

3. Async for What?



* [facebook/folly: An open-source C++ library developed and used at Facebook.](https://github.com/facebook/folly)


drastic change.

seq?

### Pipe - RAM`P`

### Async & Make (Part II) - R`A`MP

借鉴其他社区

```javascript
return QString().sprintf( "%02d:%02d:%02d.%03d", // e.g. 01:23:45.678
                          dt.time().hour(),
                          dt.time().minute(),
                          dt.time().second(),
                          dt.time().msec() );
```

```cpp
return QString().sprintf( "%02d:%02d:%02d.%03d"  // e.g. 01:23:45.678
                        , dt.time().hour()
                        , dt.time().minute()
                        , dt.time().second()
                        , dt.time().msec() );

int TextureNotation::Color2Int( const QColor &c )
{
    // int = [a|b|g|r]
    return ( c.alpha() << 24
           | c.blue()  << 16
           | c.green() <<  8
           | c.red() );
}
```

```javascript
// chaining demo 1
math.chain(3)
    .add(4)
    .multiply(2)
    .done(); // (3 + 4) * 2 = 14

// chaining demo 2
d3.selectAll("circle").transition()
    .duration(750)
    .delay(function(d, i) { return i * 10; })
    .attr("r", function(d) { return Math.sqrt(d * scale); });
```

```bash
$ cat file.txt | tr -d ',\n' | wc -c
```

```cpp
// TextureNotation::TN_Curve curve;
curve.setAnchor(a)
     .setText(t)
     .setInfo(i)
     .setColor(c) << TextureNotation::TN_Pt( QPointF( 0.0, 0.0 ) )
                  << TextureNotation::TN_Pt( QPointF( 1.0, 0.0 ) )
                  << TextureNotation::TN_Pt( QPointF( 1.0, 1.0 ) )
                  << TextureNotation::TN_Pt( QPointF( 1.0, 0.0 ) );

// implementation
class TextureNotation {
    // ...
    struct TN_Curve {
        // members
        // default constructor
        // chaining
        TN_Curve &setAnchor( const TN_Pt &a = TN_Pt() ) { anchor = a; return *this; }
        TN_Curve &setText( const QString &t = QString("Curve") ) { text = t; return *this; }
        TN_Curve &setInfo( const QString &i = QString() ) { info = i; return *this; }
        TN_Curve &setColor( const QColor &c = QColor(Qt::green) ) { color = c; return *this; }
        TN_Curve &operator<<( const TN_Pt &pt )
        {
            this->points << pt;
            return *this;
        }
   }
   // ...
}
```

```cpp
Future<double> f =
    fooFuture(input)
    .then(
                [](Output o) {
                    return o * M_PI;
                }
         )
    .onError(
                [](std::exception const& e) {
                    cerr << "Oh bother, " << e.what()
                         << ". Returning pi instead." << endl;
                    return M_PI;
                }
            );
/* ********************************************************** */
// get() first waits, and then returns the value
cout << "Result: " << f.get() << endl;
```

```cpp
double f( double input ) {
    return input * M_PI; // M_PI = 3.14...
}
```

```cpp
#include <folly/futures/Future.h>
using namespace folly;
using namespace std;

void foo(int x) {
    // do something with x
    cout << "foo(" << x << ")" << endl;
}

    // ...

    cout << "making Promise" << endl;
    Promise<int> p;
    Future<int> f = p.getFuture();
    f.then(foo);
    cout << "Future chain made" << endl;

    // ... now perhaps in another event callback

    cout << "fulfilling Promise" << endl;
    p.setValue(42);
    cout << "Promise fulfilled" << endl;
```



[district10/raw2pts: Raw file 2 point cloud file](https://github.com/district10/raw2pts)


```plain
Compile

    $ gcc raw2pts.c -o raw2pts

Run

    $ raw2pts demo.raw demo.txt

Utils

    * 把 raw2pts.exe 放到根目录。
    * 把 raw 文件放到 batch 文件夹，双击 batch.sh，可以批量转化。
    * 把 txt 文件放到 merge 文件夹，双击 merge.sh，可以合并点云。

---
Windows 系统上需要安装 git bash。
```


```bash
#!/bin/bash

for i in *.raw;
do
    o=${i%.*}.txt
    echo "$i => $o"
    ../raw2pts $i $o
    rm $i
done
```

> stdout.txt
2> stderr.txt
&> stdout-stderr.txt


## = R A M P = for what?

### flow

### no distraction

```cpp
freopen( "log-stdout.txt", "w", stdout );
freopen( "log-stderr.txt", "w", stderr );
```

```bash
$ ls -l        >   stdout.txt
$ grep da *   2>   stderr.txt
$ ag da *     &>   stdout-n-stderr.txt

$ your-binary.exe &> log.txt
```

```bash
$ your-binary.exe | tee log.txt | less -F
```

```cpp
// double.c
#include <stdio.h>

int main( void )
{
    float f;
    scanf( "%f", &f );
    printf( "%f\n", 2.0f * f );
    return 0;
}
```

```bash
$ gcc double.c -o double
$ double
23<RET>
46.000000
$ echo 23 | double
46.000000
$ echo 23 | triple
69.000000
$ echo 23 | double | triple
138.000000
```


```bash
#!/bin/bash

for i in *.raw;
do
    o=${i%.*}.txt
    echo "$i => $o"
    ../raw2pts $i $o
    rm $i
done
```

```makefile
input   = input
output  = output
pts	    = $(patsubst $(input)/%.raw, $(output)/%.txt, $(wildcard $(input)/*.raw))
allpts  = $(output)/all.txt

all: raw2pts $(pts) $(allpts)

$(allpts): $(pts)
	cat $^ > $@

$(pts): $(output)
$(output):
	mkdir -p $@

$(pts): raw2pts
raw2pts:
	gcc raw2pts.c -o $@

$(output)/%.txt: $(input)/%.raw
	raw2pts $< $@
```

# Refs

#. [Futures for C++11 at Facebook - June 19, 2015](https://code.facebook.com/posts/1661982097368498)
#. [Everything Searching Options](http://www.voidtools.com/support/everything/searching/)
#. [BASH Programming - Introduction HOW-TO: All about redirection](http://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO-3.html)
#. [Flow (psychology) - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Flow_(psychology))

<style>
.tzx-tab-menu > dl > dt {
    margin-left: 0;
    margin-bottom: 0;
    padding: 2px 15px 5px;
    border: 1px solid #000;
    list-style: none;
    display: inline;
    background-color: #ffc;
    cursor: point;
}

.tzx-tab-menu > dl > dd {
//     display: none;
}

.tzx-display-none {
    display: none;
}

</style>

<div id="tabdemo">
* 项目列表一anoedi anastoei
* 项目列表二

<li class="selected">项目列表三</li>

* 项目列表四
</ul>
</div>

<div class="tzx-tab-menu">
good

:   nice too see you


nice

:   ```cpp
    int count( struct TreeNode *root )
    {
        if ( !root ) { return 0; }
        return 1+count(root->right)+count(root->left);
    }

    void traverse( struct TreeNode *root, int *data, int *cursor )
    {
        if ( !root ) { return; }
        traverse( root->left, data, cursor );
        data[(*cursor)++] = root->val;
        traverse( root->right, data, cursor );
    }

    int* inorderTraversal(struct TreeNode* root, int* returnSize) {
        *returnSize = count( root );
        int *data = malloc( sizeof(int)*(*returnSize) );
        int cursor = 0;
        traverse( root, data, &cursor );
        return data;
    }
    ```
</div>


<script>
function hideMenu( m )
{
    for ( var i = 1; i < m.children[0].children.length; i += 2 ) {
        //    dl         dd
        m.children[0].children[i].className = 'tzx-display-none';
    }
}

// init
var tms = document.getElementsByClassName('tzx-tab-menu')
for ( var i = 0; i < tms.length; ++i ) {
    hideMenu( tms[i] );
    // tms[i].children[0].children[1].className = '';
    tms[i].children[0].children[0].onClick = function( e ) {
        console.log( 'hit' );
        hideMenu( e.target.parentElement.parentElement );
        e.target.nextElementSibling.className = '';
    }
}
</script>
