# Clean Code Principles

## Classic software failures

## Calculating failure costs (e.g. ROI on testing)

* How much time can you invest in testing or refactoring

## Clean code layers (top down)

### The right architecture and approach

* how to find the right approach

### useful patterns

* approaches; principles (decomposition, principles, ...)

### The right data structures

* worry about data structures; rather 1 data structure and 100 methods than 10 with 10 each

### Idiomatic code (readability)

### Cross-cutting concern

* software lifecycle and support
* ci
* testing
* docs
* setup

## Learn from open source projects

* pragmatic
* efficient
* documented

## SW engineering's greatest hits

* [Software Engineering's Greatest Hits](https://www.youtube.com/watch?v=HrVtA-ue-x0)

## Good code properties

* Question: Name one property of good code and one of bad code

### Design by contract

* betrand meyer
* eiffel
* deferred PEP-361 (2003): https://peps.python.org/pep-0316/
* https://github.com/Parquery/icontract

Example: [Examples/Contracts]

Without specific contract library:

* makeing properties explicit with assertions or explicit checks (and e.g. raising `ValueError` on failures)

### Defensive programming

#### Error handling

* catch specific errors (avoid empty except)
* handle some gracefully
* fail fast

Find the *right level* for your exception.

* reuse existing exception hierarchy: [https://docs.python.org/3/library/exceptions.html](https://docs.python.org/3/library/exceptions.html)

You can include original exceptions via [PEP-3134](https://peps.python.org/pep-3134/) - "Exception Chaining and Embedded Tracebacks" 

> Example: [Example/ExceptionChaining]

> [...] implicit exception context can be supplemented with an explicit cause by using from with `raise`.

#### Use sensible default values

* across various layers
    * command line flags
    * keyword arguments

Use language facilities, like:

```
dict.get(key, default)
```

### Assertions

* `assert` 
* assertions as a last resort (e.g. halt program instead of handling an error)

Can be disable at runtime, e.g. with `python -O script.py`

```python
$ python -c "assert False"
Traceback (most recent call last):
  File "<string>", line 1, in <module>
AssertionError
```

With basic optimizations:

```
$ python -Oc "assert False"
```

### Separation of concerns

#### Avoid adding to many responsibilities

### Cohesion and coupling

* cohesion: well defined purpose; coupling: dependency between code
* aim for: high cohesion and low coupling ("oss" - separate parts, ...)

### DRY

* don't repeat yourself
* there is also the rule of three - use opportunities to abstract or factor out a piece of code

### YAGNI

* related to TDD a bit
* what you need vs what you want
* some instances: abstracting backends (albeit only one is and will be used)
* any *potential* benefit

> It can be hard to distinguish between design and YAGNI

### KISS

#### from aerospace industry

#### smallest data structure to fit the problem (e.g. graph can be a dictionary)

### EAFP and LBYL

#### python encourages EAFP

### composition and inheritance

#### when to use inheriance -- http package

#### inheritance anti-patterns

#### multiple inheritance and MRO

#### Mixins

#### example for a simple composition, subclass plus mixin

### functions and arguments

#### anything that can be derived should not be passed separately (request)

#### too many arguments lead to higher coupling

#### may group parameters

## coding guidelines

### naming conventions

### reveal your intent

### avoid noise

### class names

### exceptions and exception handling

### variables

## X: improve "ttt" example

## SOLID

### SRP

#### what it says

#### example

### OCP

#### what it says

#### example

### LSP

#### what it says

#### example

### ISP

#### what it says

#### example

### DIP

#### what it says

#### example

## D: give 3 scenarios and ask for the most approriate SOLID principle

## clean architecture

### separation of concerns

### abstractions

## package design

### setup.py

## packaging options

### linkedin example: shiv

### automation with gitlab
