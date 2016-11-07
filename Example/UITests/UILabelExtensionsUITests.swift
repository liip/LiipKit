//
//  UILabelExtensionsUITests.swift
//  LiipKit
//
//

import XCTest

class UILabelExtensionsUITests: XCTestCase {
    let app = XCUIApplication()

    override func setUp() {
        super.setUp()

        continueAfterFailure = false
        app.launch()
    }

    func testLocalizedTitles() {
        XCTAssert(app.staticTexts["A translated key 2"].exists)
    }
}
