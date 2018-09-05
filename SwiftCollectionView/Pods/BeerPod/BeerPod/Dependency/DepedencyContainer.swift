
//
//  DepedencyContainer.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/23.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Foundation
import Swinject

public class DepedencyContainer {
    private let container = Container()
    public static let instance = DepedencyContainer()
}

extension DepedencyContainer : Registrable {
    
    public func register<T>(dependecy: T.Type, implementation: @escaping () -> T, objectScope: ObjectScope = .graph) {
        container.register(dependecy, factory: { _ in implementation() }).inObjectScope(objectScope)
    }
    

}

extension DepedencyContainer : Resolvable {
    
    public func resolve<T>(_ dependency: T.Type) -> T {
        
        guard let implementation = container.resolve(dependency) else {
            fatalError("Nothing to Resolve")
        }
        
        return implementation
    }
    
    public func reset() {
        container.removeAll()
    }
    
    
}
