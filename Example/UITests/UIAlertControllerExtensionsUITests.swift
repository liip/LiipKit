//
//  UIAlertControllerExtensionsUITests.swift
//  LiipKit
//
//  Created by Noé on 11.11.16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import XCTest

class UIAlertControllerExtensionsUITests: XCTestCase {
    let app = XCUIApplication()

    override func setUp() {
        super.setUp()

        continueAfterFailure = false
        app.launch()
    }

    func testShowAlert() {
        app.buttons["Show alert"].tap()
        let alert = app.alerts["Alert"]
        XCTAssert(alert.staticTexts["Alert message"].exists)
        alert.buttons["Ok"].tap()
        XCTAssertFalse(alert.staticTexts["Alert message"].exists)
    }
}
