//
//  StringExtensionsTest.swift
//  LiipKit
//
//

import UIKit
import XCTest
import LiipKit

class UIColorExtensionsTest: XCTestCase {
    func testInitHex() {
        let aColor = UIColor(hex: 0x0099FF)

        let components = aColor.cgColor.components
        XCTAssertEqual(0.0, components?[0])
        XCTAssertEqual(0.6, components?[1])
        XCTAssertEqual(1, components?[2])
        XCTAssertEqual(1, aColor.cgColor.alpha)
    }

    func testInitHexWithAlpha() {
        let aColor = UIColor(hex: 0x0099FF, alpha: 0.3)
        XCTAssertEqual(0.3, aColor.cgColor.alpha)
    }

    func testInitHexString() {
        var aColor = UIColor(hexString: "0x0099FF")
        let sameColor = UIColor(red: 0, green: 0.6, blue: 1, alpha: 1)

        XCTAssertNotNil(aColor)
        XCTAssertEqual(aColor!, sameColor)

        aColor = UIColor(hexString: "#0099FF")

        XCTAssertNotNil(aColor)
        XCTAssertEqual(aColor, sameColor)
    }
    
    func testInitHexStringWithAlpha() {
        var aColor = UIColor(hexString: "0x0099FF", alpha: 0.3)
        let sameColor = UIColor(red: 0, green: 0.6, blue: 1, alpha: 0.3)

        XCTAssertNotNil(aColor)
        XCTAssertEqual(aColor!, sameColor)

        aColor = UIColor(hexString: "#0099FF", alpha: 0.3)

        XCTAssertNotNil(aColor)
        XCTAssertEqual(aColor, sameColor)
    }

    func testInitRGB() {
        let aColor = UIColor(r: 0, g: 127.5, b: 255)
        let sameColor = UIColor(red: 0, green: 0.5, blue: 1, alpha: 1)

        XCTAssertEqual(aColor, sameColor)
    }

    func testInitRGBA() {
        let aColor = UIColor(r: 0, g: 127.5, b: 255, a: 0.5)
        let sameColor = UIColor(red: 0, green: 0.5, blue: 1, alpha: 0.5)

        XCTAssertEqual(aColor, sameColor)
    }
}
