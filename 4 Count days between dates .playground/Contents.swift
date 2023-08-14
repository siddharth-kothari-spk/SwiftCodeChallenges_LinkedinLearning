import Foundation
// https://sarunw.com/posts/getting-number-of-days-between-two-dates/

// Number of days pass midnight, not including a start date
func numberOfDaysBetween(_ from: Date, and to: Date) -> Int {
    let fromDate = Calendar.current.startOfDay(for: from)
    let toDate = Calendar.current.startOfDay(for: to)
    let numberOfDays = Calendar.current.dateComponents([.day], from: fromDate, to: toDate)
    return numberOfDays.day!
}

print(numberOfDaysBetween(Date(), and: Date(timeInterval: 86400, since: Date())))


// Number of days pass midnight, including a start date
extension Calendar {
    func numberOfDaysBetween(_ from: Date, and to: Date) -> Int {
        let fromDate = startOfDay(for: from)
        let toDate = startOfDay(for: to)
        let numberOfDays = dateComponents([.day], from: fromDate, to: toDate)
        
        return numberOfDays.day! + 1 // <1>
    }
}
print(Calendar.current.numberOfDaysBetween(Date(), and: Date(timeInterval: 86400, since: Date())))

// Number of 24 hours days, not including a start date
func numberOf24hoursDaysBetween(_ from: Date, and to: Date) -> Int {
    let numberOfDays = Calendar.current.dateComponents([.day], from: from, to: to)
    
    return numberOfDays.day!
}

print(numberOf24hoursDaysBetween(Date(), and: Date(timeInterval: 86400, since: Date())))

// 
