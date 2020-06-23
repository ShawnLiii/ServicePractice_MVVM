//
//  ServicePracticeTests.swift
//  ServicePracticeTests
//
//  Created by Shawn Li on 6/5/20.
//  Copyright © 2020 ShawnLi. All rights reserved.
//

import XCTest
@testable import ServicePractice

class ServicePracticeTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testViewModel() throws
    {
        let vm = ProfileViewModel()
        
        XCTAssertNotEqual(vm.photos.count, 0)
    }

    func testPerformanceExample() throws
    {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
