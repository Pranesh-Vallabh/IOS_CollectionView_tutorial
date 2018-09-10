//
//  MockApiViewable.swift
//  SwiftCollectionViewTests
//
//  Created by Pranesh on 2018/09/10.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Foundation
import ApiPod
import XCTest
@testable import SwiftCollectionView

class MockApiViewable: ApiListViewable {
    
    private(set) var verifyGetApiDataCounter: Int = 0
    private(set) var verifyShowErrorMessageCounter: Int = 0
    private(set) var verifyShowApiItemListCounter: Int = 0
    

    func getApiData() {
    }
    
    func showErrorMessage(errorMessage: String) {
        XCTAssertEqual(errorMessage, "Error message")
        verifyShowErrorMessageCounter += 1
    }
    
    func showApiItemList<T>(itemList: [T]) where T : Modelable {
        verifyShowApiItemListCounter += 1
        let beers = itemList as! [Beer]
        XCTAssertEqual(beers, BeerSampleData.generateBeerData())
    }
    
 
    
    
}
