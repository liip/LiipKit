//
//  UIBarItemExtensionsUITests.swift
//  LiipKit
//
//

import XCTest

class UIBarItemExtensionsUITests: XCTestCase {
    let app = XCUIApplication()

    override func setUp() {
        super.setUp()

        continueAfterFailure = false
        app.launch()
    }

    func testLocalizedTitles() {
        XCTAssert(app.navigationBars.buttons["A translated key 1"].exists)
    }
}
