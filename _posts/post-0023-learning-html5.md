---
title: Learning HTML5
date: 2014-04-19
keywords:
tags:
    - html5
    - docs
    - readings
...

Learning HTML5
==============

HTML5 Introduction
------------------

What is HTML5?

:   * latest standard for HTML
    * designed to replace both HTML 4, XHTML, and the HTML DOM Level 2
    * designed to deliver rich content without the need for additional plugins
    * cross-platform

How Did HTML5 Get Started?

:   cooperation between `W3C` and `WHATWG`[^whatwg]

[^whatwg]: Web Hypertext Application Technology Working Group (WHATWG)

DOCTYPE declaration

:    only one and it is very simple: `<!DOCTYPE html>`{.html}

Example

```html
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Title of the document</title>
    </head>
    <body>
        Content of the document......
    </body>
</html>
```
New Features

:   * The `<canvas>`{.html} element for 2D drawing
    * The `<video>`{.html} and `<audio>`{.html} elements for media playback
    * Support for local storage
    * New content-specific elements
        + `<article>`{.html}
        + `<footer>`{.html}
        + `<header>`{.html}
        + `<nav>`{.html}
        + `<section>`{.html}
    * New form controls, like `calendar`{.html}, `date`{.html}, `time`{.html}, `email`{.html}, `url`{.html}, `search`{.html}

HTML5 New Elements
------------------

Why new elements?

:   * Today, several elements in HTML 4.01 are **obsolete**, never used, or not used the way they were intended.
      All those elements are **removed or re-written** in HTML5.
    * new elements for **drawing graphics**, **displaying media content**,
      for better **page structure** and better **form handling**,
      and several **new APIs for drag and drop**,
      for finding your geological location,
      for **storing local data**, **and more**.

The New `<canvas>`{.html} Element

New Media Elements

* `<audio>`{.html} : Defines sound or music content
* `<video>`{.html}: Defines video or movie content
* `<source>`{.html}: Defines sources for `<video>`{.html} and `<audio>`{.html}
* `<track>`{.html}: Defines tracks for `<video>`{.html} and `<audio>`{.html}
* `<embed>`{.html}: Defines containers for external applications (like plug-ins)

New Form Elements

* `<datalist>`{.html}
* `<keygen>`{.html}
* `<output>`{.html}

New Semantic/Structural Elements

* `<header>`{.html}
* `<hgroup>`{.html}
* `<nav>`{.html}
* `<section>`{.html}
* `<main>`{.html}
* `<article>`{.html}
* `<aside>`{.html}
* `<footer>`{.html}
* `<details>`{.html}
* `<summary>`{.html}
* `<figure>`{.html}
* `<figcaption>`{.html}
* `<mark>`{.html}
* `<time>`{.html}
* `<bdi>`{.html}
* `<wbr>`{.html}
* `<dialog>`{.html}
* `<command>`{.html}
* `<meter>`{.html}
* `<progress>`{.html}
* `<ruby>`{.html}
* `<rt>`{.html}
* `<rp>`{.html}

Removed Elements

* `<acronym>`{.html}
* `<applet>`{.html}
* `<basefont>`{.html}
* `<big>`{.html}
* `<center>`{.html}
* `<dir>`{.html}
* `<font>`{.html}
* `<frame>`{.html}
* `<frameset>`{.html}
* `<noframes>`{.html}
* `<strike>`{.html}
* `<tt>`{.html}

HTML5 Semantic Elements

Semantic Elements

:   A semantic element **clearly describes its meaning to both the browser and the developer**

    * non-semantic elements like `<div>`{.html} and `<span>`{.html} tells nothing about its content.
    * semantic elements: `<form>`{.html}, `<table>`{.html}, and `<img>`{.html}, clearly defines its content.

New Semantic Elements in HTML5

* `<header>`{.html}
* `<nav>`{.html}
* `<section>`{.html}
* `<article>`{.html}
* `<aside>`{.html}
* `<figure>`{.html}
* `<figcaption>`{.html}
* `<footer>`{.html}
* `<details>`{.html}
* `<summary>`{.html}
* `<mark>`{.html}
* `<time>`{.html}

HTML5 Forms

HTML5 `<input>`{.html} Types

* `color`: `<input type="color" name="favcolor">`{.html}
* `date`, `datetime`, `datetime-local`: `<input type="datetime-local" name="name">`{.html}
* `number`: `<input type="number" name="quantity" min="1" max="5">`{.html}
* `range`(slider): `<input type="range" name="points" min="1" max="10">`{.html}
* `search`, `tel`(telephone num), `time`, `url`, `week`,  `month`

HTML5 Form Elements

`<datalist>`{.html}

:   ```html
    <input list="browsers">
    <datalist id="browsers">
        <option value="Internet Explorer">
        <option value="Firefox">
        <option value="Chrome">
        <option value="Opera">
        <option value="Safari">
    </datalist>
    ```

`<keygen>`{.html}

:   ```html
    <form action="demo_keygen.asp" method="get">
        Username: <input type="text" name="usr_name">
        Encryption: <keygen name="security">
        <input type="submit">
    </form>
    ```

`<output>`{.html}

:   ```html
    <form oninput="x.value=parseInt(a.value)+parseInt(b.value)">0
        <input type="range"  id="a" value="50">100 +
        <input type="number" id="b" value="50">=
        <output name="x" for="a b"></output>
    </form>
    ```

    <form oninput="x.value=parseInt(a.value)+parseInt(b.value)">0
        <input type="range"  id="a" value="50">100 +
        <input type="number" id="b" value="50">=
        <output name="x" for="a b"></output>
    </form>

HTML5 Form Attributes

:   * New attributes for `<form>`{.html}: `autocomplete`, `novalidate`
    * New attributes for `<input>`{.html}:
      `autocomplete`{.css} `autofocus`{.css} `form `{.css} `formaction `{.css} `formenctype `{.css}
      `formmethod `{.css} `formnovalidate `{.css} `formtarget `{.css} `height`{.css} `width`{.css}
      `list`{.css} `min`{.css} `max`{.css} `multiple`{.css} `pattern (regexp)`{.css} `placeholder`{.css}
    * `<input>`{.html} formmethod Attribute

        ```html
        <form action="demo_form.asp" method="get">
            First name: <input type="text" name="fname"><br>
            Last name:  <input type="text" name="lname"><br>
            <input type="submit" value="Submit">
            <input type="submit" formmethod="post" formaction="demo_post.asp"
            value="Submit using POST">
        </form>
        ```

## HTML5 Graphics

`<Canvas>`{.html}

:   only a container for graphics, you must use a script to actually draw the graphics


HTML5 Inline SVG

:   What is SVG?

    * SVG stands for **Scalable Vector Graphics**
    * SVG is used to **define vector-based graphics** for the Web
    * SVG **defines the graphics in XML format**
    * SVG graphics do **NOT lose any quality** when zoomed or resized
    * Every element and every attribute in SVG files can be **animated**
    * SVG is a **W3C recommendation**

    SVG Advantages

    * SVG images can be created and edited with any text editor
    * SVG images can be searched, indexed, scripted, and compressed
    * SVG images are scalable
    * SVG images can be printed with high quality at any resolution
    * SVG images are zoomable (without degradation)

    Differences Between SVG and Canvas

    * SVG is a language for describing 2D graphics in XML.
    * Canvas draws 2D graphics, on the fly (with a JavaScript).
    * SVG is XML based, which means that every element is available within the SVG DOM.
      You can attach JavaScript event handlers for an element.

    Comparison of Canvas and SVG

## HTML5 Media

HTML5 Video

:   ```html
    <video width="512" height="288" controls>
        <source src="game-of-throne.mp4" type="video/mp4">
        <source src="fallback.ogg" type="video/ogg">
        Your browser does not support the video tag.
    </video>
    ```

    <!--
    <source src="http://whudoc.qiniudn.com/game-of-throne.mp4" type="video/mp4">
    -->

    <video width="512" height="288" controls>
    <source src="game-of-throne.mov" type="video/mov">
    Your browser does not support the video tag.
    </video>

    Video Formats and Browser Support: MP4, WebM, and Ogg

    * MIME Types for Video Formats
        + MP4: `video/mp4`
        + WebM: `video/webm`
        + Ogg: `video/ogg`
    * HTML5 `<video>`{.html}, DOM Methods and Properties
        + `<video>`{.html}
        + `<source>`{.html}
        + `<track>`{.html}: define text tracks in media player

HTML5 Audio

:   ```html
    <audio controls>
        <source src="horse.ogg" type="audio/ogg">
        <source src="horse.mp3" type="audio/mpeg">
        Your browser does not support the audio element.
    </audio>
    ```

    <audio controls>
    <source src="crab.wav" type="audio/ogg">
    </audio>

    Audio Formats and Browser Support: MP3, Wav, and Ogg

    * MIME Types for Audio Formats
        + MP3: `audio/mpeg`
        + Ogg: `audio/ogg`
        + Wav: `audio/wav`
    * HTML5 Audio Tags: `<audio>`{.html}, `<source>`{.html}


## HTML5 APIs

HTML5 Geolocation

:   ```html
    <script>
    var x = document.getElementById("demo");

    function getLocation( ) {
        if ( navigator.geolocation ) {
            navigator.geolocation.getCurrentPosition( showPosition );
        } else {
            x.innerHTML = "Geolocation is not supported by this browser.";
        }
    }

    function showPosition(position) {
        x.innerHTML = "Latitude: "  + position.coords.latitude +
                  "<br>Longitude: " + position.coords.longitude;
    }
    </script>
    ```

    * Handling Errors and Rejections
    * Displaying the Result in a Map

        ```javascript
        function showPosition(position) {
            var latlon = position.coords.latitude + ","
                       + position.coords.longitude;
            var img_url = "http://maps.googleapis.com/maps/api/staticmap?center="
                        + latlon + "&zoom=14&size=400x300&sensor=false";
            document.getElementById( "mapholder" ).innerHTML = "<img src='"
                                                             + img_url + "'>";
        }
        ```

        + `getCurrentPosition()`{.javascript}
        + `watchPosition()`{.javascript}

HTML5 Drag and Drop

:   Make an Element Draggable(default): `<img draggable="true">`{.html},
    see [example](http://www.w3schools.com/html/tryit.asp?filename=tryhtml5_draganddrop)

HTML5 Web Storage

:   With HTML5, web pages can store data locally within the user's browser.
    Earlier, this was done with `cookies`. However, Web Storage is **more secure and faster**.
    The data is not included with every server request, but used ONLY when asked for.
    It is also possible to store large amounts of data, without affecting the website's performance.

    * The data is stored in `name/value` pairs, and a web page can only access data stored by itself.
    * Unlike cookies, the storage limit is far larger (at least 5MB) and information is never transferred to the server.
    * HTML5 Web Storage Objects
        + window.localStorage - stores data with no expiration date
        + code.sessionStorage - stores data for one session (data is lost when the tab is closed)
        + The localStorage Object

            ```javascript
            // Store
            localStorage.setItem( "lastname", "Smith" );
            // Retrieve
            document.getElementById( "result" ).innerHTML =
                localStorage.getItem( "lastname" );
            // Store
            localStorage.lastname = "Smith";
            // Retrieve
            document.getElementById( "result" ).innerHTML =
                localStorage.lastname;
            localStorage.removeItem( "lastname" );
            ```

        + The sessionStorage Object

[HTML5 Application Cache](http://www.w3schools.com/html/html5_app_cache.asp)

What is Application Cache?

:   HTML5 introduces `application cache`, which means that a web application is cached,
    and accessible without an internet connection.

    3 advantages: `Offline browsing`, `Speed`, `Reduced server load`

    HTML5 Cache Manifest Example

    ```html
    <!DOCTYPE HTML>
    <html manifest="demo.appcache">
    <body>
    The content of the document......
    </body>
    </html>
    ```

    The Manifest File
      ~ a simple text file, which tells the browser what to cache (and what to never cache)
      ~ has three sessions: `CACHE MANIFEST` + `NETWORK` + `FALLBACK`

    Updating the Cache

    HTML5 Web Workers
      ~ When executing scripts in an HTML page,
        the page becomes unresponsive until the script is finished.
      ~ A web worker is a JavaScript that runs in the background,
        independently of other scripts, without affecting the performance of the page.
        You can continue to do whatever you want: clicking, selecting things, etc.,
        while the web worker runs in the background.

    [HTML5 Server-Sent Events](http://www.w3schools.com/html/html5_serversentevents.asp)
      ~ Server-Sent Events - One Way Messaging
      ~ A server-sent event is when a web page automatically gets updates from a server.
      ~ This was also possible before, but the web page would have to ask if any updates were available.
        With server-sent events, the updates come automatically.

---

Refs

#. [W3C School][w3c-official]
#. [HTML5 Introduction](http://www.w3schools.com/html/html5_intro.asp)
#. [HTML5 New Elements](http://www.w3schools.com/html/html5_new_elements.asp)
#. [HTML5 Semantic Elements](http://www.w3schools.com/html/html5_semantic_elements.asp)
#. [HTML5 `<input>`{.html} Types](http://www.w3schools.com/html/html5_form_input_types.asp)
#. [HTML5 Form Elements](http://www.w3schools.com/html/html5_form_elements.asp)
#. [HTML5 `<Canvas>`{.html}](http://www.w3schools.com/html/html5_canvas.asp)
#. [Canvas Reference](http://www.w3schools.com/tags/ref_canvas.asp)
#. [HTML5 Inline SVG](http://www.w3schools.com/html/html5_svg.asp)

[w3c-official]: http://www.w3schools.com/html/default.asp
