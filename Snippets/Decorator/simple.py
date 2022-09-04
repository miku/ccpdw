

def deco(f):
    def inner(*args, **kwargs):
        print("[deco] calling {}".format(f.__name__))
        result = f(*args, **kwargs)
        print("[deco] exited {}".format(f.__name__))
        return result
    return inner



@deco
def hello(name="world"):
    print("hello " + name)

hello()
