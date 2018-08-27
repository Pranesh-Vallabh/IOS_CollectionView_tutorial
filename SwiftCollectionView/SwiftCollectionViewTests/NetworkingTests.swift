//
//  NetworkingTests.swift
//  SwiftCollectionViewTests
//
//  Created by Pranesh on 2018/08/26.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import XCTest
import Cuckoo
@testable import SwiftCollectionView

class NetworkingTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testGivenAUrlWhenRequestMethodOfTheNetworkingIsCalledItReturnsSuccessfullyAndANonNilResponseObject() {
        let systemUnderTest = MockNetworking().withEnabledSuperclassSpy()
        let networkExpectation = expectation(description: "Network request successful")
        systemUnderTest.request{response in
            XCTAssertNotNil(response, "Expected a non-nil response object")
            networkExpectation.fulfill()
        }
        wait(for: [networkExpectation], timeout: 10)
        verify(systemUnderTest, times(1)).request(any())
    }
}
