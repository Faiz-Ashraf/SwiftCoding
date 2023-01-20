//
//  BundleDecodeTests.swift
//  CircularTransitionTests
//
//  Created by Steven Curtis on 21/08/2020.
//  Copyright © 2020 Steven Curtis. All rights reserved.
//

import XCTest
@testable import CircularTransition

class BundleDecodeTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBundle() {
        let file = Bundle(for: type(of: self)).path(forResource: "TestJson", ofType: nil)
        print (file)
    }
    
    func testingBundle() {
        let file = try? Bundle(for: type(of: self)).decode([PeopleModel].self, from: "Test.json")
        XCTAssertEqual(file, [testPerson])
    }
    
    func testingMissingFile() {
        XCTAssertThrowsError(try Bundle(for: type(of: self)).decode([PeopleModel].self, from: "Missing.json"))
    }

}
