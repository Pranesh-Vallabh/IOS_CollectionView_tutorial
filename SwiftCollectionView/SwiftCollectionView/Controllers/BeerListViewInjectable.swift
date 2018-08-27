//
//  BeerListViewInjectable.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/24.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Foundation

protocol BeerListViewInjectable {
    var beerListView: BeerListViewable { get}
}

extension BeerListViewInjectable {
    var  beerListView: BeerListViewable {
        return Resolver.resolve(dependency: BeerListViewable.self)
    }
}
