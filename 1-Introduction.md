# Introduction

## What we need

* Examples use Python 3
* Editor with Python support
* You will get all material in a zip file shortly after the course

## Approach

We will use three components:

* documents (instead of slides), exploring topics
* code walkthroughs
* coding tasks
* questions (and answers) in a shared pad (etherpad),
  [https://pad.grossweber.com/HwSmArPjTiWKayZDwzioJg](https://pad.grossweber.com/HwSmArPjTiWKayZDwzioJg)

We can (and should) detour into specific questions any time.

## Inspiration: Books on real software development, like "Clean Code" or the "Practice of Programming"


### Books

* [Clean Code](https://www.oreilly.com/library/view/clean-code-a/9780136083238/)
* [The Practice of Programming](https://www.cs.princeton.edu/~bwk/tpop.webpage/)
* [Clean Code in Python](https://www.packtpub.com/product/clean-code-in-python/9781788835831)
* [Refactoring](https://www.martinfowler.com/books/refactoring.html)
* ...

### Clean code is not a single thing

* while popularized by Robert C. Martin, it is not *one thing*
* more like: "small things matter", or *small things add up*

> [...] attentiveness to detail is an even more critical
foundation of professionalism than is any grand vision [CC]

> Writing clean code requires the disciplined use of a **myriad little
> techniques** applied
through a painstakingly acquired sense of "cleanliness." [CC]

Inspiration comes from a broad literature on software engineering and other fields:

* Patterns research community (design patterns)
* Research Labs (e.g. Bell Labs)

Architecture:

* Christopher Alexander, A pattern language (1977)

Japanese production lines: Total Productive Maintenance (TPM) using **5S** (1950-1970):

* Seiri - "sort", "know where things are"
* Seiton - "systematize", "tidyness", a place for everything and everything in its place
* Seiso - "shine", keep the work place free of handing wires, waste, ...
* Seiketsu - "standardization", consensus on how the workplace is kept clean
* Shutsuke - "self-discipline", follow rules over time

Fred Brooks (IBM):

* rewrite every seven years (to cleanup up)
* example: an popular maps web application is at least at its second complete
  rewrite

Many practicioners can be be quoted (from various fields):

> preoccupation with *detail* is common to all endeavors of excellence

Interestingly, a classic CS education does not necessarily go into these kind
of (coding) details.

### Programming as a loser's game

* hypothesis: software development is *loser's game*
* analogy from (amateur and expert) tennis (Charles Ellis, 1970's, investing context)
* you win by avoiding mistakes (and not necessarily by being extraordinary)

### Dogma

* while there are rules and techniques, following a dogma blindly will probably not help
* teams with underspecified process can win, teams working *by the book* can fail
* there is a balance between business and software needs, that is a challenge to find and keep


### What other people say

### Q: What is clean code for you?

## Motivation: Software that fits your problem

### Overengineering

> 20K LOC for something that may be command line tool

too much design for a problem

### Underengineering

* everything lives in function in a language that supports OO
* no functions at all (single file, top to bottom, 15K lines)

### Let us do the job before we get regulated

* software is [volatile](https://stackoverflow.blog/2020/02/20/requirements-volatility-is-the-core-problem-of-software-engineering/)
* first SW engineering conference took place in [1968](http://homepages.cs.ncl.ac.uk/brian.randell/NATO/NATOReports/)

## Software is still complex, software is a losers game

* you can win by just avoiding some bad practices

## Pragmatic Python

* Some patterns are not required, because Python is expressive
* Keep it pragmatic, use magic sparingly

## Clean Code critique

* stop recommending clean code: [article](https://qntm.org/clean)

## Disclaimer

### what do you prefer?
            * clean code, no revenue, or
            * spaghetti code making a million a month

### Writing software is a complex activity

> Writing software is a complex activity and we should respect that, when we
> talk about it, when we discuss all matters software