//
//  BeerListViewProtocol.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/15.
//  Copyright © 2018 Pranesh. All rights reserved.
//

protocol BeerListViewProtocol : class {
    func getBeerData()
    func showErrorMessage(errorMessage: String)
    func showBeerList(beers: [Beer])
}
