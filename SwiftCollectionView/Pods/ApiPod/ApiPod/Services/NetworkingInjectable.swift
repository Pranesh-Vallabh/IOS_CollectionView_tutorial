//
//  NetworkingInjectable.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/26.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Foundation


public protocol NetworkingInjectable {
    var networking: Networkable {get}
}

extension NetworkingInjectable {
    public var networking : Networkable {
        return Resolver.resolve(dependency: Networkable.self)
    }
}



