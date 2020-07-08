//
//  NOCListTests.swift
//  NOCListTests
//
//  Created by FGT MAC on 7/8/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import NOCList//Import because the target project being test resides in a different directory

class NOCListTests: XCTestCase {
    
    func testAgentModel() {
        let agent = Agent(coverName: "James Bond", realName: "Fritz", accessLevel: 5, compromised: false)
        
        XCTAssertNotEqual(agent.coverName, "992020")
        XCTAssertEqual(agent.realName, "Fritz")
        XCTAssertLessThan(agent.accessLevel, 10)
        XCTAssertFalse(agent.compromised)
    }
    

    

}
