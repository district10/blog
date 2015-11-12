% Learning HTML
% TANG ZhiXiong
% 2014-02-12

Learning HTML
=============

HTML Introduction
-----------------

What is HTML?

:   * HTML stands for **Hyper Text Markup Language**
    * **Markup language**, A markup language is a set of markup tags
    * Tags: describe document content
    * HTML documents contain **HTML tags** and **plain text**
    * HTML documents also called **web pages**

HTML Tags

:   * `<tagname>content</tagname>`{.html}
    * opening/closing tags, or start/end tags

HTML Elements

:   `HTML element` = `HTML tags` + `contents within`

HTML Page Structure: `nested`

HTML Versions

| Version | Year |
| :--- | :---: |
| HTML | 1991 |
| HTML+ | 1993 |
| HTML 2.0 | 1995 |
| HTML 3.2 | 1997 |
| HTML 4.01 | 1999 |
| XHTML | 2000|
| HTML5 | 2012 |

`<!DOCTYPE>`{.html} Declaration

:   * **helps the browser to display a web page correctly.**
    * **Common Declarations**
    * HTML5: `<!DOCTYPE html>`
    * HTML 4.01

        ```html
        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
        ```
            
    * XHTML 1.0

        ```html
        <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
        ```
    
    * for more, see [**DOCTYPE Reference**][doctype-reference]

HTML Basic
----------

HTML Headings

:   `<h1>`{.html} to `<h6>`{.html}

HTML Paragraphs

:   `<p>`{.html} and `</p>`{.html}

HTML Links

:   `<a href="http://www.w3schools.com">This is a link</a>`{.html}

HTML Images

:   `<img src="w3schools.jpg" alt="W3Schools.com" width="104" height="142">`{.html}

HTML Elements

:   * `HTML Element` = `start tag` + `Element content` + `end tag`
    * Syntax
        + start  / opening tag, and end /closing tag
        + Most **HTML elements** can have **attributes**
        + some may have **empty content**
        + can be **nested**
    * **Notice**
        + Don't Forget the End Tag
        + Empty HTML Elements: `<br>`{.html} (line break) is an empty element **without a closing tag**
    * HTML Tip: Use **Lowercase** Tags, though it's not case sensitive

HTML Attributes

:   * specified in the start tag
    * come in **`name/value` pairs**
    * notice: Always `Quote` Attribute Values, `Double style quotes`: most common, `single style quotes`: also allowed.
    * [HTML Tag Reference](http://www.w3schools.com/tags/default.asp)
    * `<hr>`{.html}: horizontal line
    * `<!-- This is a comment -->`{.html} : HTML Comments, will not be rendered, 
    * `<!--...-->`{.html} $\leftarrow$ `Ann Lau` style

Text Formatting

:   * Text Formatting Tags
        + `<b>`{.html}: **bold**, or similarly `<strong>`{.html}
        + `<i>`{.html}: *italic*, or similarly `<em>`{.html}
        + `<sub>`{.html}, `<sup>`{.html}: ~subscripted~ / ^^superscripted^^
        + `<ins>`{.html}: inserted text
        + `<mark>`{.html}, `<del>`{.html}
    * Computer Output Tags
        + `<code>`{.html}: Defines computer code text
        + `<kbd>`{.html}: keyboard
        + `<samp>`{.html}: sample computer code
        + `<var>`{.html}: variable
        + `<pre>`{.html}: preformatted text
    * Citations, Quotations, and Definition Tags
        + `<abbr>`{.html}: abbreviation or acronym
        + `<address>`{.html}: contact information for the author/owner of a document
        + `<bdo>`{.html}: text direction
        + `<blockquote>`{.html} : a section that is quoted from another source
        + `<q>`{.html}: inline (short) quotation
        + `<site>`{.html}: defines the title of a work
        + `<dfn>`{.html}: defines a definition term

HTML Links 

:   * `#href`{.html} to id
    * `<a id="tips">Useful Tips Section</a>`{.html}
    * `<a href="#tips">Visit the Useful Tips Section</a>`{.html}

Target Attribute

:   * specifies where to open the linked document, in a new tab or window
    * `<a href="http://www.w3schools.com/" target="_blank">Visit W3Schools!</a>`{.html}

### HTML `<head>`{.html}

Head Section

:   defines information about the document
    
    The following tags can be added to the head section:
    `<title>`{.html}, `<style>`{.html}, `<meta>`{.html}, 
    `<link>`{.html}, `<script>`{.html}, `<noscript>`{.html}, and `<base>`{.html}.

    * `<base>`{.html}: specifies the base URL/target for all relative URLs in a page

        ```html
        <head>
            <base href="http://www.w3schools.com/images/" target="_blank">
        </head>
        ```

    * `<link>`{.html}: defines the relationship between a document and
      an external resource most used to link to style sheets

        ```html
        <head>
            <link rel="stylesheet" type="text/css" href="mystyle.css">
        </head>
        ```

    * `<style>`{.html}: define style information, 
      specify how HTML elements render

        ```html
        <head>
            <style type="text/css">
                body {background-color:yellow;}
                p {color:blue;}
            </style>
        </head>
        ```

    * `<meta>`{.html}: not be displayed on the page, but will be **machine parsable**
        + define keywords for search engines: `<meta name="keywords" content="HTML, CSS, XML, XHTML, JavaScript">`{.html}
        + define a description of your web page: `<meta name="description" content="Free Web tutorials on HTML and CSS">`{.html}
        + define the author of a page: `<meta name="author" content="Hege Refsnes">`{.html}
        + refresh document every 30 seconds: `<meta http-equiv="refresh" content="30">`{.html}

    * `<script>`{.html}: define a **client-side** script, such as a JavaScript

### HTML Styles - CSS

CSS

:   Cascading Style Sheets

    * CSS can be added to HTML in the following ways:
        + Inline - using the **style attribute** in HTML elements
        + Internal - using the `<style>`{.html} element in the `<head>`{.html} section
        + External - using an **external CSS file**
    * The preferred way to add CSS to HTML, is to put CSS syntax **in separate CSS files**
    * Inline Styles
        + `<p style="color:blue;margin-left:20px;">This is a paragraph.</p>`{.html}
        + Background Color: `style="background-color:red;"`{.html}
        + Font, Color and Size: `style="font-family:arial;color:red;font-size:20px;"`{.html}
        + Text Alignment: `style="text-align:center;"`{.html}
    * Internal Style Sheet
        + used if **one single document has a unique style** defined 
          in the `<head>`{.html} section, by using the `<style>`{.html} tag

            ```html
            <head>
                <style>
                    body {background-color:yellow;}
                    p {color:blue;}
                </style>
            </head>
            ```

    * External Style Sheet
        + ideal when the style is **applied to many pages**
        + `<link>`{.html} tag goes inside the `<head>`{.html} section
         
            ```html
            <head>
                <link rel="stylesheet" type="text/css" href="mystyle.css">
            </head>
            ```

### HTML Images

`<img>`{.html} tag is **empty** (contains attributes only, and no closing tag)

Syntax: `<img src="url" alt="some_text">`{.html}

Example: `<img src="smiley.gif" alt="Smiley face" width="42" height="42">`{.html}

More Options

* `style="float:left"`{.html}: float to the left, **not supported in HTML5**
* mouse area:

    ```html
    <img src="planets.gif" width="145" height="126" alt="Planets" usemap="#planetmap">
    <map name="planetmap">
        <area shape="rect"   coords="0,0,82,126" alt="Sun" href="sun.htm">
        <area shape="circle" coords="90,58,3"    alt="Mercury" href="mercur.htm">
        <area shape="circle" coords="124,58,8"   alt="Venus" href="venus.htm">
    </map>
    ```

### HTML Table

Elements

:   * `<table>`{.html}
    * `<tr>`{.html}: table row
    * `<td>`{.html}: table data
    * `<th>`{.html}: table heading

        ```html
        <table style="width:300px">
        <tr>
             <td>Jill</td>
             <td>Smith</td>
             <td>50</td>
        </tr>
        <tr>
             <td>Eve</td>
             <td>Jackson</td>
             <td>94</td>
        </tr>
        </table>
        ```
        
        ```html
        <style>
            table, th, td {
                border:1px solid black;
            }
        </style>
        ```
        
    * Options
        + Border Attribute: `<table border="1" style="width:300px">`{.html}
        + Text Alignment
        
            ```css
            th {
                text-align:left;
            }
            ```

        + Caption : `<caption>`{.html}

### HTML List

Elements

:   + `<ol>`{.html}: ordered list
    + `<ul>`{.html}: unordered list
    + `<dl>`{.html}: description list
    + `<li>`{.html}: list item
    + `<dt>`{.html}: description term (term/name in a description list)
    + `<dd>`{.html}: description description

        ```html
        <ul>
            <li>Coffee</li>
            <li>Milk</li>
        </ul>

        <ol>
            <li>Coffee</li>
            <li>Milk</li>
        </ol>

        <dl>
            <dt>Coffee</dt><dd>- black hot drink</dd>
            <dt>Milk</dt><dd>- white cold drink</dd>
        </dl>
        ```

### HTML Blocks

`HTML Elements` 

:   * `block level elements` or `inline elements`
    * block level elements
        + start and end with a new line when displayed
        + `<h1>`{.html} `<p>`{.html} `<ul>`{.html} `<table>`{.html} `<div>`{.html}`{.html}
    * inline elments
        + displayed without starting a new line
        + `<b>`{.html} `<td>`{.html} `<a>`{.html} `<img>`{.html} `<span>`{.html}
    * `<div>`{.html}: defines a section in a document (block-level)
    * `<span>`{.html}: defines a section in a document (inline)

### HTML Layouts

Using `<div>` elements

:   ```html
    <div id="container" style="width:500px">
        <p></p>
        <div id="header" style="background-color:#FFA500;">
            <h1 style="margin-bottom:0;">Main Title of Web Page</h1>
        </div>
        <p></p>
        <div id="menu" style="background-color:#FFD700;height:200px;width:100px;float:left;">
            <b>Menu</b><br>
            HTML<br>
            CSS<br>
            JavaScript
        </div>
        <p></p>
        <div id="content" style="background-color:#EEEEEE;height:200px;width:400px;float:left;">
            Content goes here
        </div>
        <p></p>
        <div id="footer" style="background-color:#FFA500;clear:both;text-align:center;">
            Copyright ? W3Schools.com
        </div>
        <p></p>
    </div>
    ```

![div](http://gnat-tang-shared-image.qiniudn.com/blog-Screenshot%20from%202014-02-11%2022:20:36.png)

Using `<table>` elements

:   ```html
    <table width="500" border="0">
        <tr>
            <td colspan="2" style="background-color:#FFA500;">
                <h1>Main Title of Web Page</h1>
            </td>
        </tr>
        <tr>
            <td style="background-color:#FFD700;width:100px;">
                <b>Menu</b><br>HTML<br>CSS<br>JavaScript
            </td>
            <td style="background-color:#EEEEEE;height:200px;width:400px;">
                Content goes here
            </td>
        </tr>
        <tr>
            <td colspan="2" style="background-color:#FFA500;text-align:center;">
                Copyright ? W3Schools.com
            </td>
        </tr>
    </table>
    ```

### HTML Forms and Input

`<form>`{.html}

:   * HTML forms are used to **pass data to a server**
    * `<input>`{.html}: most important form element

        ```html
        <input type="text" name="firstname">
        <input type="password" name="pwd">
        <input type="radio" name="sex" value="male">Male<br>
        <input type="checkbox" name="vehicle" value="Bike">I have a bike<br>
        <input type="button" value="Hello world!">
        ```

    * special input form element: **submit button**
        + A submit button is used to send form data to a server.
        + The data is sent to the page specified in the form's action attribute.
        + The file defined in the action attribute usually does something with the received input
        + example: ![submit button](http://gnat-tang-shared-image.qiniudn.com/blog-Screenshot%20from%202014-02-11%2023:11:04.png)

            ```html
            <form name="input" action="html_form_action.asp" method="get">
                Username: <input type="text" name="user">
                <input type="submit" value="Submit">
            </form>
            ```

    * special input form element: **drop-down list**

        ```html
        <form action="">
            <select name="cars">
            <option value="volvo">Volvo</option>
            <option value="saab">Saab</option>
            <option value="fiat" selected>Fiat</option>
            <option value="audi">Audi</option>
            </select>
        </form>
        ```

    * special input form element: **textarea**

        ```html
        <textarea rows="10" cols="30">
            The cat was playing in the garden.
        </textarea>
        ```

### HTML Iframes

An iframe is used to **display a web page within a web page**, `i` stands for inline

```html
<iframe src="demo_iframe.htm" width="200" height="200"></iframe>
<iframe src="demo_iframe.htm" name="iframe_a"></iframe>
<p><a href="http://www.w3schools.com" target="iframe_a">W3Schools.com</a></p>
```

HTML Colors, Color Names
------------------------

CSS colors

:   * using hexadecimal notation
        + Hex values are **written as 3 double digit numbers**
        + starting with a `#` sign
    * 140 color names: 17 standard colors plus 123 more
        + 17 standard colors
          <span style="padding: 1px 1px 1px 1px; border: 1px solid silver; color: black;"> black </span>
          <span style="padding: 1px 1px 1px 1px; border: 1px solid silver; color: gray;"> gray </span>
          <span style="padding: 1px 1px 1px 1px; border: 1px solid silver; color: white;"> white </span>
          <span style="padding: 1px 1px 1px 1px; border: 1px solid silver; color: red;"> red </span>
          <span style="padding: 1px 1px 1px 1px; border: 1px solid silver; color: green;"> green </span>
          <span style="padding: 1px 1px 1px 1px; border: 1px solid silver; color: blue;"> blue </span>
          <span style="padding: 1px 1px 1px 1px; border: 1px solid silver; color: orange;"> orange </span>
          <span style="padding: 1px 1px 1px 1px; border: 1px solid silver; color: yellow;"> yellow </span>
          <span style="padding: 1px 1px 1px 1px; border: 1px solid silver; color: purple;"> purple </span>
          <span style="padding: 1px 1px 1px 1px; border: 1px solid silver; color: maroon;"> maroon </span>
          <span style="padding: 1px 1px 1px 1px; border: 1px solid silver; color: navy;"> navy </span>
          <span style="padding: 1px 1px 1px 1px; border: 1px solid silver; color: olive;"> olive </span>
          <span style="padding: 1px 1px 1px 1px; border: 1px solid silver; color: silver;"> silver </span>
          <span style="padding: 1px 1px 1px 1px; border: 1px solid silver; color: lime;"> lime </span>
          <span style="padding: 1px 1px 1px 1px; border: 1px solid silver; color: teal;"> teal </span>
          <span style="padding: 1px 1px 1px 1px; border: 1px solid silver; color: fuchsia;"> fuchsia </span>
          <span style="padding: 1px 1px 1px 1px; border: 1px solid silver; color: aqua;"> aqua </span>

        + [List: Color Values](http://www.w3schools.com/html/html_colorvalues.asp)

HTML Scripts: JavaScript
------------------------

`<script>`{.html} tag

:   define a client-side script, such as a JavaScript, e.g. `<script> document.write("Hello World!") </script>`{.html}

`<noscript>`

:   provide an alternate content, `<script>...</script><noscript>Sorry, Your Browser Doesn't Support It</noscript>`{.html}

A Taste of JavaScript

```javascript
document.write("<p>This is a paragraph</p>");
<button type="button" onclick="myFunction()">Click Me!</button>
document.getElementById("demo").style.color="#ff0000";
```

HTML Entities
-------------

Be replaced with **character entities**

* **Reserved characters** (must be replaced)
* **Characters, not present on your keyboard** (can be replaced)

`&entity_name;`{.html} or `&#entity_number;`{.html} e.g.

* `&amp;`{.html} or `&`{.html}, ampersand
* `&lt;`{.html} or `<`{.html}, less than
* `&nbsp;`{.html}, non breaking space
* acute, grave, diacritical marks
    + `a&#768;`{.html}, a&#768;
    + `a&#769;`{.html}, a&#769; 
    + `a&#770;`{.html}, a&#770;
    + `a&#771;`{.html}, a&#771;

HTML Symbols
------------

HTML symbols

:   like **mathematical operators**, **arrows**, **technical symbols** and **shapes**,
    are not present on a normal keyboard.

    * can be specified by an `HTML Entities name`, independent of what character set
    * Three ways to get <kbd>€</kbd>
        + entity name: `&euro;`{.html}
        + decimal reference: `&#8364;`{.html}
        + hexadecimal reference: `&#x20AC;`{.html}
    * More Symbols:
      `∀` &forall; `&forall;`{.html}, `∂` &part; `&part;`{.html}, `∃` &exist; `&exist;`{.html},
      `∅` &empty; `&empty;`{.html}, `∇` &nabla; `&nabla;`{.html}, `∈` &isin; `&isin;`{.html},
      `∉` &notin; `&notin;`{.html}, `∋` &ni; `&ni;`{.html}, `∏` &prod; `&prod;`{.html},
      `∑` &sum; `&sum;`{.html}, `α` &alpha; `&alpha;`{.html}, `β` &beta; `&beta;`{.html},
      `γ` &gamma; `&gamma;`{.html}, `δ` &delta; `&delta;`{.html}, `ε` &epsilon; `&epsilon;`{.html},
      `ζ` &zeta; `&zeta;`{.html}, `←` &larr; `&larr;`{.html}, `→` &rarr; `&rarr;`{.html},
      `↑` &uarr; `&uarr;`{.html}, `↓` &darr; `&darr;`{.html}, `♣` &clubs; `&clubs;`{.html},
      `♥` &hearts; `&hearts;`{.html}, `♦` &diams; `&diams;`{.html}, `©` &copy; `&copy;`{.html},
      `®` &reg; `&reg;`{.html}, `™` &trade; `&trade;`{.html}, 
    * Full Refs:
        + [Full Arrows Reference][arrow-refs]
        + [Full Currency Reference][currency-refs]
        + [Full Symbols Reference][symbols-refs]

[html-symbols]: http://www.w3schools.com/html/html_symbols.asp
[currency-refs]: http://www.w3schools.com/charsets/ref_utf_currency.asp
[symbols-refs]: http://www.w3schools.com/charsets/ref_utf_symbols.asp
[arrow-refs]: http://www.w3schools.com/charsets/ref_utf_arrows.asp

HTML Encoding (Character Sets)
------------------------------

What is Character Encoding?

:   * **ASCII** was the first `character encoding standard` (character set): **127**
    * **ANSI (Windows-1252)**, default char set for windows: **256**
    * **ISO-8859-1**, an extension for ASCII, default to HTML4: **256**
    * **Unicode (UTF-8)**, default for HTML5, `covers (almost) all the characters and symbols in the world.`
    * The HTML charset Attribute
        + HTML4: `<meta http-equiv="Content-Type" content="text/html;charset=ISO-8859-1">`{.html}
        + HTML5: `<meta charset="UTF-8">`{.html}
    * compatibility
        + `ANSI`,
        + `IOS-8859-1`,
        + `Unicode` is identical to ASCII for the values from 0 to 127.

HTML Uniform Resource Locators
------------------------------

Syntax

:   `scheme://host.domain:port/path/filename`{.bash}

    * `scheme` - defines the type of Internet service.`http`
    * `host` - defines the domain host (`the default host for http is www`)
    * `domain` - defines the Internet domain name, like `w3schools.com`
    * `port` - defs the port number at the host (`default port number for http:80`)
    * `path` - defines a path at the server
    * `filename` - defines the name of a document/resource

Common URL Schemes

:   * `http` : HyperText Transfer Protocol
    * `https` : Secure HTTP, All information exchanged are encrypted
    * `ftp` : File Transfer Protocol
    * `file` : to access files on your own computer

[URL Encoding][url-encoding]

HTML - XHTML
------------

What Is XHTML?

* XHTML is **HTML defined as an XML application**
* **EXtensible** HyperText Markup Language
* Almost **identical to HTML 4.01**
* A **stricter** and **cleaner** version of HTML
* Supported by all major browsers.

Why XHTML?

* **XML** is a markup language, where documents **must be marked up correctly and "well-formed"**.
* By **combining the strengths of HTML and XML**, XHTML was developed.
* **XHTML is HTML redesigned as XML.**

The Most Important Differences from HTML

* Document Structure
    + XHTML **DOCTYPE** is **mandatory**
    + The XML **namespace attribute** in `<html>`{.html} is **mandatory**
    + `<html>`, `<head>`, `<title>`, and `<body>`{.html} is **mandatory**
* XHTML Elements
    + must be **properly nested**
    + must always **be closed**, even empty elements, like `<br>` to `<br />`
    + must be **in lowercase**
    + must **have one root element**
* XHTML Attributes
    + Attribute names must be in lower case
    + **Attribute values must be quoted**, `<table width="100%">`{.html}
    + **Attribute minimization is forbidden**: `<input checked>`{.html} to `<input checked="checked">`{.html}

---

Refs

#. [HTML Introduction][html-intro]
#. [HTML Basic][html-basic]
#. [HTML Styles - CSS][html-css]
#. [HTML Images][html-image]
#. [HTML Table][html-table]
#. [HTML List][html-list]
#. [HTML Blocks][html-blocks]
#. [HTML Layouts][html-layouts]
#. [HTML Forms and Input][html-forms-and-input]
#. [HTML Iframes][html-iframe]
#. [HTML Colors, Color Names][html-colors]
#. [HTML Scripts: JavaScript][html-js]
#. [HTML Symbols][html-symbols]
#. [HTML Entities][html-entities]
#. [HTML Uniform Resource Locators][html-rc-locator]
#. [HTML Encoding (Character Sets)][html-encoding]

[html-css]: http://www.w3schools.com/html/html_css.asp
[html-image]: http://www.w3schools.com/html/html_images.asp
[html-basic]: http://www.w3schools.com/html/html_basic.asp
[doctype-reference]: http://www.w3schools.com/tags/tag_doctype.asp
[html-intro]: http://www.w3schools.com/html/html_intro.asp
[html-table]: http://www.w3schools.com/html/html_tables.asp
[html-list]: http://www.w3schools.com/html/html_lists.asp
[html-blocks]: http://www.w3schools.com/html/html_blocks.asp
[html-layouts]: http://www.w3schools.com/html/html_layout.asp
[html-forms-and-input]: http://www.w3schools.com/html/html_forms.asp
[html-iframe]: http://www.w3schools.com/html/html_iframe.asp
[html-colors]: http://www.w3schools.com/html/html_colors.asp
[html-js]: http://www.w3schools.com/html/html_scripts.asp
[html-entities]: http://www.w3schools.com/html/html_entities.asp
[html-encoding]: http://www.w3schools.com/html/html_charset.asp
[html-rc-locator]: http://www.w3schools.com/html/html_urlencode.asp
[url-encoding]: http://www.w3schools.com/html/html_urlencode.asp