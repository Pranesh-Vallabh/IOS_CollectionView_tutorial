//
//  SuccessMockRespositoryGetBeerData.swift
//  SwiftCollectionViewTests
//
//  Created by Pranesh on 2018/08/17.
//  Copyright © 2018 Pranesh. All rights reserved.
//

@testable import SwiftCollectionView

class SuccessMockRespositoryGetBeerData: BeerDataGetable {
    
    var fetchBeerDataCounter: Int = 0
    
    func fetchBeerData(_ completion: @escaping ([Beer]?, Error?) -> Void) {
        fetchBeerDataCounter +=  1
        completion(SampleData.generateBeerData(), nil)
    }
}
