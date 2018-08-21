//
//  MockBeerListViewable.swift
//  SwiftCollectionViewTests
//
//  Created by Pranesh on 2018/08/17.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import XCTest
@testable import SwiftCollectionView

class MockBeerListViewable: BeerListViewable {
    
    var beers = [Beer]()
    
    var getBeerDataCounter: Int = 0
    
    func getBeerData() {
        getBeerDataCounter += 1
    }
    
     var showErrorMessageCounter: Int = 0
    
    func showErrorMessage(errorMessage: String) {
        showErrorMessageCounter =  showErrorMessageCounter + 1
    }
    
     var showBeerListCounter: Int = 0
    
    func showBeerList(beers: [Beer]) {
        self.beers = beers
        showBeerListCounter = showBeerListCounter +  1
        print("Inside showBeerList function showBeerListCounter: " + String(showBeerListCounter) )
    }
    
    func verifyBeerListSuccess() {
        XCTAssertEqual(getBeerDataCounter, 0, "Expected getBeerData method to be called zero times")
        XCTAssertEqual(showErrorMessageCounter, 0, "Expected showErrorMessage method to be called zero times")
        XCTAssertEqual(showBeerListCounter, 1, "Expected showBeerList method to be called once")
        XCTAssertEqual(self.beers.count, SampleData.generateBeerData().count, "Expected beers array count equal to SampleData.generateBeerData count")
        XCTAssertEqual(self.beers[0].name, SampleData.generateBeerData()[0].name, "Expected beers.name object to be equal")
    }
    
    func verifyBeerListFailure() {
        XCTAssertEqual(getBeerDataCounter, 0, "Expected getBeerData method to be called zero times")
        XCTAssertEqual(showErrorMessageCounter, 1, "Expected showErrorMessage method to be called once")
        XCTAssertEqual(showBeerListCounter, 0, "Expected showBeerList method to be called zero times")
    }
    
    func verifyNone() {
        XCTAssertEqual(getBeerDataCounter, 0, "Expected getBeerData method to be called zero times")
        XCTAssertEqual(showErrorMessageCounter, 0, "Expected showErrorMessage method to be called zero times")
        XCTAssertEqual(showBeerListCounter, 0, "Expected showBeerList method to be called zero times")
    }
    
}
