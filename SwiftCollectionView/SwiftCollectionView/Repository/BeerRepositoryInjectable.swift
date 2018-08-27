//
//  BeerRepositoryInjectable.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/23.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Foundation

protocol BeerRepositoryInjectable {
    var beerRepository : BeerDataGetable {get}
}

extension BeerRepositoryInjectable {
    var beerRepository : BeerDataGetable {
        return Resolver.resolve(dependency: BeerDataGetable.self)
    }
}
