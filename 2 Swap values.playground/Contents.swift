import Foundation

// my solution
func swapValues<T: Comparable>( value1: inout T, value2: inout T) {
    print("Original: value1 = \(value1), value2 = \(value2)")
    let temp = value1
    value1 = value2
    value2 = temp
    print("After swap: value1 = \(value1), value2 = \(value2)")
}

//swapValues(value1: 10, value2: 15) // Error: Cannot pass immutable value as inout argument: literals are not mutable

var valInt1 = 10
var valInt2 = 15

swapValues(value1: &valInt1, value2: &valInt2)

var valString1 = "Ten"
var valString2 = "Fifteen"

swapValues(value1: &valString1, value2: &valString2)

