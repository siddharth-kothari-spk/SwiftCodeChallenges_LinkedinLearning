import Foundation

// my solution
func swapValues<T: Comparable>( value1: inout T, value2: inout T) {
    guard value1 != value2 else {
        // no swap needed if both are same
        print("no swap needed")
        return
    }
   /* let temp = value1
    value1 = value2
    value2 = temp */
    
    // using tuple
    (value1, value2) = (value2, value1)
}

//swapValues(value1: 10, value2: 15) // Error: Cannot pass immutable value as inout argument: literals are not mutable

var valInt1 = 10
var valInt2 = 15

print("Original: value1 = \(valInt1), value2 = \(valInt2)")
swapValues(value1: &valInt1, value2: &valInt2)
print("After swap: value1 = \(valInt1), value2 = \(valInt2)")

var valString1 = "Ten"
var valString2 = "Fifteen"

print("Original: value1 = \(valString1), value2 = \(valString2)")
swapValues(value1: &valString1, value2: &valString2)
print("After swap: value1 = \(valString1), value2 = \(valString2)")

var one = 100.0
var two = 100.0
swapValues(value1: &one, value2: &two)
