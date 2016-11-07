//
//  StringExtensionsTest.swift
//  LiipKit
//
//

import UIKit
import XCTest
import LiipKit

class StringExtensionsTest: XCTestCase {
    func testTildePrefix() {
        let aKey = "a_key"
        XCTAssertEqual(~aKey, NSLocalizedString(aKey, comment: "No comment"))
    }

    func testIsEmptyOrWhitespace() {
        XCTAssert("".isEmptyOrWhitespace())
        XCTAssert(" ".isEmptyOrWhitespace())
        XCTAssert("  ".isEmptyOrWhitespace())
        XCTAssertFalse(" t".isEmptyOrWhitespace())
        XCTAssertFalse("test".isEmptyOrWhitespace())
    }

    func testToDateTime() {
        let dateString = "2016-03-08T00:00:00.000+01:00"
        let dateParsed = dateString.toDateTime()

        let dateComponents = NSDateComponents()
        dateComponents.year = 2016
        dateComponents.month = 3
        dateComponents.day = 8
        dateComponents.timeZone = TimeZone(abbreviation: "+01:00")
        dateComponents.hour = 00
        dateComponents.minute = 00

        let userCalendar = Calendar.current
        let date = userCalendar.date(from: dateComponents as DateComponents)
       
        XCTAssertEqual(date, dateParsed)
    }

    func testToDateTimeWithShortDate() {
        let stortDateString = "2016-03-08"
        let stortDateParsed = stortDateString.toDateTime("yyyy-MM-dd")

        let dateComponents = NSDateComponents()
        dateComponents.year = 2016
        dateComponents.month = 3
        dateComponents.day = 8

        let userCalendar = Calendar.current
        let date = userCalendar.date(from: dateComponents as DateComponents)

        XCTAssertEqual(date, stortDateParsed)
    }
}
