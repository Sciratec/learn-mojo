'''
Mojo functions can be declared with either a def or fn.

fn = Enforces type-checking and memory-safe behaviours (Rust style)
def = Allows no type declarations and dynamic behaviors (Python style)

// Value ownership and argument mutability
def - Pass by value. Equivlent to `Move` in Rust
fn - Pass by immutable references. Equivalent to `Borrowed` in Rust
'''


# def - Normal Python style
def greet(name):
    # Appearently F strings do not exist in Mojo????
    return "Hello, " + name + "!"

# fn - Rust Style function signatures
fn greet2(name: String) -> String:
    return "Hello, " + name + "!"



'''
    Set this to def so it can compile while switching between Rust and Python styles
    Note: Mojo does not support top-level "Global" code we must use a main function with def or fn inside a source code file.
    REPL and Jupyter notebook do not require this.
'''
def main():
    greeting1 = greet("Xorlock")
    let greeting2 = greet2("Xorlock")

    print(greeting1)
    print(greeting2)