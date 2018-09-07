//
//  Resolvable.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/23.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Foundation

public protocol Resolvable {
    func resolve<T>(_ dependency: T.Type) -> T
    func reset()
}
