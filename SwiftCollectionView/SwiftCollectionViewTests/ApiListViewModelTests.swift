//
//  BeerListViewModel2Tests.swift
//  SwiftCollectionViewTests
//
//  Created by Pranesh on 2018/08/22.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import XCTest
import Cuckoo
import ApiPod
import Foundation
@testable import SwiftCollectionView

class ApiListViewModelTests: XCTestCase {
  
    let mockBeerListView: MockApiViewable = MockApiViewable()
    let mockSuccessBeerRepository = SuccessMockApiRepository()
    let mockFailBeerRepository = ErrorMockApiRepository()
    var mainAsyncExpectation: XCTestExpectation?
    lazy var systemUnderTests = {
        ApiListViewModel<Beer>(apiListView: mockBeerListView, apiUrl: Constants.punkApiUrl)
    }()
    
    override func setUp() {
        super.setUp()
        mainAsyncExpectation = XCTestExpectation(description: "testing")
    }
    
    override func tearDown() {
       mainAsyncExpectation = nil
        super.tearDown()
    }
    
    func testGivenAViewAndRepoWhenGetBeerDataIsCalledItReturnsSuccessfully() {
        Resolver.reset()
        let container = DepedencyContainer.instance
        container.register(dependecy: ApiDataGetable.self, implementation: {
            return self.mockSuccessBeerRepository
        })
        
        systemUnderTests.getApiData()
        
        Timer.scheduledTimer(withTimeInterval: 10, repeats: false) { _ in
            self.mainAsyncExpectation?.fulfill()
        }
        wait(for: [mainAsyncExpectation!], timeout: 30)
        
        XCTAssertEqual(mockSuccessBeerRepository.verifyFetchApiDataCounter, 1)
        XCTAssertEqual(mockBeerListView.verifyShowErrorMessageCounter, 0)
        XCTAssertEqual(mockBeerListView.verifyShowApiItemListCounter, 1)
    }
    
    func testGivenAViewAndRepoWhenGetBeerDataIsCalledItReturnsAnError() {
        Resolver.reset()
 
        let container = DepedencyContainer.instance
        container.register(dependecy: ApiDataGetable.self, implementation: {
            return self.mockFailBeerRepository
        })
        
        systemUnderTests.getApiData()
        
        Timer.scheduledTimer(withTimeInterval: 10, repeats: false) { _ in
            self.mainAsyncExpectation?.fulfill()
        }
        
        wait(for: [mainAsyncExpectation!], timeout: 30)
        
        XCTAssertEqual(mockFailBeerRepository.verifyFetchApiDataCounter, 1)
        XCTAssertEqual(mockBeerListView.verifyShowErrorMessageCounter, 1)
        XCTAssertEqual(mockBeerListView.verifyShowApiItemListCounter, 0)
    }
    
}




