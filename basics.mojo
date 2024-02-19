# Functions
'''
Mojo functions can be declared with either a def or fn.

fn = Enforces type-checking and memory-safe behaviours (Rust style)

def = Allows no type declarations and dynamic behaviors (Python style)
'''

# def - Normal Python style
def greet(name):
    # Appearently F strings do not exist in Mojo????
    return "Hello, " + name + "!"

# fn - Rust Style function signatures
fn greet2(name: String) -> String:
    return "Hello, " + name + "!"


''' Value ownership and argument mutability
def - Pass by value. Equivlent to `Move` in Rust
fn - Pass by immutable references. Equivalent to `Borrowed` in Rust
'''
# --------------------------------

# Variables
def do_math(x: Int) -> Int:
    var y = x + x # variable is mutable
    y *= y
    let z = y + x # variable is immutable
    return z

# --------------------------------    

# Struct
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
# --------------------------------    


# Set this to def so it can compile while switching between Rust and Python styles
# Note: Mojo does not support top-level "Global" code we must use a main function with def or fn inside a source code file.
# REPL and Jupyter notebook do not require this.
def main():
    greet1 = greet("Xorlock")
    let greeet2 = ("Xorlock")

    # Variables - See `do_math` function in category
    '''
    You can declare variables with `var` and `let`
    var - mutable
    let - immutabe
    However, if the code is in a `def` function, you can omit both and will default to var.
    In an `fn` function, you must declare mutability
    '''
    let math_res = do_math(5) # 105 and is immutable
    var math_res2: Int = do_math(5) # 105 and is mutable

    # Will not work
    # math_res = do_math(5) - Cannot change this value because of being imutable
    # math_res2 = "A silly string" - Cannot change this type because it is declared to an `Int` only
    # --------------------------------


    # Struct - See MyPair struct
    use_mypair()
    # --------------------------------


