import UIKit
/*
    write a generic function to add 2 numbers
 */

func sum<T : Numeric>( a: T, b : T) -> T{
    return a + b
}


/// conditional conformances way
func sumAnotherWay<T>( a: T, b : T) -> T where T : Numeric{
    return a + b
}

print(sum(a: 1, b: 2))
print(sumAnotherWay(a: 1, b: 2))
