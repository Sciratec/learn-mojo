'''
A parameter such as `[count: Int]` is a COMPILE-TIME constant. 
An argument such as  `(msg: String)` is a RUNTIME value.

Best way I can describe this as of now is the paragraph from the documentation.

"By specifying count as a parameter, the Mojo compiler is able to optimize the function 
because this value is guaranteed to not change at runtime. 
The compiler effectively generates a unique version of the repeat() function that repeats the message only 3 times. 
This makes the code more performant because there’s less to compute at runtime." - https://docs.modular.com/mojo/manual/basics.html
'''

fn repeat[count: Int](msg: String):
    for i in range(count):
        print(msg)


fn main():
    repeat[3]("Hello")