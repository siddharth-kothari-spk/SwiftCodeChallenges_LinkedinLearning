import Foundation


func generatePassword(_ length: Int) -> String {
    let passwordString = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM1234567890!@#$%^&*()-=_+"
    /*
    var password : String = ""
    
    for _ in 1...length {
        password.append(passwordString.randomElement()!)
    }
    return password
    */
    
    return String((0..<length).compactMap{ _ in passwordString.randomElement()})
}

print(generatePassword(5))
print(generatePassword(10))
