//
//  BeerRepositoryTests.swift
//  SwiftCollectionViewTests
//
//  Created by Pranesh on 2018/08/17.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import XCTest
@testable import SwiftCollectionView


class BeerRepositoryTests: XCTestCase {
    
    var beerRespository: BeerRepository?
    var successMockRespository: SuccessMockRespositoryGetBeerData?
    var failedMockRespository: FailedMockRespositoryGetBeerData?
    
    override func setUp() {
        super.setUp()
        beerRespository = BeerRepository()
        successMockRespository = SuccessMockRespositoryGetBeerData()
        failedMockRespository = FailedMockRespositoryGetBeerData()
    }
    
    override func tearDown() {
        beerRespository = nil
        successMockRespository = nil
        failedMockRespository = nil
        super.tearDown()
    }
    
    func testFetchBeerDataApiUrlIsSuccessful() {
        let successExpectation = expectation(description: "Success")
        
        guard let beerRespository = beerRespository else {return}
        
        beerRespository.fetchBeerData{ (beers, error) in
            XCTAssertNotNil(beers, "Expected non-nil beers object")
            successExpectation.fulfill()
            
        }
        
        waitForExpectations(timeout: 5.0, handler: nil)
    }
    
    func testFetchBeerCorrectBeerObjectIsRecived() {
        guard let successMockRespository = successMockRespository else {
            XCTFail("Excepted non-nil successMockRepository object")
            return
        }
        
        successMockRespository.fetchBeerData{ (beers,error) in
            XCTAssertNotNil(beers, "Expetect non-nil beers object")
            XCTAssertNil(error, "Expected nil error object")
            guard let beers = beers else {
                return
            }
            XCTAssertEqual(successMockRespository.fetchBeerDataCounter, 1, "Expected fetchBeerData method to be called once")
            XCTAssertEqual(beers[0].name, SampleData.generateBeerData()[0].name, "Expected beers.name object to be equal")
        }
    }
    
    func testFetchBeerDataWhenErrorIsGenerated() {
        guard let failedMockRespository = failedMockRespository else {
            XCTFail("Expected non-nil failedMockRespository object")
            return
        }
        
        failedMockRespository.fetchBeerData{ (beers, error) in
            
            XCTAssertNil(beers, "Expected nil beers object")
            XCTAssertNotNil(error, "Excepted non-nil error object")
            guard let error  = error else {
                return
            }
            
            XCTAssertEqual(error.localizedDescription, "Error message", "Excepted error.localizedDescription to contain \"Error message\"")
            XCTAssertEqual(failedMockRespository.fetchBeerDataCounter, 1, "Expected fetchBeerData method to be called once")
        }
    }
    
}
