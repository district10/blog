% 学习 HTML
% Tang Zhixiong
% 2014-02-12


学习 HTML
=========

[HTML Introduction][html-intro]
-------------------------------

What is HTML?

:    * HTML stands for **Hyper Text Markup Language**
     * **Markup language**, A markup language is a set of markup tags
     * Tags: describe document content
     * HTML documents contain **HTML tags** and **plain text**
     * HTML documents also called **web pages**

HTML Tags

:    * `<tagname>content</tagname>`{.html}
     * opening/closing tags, or start/end tags

HTML Elements

:    `HTML element` = `HTML tags` + `contents within`

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

[html-intro]: http://www.w3schools.com/html/html_intro.asp

`<!DOCTYPE>`{.html} Declaration

:    * **helps the browser to display a web page correctly.**
     * **Common Declarations**
     * HTML5: `<!DOCTYPE html>`
     * HTML 4.01

            <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
            "http://www.w3.org/TR/html4/loose.dtd">

     * XHTML 1.0

            <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
            "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

     * for more, see [**DOCTYPE Reference**][doctype-reference]

[doctype-reference]: http://www.w3schools.com/tags/tag_doctype.asp

[HTML Basic][html-basic]
------------------------

HTML Headings

:    `<h1>`{.html} to `<h6>`{.html}

HTML Paragraphs

:    `<p>`{.html} and `</p>`{.html}

HTML Links

:    `<a href="http://www.w3schools.com">This is a link</a>`{.html}

HTML Images

:    `<img src="w3schools.jpg" alt="W3Schools.com" width="104" height="142">`{.html}

HTML Elements

:    * `HTML Element` = `start tag` + `Element content` + `end tag`
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

:    * specified in the start tag
     * come in **`name/value` pairs**
     * notice: Always `Quote` Attribute Values, `Double style quotes`: most common, `single style quotes`: also allowed.
     * [HTML Tag Reference](http://www.w3schools.com/tags/default.asp)
     * `<hr>`{.html}: horizontal line
     * `<!-- This is a comment -->`{.html} : HTML Comments, will not be rendered, 
     * `<!--...-->`{.html} $\leftarrow$ `Ann Lau` style

Text Formatting

:    * Text Formatting Tags
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

:    * `#href`{.html} to id
     * `<a id="tips">Useful Tips Section</a>`{.html}
     * `<a href="#tips">Visit the Useful Tips Section</a>`{.html}

Target Attribute

:    * specifies where to open the linked document, in a new tab or window
     * `<a href="http://www.w3schools.com/" target="_blank">Visit W3Schools!</a>`{.html}

[html-basic]: http://www.w3schools.com/html/html_basic.asp

### HTML `<head>`{.html}

Head Section

:    defines information about the document
     
     The following tags can be added to the head section:
     `<title>`{.html}, `<style>`{.html}, `<meta>`{.html}, 
     `<link>`{.html}, `<script>`{.html}, `<noscript>`{.html}, and `<base>`{.html}.

     * `<base>`{.html}: specifies the base URL/target for all relative URLs in a page

```html
           <head>
           <base href="http://www.w3schools.com/images/" target="_blank">
           </head>
```

     * `<link>`{.html}: defines the relationship between a document and an external resource most used to link to style sheets

     ```html
           <head>
           <link rel="stylesheet" type="text/css" href="mystyle.css">
           </head>
     ```

     * `<style>`{.html}: define style information, specify how HTML elements render

           <head>
           <style type="text/css">
           body {background-color:yellow;}
           p {color:blue;}
           </style>
           </head>

     * `<meta>`{.html}: not be displayed on the page, but will be **machine parsable**
         + define keywords for search engines, `<meta name="keywords" content="HTML, CSS, XML, XHTML, JavaScript">`{.html}
         + define a description of your web page, `<meta name="description" content="Free Web tutorials on HTML and CSS">`{.html}
         + define the author of a page, `<meta name="author" content="Hege Refsnes">`{.html}
         + refresh document every 30 seconds, `<meta http-equiv="refresh" content="30">`{.html}

     * `<script>`{.html}: define a **client-side** script, such as a JavaScript

### [HTML Styles - CSS][html-css]

CSS

:    Cascading Style Sheets

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
         + used if **one single document has a unique style** defined in the `<head>`{.html} section, by using the `<style>`{.html} tag

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

[html-css]: http://www.w3schools.com/html/html_css.asp

### [HTML Images][html-image]

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

[html-image]: http://www.w3schools.com/html/html_images.asp

### [HTML Table][html-table]

Elements

:    * `<table>`{.html}
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

<div class="ds-thread"></div>