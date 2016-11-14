//
//  NSDateExtensionsTest.swift
//  LiipKit
//
//

import Foundation
import XCTest
import LiipKit

class NSDateExtensionsTest: XCTestCase {
    func testToString() {
        let dateComponents = NSDateComponents()
        dateComponents.year = 2016
        dateComponents.month = 3
        dateComponents.day = 8
        dateComponents.timeZone = TimeZone(abbreviation: "+01:00")
        dateComponents.hour = 00
        dateComponents.minute = 00

        let userCalendar = Calendar.current
        let date = userCalendar.date(from: dateComponents as DateComponents)

        XCTAssertEqual(date?.toString(), "08-03-2016")
        XCTAssertEqual(date?.toString(dateFormat: "dd.MM.yyyy"), "08.03.2016")
        XCTAssertEqual(date?.toString(dateFormat: "yyyy"), "2016")
    }
}
