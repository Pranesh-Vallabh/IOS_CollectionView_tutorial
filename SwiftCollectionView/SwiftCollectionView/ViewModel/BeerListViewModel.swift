//
//  BeerListViewModel.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/15.
//  Copyright © 2018 Pranesh. All rights reserved.
//
import UIKit


class BeerListViewModel {
    
    private weak var beerListView : BeerListViewProtocol?
    
    let beerRepository = BeerRepository()
    
    init(beerListView: BeerListViewProtocol) {
        self.beerListView = beerListView
    }
    
    func getBeerData() {
        
        DispatchQueue.global().async {
            self.beerRepository.fetchBeerData { (retrivedBeers, error) -> Void in
                
                guard let beerListView = self.beerListView else {
                    return
                }
                
                if let error = error {
                    
                    DispatchQueue.main.async {
                        beerListView.showErrorMessage(errorMessage: error.localizedDescription)
                    }
                    
                } else if let retrivedBeers = retrivedBeers {
                    
                    DispatchQueue.main.async {
                        beerListView.showBeerList(beers: retrivedBeers)
                    }
                }
            }
        }
    }
}



