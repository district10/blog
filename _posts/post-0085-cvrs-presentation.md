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
3. notepad++

Why You Need It.

### Async & Make (Part I) - R`A`MP

1. Async in Javascript Community: Node.js

pic 1, pic 2

2. Async in C++: STL, Boost, folly

3. Async for What?

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

# Refs

#. [Futures for C++11 at Facebook - June 19, 2015](https://code.facebook.com/posts/1661982097368498)
#. [Everything Searching Options](http://www.voidtools.com/support/everything/searching/)
#. [BASH Programming - Introduction HOW-TO: All about redirection](http://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO-3.html)
