import Foundation

enum Choice: String {
    case rock
    case paper
    case scissor
}

enum Output: String {
    case win
    case lose
    case draw
}

func play(choice: Choice) -> Output {
    let compChoice = [Choice.paper, Choice.rock, Choice.scissor].randomElement()
    var result = Output.draw
    print("Computer: \(String(describing: compChoice))")
    switch (choice, compChoice) {
    case (.rock, .paper), (.paper, .scissor), (.scissor, .rock):
        result = .lose
    case (.paper,.rock), (.scissor, .paper), (.rock ,.scissor):
        result = .win
    default:
        result = .draw
    }
    
    return result
}

let userChoice = Choice.rock
let result = play(choice: userChoice)

print("""
User: \(userChoice)
Result: \(result)
""")
