import Foundation
// https://sarunw.com/posts/getting-number-of-days-between-two-dates/

func numberOfDaysBetween(_ from: Date, and to: Date) -> Int {
    let fromDate = Calendar.current.startOfDay(for: from) // <1>
    let toDate = Calendar.current.startOfDay(for: to) // <2>
    let numberOfDays = Calendar.current.dateComponents([.day], from: fromDate, to: toDate) // <3>
        
        return numberOfDays.day!
}

//print(numberOfDaysBetween())
print(numberOfDaysBetween(Date(), and: Date(timeInterval: 86400, since: Date())))


