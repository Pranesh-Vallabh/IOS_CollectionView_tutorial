//
//  DependencyRegistration.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/09/04.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Foundation

 public class DependencyRegistration {
    public init () {
        
    }
    public func registerDependency() {
        let container = DepedencyContainer.instance
        container.register(dependecy: ApiDataGetable.self, implementation: {
            ApiRepository()
        })
        container.register(dependecy: Networkable.self, implementation: {
            Networking()
        })
    }
}
