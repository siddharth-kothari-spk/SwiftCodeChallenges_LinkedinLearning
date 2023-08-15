import Foundation

func findVowelsAndConsonants(_ str: String) {
    let myVowel = "aeious"
    let myconsonant = "bcdfghijklmnpqrtvwxyz"
    
    let testString = str.lowercased()
    
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
