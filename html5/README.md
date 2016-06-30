# HTML5 Notes

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

## Resources
* [W3 Standards Index/Overview](https://www.w3.org/TR/html-markup/Overview.html#toc)
* [W3 content models](https://www.w3.org/TR/2011/WD-html5-20110525/content-models.html)
* [HTML5shiv](https://github.com/aFarkas/html5shiv)
