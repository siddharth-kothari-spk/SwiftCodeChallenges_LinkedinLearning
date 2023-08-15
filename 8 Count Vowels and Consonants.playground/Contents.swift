import Foundation

func findVowelsAndConsonants(_ str: String) {
    let myVowel = "aeious"
    let myconsonant = "bcdfghijklmnpqrtvwxyz"
    
    print(str.count)
    let testString = str.filter{$0.isLetter}.lowercased()
    print(testString.count)
    var vowel = 0
    var consonant = 0
    
    for ch in testString {
        if myVowel.contains(ch) {
            vowel += 1
        }
        else if myconsonant.contains(ch) {
            consonant += 1
        }
    }
    
    print("Vowels: \(vowel) \nConsonants: \(consonant)")
}

findVowelsAndConsonants("qwertyuiop asdfghj__klzxc ??? vbnm")
