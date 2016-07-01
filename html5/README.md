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

See [HTML5 structuring](./examples/html5-structuring.html) notes

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

## Nesting structures

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
    <article class="comment">
      <h3>Joe Bloggs</h3>
      <p>
        Great post!
      </p>
    </article>
  </section>
</article>
```

An `<article>` within an `<article>` would not be as semantically meaningful as a comment `<section>` for the `<article>`.

However, each comment could and should be considered as an article.

## `<header>` explained

[A header typically contains a group "of introductory or navigational aids.](https://www.w3.org/TR/html5/sections.html#the-header-element)

The title of the article, along with the posting information can be grouped as a header as it fufils the above statement - it represents introductory content.

Notice the comment section. It contains the section title, info on how to post a comment and the comments. The title and info on how to post a comment are grouped as the header for the comment section.

The comment itself only consists of one heading - the `<header>` is therefore not necessary as it adequately represents itself.

```
<article class="post">
  <header>
    <h2>My first blog!</h2>
    <p>Posted today at 1pm.</p>
    <p>By <a href="#">me</a>.</p>
  </header>
  <p>
    this is my first blog post - Hello World!
  </p>
  <section class="comments">
    <header>
      <h2>Comments</h2>
      <p>
        Either <a href="#">sign up</a> or <a href="#">sign in</a> to post a comment.
      </p>
    </header>
    <article class="comment">
      <h3>Comment by Joe Bloggs</h3>
      <p>
        Great article!
      </p>
    </article>
  </section>
</article>
```

## `<main>` explained

Indicates to devices the main content of the page. Focussed for assistive reader devices and could be used more in the future.

## `<footer>` explained

Similar to header. Can be used in multiple places within the page.
Could also be used within a quote to reference the author.

## Checking Structure

Cna be done with the use of HTML5 outliner tools.

* [Online tool](https://gsnedders.html5.org/outliner/)

* [Heading map for Chrome](https://chrome.google.com/webstore/detail/headingsmap/)

Content should appear as a table of contents that represents the structure you want the page to appear.

## `<figure>` and `<figcaption>` explained

Both tags are more semantic than structural.

`<figure>` can be any media the represents the content around it in some way - not necessarily restricted to images. Could also enclose more than one item as it is a structural tag.

`<figcaption>` is a child element of the `<figure>`. It is the caption associated with the figure.

## `<aside>` explained

Tangentially related content. Think of an authors side notes within an article.
`<aside>` is not to represent side-bar menu.

## `<div>` is frowned upon now

["The div element has no special meaning at all. It represents its children."

"Authors are strongly encouraged to view the div element as an element of last resort, for when no other element is suitable. Use of more appropriate elements instead of the div element leads to better accessibility for readers and easier maintainability for authors."](https://www.w3.org/TR/html5/grouping-content.html#the-div-element)

Use as a last resort, JavaScript or for styling sake.

## `<dl> <dt> <dd>` Definition Lists

Definition lists are a list of terms and a definition for one of more of the terms.

"Name-value groups may be terms and definitions, metadata topics and values, questions and answers, or any other groups of name-value data"

An example:

```
<h1>List of Schools</h1>
<dl class="school-list">
  <dt>London</dt>
  <dd>School 1</dd>
  <dd>School 2</dd>
  <dd>School 3</dd>

  <dt>Manchester</dt>
  <dd>School 4</dd>
  <dd>School 5</dd>
</dl>
```

## Emphasizing text

`<i>` - Italics
Represents an alternate voice, mood or language.

`<em>` - Emphasis
Represents stressed emphasis of its contents.

`<b>` - Bold
Text where attention is to be drawn to the text but no extra importance is to be placed. Think keywords, or product names in a review.

`<strong>` - Strong
Strong importance. Seriousness or urgency.

W3 does not mention that any of the above tags should display their contents differently, the reader will interpret this. You should use CSS for this.

## `<blockquote>`, `<q>` and `<cite>`

Formatting tags within `<blockquote>` doesn't have any effect on the document outline.

`<q>` is to include quotation marks.
`<cite>` is the reference to the author.

```
<blockquote>
  <q>I really like Ruby on Rails.</q>
  <footer>
    <cite><span class="author">Joe Bloggs</span> - We designer</cite>
    <!-- could also include contact info her for author - not related to the autor quote -->
  </footer>
</blockquote>
```

## `<address>`

`<address>` wraps the contact information related to the publisher or author of the article or document.

Should be narrowed focus for the author - not necessarily the address of the company as the `<address>` is not intended to contain other structure tags.

## `<small>`

Intended for small print - still important text. Should not be used for long runs of text.
Think page copyright.

## `<mark>`

Used to highlight information within quotes or a paragraph which the author did not originally intend to bring attention to.

If searching text in a webpage your brower will use `<mark>` to highlight the words searched for.

## `<time>`

TBC



## Resources
* [Lynda.com HTML5 structure, syntax and semantics course](https://www.lynda.com/HTML-tutorials/HTML5-Structure-Syntax-Semantics/182177-2.html).
* [W3 Standards Index/Overview](https://www.w3.org/TR/html-markup/Overview.html#toc)
* [W3 content models](https://www.w3.org/TR/2011/WD-html5-20110525/content-models.html)
* [HTML5shiv](https://github.com/aFarkas/html5shiv)
