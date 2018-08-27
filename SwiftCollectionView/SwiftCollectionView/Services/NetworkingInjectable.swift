//
//  NetworkingInjectable.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/26.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Foundation


protocol NetworkingInjectable {
    var networking: Networkable {get}
}

extension NetworkingInjectable {
    var networking : Networkable {
        return Resolver.resolve(dependency: Networkable.self)
    }
}



