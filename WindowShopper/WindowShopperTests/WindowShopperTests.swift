//
//  WindowShopperTests.swift
//  WindowShopperTests
//
//  Created by Arthur Pujols on 7/30/17.
//  Copyright © 2017 Arthur Pujols. All rights reserved.
//

import XCTest

class WindowShopperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
	
	func testGetHours() {
		XCTAssert(Wage.howManyHours(forWage: 25, forPrice: 100) == 4)
		XCTAssert(Wage.howManyHours(forWage: 15.50, forPrice: 250.53) == 17)
	}
	
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
