//
//  SuccessBeerListViewModel.swift
//  SwiftCollectionViewTests
//
//  Created by Pranesh on 2018/08/17.
//  Copyright © 2018 Pranesh. All rights reserved.
//

@testable import SwiftCollectionView

class SuccessBeerListViewModel {
    
    var getBeerDataCounter: Int = 0
    
    private var beerListView : BeerListViewable?
    
    private var successRespository: BeerDataGetable?
    
    init(beerListView: BeerListViewable, respository: BeerDataGetable ) {
        self.beerListView = beerListView
        self.successRespository = respository
    }
    
    func getBeerData() {
        
        getBeerDataCounter += 1
        
        guard let successRespository = successRespository else {
            return
        }
        
        successRespository.fetchBeerData { (beers, error) in
            
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

