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
import ApiPod
class NetworkingTests: XCTestCase {

    override func setUp() {
        super.setUp()
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
