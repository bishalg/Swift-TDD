//
//  DateDuration.swift
//  Aashvi Care
//
//  Created by Bishal Ghimire on 6/11/19.
//  Copyright © 2019 Bishal Ghimire. All rights reserved.
//

import Foundation

struct DateDuration {
    let year: Int
    let month: Int
    let day: Int
    
    init?(day: Int, month: Int, year: Int) {
        var aDay = day
        var aMonth = month
        var aYear = year
        if aDay > 30 {
            aMonth += 1
            aDay = abs(30 - aDay)
        }
        if aMonth > 12 {
            aYear += 1
            aMonth = abs(12 - aMonth)
        }
        self.year = aYear
        self.month = aMonth
        self.day = aDay
    }
    
}

extension DateDuration {
    
    static func + (left: DateDuration, right: DateDuration) -> DateDuration? {
        var day = left.day + right.day
        var month = left.month + right.month
        var year = left.year + right.year
        if day > 30 {
            month += 1
            day = abs(30 - day)
        }
        if month > 12 {
            year += 1
            month = abs(12 - month)
        }
        return DateDuration(day: day, month: month, year: year)
    }
    
    static func - (left: DateDuration, right: DateDuration) -> DateDuration? {
        var day = left.day - right.day
        var month = left.month - right.month
        var year = left.year - right.year
        if day < 0 {
            month -= 1
            day = 30 + day
        }
        if month < 0 {
            year -= 1
            month = 12 + month
        }
        return DateDuration(day: day, month: month, year: year)
    }
    
}

extension DateDuration: Equatable {
    
    static func == (lhs: DateDuration, rhs: DateDuration) -> Bool {
        if lhs.day == rhs.day &&
            lhs.month == rhs.month &&
            lhs.year == rhs.year {
            return true
        }
        return false
    }
    
}

extension DateDuration: Comparable {
    
    static func < (lhs: DateDuration, rhs: DateDuration) -> Bool {
        guard let date = lhs - rhs else { return false }
        if date.year < 0 {
            return false
        } else if date.month < 0 {
            return false
        } else if date.day < 0 {
            return false
        }
        return true
    }
    
    static func <= (lhs: DateDuration, rhs: DateDuration) -> Bool {
        guard let date = lhs - rhs else { return false }
        if date.year <= 0 {
            return false
        } else if date.month <= 0 {
            return false
        } else if date.day <= 0 {
            return false
        }
        return true
    }
    
    static func >= (lhs: DateDuration, rhs: DateDuration) -> Bool {
        guard let date = rhs - lhs else { return false }
        if date.year <= 0 {
            return false
        } else if date.month <= 0 {
            return false
        } else if date.day <= 0 {
            return false
        }
        return true
    }
    
    static func > (lhs: DateDuration, rhs: DateDuration) -> Bool {
        guard let date = rhs - lhs else { return false }
        if date.year < 0 {
            return false
        } else if date.month < 0 {
            return false
        } else if date.day < 0 {
            return false
        }
        return true
    }
    
}


/// String Description

extension DateDuration {
    
    func yearDescription() -> String {
        if year > 1 {
            return "\(year) years"
        } else if year == 1 {
            return "1 year"
        } else {
            return ""
        }
    }
    
    func monthDescription() -> String {
        if month > 1 {
            return "\(month) months"
        } else if month == 1 {
            return "1 month"
        } else {
            return ""
        }
    }
    
    func dayDescription() -> String {
        if day > 1 {
            return "\(day) days"
        } else if day == 1 {
            return "1 day"
        } else {
            return ""
        }
    }
    
    func fullDescription() -> String {
        if dayDescription() == "" {
            return yearAndMonthDescription()
        } else if monthDescription() == "" {
            return yearAndDayDescription()
        } else if yearDescription() == "" {
            return monthAndDayDescription()
        }
        return yearDescription() + " " + monthDescription() + " & " + dayDescription()
    }
    
    func yearAndMonthDescription() -> String {
        if monthDescription() == "" {
            return yearDescription()
        } else {
            return yearDescription() + " & " + monthDescription()
        }
    }
    
    func yearAndDayDescription() -> String {
        if dayDescription() == "" {
            return yearDescription()
        } else {
            return yearDescription() + " & " + dayDescription()
        }
    }
    
    func monthAndDayDescription() -> String {
        if dayDescription() == "" {
            return monthDescription()
        } else {
            return monthDescription() + " & " + dayDescription()
        }
    }
    
}
