# HTML5 Notes

These are note made while doing the [Lynda.com HTML5 structure, syntax and semantics course](https://www.lynda.com/HTML-tutorials/HTML5-Structure-Syntax-Semantics/182177-2.html).

The purpose of HTML5 is to allow for more semantic meaning in content on the web.

### HTML5 sectioning elements

* article
* aside
* nav
* section

Prior to HTML5, content was divided by `<div>`. New sectioning elements were introduced to avoid this.

An article *could* have sections within it, showing relation to the top level topic, but not necessarily defining it.

```
<article id='hobbies'>
  <h2>My hobbies</h2>
  <section>
    <h3>Electronics</h3>
    <p>I enjoy messing about with arduinos.</p>
  </section>
  <section>
    <h3>Power lifting</h3>
    <p>I throw heavy things around.</p>
  </section>
</article>
```

### HTML5 semantic grouping elements

* footer
* header
* main

See [HTML5 structuring](./notes/html5-structuring.html) notes

## Step-by-step creating basic structure of HTML page

1. `<!doctype html>` - not necessary, but required for legacy support.
1. `<html lang="en">`
1. `<head>` + `<body>`
1. `<meta charset="utf-8">` within `<head>`

## Legacy browsers

As the new tags aren't supported by legacy browsers like IE8 (lol), the content may not be rendered correctly as the browser will not recognise that they exist.

HTML5shiv creates the elements using js. This script should *obviously* be added within the `<head>` so it is loaded before the body. It is also commented out so that newer browsers won't load it un necessarily.

```
<head>
  <meta charset="utf-8">
  <title>Backwards Compatibility example</title>
  <!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script><![end if]-->
</head>
```

[HTML5 Shiv CDN Links](https://cdnjs.com/libraries/html5shiv)

## Headings

Sections and articles are only to divde the content into sections. Headings are used to render and organise document structure to search engines and other devices.

Only use one `<h1>`. This is for SEO and also to clarify the focus of the content.

```
<h2>Hobbies</h2>
  <h3>Electronics</h3>
    <h4>Arduino</h4>
    <h4>Raspberry PI</h4>
```
Electronics is shown to *belong to* the hobbies content.
Arduino and Raspberry PI fall within electronics, and are seen as siblings of equal focus and importance.

## Navigation

Navigation can fall in or outside of the `<header>`. It is project/personal preference.

The common practice is to organize nav links as items in an unordered list.

We do this as [Menus are semantic groupings of links](http://www.lynda.com/HTML-tutorials/Building-navigation/182177/370818-4.html) meaning they're a grouping of link elements that belong together.

```
<nav>
  <ul>
    <li><a href="#">Home</a></li>
    <li><a href="#">About</a></li>
    <li><a href="#">Content</a></li>
  </ul>
</nav>
```

## More on Nesting structures

Comments on an article should fall under a new `<section>`.

If we had to extract the following:

```
<h1>My Posts</h1>
<article class="post">
  <h2>My first code review</h2>
  <h3>Quality</h3>
  <h3>Functionality</h3>
  <h3>Complexity</h3>
  <section class="comments">
    <h2>Comments</h2>
    <h3>Joe Bloggs</h3>
    <p>
      Great post!
    </p>
  </section>
</article>
```

An article within an article would not be as semantically meaningful as a comment section for the artcle.



## Resources
* [Lynda.com HTML5 structure, syntax and semantics course](https://www.lynda.com/HTML-tutorials/HTML5-Structure-Syntax-Semantics/182177-2.html).
* [W3 Standards Index/Overview](https://www.w3.org/TR/html-markup/Overview.html#toc)
* [W3 content models](https://www.w3.org/TR/2011/WD-html5-20110525/content-models.html)
* [HTML5shiv](https://github.com/aFarkas/html5shiv)
