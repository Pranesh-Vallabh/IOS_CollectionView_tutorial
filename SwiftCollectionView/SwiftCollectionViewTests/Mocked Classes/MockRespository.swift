//
//  MockRespository.swift
//  SwiftCollectionViewTests
//
//  Created by Pranesh on 2018/08/21.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Foundation
@testable import SwiftCollectionView

class MockRepository: BeerDataGetable {
    
    var fetchBeerDataCounter: Int = 0
    
    func fetchBeerData(_ completion: @escaping ([Beer]?, Error?) -> Void) {
        fetchBeerDataCounter +=  1
        completion(SampleData.generateBeerData(), nil)
    }
    
}
