//
//  Constants.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/13.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Foundation

public struct Constants {
    public static let PunkCollectionViewCellIdentifier = "BeerCell"
    public static let PunkDetailSegueIdentifier = "showBeerDetails"
    
    public static func getApiUrl() -> String {
        /*if let mockUrl = LaunchEnvironmentKey.IsMockUrl.processInfoValue() {
            return mockUrl
        }*/
        return "https://api.punkapi.com/v2/beers"
    }
}
