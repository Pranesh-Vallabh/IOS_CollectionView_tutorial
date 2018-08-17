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
    
    var mockBeerListViewable: MockBeerListViewable?
    var successMockRespository: SuccessMockRespositoryGetBeerData?
    var failedMockRespository: FailedMockRespositoryGetBeerData?
    var successBeerListViewModel: SuccessBeerListViewModel?
    var failedBeerListViewModel: FailedBeerListViewModel?
    
    override func setUp() {
        super.setUp()
        mockBeerListViewable = MockBeerListViewable()
        successMockRespository = SuccessMockRespositoryGetBeerData()
        failedMockRespository = FailedMockRespositoryGetBeerData()
        
        if let mockBeerListViewable = mockBeerListViewable {
            
            if let successMockRespository = successMockRespository {
                successBeerListViewModel = SuccessBeerListViewModel(beerListView: mockBeerListViewable, respository: successMockRespository)
            }
            
            if let failedMockRespository = failedMockRespository {
                failedBeerListViewModel = FailedBeerListViewModel(beerListView: mockBeerListViewable, respository: failedMockRespository)
            }
        }
    }
    
    override func tearDown() {
        mockBeerListViewable = nil
        successMockRespository = nil
        failedMockRespository = nil
        successBeerListViewModel = nil
        failedBeerListViewModel = nil
        super.tearDown()
    }
    
    func testGetBeerDataInvokesShowBeerList() {
        guard let mockBeerListViewable = mockBeerListViewable else {
            XCTFail("Expected non-nil mockBeerListViewable object")
            return
        }
        
        guard let successMockRespository = successMockRespository else {
            XCTFail("Expected non-nil successMockRespository object")
            return
        }
        
        guard let successBeerListViewModel = successBeerListViewModel else {
            XCTFail("Expected non-nil successBeerListViewModel object")
            return
        }
        
        successBeerListViewModel.getBeerData()
        
        XCTAssertEqual(successBeerListViewModel.getBeerDataCounter, 1, "Expected getBeerData method to be called once")
        XCTAssertEqual(successMockRespository.fetchBeerDataCounter, 1, "Expected fetchBeerData method to be called once")
        XCTAssertEqual(mockBeerListViewable.getBeerDataCounter, 0, "Expected getBeerData method to be called zero times")
        XCTAssertEqual(mockBeerListViewable.showErrorMessageCounter, 0, "Expected showErrorMessage method to be called zero times")
        XCTAssertEqual(mockBeerListViewable.showBeerListCounter, 1, "Expected showBeerList method to be called once")
        XCTAssertEqual(mockBeerListViewable.beers.count, SampleData.generateBeerData().count, "Expected beers array count equal to SampleData.generateBeerData count")
        XCTAssertEqual(mockBeerListViewable.beers[0].name, SampleData.generateBeerData()[0].name, "Expected beers.name object to be equal")
    }
    
    func testGetBeerDataInvokesShowErrorMessage() {
        
        guard let mockBeerListViewable = mockBeerListViewable else {
            XCTFail("Expected non-nil mockBeerListViewable object")
            return
        }
        
        guard let failedMockRespository = failedMockRespository else {
            XCTFail("Expected non-nil failedMockRespository object")
            return
        }
        
        guard let failedBeerListViewModel = failedBeerListViewModel else {
            XCTFail("Expected non-nil failedBeerListViewModel object")
            return
        }
        
        failedBeerListViewModel.getBeerData()
        
        XCTAssertEqual(failedBeerListViewModel.getBeerDataCounter, 1, "Expected getBeerData method to be called once")
        XCTAssertEqual(failedMockRespository.fetchBeerDataCounter, 1, "Expected fetchBeerData method to be called once")
        XCTAssertEqual(mockBeerListViewable.getBeerDataCounter, 0, "Expected getBeerData method to be called zero times")
        XCTAssertEqual(mockBeerListViewable.showErrorMessageCounter, 1, "Expected showErrorMessage method to be called once")
        XCTAssertEqual(mockBeerListViewable.showBeerListCounter, 0, "Expected showBeerList method to be called zero times")
    }
    
}
