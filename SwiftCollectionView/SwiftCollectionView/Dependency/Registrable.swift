//
//  Registrable.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/23.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Foundation
import Swinject

public protocol Registrable {
    func register<T>(dependecy: T.Type, implementation: @escaping () -> T, objectScope: ObjectScope)
    func register<T>(dependecy: T.Type, implementation: @escaping () -> T, initImplementation: @escaping (AnyObject, T) -> (), objectScope: ObjectScope)
}
