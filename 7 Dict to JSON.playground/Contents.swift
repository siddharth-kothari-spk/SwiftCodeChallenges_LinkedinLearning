import Foundation

let colorsDict = ["red":"FF0000", "blue":"00FF00","green":"0000FF","black":"FFFFFF", "white":"000000"]

// using JSONEncoder
if let jsonData = try? JSONEncoder().encode(colorsDict) {
    if let jsonString = String(data: jsonData, encoding: .utf8) {
        print(jsonString)
    }
}

// using JSONSerialization
if let jsonData = try? JSONSerialization.data(withJSONObject: colorsDict) {
    if let jsonString = String(data: jsonData, encoding: .utf8) {
        print(jsonString)
    }
}

// dict extension
extension Dictionary {
    func toJSONString() -> String? {
        guard let jsonData = try? JSONEncoder().encode(colorsDict) else {
            return nil
        }
        return String(data: jsonData, encoding: .utf8)
    }
}

if let jsonString = colorsDict.toJSONString() {
    print(jsonString)
}
