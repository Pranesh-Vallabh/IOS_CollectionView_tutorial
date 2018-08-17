//
//  FailedBeerListViewModel.swift
//  SwiftCollectionViewTests
//
//  Created by Pranesh on 2018/08/17.
//  Copyright © 2018 Pranesh. All rights reserved.
//

@testable import SwiftCollectionView

class FailedBeerListViewModel {
    
    var getBeerDataCounter: Int = 0
    
    private var beerListView : BeerListViewable?
    
    private let failedRespository: BeerDataGetable?
    
    init(beerListView: BeerListViewable, respository: BeerDataGetable) {
        self.beerListView = beerListView
        self.failedRespository = respository
    }
    
    func getBeerData() {
        
        getBeerDataCounter += 1
        
        guard let failedRespository = failedRespository else {
            return
        }
        
        failedRespository.fetchBeerData { (beers, error) in
            
            guard let beerListView = self.beerListView else {
                return
            }
            
            if let error = error {
                beerListView.showErrorMessage(errorMessage: error.localizedDescription)
            }
            
            if let beers = beers {
                beerListView.showBeerList(beers: beers)
            }
        }
    }
}
