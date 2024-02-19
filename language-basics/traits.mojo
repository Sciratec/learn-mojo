'''
Like rust we use traits and generic types to broaden the types a function can accept.
This means that if we did not have traits, each function would have to be specific on the type it recieves.
However with traits we can create another type (say another struct) twe can call `required_method` on that new type
because it implements SomeTraits
'''

struct SomeStruct(SomeTrait):

    fn required_method(self, x: Int):
        print("hello from require_method", x)

    '''
        Althought he documentation does not state, we have to set an `__init__` constructor so we can create an object later on.
        Since we do not have any fields we can just initialize the init function with the `inout` self argument
        What I have gathered `inout` sets the argument from a immutable reference to a mutable one.
    '''
    fn __init__(inout self): ...
    
trait SomeTrait:

    # `...` just initiliazes the fuction signature without writing a body. 
    # You can just easily use pass in the body just like in vanilla python
    fn required_method(self, x: Int): ...

# I like to think of this in terms of Rust
# This function accepts any generic `T` type that implements the `SomeTrait` trait
fn fun_with_traits[T: SomeTrait](x: T):
    x.required_method(42)

fn use_trait_function():
    var thing = SomeStruct()
    fun_with_traits(thing)


fn main():
    use_trait_function()