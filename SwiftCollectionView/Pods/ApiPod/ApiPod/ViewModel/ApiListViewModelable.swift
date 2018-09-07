//
//  BeerListViewModelable.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/27.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Foundation

public protocol ApiListViewModelable {
    func getApiData<T: Modelable>(modelType: T.Type)
}
