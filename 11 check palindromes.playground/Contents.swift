import Foundation

func palindromeCheck(_ string: String) -> Bool {
    
    guard string.count > 1 else {
        return true
    }
    return string.caseInsensitiveCompare(String(string.reversed())) == .orderedSame
}

print(palindromeCheck("madam"))
print(palindromeCheck("Hannah"))
print(palindromeCheck("baaba"))

print(palindromeCheck("A"))
