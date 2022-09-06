# Type Hints

* Gradually added to Python 3

Defined by various PEPs:

* [483](https://peps.python.org/pep-0483/) -- The Theory of Type Hints (2014)
* [484](https://peps.python.org/pep-0484/) -- Type Hints (2014)

And more [relevant PEPs](https://docs.python.org/3/library/typing.html#relevant-peps):

* [526](https://peps.python.org/pep-0526/) -- Variable Annotations (2016)
* [544](https://peps.python.org/pep-0544/) -- Protocols: Structural subtyping (static duck typing) (2017)
* [585](https://peps.python.org/pep-0585/) -- Type Hinting Generics In Standard Collections (2019)
* [586](https://peps.python.org/pep-0586/) -- Literal Types (2019)
* [589](https://peps.python.org/pep-0589/) -- TypedDict: Type Hints for Dictionaries with a Fixed Set of Keys (2019)
* [591](https://peps.python.org/pep-0591/) -- Adding a final qualifier to typing (2019)
* [593](https://peps.python.org/pep-0593/) -- Flexible function and variable annotations
* [604](https://peps.python.org/pep-0604/) -- Allow writing union types as X | Y (2019)
* [612](https://peps.python.org/pep-0612/) -- Parameter Specification Variables (2019)
* [613](https://peps.python.org/pep-0613/) -- Explicit Type Alias (2020)
* [647](https://peps.python.org/pep-0647/) -- User-Defined Type Guards (2020)

Other:

* [3107](https://peps.python.org/pep-3107/) -- Function Annotations

> Function annotations, both for parameters and return values, are completely
optional. Function annotations are nothing more than a way of associating
arbitrary Python expressions with various parts of a function at compile-time.

Function annotations are not limited to type hints.

## Annotations

* not limited to type hints, but generic way to annotate function parameters and
  return values (other [use cases](https://peps.python.org/pep-3107/#use-cases))

```python

def hello(greeting: "greeting word", name: "custom name") -> "result":
    return f"{greeting} from {name}"

print(hello("hello", "world"))
print(hello.__annotations__)

# hello from world
# {'greeting': 'greeting word', 'name': 'custom name', 'return': 'result'}

```

## Highlights from PEP-484

> In its basic form, type hinting is used by filling function annotation slots with classes:

A new module is used (e.g. for names None, Any, Union, Tuple, Callable)

> All newly introduced names used to support features described in following
> sections (such as Any and Union) are available in the typing module.


Example callable:

```python
from typing import Callable

def f(g : Callable[..., bool]) -> bool:
    return True
```

```
$ mypy Snippets/TypeHints/call.py 
Success: no issues found in 1 source file
```

We can express generics:

```python
from typing import Mapping, Set

def notify_by_email(employees: Set[Employee], overrides: Mapping[str, str]) -> None: ...
```

We can define a Type variable:

```python
from typing import Sequence, TypeVar

T = TypeVar('T')      # Declare type variable

def first(l: Sequence[T]) -> T:   # Generic function
    return l[0]
```

Type variables can define one or more other types:


> TypeVar supports constraining parametric types to a fixed set of possible
> types (note: those types cannot be parameterized by type variables). For
> example, we can define a type variable that ranges over just str and bytes. By
> default, a type variable ranges over all possible types. Example of
> constraining a type variable:

```python
from typing import TypeVar, Text

AnyStr = TypeVar('AnyStr', Text, bytes)

def concat(x: AnyStr, y: AnyStr) -> AnyStr:
    return x + y
```

Both x and y need to be the *same* type.

> List and List[Any] mean the same

A user defined generic type uses `Generic` type.

```
from typing import TypeVar, Generic
from logging import Logger

T = TypeVar('T')

class LoggedVar(Generic[T]):
    def __init__(self, value: T, name: str, logger: Logger) -> None:
        self.name = name
        self.logger = logger
        self.value = value

    def set(self, new: T) -> None:
        self.log('Set ' + repr(self.value))
        self.value = new

    def get(self) -> T:
        self.log('Get ' + repr(self.value))
        return self.value

    def log(self, message: str) -> None:
        self.logger.info('{}: {}'.format(self.name, message))
```

## Generic types

```python
from typing import TypeVar, Generic

T = TypeVar('T')

class Node(Generic[T]):
    def  __init__(self, k : T):
        self.k = k
        
    def __repr__(self):
        return f'{self.k} of type {type(self.k)}'
    

node = Node(int)
print(node)

node = Node(123)
print(node)
```

## Type Aliases

Support to readability and compact code.

```
from typing import List, Tuple

Book = Tuple[str, str, int]

movies: List[Book] = [
    ("Python", "Andrew", 2005),
    ("Inside Python", "Pete", 2015),
    ("Clean code", "Lee", 2010)
]
```

## Covariance and Contravariance

> covariant. This means that the subtyping relation of the simple types are preserved for the complex types. 

i.e. is `List[Cat]` a subclass of `List[Amimal]` -- if so, then the list type contructor is covariant.


## Numeric Tower



## List or list

> In Python 3.9 we won't have to import things like Tuple, List, and Dict from
> the typing module. Instead, we'll be able to use the standard tuple, list, and
> dict types for annotation.

## Basic Operations





## Task


