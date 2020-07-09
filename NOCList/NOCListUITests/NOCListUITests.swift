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

    func testCell() {
        app.tables/*@START_MENU_TOKEN@*/.staticTexts["Ethan Hunt"]/*[[".cells.matching(identifier: \"AgentReusableCell\").staticTexts[\"Ethan Hunt\"]",".staticTexts[\"Ethan Hunt\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        app.navigationBars["Agent Details"].buttons["NOC List"].tap()
    }
}
