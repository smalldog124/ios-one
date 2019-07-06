//
//  helloUnitUITests.swift
//  helloUnitUITests
//
//  Created by lek on 6/7/2562 BE.
//  Copyright © 2562 lek. All rights reserved.
//

import XCTest

class helloUnitUITests: XCTestCase {

    override func setUp() {
        continueAfterFailure = false
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
    }

    override func tearDown() {
    }

    func testExample() {
        
        let app = XCUIApplication()
        let userName = app.textFields["username"]
        snapshot("Step_01")
        userName.tap()
        userName.typeText("smalldoc")
        snapshot("Step_02")
        
        let submitButton = app.buttons["submit"]
        submitButton.tap()
        snapshot("Step_03")
        app.keyboards.buttons["Hide keyboard"].tap()
        
    }
}
