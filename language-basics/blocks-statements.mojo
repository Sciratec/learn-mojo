# Nothing really new here from Python. Essentially Python ergo mojo
# also uses spaces and indentation in-lieu of curly braces to define scopes and blocks
# BTW its 4 spaces.............


fn main():

    for x in range(5):
        if x % 2 == 0: print(x)

    let long_text = "This is a long line of text that is a lot easier to read if"
                    " it is broken up across two lines instead of one long line"

    print(long_text)

    let text = String(",")
                .join("Hello", " World!")
    print(text)