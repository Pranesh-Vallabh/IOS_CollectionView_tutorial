//
//  BeerListViewProtocol.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/15.
//  Copyright © 2018 Pranesh. All rights reserved.
//

public protocol ApiListViewable : class {
    func getApiData()
    func showErrorMessage(errorMessage: String)
    func showApiItemList<T: Modelable>(itemList: [T])
}
