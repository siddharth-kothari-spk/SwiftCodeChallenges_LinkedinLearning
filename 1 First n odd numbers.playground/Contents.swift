import Foundation
// my solution
func firstOddNUmbers(count: Int) {
    var num: Int = 1
    
    for _ in 1...count {
        print(num)
        num += 2
    }
}

firstOddNUmbers(count: 5)

// sol2

let n = 10
for num in 1...n {
    if num % 2 == 1 {
        print(num)
    }
}

// sol3 : using array filter
print((1...n).filter({ num in
    num % 2 == 1
}))

print((1...n).filter{ $0 % 2 == 1})

// sol4: using xor operator
// The idea is to check whether the last bit of the number is set or not. If the last bit is set then the number is odd, otherwise even.
//As we know bitwise XOR Operation of the Number by 1 increment the value of the number by 1 if the number is even otherwise it decrements the value of the number by 1 if the value is odd.
print((1...n).filter{ $0 ^ 1 == $0 - 1})

// sol4 : using stride
stride(from: 1, to: n + 1, by: 2).forEach { odd in
    print(odd)
}

/// using otherbitwise operators
/// https://www.geeksforgeeks.org/check-if-a-number-is-odd-or-even-using-bitwise-operators/
///

// using AND operator
//As we know bitwise AND Operation of the Number by 1 will be 1, If it is odd because the last bit will be already set. Otherwise, it will give 0 as output.
print((1...n).filter{ $0 & 1 == 1})

// using OR operator
//As we know bitwise OR Operation of the Number by 1 increment the value of the number by 1 if the number is even otherwise it will remain unchanged.
print((1...n).filter{ $0 | 1 == $0})

// Using bitwise left and right shift operators:
//The idea is to check whether a number remains the same after performing some operations i.e. bitwise left and right shift. When we do a bitwise right shift of the number then the last bit of the number is removed whenever it is 1 or 0. After that performing the left shift to the number by default a new binary is added to the last bit which is 0, by displacement of one bit by one. Even numbers remain the same but odd changed its value. compare the initial and final values of the number to check number is even or odd.
print((1...n).filter{ (($0 >> 1) << 1) != $0})
