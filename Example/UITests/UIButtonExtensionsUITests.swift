//
//  LiipKit_ExampleUITests.swift
//  LiipKit_ExampleUITests
//
//

import XCTest

class UIButtonExtensionsUITests: XCTestCase {
    let app = XCUIApplication()
        
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        app.launch()
    }
    
    func testLocalizedTitles() {
        XCTAssert(app.buttons["A translated key 3"].exists)
        XCTAssert(app.buttons["Button pushed"].exists)
    }
}
