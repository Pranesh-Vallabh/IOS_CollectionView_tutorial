//
//  BeerListViewModel.swift
//  SwiftCollectionViewTests
//
//  Created by Pranesh on 2018/08/17.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import XCTest
@testable import SwiftCollectionView

class BeerListViewModelTests: XCTestCase {
    
    var successMockRespository: SuccessMockRespositoryGetBeerData?
    var failedMockRespository: FailedMockRespositoryGetBeerData?
    var mockBeerListViewable: MockBeerListViewable?
    
    override func setUp() {
        super.setUp()
        mockBeerListViewable = MockBeerListViewable()
        successMockRespository = SuccessMockRespositoryGetBeerData()
        failedMockRespository = FailedMockRespositoryGetBeerData()
    }
    
    override func tearDown() {
        mockBeerListViewable = nil
        successMockRespository = nil
        failedMockRespository = nil
        super.tearDown()
    }
    
    func testGivenAViewAndRepoWhenGetBeerDataIsCalledItReturnsSuccessfully() {
        
        guard let mockBeerListViewable = mockBeerListViewable else {
            XCTFail("Expected non-nil mockBeerListViewable object")
            return
        }
        
        guard let successMockRespository = successMockRespository else {
            XCTFail("Expected non-nil successMockRespository object")
            return
        }
        let mainQueue = DispatchQueue(label: "BeerListViewModelTest-mainQueue")
        let globalQueue = DispatchQueue(label: "BeerListViewModelTest-globalQueue")
        let systemTest = BeerListViewModel(beerListView: mockBeerListViewable, repo: successMockRespository)
        systemTest.getBeerData(onMainQueue: mainQueue, onGlobalQueue: globalQueue)
        
        globalQueue.sync {
        }
        
        mainQueue.sync {
        }

        successMockRespository.verifyOnce()
        mockBeerListViewable.verifyBeerListSuccess()
    }
    
    func testGivenAViewAndRepoWhenGetBeerDataIsCalledItReturnsAnError() {
       
        guard let mockBeerListViewable = mockBeerListViewable else {
            XCTFail("Expected non-nil mockBeerListViewable object")
            return
        }
        
        guard let failedMockRespository  = failedMockRespository else {
            XCTFail("Expected non-nil failedMockRespository object")
            return
        }
        let mainQueue = DispatchQueue(label: "BeerListViewModelTest-mainQueue")
        let globalQueue = DispatchQueue(label: "BeerListViewModelTest-globalQueue")
        let systemTest = BeerListViewModel(beerListView: mockBeerListViewable, repo: failedMockRespository)
        
        systemTest.getBeerData(onMainQueue: mainQueue, onGlobalQueue: globalQueue)
        
        globalQueue.sync {
        }
        
        mainQueue.sync {
        }
        
        failedMockRespository.verifyOnce()
        mockBeerListViewable.verifyBeerListFailure()
    }
    
    func testGivenANilViewAndRepoWhenGetBeerDataIsCalledReturnsNothing() {
        
        guard let successMockRespository = successMockRespository else {
            XCTFail("Expected non-nil successMockRespository object")
            return
        }
        let mainQueue = DispatchQueue(label: "BeerListViewModelTest-mainQueue")
        let globalQueue = DispatchQueue(label: "BeerListViewModelTest-globalQueue")
        let systemTest = BeerListViewModel(beerListView: nil, repo: successMockRespository )
        
        systemTest.getBeerData(onMainQueue: mainQueue, onGlobalQueue: globalQueue)
        
        globalQueue.sync {
        }
        
        mainQueue.sync {
        }
        
        successMockRespository.verifyNone()
    }
    
    func testGivenAViewAndNilRepoWhenGetBeerDataisCalledReturnsNothing() {
        guard let mockBeerListViewable = mockBeerListViewable else {
            XCTFail("Expected non-nil mockBeerListViewable object")
            return
        }
        

        let mainQueue = DispatchQueue(label: "BeerListViewModelTest-mainQueue")
        let globalQueue = DispatchQueue(label: "BeerListViewModelTest-globalQueue")
        let systemTest = BeerListViewModel(beerListView: mockBeerListViewable, repo: nil)
        systemTest.getBeerData(onMainQueue: mainQueue, onGlobalQueue: globalQueue)
        
        globalQueue.sync {
        }
        
        mainQueue.sync {
        }
        
        mockBeerListViewable.verifyNone()
    }
  
}
