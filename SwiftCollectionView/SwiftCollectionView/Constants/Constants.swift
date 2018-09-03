//
//  Constants.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/13.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Foundation

public struct Constants {

    //static let ApiUrl = "http://localhost:8080/api/feed"//"https://api.punkapi.com/v2/beers"
    static let PunkCollectionViewCellIdentifier = "BeerCell"
    static let PunkDetailSegueIdentifier = "showBeerDetails"
    
    static func getApiUrl() -> String {
        if (LaunchEnvironmentKey.IsMockUrl.processInfoValue() != nil) {
            return "http://localhost:8080/api/feed"
        }
        return "https://api.punkapi.com/v2/beers"
    }
}
