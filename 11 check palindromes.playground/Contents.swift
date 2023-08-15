import Foundation

func palindromeCheck(_ string: String) -> Bool {
    let string = string.filter{$0.isLetter}
    
    guard string.count > 1 else {
        return true
    }
   // return string.caseInsensitiveCompare(String(string.reversed())) == .orderedSame
    
    let chars = Array(string.lowercased())
    var leftIndex = 0
    var rightIndex = chars.count - 1
    
    while leftIndex < rightIndex {
        if chars[leftIndex] != chars[rightIndex] {
            return false
        }
        leftIndex += 1
        rightIndex -= 1
    }
    return true
}

print(palindromeCheck("madam"))
print(palindromeCheck("Hannah"))
print(palindromeCheck("baaba"))

print(palindromeCheck("A"))
print(palindromeCheck("Amore, roma"))
