def do_math(x: Int) -> Int:
    var y = x + x # variable is mutable
    y *= y
    let z = y + x # variable is immutable
    return z


def main():

    '''
    You can declare variables with `var` and `let`

    var - mutable
    let - immutabe
    
    However, if the code is in a `def` function, you can omit both and will default to var.
    In an `fn` function, you must declare mutability.
    '''
    let math_res = do_math(5) # 105 and is immutable
    var math_res2: Int = do_math(5) # 105 and is mutable

    ''' Will not work
        math_res = do_math(5) - Cannot change this value because of being imutable
        math_res2 = "A silly string" - Cannot change this type because it is declared to an `Int` only
    '''