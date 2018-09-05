//
//  BeerRepositoryProtocol.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/15.
//  Copyright © 2018 Pranesh. All rights reserved.
//
public protocol BeerDataGetable {
    func fetchBeerData(_ completion: @escaping ([Beer]?, Error?) -> Void)
}

