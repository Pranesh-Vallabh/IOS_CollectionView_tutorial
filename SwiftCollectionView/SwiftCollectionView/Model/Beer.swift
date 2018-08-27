//
//  Beer.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/08.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Foundation

struct Beer: Decodable, Equatable {
    let name: String
    let tagline: String
    let description: String
    let imageUrl: String 
}

