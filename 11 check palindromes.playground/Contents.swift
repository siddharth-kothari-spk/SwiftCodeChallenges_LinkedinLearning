import Foundation

func palindromeCheck(_ string: String) -> Bool {
    
    return string.caseInsensitiveCompare(String(string.reversed())) == .orderedSame
}

print(palindromeCheck("madam"))
print(palindromeCheck("Hannah"))
print(palindromeCheck("baaba"))
