# Documentation

Some notes on comments and documentation.

## README driven development

* describe what is happening first, without writing any code
* overview, usage examples, caveats

## Make docs look good

* make something you want to read
    * choose a suitable format (sometimes a README is enough)
    * choose a suitable tool (e.g. mkdocs, sphinx, ...)
    * if you comment code, you get almost free documentation
    * choose a nice template
* document functions, classes, modules if it is not totally obvious
* never repeat what the code already says
* add specific learnings, if possible

> You may wonder what kind of comments you can find in production code (e.g. you
> may learn details about operating system distributions)

## Comments

* the best code needs no comments
* be specific and record part of the "situation", maybe a decision process
* better no comment than an outdated comment
* reread code to make sure comments still make sense
* mark todo items (maybe even with names): `TODO(martin)` - this can be found in
  almost any project - helps to pick up a development thread at a later point in
  time