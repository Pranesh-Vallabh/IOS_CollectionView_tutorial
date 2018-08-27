//
//  BeerListViewModelInjectable.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/27.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Foundation

protocol BeerListViewModelInjectable {
    var beerListViewModel:  BeerListViewModelable {get}
}

extension BeerListViewModelInjectable {
    var beerListViewModel: BeerListViewModelable{
        return Resolver.resolve(dependency: BeerListViewModelable.self)
    }
}
