//
//  MockBeerListViewable.swift
//  SwiftCollectionViewTests
//
//  Created by Pranesh on 2018/08/17.
//  Copyright © 2018 Pranesh. All rights reserved.
//

@testable import SwiftCollectionView

class MockBeerListViewable: BeerListViewable {
    
    var beers = [Beer]()
    
    var getBeerDataCounter: Int = 0
    
    func getBeerData() {
        getBeerDataCounter += 1
    }
    
    var showErrorMessageCounter: Int = 0
    
    func showErrorMessage(errorMessage: String) {
        showErrorMessageCounter += 1
    }
    
    var showBeerListCounter: Int = 0
    
    func showBeerList(beers: [Beer]) {
        self.beers = beers
        showBeerListCounter += 1
    }
}
