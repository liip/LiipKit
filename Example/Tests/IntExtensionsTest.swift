//
//  IntExtensionsTest.swift
//  LiipKit
//
//

import Foundation
import XCTest
import LiipKit

class IntExtensionsTests: XCTestCase {
    func testSecondsToHoursMinutesSeconds() {
        XCTAssertEqual(120.secondsToHoursMinutesSeconds(), "0:02:00")
        XCTAssertEqual(3601.secondsToHoursMinutesSeconds(), "1:00:01")
        XCTAssertEqual(360061.secondsToHoursMinutesSeconds(), "100:01:01")
    }
}