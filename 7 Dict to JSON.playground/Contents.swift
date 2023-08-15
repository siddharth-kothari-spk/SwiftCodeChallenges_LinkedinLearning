import Foundation

let colorsDict = ["red":"FF0000", "blue":"00FF00","green":"0000FF"]

if let jsonData = try? JSONEncoder().encode(colorsDict) {
    if let jsonString = String(data: jsonData, encoding: .utf8) {
        print(jsonString)
    }
}
