//
//  NOCListUITests.swift
//  NOCListUITests
//
//  Created by FGT MAC on 7/8/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest

class NOCListUITests: XCTestCase {
    
    private var app: XCUIApplication {
        return XCUIApplication()
    }
    
    //Overwrite original method
    override func setUp() {
        continueAfterFailure = false
        app.activate()
    }
    
    func testDetailVC() {
        
        app.tables.staticTexts["Ethan Hunt"].tap()
        
        let coverTextField = app.staticTexts["CoverTextField"]
        let realTextField = app.staticTexts["RealNameTextField"]
        let accessLevel = app.staticTexts["AccessLevel"]
        
        //Test values
        XCTAssertNotNil(coverTextField.value)
        XCTAssertNotNil(realTextField.value)
        XCTAssertNotNil(accessLevel.value)
        
        //Go back to tableView
        app.navigationBars["Agent Details"].buttons["NOC List"].tap()
    }
    
    
    func testExposedAgents() {
        let compromisedAgentsCount = XCUIApplication().tables.staticTexts["5 agents compromised"]
        XCTAssertTrue(compromisedAgentsCount.exists)
    }
}
