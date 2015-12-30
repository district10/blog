% Learning jQuery
% TANG ZhiXiong
% 2015-12-25

Learning jQuery
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
    #. Alter the content of a document: `$('#container').append('<a href="more.html">more</a>'`{.javascript}
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
        #. `a[href^="mailto:"]`{.css}, `^=` (start with), `$=` (end with)
    #. custom selectors
        i. `$('div.horizontal:eq(1)')`{.javascript} &larr; `div:nth-child(1)`{.css}
        #. `tr:even`{.css}
        #. `tr:nth-child(odd)`{.css}
        #. `tr:contains(Henry)`{.css}
    #. form selectors
        i. `input[type="radio"]:checked`
        #. `input[type="password"]`

 DOM traversal methods

 :   #. `$('tr').filter(':even').addClass('alt');`
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

    #. `next()`, `nextAll()`, `nextAll().addBack()`, `parent()`, `parent().children()`,
    #. chaining

        ```javascript
        $('td:contains(Henry)') // Find every cell containing "Henry"
            .parent() // Select its parent
            .find('td:eq(1)') // Find the 2nd descendant cell
                .addClass('highlight') // Add the "highlight" class
                .end() // Return to the parent of the cell containing "Henry"
            .find('td:eq(2)') // Find the 3rd descendant cell
                .addClass('highlight'); // Add the "highlight" class
        ```
    #. `$().get(0)`, `$()[0]`

## Handling Events

```javascript
function doStuff() {
    // Perform a task...
}
```

```html
<body onload="doStuff();">
```

or

```
window.onload = doStuff;
```

```
// ready then do
$(document).ready(function() {
    // our code
});

// same but shorter
$(function() {
    // our code
});

jQuery(document).ready(function($) {
    // In here, we can use $ like normal!
});
```

```
$().on( 'click', cb )

$().addClass('className');
$().removeClass('className');
$().removeClass().addClass('className'); // remove all, then add one

$().toggleClass('className');
```

Event propagation

![](http://whudoc.qiniudn.com/event-propagation.png)


#. event bubbling
#. event bubbles up

```
$().click(function() {
    if (event.target == this) {
        // ...
        event.preventDefault();
        event.stopPropagation();
    }

    // return <propagate?>
});

? $(event.target).is('button');
? $(event.target).hasClass('className');

$().hover(function(){
    // yes
}, function(){
    // no
});

// remove an event handler
$().off('click'); // 这种就把所有的 handler 都 remove 了

$().on('click.name', cb);
$().off('click.name'); // remove only this handler
$().on('click.name', cb); // add back (rebind)

$().one('click', cb);

$().trigger('click');
```


KBD

```
$(document).ready(function() {

    var triggers = {
        D: 'default',
        N: 'narrow',
        L: 'large'
    };

    $(document).keyup(function(event) {
        var key = String.fromCharCode(event.which);
        if (key in triggers) {
            $('#switcher-' + triggers[key]).click();
        }
    });

});
```

## Styling and Animating
