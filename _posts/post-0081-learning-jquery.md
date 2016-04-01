---
title: Learning jQuery
date: 2015-12-25
key-words:
    - jQuery
tags:
    - jquery
    - front end
    - js
...

Learning's jQuery
================

[jQuery Books](http://book.learningjquery.com/)

## Getting Started

Words

:   #. WWW
    #. CSS
    #. jQuery

What jQuery does

:   #. Access elements in a document: `$('div.content').find('p');`{.javascript}
    #. Modify the appearance of a web page: `$('ul > li:first').addClass('active');`{.javascript}
    #. Alter the content of a document: `$('#container').append('<a href="more.html">more</a>);'`{.javascript}
    #. Respond to a user's interaction:

        ```javascript
        $('button.show-details').click(function() {
            $('div.details').show();
        });
        ```

    #. Animate changes being made to a document: `$('div.details').slideDown();`{.javascript}
    #. Retrieve information from a server without refreshing a page: `$('div.details').load('more.html #content');`{.javascript}
    #. Simplify common JavaScript tasks:

        ```javascript
        $.each(obj, function(key, value) {
            total += value;
        });
        ```

Why jQuery works well

:   #. Leverage knowledge of CSS
    #. Support extensions
    #. Abstract away browser quirks
    #. Always work with sets
    #. Allow multiple actions in one line

Development Tools

:  #. Firebug
:  #. Chrome Developer Tools

## Selecting Elements

`$()`{.javascript}

:   #. tag name: `p { }`{.css}
    #. id: `#id { }`{.css}
    #. class: `.class { }`{.css}
    #. more CSS selectors
        i. `#selected-plays > li { }`{.css}
        #. `#selected-plays li:not(.horizontal)`{.css}
    #. attribute selectors
        i. `img[alt] { }`{.css}
        #. `a[href^="mailto:"]`{.css}
            - `^=` (start with)
            - `$=` (end with)
            - `*=` (contains)
    #. custom selectors
        i. `$('div.horizontal:eq(1)')`{.javascript} (0-based) *vs.* `div:nth-child(1)`{.css} (1-based)
        #. `tr:even`{.css}
        #. `tr:nth-child(odd)`{.css}
        #. `tr:contains(Henry)`{.css}
        #. `nth-child(f(n))`{.css}, n->`{0..INF}`, f(n)->`{1..INF, -INF..-1}`
    #. form selectors
        i. `input[type="radio"]:checked`{.css}
        #. `input[type="password"]`{.css}

DOM traversal methods

:   #. `$('tr')`{.javascript} == `$('tr', this)`{.javascript} -> `$(this).find(tr)`{.javascript}
    #. `$('tr').filter(':even').addClass('alt');`{.javascript}
    #. example

        ```css
        a.external {
            background: #fff url(images/external.png) no-repeat 100% 2px;
            padding-right: 16px;
        }
        ```

        ```javascript
        $('a').filter(function() {
            return this.hostname && this.hostname != location.hostname;
        }).addClass('external');
        ```

    #. `next()`{.javascript}, `nextAll()`{.javascript},
       `nextAll().addBack()`{.javascript}, `parent()`{.javascript},
       `parent().children()`{.javascript},
    #. chaining

        ```javascript
        $('td:contains(Henry)')
            .parent()
            .find('td:eq(1)')           // Find the 2nd descendant cell
                .addClass('highlight')
                .end()                  // Return to the parent
            .find('td:eq(2)')           // Find the 3rd descendant cell
                .addClass('highlight');
        ```
    #. `$().get(0)`{.javascript} == `$()[0]`{.javascript}

## Handling Events

callback functions

:   ```javascript
    function doStuff() {
        // ...
    }
    ```

    ```html
    // *eval* a function when onload
    <body onload="doStuff();">
    ```

    or

    ```javascript
    window.onload = doStuff;
    ```

document ready:

:   ```javascript
    $(document).ready(function() {
        // ...
    });

    // same but shorter
    $(function() {
        // ...
    });

    jQuery(document).ready(function($) {
        // here, we can use $ like normal!
    });
    ```

actions:

:   ```javascript
    $().on( 'click', cb )

    $().addClass('className');
    $().removeClass('className');
    $().removeClass().addClass('className'); // remove all, then add one

    $().toggleClass('className');
    ```

`$(this)`{.javascript}, `this`{.javascript}:

:   The jQuery constructor accepts a 2nd parameter called **context** which can be
    used to override the context of the selection.

    `jQuery("img", this);`{.javascript} --> `jQuery(this).find("img");`{.javascript}

    - `this`, 表示当前的上下文对象是一个 **html 对象**，可以调用 html 对象所拥
      有的属性，方法;
    - `$(this)`, 代表的上下文对象是一个 jQuery 的上下文对象，可以调用 jQuery 的
      方法和属性值

    refs and see also

     - [javascript - $(this) selector and children? - Stack Overflow](http://stackoverflow.com/questions/306583/this-selector-and-children)
     - [Jquery中的this与$(this) - Chris.gong - 博客园](http://www.cnblogs.com/iceWolf/archive/2009/08/27/1555138.html)

Event propagation

:   ![capturing (to leaf) & bubbling (to root)](http://whudoc.qiniudn.com/event-propagation.png)

    #. event bubbling
    #. event bubbles up

    ```javascript
    $().click(function() {
        if (event.target == this) {
            // ...
            event.preventDefault();
            event.stopPropagation();
        }

        // return <propagate?>
    });

    // event.target is a html object, if (event.target == this) ...
    :? $(event.target).is('button');
    :? $(event.target).hasClass('className');

    $().hover(function(){
        // entering
    }, function(){
        // leaving
    });

    // remove an event handler
    $().off('click'); // 这种就把所有的 handler 都 remove 了

    $().on('click.namespace', cb); // event can be *named* to a namespace
    $().on(event, target, cb);

    // remove event handler
    $().off('click.namespace');

    $().one('click', cb);

    $().trigger('click');
    ```

`event.stopPropagation();`{.javascript} *vs.* `return false;`{.javascript}

:   有点不一样。

    `return false`{.javascript} calls both

      - `event.preventDefault()`{.javascript} and
      - `event.stopPropagation()`{.javascript}

    `preventDefault`{.javascript}
    `event.stopPropagation()`{.javascript}


kbds

:   - <a id="switcher-dents" href="http://tangzx.qiniudn.com/dents.html">dents</a>
    - <a id="switcher-notes" href="http://tangzx.qiniudn.com/notes.html">notes</a>
    - <a id="switcher-links" href="http://tangzx.qiniudn.com/links.html">links</a>

    ```javascript
    $(document).ready(function() {

        var triggers = {
            D: 'dents',
            N: 'notes',
            L: 'links'
        };

        $(document).keyup(function(event) {
            var key = String.fromCharCode(event.which);
            if (key in triggers) {
                $('#switcher-' + triggers[key]).click();
            }
        });

    });
    ```

    `mousedown`, `mouseup`

    不管用不用 jQuery，都是要处理 event 里面的 which。

## Styling and Animating

```javascript
// get one
.css('property') // returns "value"

// get multi
.css(['p1', 'p2']) // returns {'p1': 'v1', 'p2': 'v2'}

// set multi
.css({
    k: v
    ...
})

// example
$(document).ready(function() {
    var $speech = $('div.speech');
    $('#switcher-large').click(function() {
        var num = parseFloat($speech.css('fontSize'));
        num *= 1.4;
        $speech.css('fontSize', num + 'px');
    });
})

// parseFloat 是 js built-in。
```

用 jQuery 的 `.css`{.javascript} 的好处？

:   再不用一个一个手工处理兼容性：

    ```css
    -webkit-property-name: value;
    -moz-property-name: value;
    -ms-property-name: value;
    -o-property-name: value;
    property-name: value;
    ```

    `.css('propertyName', 'value')`{.javascript}

Effects

:   ```javascript
    hide(); show(); // default -> 400ms
    hide('slow');   // slow    -> 600ms
    show('fast');   // fast    -> 200ms
    show(850);      // specified
    ```

more effects

  - `fadeIn()`{.javascript}, (show)
  - `fadeOut()`{.javascript}, (hide)
  - `fadeTo('fast', 0.8)`{.javascript}
  - `slideUp()`{.javascript}, (hide)
  - `slideDown()`{.javascript}, (show)

```javascript
$('a.more').click(function(event) {
    event.preventDefault();
    if ($firstPara.is(':hidden')) {
        $firstPara.fadeIn('slow');
        $(this).text('read less');
    } else {
        $firstPara.fadeOut('slow');
        $(this).text('read more');
    }
};
```

cerating custom animations

:   ```javascript
    // 1
    .animate({
        property1: 'value1',
        property2: 'value2'
    }, duration, easing, function() {
        alert('The animation is finished.');
    });

    // 2
    .animate({properties}, {options});
    /*
        options, e.g.:
            duration: 'value',
            easing: 'value',
            specialEasing: {
                property1: 'easing1',
                property2: 'easing2'
            },
            queue: true,
            step: callback,
            complete: function() {
                alert('The animation is finished.');
            }
    */
    ```

    For example, adjusting the `left` property will have no effect on the
    matching elements unless those elements have their CSS position set to
    `relative` or `absolute`. The default CSS position for all block-level
    elements is `static`, which accurately describes how those elements will
    remain if we try to move them without first changing their position value.

## Positioning with CSS

position

  - static
  - absolute
  - relative
  - fixed

`position: absolute;`

  - `top: 50px;`
  - `bottom: 50px;`
  - `left: 50px;`
  - `right: 50px;`

relative

:   For example, if you have three paragraphs on your web page, and the third
    has a "position: relative" style placed on it, it's position will be offset
    based on it's current location.

    ```htlm
    <p>Paragraph 1.</p>
    <p>Paragraph 2.</p>
    <p style="position: relative;left: 2em;">Paragraph 3.</p>
    ```

    In the above example, the third paragraph will be positioned 2em from the left
    side of the container element, but will still be below the first two
    paragraphs. It would remain in the normal flow of the document, and just be
    offset slightly. If you changed it to position: absolute; anything following it
    would display on top of it, because it would no longer be in the normal flow of
    the document.

fixed: my `footer` in this page, is fixed.

refs and see also

  - [css - Position Relative vs Position Absolute? - Stack Overflow](http://stackoverflow.com/questions/10426497/position-relative-vs-position-absolute)
  - [Absolute vs. Relative - Explaining CSS Positioning](http://webdesign.about.com/od/advancedcss/a/aa061307.htm)
  - [css - Difference between style = "position:absolute" and style = "position:relative" - Stack Overflow](http://stackoverflow.com/questions/4457790/difference-between-style-positionabsolute-and-style-positionrelative) &hearts;
  - [Static vs Relative vs Absolute vs Fixed Positioning](http://www.yorku.ca/nmw/facs1939f13/week02/css_relVSabsVSfixed.html)

```javascript
$switcher.css({
    position: 'relative'
}).animate({
    borderWidth: '5px',
    left: paraWidth - switcherWidth,
    height: '+=20px'
}, 'slow');
```

Simultaneous *vs.* queued effects

```javascript
$switcher
    .css({position: 'relative'})
    .animate({left: paraWidth - switcherWidth}, 'slow')
    .animate({height: '+=20px'}, 'slow')
    .animate({borderWidth: '5px'}, 'slow');

// queued
$switcher
    .css({position: 'relative'})
    .fadeTo('fast', 0.5)
    .animate({left: paraWidth - switcherWidth}, 'slow')
    .fadeTo('slow', 1.0)
    .slideUp('slow')
    .slideDown('slow');

// sync
$switcher
    .css({position: 'relative'})
    .fadeTo('fast', 0.5)
    .animate({
        left: paraWidth - switcherWidth
    }, {
        duration: 'slow',
        queue: false
    })
    .fadeTo('slow', 1.0)
    .slideUp('slow')

$switcher
    .css({position: 'relative'})
    .fadeTo('fast', 0.5)
    .animate({
        left: paraWidth - switcherWidth
    }, {
        duration: 'slow',
        queue: false
    })
    .fadeTo('slow', 1.0)
    .slideUp('slow')
    .queue(function(next) {
        $switcher.css({backgroundColor: '#f00'});
        next();
    })
    .slideDown('slow');
```

http://api.jquery.com/category/effects/

```javascript
$('p').eq(2)
    .css('border', '1px solid #333')
    .click(function() {
        var $clickedItem = $(this);
        $clickedItem.next().slideDown('slow', function() {
            $clickedItem.slideUp('slow');
        });
    });
```

Effects on a single set of elements are:

  - Simultaneous when applied as multiple properties in **a single `animate()` method**
  - Queued when applied in **a chain of methods**, **unless the queue option is set to `false`**

Effects on multiple sets of elements are:

  - Simultaneous by default
  - Queued when applied within the callback of another effect or within the callback of the `.queue()` method

## Manipulating the DOM

```javascript
$('div.chapter a').attr({
    rel: 'external',
    title: 'Learn more at Wikipedia'
});
```

To set a unique id value for each link, we can harness another feature of
jQuery methods such as `.css()` and `.each()` — **value callbacks**.

value callbacks 就是说设置的不是 value，而是一个 callback 函数，可以 eval 得到 value。如下：

```javascript
$(document).ready(function() {
    $('div.chapter a[href*="wikipedia"]').attr({
        rel: 'external',
        title: function() {
            return 'Learn more about ' + $(this).text()
                    + ' at Wikipedia.';
        },
        id: function(index, oldValue) {
            return 'wikilink-' + index;
        }
        });
});
```

The `.attr()`  and  `.prop()` methods are very powerful tools, and with them we
can make targeted changes to the document.

别忘了有些人不用或者有些人的浏览器不支持 javascript，所以不要把网页的内容，都放到 js 里来实现。

`$('<a href="#top">back to top</a>').insertAfter('div.chapter p')`{.html}, 每一个 p 都添加

inserts & pendtos

  - `.insertBefore()`{.javascript} adds content outside of and before existing elements
  - `.prependTo()`{.javascript} adds content inside of and before existing elements
  - `.appendTo()`{.javascript} adds content inside of and after existing elements
  - `.insertAfter()`{.javascript} adds content outside of and after existing elements

```javascript
var $notes = $('<ol id="notes"></ol>').insertBefore('#footer');
$('span.footnote').each(function(index) {
    $('<sup>' + (index + 1) + '</sup>').insertBefore(this);
    $(this).appendTo($notes).wrap('<li></li>');
});
```

Insertion method callbacks

:   `[ '<sup>', index + 1, '</sup>' ].join('')`{.javascript}

coping elements

:   `$('div.chapter p:eq(0)').clone().insertBefore('div.chapter');`{.javascript}

    ```javascript
    $clonedCopy
        .addClass('pulled')
        .find('span.drop')
            .html('&hellip;')
            .end()
        .prependTo($parentParagraph);
    ```

- wrap
    + `.wrap()`{.javascript}
    + `.wrapAll()`{.javascript}
    + `.wrapInner()`{.javascript}
- contents
    + `.html()`{.javascript}
    + `.text()`{.javascript}
- replacements
    + `.replaceAll()`{.javascript}
    + `.replaceWith()`{.javascript}
- removes
    + `.empty()`{.javascript}, remove all children
    + `.remove()`{.javascript}, remove matched (current?)
    + `.detach()`{.javascript}

aJax

:   ```javascript
    $(document).ready(function() {
        $('#letter-a a').click(function(event) {
            event.preventDefault();
            $('#dictionary').load('a.html');
        });
    });
    ```

    ```javascript
    $.load('.html')
    $.getScript('.js');
    $.getJSON('.json');
    $.get('.xml');
    ```

    ```javascript
    $('#dictionary').html(html);

    // $.get(url, callback)
    $.get("demo_ajax_load.txt", function(result){
        $("div").html(result);
    });

    // $.get(url, query)
    $.get("test.php", { name: "John", time: "2pm" } );

    // $.post(URL,data,callback);
    $.post("demo_test_post.asp", {
        name:"Donald Duck",
        city:"Duckburg"
    }, function(data,status){
        alert("Data: " + data + "\nStatus: " + status);
    });

    $(elem).empty();
    $(elem).append($(elem2))

    var formValues = $(this).serialize();

    $('#letter-f form').submit(function(event) {
        event.preventDefault();
        var formValues = $(this).serialize();
        $.get('f.php', formValues, function(data) {
            $('#dictionary').html(data);
        });
    });

    var $loading = $('<div id="loading">Loading...</div>').insertBefore('#dictionary');
    $(document).ajaxStart(function() {
        $loading.show();
    }).ajaxStop(function() {
        $loading.hide();
    });

    $('#dictionary').hide().load('a.html', function() {
        $(this).fadeIn();
    });

    $.get('z.php', requestData, function(data) {
        $('#dictionary').html(data);
    }).fail(function(jqXHR) {
        $('#dictionary').html('An error occurred: ' + jqXHR.status).append(jqXHR.responseText);
    });

    $('h3.term').click(function() {
        $(this).siblings('.definition').slideToggle();
    });
    ```

Security limitations

:   - js
    - iframe

    ```javascript
    $(document.createElement('script'))
        .attr('src', 'http://example.com/example.js')
        .appendTo('head');

    jQuery.parseJSON(obj)
    ```

    Cross-origin resource sharing A more recent technique that has been drafted
    into a W3C specification is Cross-Origin Resource Sharing (CORS). This
    technique requires sending a custom HTTP header from one domain that the other
    domain expects. The receiving domain must send back an
    Access-Control-Allow-Origin response header to the requester saying that the
    domain is accepted. For more information about CORS, visit
    <http://www.w3.org/TR/cors/.http:// www.w3.org/TR/cors/>.

Using JSONP for remote data

:   A PHP implementation of the JSONP technique is quite simple:

    ```php
    <?php
        print($_GET['callback'] .'('. $data .')');
    ?>
    ```

    low-level ajax method

    ```javascript
    $.ajax({
        url: 'a.html',
        success: function(data) {
            $('#dictionary').html(data);
        }
    });
    ```

    http://api.jquery.com/jQuery.ajax

    modifying default options

    ```javascript
    $.ajaxSetup({
        url: 'a.html',
        type: 'POST',
        dataType: 'html'
    });
    $.ajax({
        type: 'GET',
        success: function(data) {
            $('#dictionary').html(data);
        }
    });
    ```

## Using Plugins

<http://www.malsup.com/jquery/cycle/>

```javascript
$(document).ready(function() {
    $('#books').cycle();
})
```

Specifying plugin method parameters

:   ```javascript
    $(document).ready(function() {
        $('#books').cycle({
            timeout: 2000,
            speed: 200,
            pause: true
        });
    });
    ```

Modifying parameter defaults

:   ```javascript
    $.fn.cycle.defaults.timeout = 10000;
    $.fn.cycle.defaults.random = true;
    ```

Custom selectors

<https://github.com/carhartl/jquery-cookie>

`$.cookie('cyclePaused', 'y', {path: '/', expires: 7})`{.javascript}

The jQuery UI plugin library

<http://jqueryui.com/>
<http://api.jqueryui.com/easings/>
`$books.find('.title').resizable();`{.javascript}

Other jQuery UI interactions include Draggable, Droppable, and
Sortable. Like Resizable, they are highly configurable.

```javascript
$('<div id="slider"></div>').slider({
    min: 0,
    max: $('#books li').length - 1
}).appendTo($controls);

var $books = $('#books').cycle({
    timeout: 2000,
    speed: 200,
    pause: true,
    before: function() {
        $('#slider').slider('value', $('#books li').index(this));
    }
});
```

## Developing Plugins

Immediately Invoked Function Expression (IIFE), looks like this:

```javascript
(function($) {
    // ...
})(jQuery);
```

Adding new global functions

e.g.

```javascript
$.ajax()
$.each()
$.map()
$.grep()
```

```javascript
(function($) {

    $.sum = function(array) {
        var total = 0;
        $.each(array, function(index, value) {
            value = $.trim(value);
            value = parseFloat(value) || 0;
            total += value;
        });
        return total;
    };

    $.average = function(array) {
        if ($.isArray(array)) {
            return $.sum(array) / array.length;
        }
        return '';
    };

})(jQuery);
```

Extending the global jQuery object We can also employ an alternate syntax in
defining our functions using the `$.extend()` function:

The options object, Default parameter values

```javascript
(function($) {
    $.fn.shadow = function(opts) {
    var defaults = {
        copies: 5,
        opacity: 0.1
    };
    var options = $.extend(defaults, opts);
        // ...
    };
})(jQuery);
```

Customizable defaults

```javascript
(function($) {
    $.fn.shadow = function(opts) {
        var options = $.extend({}, $.fn.shadow.defaults, opts);
        // ...
    };
    $.fn.shadow.defaults = {
        // ...
    }
```

`$(this).children(':nth-child(4)').text() == topic;`

Combining filtering and striping

More selectors and traversal methods

```javascript
(function($) {

    $.extend($.expr[':'], {
        group: function(element, index, matches, set) {
            var num = parseInt(matches[3], 10);
            if (isNaN(num)) { return false; }
            return index % (num * 2) <num;
        }
    });

})(jQuery);

Especially with client-side scripting, developers can easily fall into the
traps of premature optimization and micro-optimization.  These pitfalls can
cause us to spend countless hours tweaking our code to shave milliseconds off
of JavaScript executio

`$('input:eq(1)')` faster than `$('input').eq(1)`

`next()`, `parent()`, `filter()`, `find()`,
`end()`, `addBack()`,

`if (event.type == 'mouseenter') {`

Event delegation

```javascript
$(document).ready(function() {

    $('#gallery').on('mouseenter mouseleave', 'div.photo', function(event) {
        var $details = $(this).find('.details');
        if (event.type == 'mouseenter') {
            $details.fadeTo('fast', 0.7);
        } else {
            $details.fadeOut('fast');
        }
    });

});
```

Throttling events

<http://learn.jquery.com/events/event-extensions/>


Determining the animation state
if (!$image.is(':animated') || event.type == 'mouseleave') {

Halting a running animation

// stop the current animation, then make another one
$(this).find('img').stop().animate({

.stop() method by default halts animations at their current position
 To mitigate this type of problem, the  .stop() method can accept two Boolean
( true / false ) arguments, the second of which is known as  goToEnd . If we set this
argument to  true , the current animation not only stops, but also jumps immediately
to the final value.

Another jQuery method, .finish(), is available for halting
animations. It's similar to .stop(true, true) in that it clears
all queued animations and jumps the current animation to the final
value. However, unlike .stop(true, true), it jumps all the queued
animations to their final values as well.

Using global effect properties

$.fx

$('#fx-toggle').show().on('click', function() {
    $.fx.off = !$.fx.off;
});


Each time an animation method is called, jQuery goes through the following steps to
determine the duration of the effect, in this order:

1. It checks if  $.fx.off is  true . If so, it sets the duration to  0 .
2. It checks if the duration passed is a number. If so, it sets the duration to that number of milliseconds.
3. It checks if the duration pass matches one of the property keys of the  $.fx.  speeds object. If so, it sets the duration to the value of the property.
4. If the duration is not set by any of the above checks, it sets the duration to the value of  $.fx.speeds._default .

$.fx.speeds._default = 250;

$.fx.speeds.crawl = 1200

Multiproperty easing

Taking fine-grained control of animations

The requestAnimationFrame() approach to animations is usually
preferable to setTimeout(). However, because of potential conflicts
when the two are used in the same code, requestAnimationFrame()
is not implemented in the jQuery core library.

## Advanced DOM Manipulation

progressive enhancement.

$(document).ready(function() {
$('#my-data th a').click(function(event) {
event.preventDefault();
$('#my-data tbody').load($(this).attr('href'));
});
});


, graceful degradation.
$(document).ready(function() {
var $table1 = $('#t-1');
var $headers = $table1.find('thead th').slice(1);
$headers
.wrapInner('<a href="#"></a>')
.addClass('sort');
});

supply a comparator function to the  .sort() method:
arr.sort(function(a,b) {
if (a < b) {
return -1;
}
if (a > b) {
return 1;
}
return 0;
});

next apply this  .sort() method to our table rows.

Using HTML5 custom data attributes

<table id="t-2" class="sortable">
<thead>
<tr>
<th></th>
<th data-sort='{"key":"title"}'>Title</th>
<th data-sort='{"key":"authors"}'>Author(s)</th>
<th data-sort='{"key":"publishedYM"}'>Publish Date</th>
<th data-sort='{"key":"price"}'>Price</th>
</tr>
</thead>
<tbody>
<tr data-book='{"img":"2862_OS.jpg",
"title":"DRUPAL 7","authors":"MERCER DAVID",
"published":"September 2010","price":44.99,
"publishedYM":"2010-09"}'>
<td><img src="images/2862_OS.jpg" alt="Drupal 7"></td>
<td>Drupal 7</td>
<td>David Mercer</td>
<td>September 2010</td>
<td>$44.99</td>
</tr>
<!-- code continues -->
</tbody>
</table>

$headers.on('click', function(event) {
event.preventDefault();
var $header = $(this),
sortKey = $header.data('sort').key,
sortDirection = 1;
if ($header.hasClass('sorted-asc')) {
sortDirection = -1;
}
rows.sort(function(a, b) {
var keyA = $(a).data('book')[sortKey];
var keyB = $(b).data('book')[sortKey];
if (keyA < keyB) return -sortDirection;
if (keyA > keyB) return sortDirection;
return 0;
});

Sorting and building rows with JSON

Although we are lovingly crafting our table rows by hand with
these two functions, JavaScript template systems such as Mustache
(https://github.com/janl/mustache.js) and Handlebars
(http://handlebarsjs.com/) could do a lot of the string processing
and concatenation for us. Using templates can be especially beneficial as
the size and complexity of a project grows.

function prepRows(rows) {
$.each(rows, function(i, row) {
var authors = [],
authorsFormatted = [];
rows[i].titleFormatted = row.title;
rows[i].title = row.title.toUpperCase();
$.each(row.authors, function(j, auth) {
authors[j] = auth.last_name + ' ' + auth.first_name;
authorsFormatted[j] = auth.first_name + ' '
+ auth.last_name;
});
rows[i].authorsFormatted = authorsFormatted.join(', ');
rows[i].authors = authors.join(' ').toUpperCase();
});
return rows;
}

---------------               ----------------------       --------------------------------------------------------------
Hook type                     Method altered               Example usage

`$.attrHooks`{.javascript}    `.attr()`{.javascript}       Prevents the  type attribute of an element from being changed.

`$.cssHooks`{.javascript}     `.css()`{.javascript}        Provides special handling for opacity in Internet Explorer.

`$.propHooks`{.javascript}    `.prop()`{.javascript}       Corrects the behavior of the selected property in Safari.

`$.valHooks`{.javascript}     `.val()`{.javascript}        Allows radio buttons and checkboxes to report a consistent value across browsers.
---------------               ----------------------       --------------------------------------------------------------

```javascript
(function($) {
var div = document.createElement('div');
$.support.textShadow = div.style.textShadow === '';
$.support.filter = div.style.filter === '';
div = null;
if ($.support.textShadow) {
$.cssHooks.glowColor = {
set: function(elem, value) {
if (value == 'none') {
elem.style.textShadow = '';
}
else {
elem.style.textShadow = '0 0 2px ' + value;
}
}
};
}
else {
$.cssHooks.glowColor = {
set: function(elem, value) {
if (value == 'none') {
elem.style.filter = '';
}
else {
elem.style.zoom = 1;
elem.style.filter =
'progid:DXImageTransform.Microsoft' +
'.Glow(Strength=2, Color=' + value + ');';
}
}
};
}
})(jQuery);
```

<https://github.com/brandonaaron/jquery-cssHooks>

## Advanced Ajax

$(document).ready(function() {
var $ajaxForm = $('#ajax-form'),
$response = $('#response');
$ajaxForm.on('submit', function(event) {
event.preventDefault();
$response.load('http://api.jquery.com/ #content',
$ajaxForm.serialize());
});
});

$.ajax({
url: 'http://book.learningjquery.com/api/',
dataType: 'jsonp',
data: {
title: $('#title').val()
},
success: function(data) {
console.log(data);
}
});

$ajaxForm.on('submit', function(event) {
event.preventDefault();
$.ajax({
url: 'http://book.learningjquery.com/api/',
dataType: 'jsonp',
data: {
title: $('#title').val()
},
success: response,
error: function() {
$response.html(failed);
}
});
});
});

Ajax promises

Using the promise's methods, we can rewrite our  $.ajax() call to replace the
success and error callbacks with an alternate syntax:


$.ajax({
url: 'http://book.learningjquery.com/api/',
dataType: 'jsonp',
data: {
title: $('#title').val()
},
timeout: 15000
})
.done(response)
.fail(function() {
$response.html(failed);
});

$ajaxForm.on('submit', function(event) {
event.preventDefault();
$response.addClass('loading').empty();
$.ajax({
url: 'http://book.learningjquery.com/api/',
dataType: 'jsonp',
data: {
title: $('#title').val()
},
timeout: 15000
})
.done(response)
.fail(function() {
$response.html(failed);
})

.always(function() {
$response.removeClass('loading');
});
});

- Caching responses
- Throttling Ajax requests

Adding Ajax prefilters

$.ajaxPrefilter(function(options) {
if (/\.yml$/.test(options.url)) {
return 'yaml'; // set datatype to yaml
}
});

Defining alternate transports

<t http://www.verious.com/tool/is-my-image-loaded>

## Append A, JavaScript Closures


Handling interactions between closures

When a reference to an inner function finds its way outside of the scope in which
the function was defined, this creates a closure on that function. We call variables
that are neither parameters nor local to the inner function's free variables, and the
environment of the outer function call closes them. Essentially, the fact that the
function refers to a local variable in the outer function grants the variable a stay of
execution. The memory is not released when the function completes, as it is still
needed by the closure.

The fact that most jQuery code is inside a function body is useful, because this can
protect against some namespace collisions. For example, it is this feature that allows
us to use  jQuery.noConflict() to free up the  $ shortcut for other libraries while
still being able to define the shortcut locally for use within our  .ready() handler.

$(document).ready(function() {
for (var i = 0; i < 5; i++) {
(function(value) {
$('<div>Print ' + value + '</div>')
.click(function() {
console.log(value);
}).insertBefore('#results');
})(i);
}
});

$(document).ready(function() {
for (var i = 0; i < 5; i++) {
$('<div>Print ' + i + '</div>')
.on('click', {value: i}, function(event) {
console.log(event.data.value);
}).insertBefore('#results');
}
});

## Append B, Testing JavaScript with QUnit

<http://qunitjs.com/>

Introduction to unit testing ( http://qunitjs.com/intro/ )
•  QUnit Cookbook ( http://qunitjs.com/cookbook/ )
•  The jQuery Test-Driven Development article by Elijah Manor ( http://msdn.
microsoft.com/en-us/scriptjunkie/ff452703.aspx )
•  The Unit Testing Best Practices article by Bob McCune ( http://www.
bobmccune.com/2006/12/09/unit-testing-best-practices/ )
Many books on the topic also exist, such as Test Driven Development: By Exam

## append c, quick ref

Selector expressions

  - Simple CSS
  - Position among siblings
  - Position among matched elements
  - Attributes
  - Forms
  - Miscellaneous selectors

DOM traversal methods

  - Filtering
  - Descendants
  - Siblings
  - Ancestors
  - Collection manipulation
  - Working with selected elements

Event methods

  - Binding
  - Shorthand binding
  - Triggering
  - Shorthand triggering
  - Utility

Effect methods

  - Predefined effects

Ajax methods

  - Issuing requests
  - Request monitoring
  - Configuration
  - Utilities

Deferred objects

  - $.Deferred...
