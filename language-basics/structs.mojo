'''
Structs have a similar structure to classes in that they support methods, fields,
operator overloading, decorators, etc.
'''
struct MyPair:
    var first: Int
    var second: Int

    # I look at this kind of like `impl`s in Rust where we implement methods on objects
    # such as structs. 
    fn __init__(inout self, first: Int, second: Int):
        self.first = first
        self.second = second
    
    fn dump(self):
        print(self.first, self.second)

fn use_mypair():
    let mine = MyPair(2, 4)
    mine.dump()

fn main():
    use_mypair()