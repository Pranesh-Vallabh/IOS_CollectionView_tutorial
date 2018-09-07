//
//  BeerRepositoryInjectable.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/23.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Foundation

public protocol ApiRepositoryInjectable {
    var apiRepository : ApiDataGetable {get}
}

extension ApiRepositoryInjectable {
    public var apiRepository : ApiDataGetable {
        return Resolver.resolve(dependency: ApiDataGetable.self)
    }
}
