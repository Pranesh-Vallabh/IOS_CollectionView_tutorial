//
//  Beer.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/08.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Foundation

public struct Beer: Decodable, Equatable {
   public let name: String
   public let tagline: String
   public let description: String
   public let imageUrl: String 
}

