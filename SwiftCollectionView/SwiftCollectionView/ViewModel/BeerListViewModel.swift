//
//  BeerListViewModel.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/15.
//  Copyright © 2018 Pranesh. All rights reserved.
//
import UIKit

class BeerListViewModel: BeerListViewModelable, BeerRepositoryInjectable, BeerListViewInjectable {
    
    func getBeerData() {
        DispatchQueue.global().async {
            
            self.beerRepository.fetchBeerData { (retrivedBeers, error) -> Void in
                
                DispatchQueue.main.async {
                    if let error = error {
                        self.beerListView.showErrorMessage(errorMessage: error.localizedDescription)
                    } else if let retrivedBeers = retrivedBeers {
                        self.beerListView.showBeerList(beers: retrivedBeers)
                    }
                }
            }
        }
    }
}




