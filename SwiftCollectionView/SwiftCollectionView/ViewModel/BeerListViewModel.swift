//
//  BeerListViewModel.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/15.
//  Copyright © 2018 Pranesh. All rights reserved.
//
import UIKit


class BeerListViewModel {
    
    private weak var beerListView : BeerListViewable?
    
    private let beerRepository = BeerRepository()
    
    init(beerListView: BeerListViewable) {
        self.beerListView = beerListView
    }
    
    func getBeerData() {
        
        DispatchQueue.global().async {
            self.beerRepository.fetchBeerData { (retrivedBeers, error) -> Void in
                
                guard let beerListView = self.beerListView else {
                    return
                }
                
                DispatchQueue.main.async {
                    if let error = error {
                        beerListView.showErrorMessage(errorMessage: error.localizedDescription)
                    } else if let retrivedBeers = retrivedBeers {
                        beerListView.showBeerList(beers: retrivedBeers)
                    }
                }
            }
        }
    }
}



