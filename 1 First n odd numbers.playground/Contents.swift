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
print((1...n).filter{ $0 ^ 1 == $0 - 1})

// sol4 : using stride
stride(from: 1, to: n + 1, by: 2).forEach { odd in
    print(odd)
}
