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


See [HTML5 structuring](/notes/html5-structuring.html) notes


## Resources
* [W3 Standards Index/Overview](https://www.w3.org/TR/html-markup/Overview.html#toc)
* [W3 content models](https://www.w3.org/TR/2011/WD-html5-20110525/content-models.html)
