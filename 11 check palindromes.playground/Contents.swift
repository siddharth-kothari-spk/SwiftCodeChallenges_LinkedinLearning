import Foundation

func palindromeCheck(_ string: String) -> Bool {
    
    return string == String(string.reversed())
}

print(palindromeCheck("madam"))
print(palindromeCheck("hannah"))
print(palindromeCheck("baaba"))
