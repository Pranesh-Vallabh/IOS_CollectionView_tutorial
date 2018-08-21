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
    
    private var beerRepository: BeerDataGetable?
    
    init(beerListView: BeerListViewable?, repo: BeerDataGetable?) {
        self.beerListView = beerListView
        self.beerRepository = repo
    }
    
    func getBeerData(onMainQueue mainQueue: DispatchQueue = DispatchQueue.main, onGlobalQueue globalQueue: DispatchQueue = DispatchQueue.global()) {
        
        guard let beerRepository = beerRepository else {
            return
        }
        
        guard let beerListView = self.beerListView else {
            return
        }
        
        globalQueue.async {
            
            beerRepository.fetchBeerData { (retrivedBeers, error) -> Void in
                
                mainQueue.async {
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



