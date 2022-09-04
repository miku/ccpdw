# Refactoring

Why change code at all:

* feature
* bugfix
* better design
* optimization

## Business Case

* better code is easier to maintain
* you can spend a day or a week or a month on refactoring
* there has to be a business case, too
    * cannot spend a year on code that will be phased out in two years
    * cannot spend a year improving design while features are waiting
* compromise: reserve one day just for retroactive improvements
    * improvement can take longer, but try to make a tiny progress in each session
* if your business is growing, then business case for more change it there
    * product will exist ten years from now

## Optimize for learning

* try to postpone decisions
    * the later you have to decide, the more informed your decision will be

## API design

* once your API is clear, and you have a test harness, refactoring becomes a breeze

> Exercise: Please refactor the following piece of code. We want to make it a
> bit more performant [...] - one example with another without tests

Examples of great API designs:

* scikit-learn
* keras (beat tensorflow)

## What is a change?

* [ ] adding a function
* [ ] removing a function
* [ ] changing a function


## Why not change?

* hard, not sure if something breaks
* touches many parts

## Before you refactor

Maybe this can save some time: [https://github.com/97-things/97-things-every-programmer-should-know/blob/master/en/thing_06/README.md](https://github.com/97-things/97-things-every-programmer-should-know/blob/master/en/thing_06/README.md)

* the best approach for restructuring starts by taking stock of the existing codebase and the tests written against that code. 
* avoid the temptation to rewrite everything
* many incremental changes are better than one massive change

> side note: git add/reset -p is made for that

* after each iteration, it is important to ensure that the existing tests pass.
* personal preferences and ego shouldn't get in the way
* new technology is insufficient reason to refactor
* remember that humans make mistakes

I would add:

* co-ordinate with team (and maybe author) before refactoring

## Patterns

* extract method
* extract interface
* extract superclass
* extract subclass
* pull up method
* move method
* rename method

Other:

* replace inheritance with delegation
* replace conditional with polymorphism
* replace type code with subclasses

## Some notes from Refactoring to Patterns

* overengineering happens

> because programmer do not want to be stuck in a bad design

> But over time the power of patterns led me to lose sight of simpler ways to
> write code.

Ex: strategy vs. a simple conditional

Then: Underengineered software. Can cause pain as well.

* everything talks to everything else (e.g. no layers, little abstraction, ...)

At some point you consider a total rewrite.

> TDD and continuous refactor

Two XP practices.

* TDD: Ask, Respond, Refine; Test case, code, rewrite case, repeat

Or, Kent Back:

* red, green, refactor

