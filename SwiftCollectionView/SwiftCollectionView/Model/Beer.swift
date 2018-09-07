//
//  Beer.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/09/07.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Foundation
import ApiPod
public struct Beer: Modelable, Equatable {
    // public typealias Model = Beer
    public let name: String
    public let tagline: String
    public let description: String
    public let imageUrl: String
}
