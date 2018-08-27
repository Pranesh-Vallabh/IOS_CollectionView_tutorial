//
//  Resolver.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/23.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Foundation

public protocol Resolving {
    static func resolve<T>(dependency: T.Type) -> T
    static func reset()
}

class Resolver {
    private static var container : Resolvable = DepedencyContainer.instance
}

extension Resolver : Resolving {
    
    public static func resolve<T>(dependency: T.Type) -> T {
        return container.resolve(dependency)
    }
    
    public static func reset() {
        container.reset()
    }
}
