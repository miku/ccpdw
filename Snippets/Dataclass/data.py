from dataclasses import dataclass

@dataclass()
class Point:
     x: int
     y: int


p = Point(2, 3)

print(p)