//
//  DateDurationTest.swift
//  Aashvi CareTests
//
//  Created by Bishal Ghimire on 6/11/19.
//  Copyright © 2019 Bishal Ghimire. All rights reserved.
//

import XCTest
@testable
import Aashvi_Care

class DateDurationTest: XCTestCase {
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    override func setUp() {
    }
    
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    override func tearDown() {
    }
    
    func testDateNotNil() {
        let date = DateDuration(day: 0, month: 0, year: 0)
        XCTAssertNotNil(date, "Date Duration Allocation should not be nil")
    }
    
    func testDifferentDateNotEqual() {
        /// Different Day
        let date3 = DateDuration(day: 1, month: 1, year: 1)
        let date4 = DateDuration(day: 0, month: 1, year: 1)
        XCTAssertNotEqual(date3, date4)
        
        ///  Different Month
        let date1 = DateDuration(day: 0, month: 1, year: 1)
        let date2 = DateDuration(day: 0, month: 0, year: 1)
        XCTAssertNotEqual(date1, date2)
        
        /// Different Year
        let date5 = DateDuration(day: 1, month: 1, year: 0)
        let date6 = DateDuration(day: 1, month: 1, year: 1)
        XCTAssertNotEqual(date5, date6)
    }
    
    func testDateEqual() {
        ///  Equal ZEO Day
        let date1 = DateDuration(day: 0, month: 0, year: 0)
        let date2 = DateDuration(day: 0, month: 0, year: 0)
        XCTAssertEqual(date1, date2)
        
        /// Equal One Year one month one day
        let date3 = DateDuration(day: 1, month: 1, year: 1)
        let date4 = DateDuration(day: 1, month: 1, year: 1)
        XCTAssertEqual(date3, date4)
        
        /// Equal Different Day
        let date5 = DateDuration(day: 10, month: 10, year: 10)
        let date6 = DateDuration(day: 10, month: 10, year: 10)
        XCTAssertEqual(date5, date6)
    }
    
    /*
     func testDateLessThan() {
     let date1 = DateDuration(day: 1, month: 0, year: 0)
     let date2 = DateDuration(day: 2, month: 0, year: 0)
     XCTAssertLessThan(date1, date2, "Date 2 is Not less than Date 1")
     } */
    
    func testDateYearString() {
        let date1 = DateDuration(day: 0, month: 0, year: 1)
        let stringDateValue1 = date1?.yearDescription()
        XCTAssertEqual(stringDateValue1, "1 year", "String not found to be 1 year")
        
        let date2 = DateDuration(day: 0, month: 0, year: 2)
        let stringDateValue2 = date2?.yearDescription()
        XCTAssertEqual(stringDateValue2, "2 years", "String not found to be 2 years")
        
        let date3 = DateDuration(day: 0, month: 0, year: 25)
        let stringDateValue3 = date3?.yearDescription()
        XCTAssertEqual(stringDateValue3, "25 years", "String not found to be 25 years")
    }
    
    func testDateMonthString() {
        let date1 = DateDuration(day: 0, month: 1, year: 1)
        let stringDateValue1 = date1?.monthDescription()
        XCTAssertEqual(stringDateValue1, "1 month", "String not found to be 1 month")
        
        let date2 = DateDuration(day: 0, month: 2, year: 2)
        let stringDateValue2 = date2?.monthDescription()
        XCTAssertEqual(stringDateValue2, "2 months", "String not found to be 2 months")
        
        let date3 = DateDuration(day: 0, month: 13, year: 1)
        let stringDateValue3 = date3?.monthDescription()
        XCTAssertEqual(stringDateValue3, "1 month", "String not found to be 1 months for 13 month case")
    }
    
    func testDateDayString() {
        let date1 = DateDuration(day: 1, month: 1, year: 1)
        let stringDateValue1 = date1?.dayDescription()
        XCTAssertEqual(stringDateValue1, "1 day", "String not found to be 1 day")
        
        let date2 = DateDuration(day: 2, month: 2, year: 2)
        let stringDateValue2 = date2?.dayDescription()
        XCTAssertEqual(stringDateValue2, "2 days", "String not found to be 2 days")
        
        let date3 = DateDuration(day: 31, month: 1, year: 1)
        let stringDateValue3 = date3?.dayDescription()
        XCTAssertEqual(stringDateValue3, "1 day", "String not found to be 1 day for 31 days case")
    }
    
    func testDateFullDescription() {
        let date1 = DateDuration(day: 1, month: 1, year: 1)
        let stringDateValue1 = date1?.fullDescription()
        XCTAssertEqual(stringDateValue1, "1 year 1 month & 1 day", "String not found to be 1 year 1 month 1 day")
    }
    
    func testYearAndMonthDateDescription() {
        let date1 = DateDuration(day: 0, month: 1, year: 1)
        let stringDateValue1 = date1?.fullDescription()
        XCTAssertEqual(stringDateValue1, "1 year & 1 month", "String not found to be 1 year & 1 month")
        
        let date2 = DateDuration(day: 0, month: 6, year: 10)
        let stringDateValue2 = date2?.fullDescription()
        XCTAssertEqual(stringDateValue2, "10 years & 6 months", "String not found to be 10 years & 6 months")
    }
    
    func testYearAndDayDateDescription() {
        let date1 = DateDuration(day: 1, month: 0, year: 1)
        let stringDateValue1 = date1?.fullDescription()
        XCTAssertEqual(stringDateValue1, "1 year & 1 day", "String not found to be 1 year & 1 day")
        
        let date2 = DateDuration(day: 2, month: 0, year: 2)
        let stringDateValue2 = date2?.fullDescription()
        XCTAssertEqual(stringDateValue2, "2 years & 2 days", "String not found to be 2 years & 2 days")
    }
    
    
}
