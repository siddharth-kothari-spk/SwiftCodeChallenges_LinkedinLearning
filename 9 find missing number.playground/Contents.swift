import Foundation

// find smallest positive missing number

func findSmallestPositiveMissingNumber(_ numbers: [Int]) -> Int {
    var result = 1
    var numbersSorted = numbers.sorted()
    
    if let greatest = numbersSorted.last, greatest <= 0 {
        // input contains only negative numbers
        return result
    }
    
    for index in 0..<numbers.count {
        let num = numbersSorted[index]
        if num > 0 && (numbersSorted[index+1] - num > 1) {
            result = num + 1
            break
        }
    }
    
    return result
}

print(findSmallestPositiveMissingNumber([-2,1,2,3,6]))
print(findSmallestPositiveMissingNumber([-2,-4,-1,-2,-2]))

