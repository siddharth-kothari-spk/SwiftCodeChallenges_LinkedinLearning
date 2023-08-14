import Foundation

// my sol

func findPrime(numbers: [Int]) -> [Int] {
    if numbers.isEmpty {
        return []
    }
    var prime: [Int] = [Int]()
    for num in numbers {
        if  isPrime(number: num) {
            prime.append(num)
        }
    }
    return prime
    
}

func isPrime(number: Int) -> Bool {
    var count : Int = 0
    for num in 1...number/2 {
        if number % num == 0 {
            count += 1
        }
    }
    return count == 1
}


print(findPrime(numbers: [2,4,5,6,7,8,9,10,11,13]))

// no prime check
print(findPrime(numbers: [4,6,8,9,10]))

