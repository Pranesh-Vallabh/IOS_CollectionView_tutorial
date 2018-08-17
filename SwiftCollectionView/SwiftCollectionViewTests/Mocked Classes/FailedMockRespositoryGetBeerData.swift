//
//  FailedMockRespositoryGetBeerData.swift
//  SwiftCollectionViewTests
//
//  Created by Pranesh on 2018/08/17.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Foundation
@testable import SwiftCollectionView

class FailedMockRespositoryGetBeerData: BeerDataGetable {
    
    var fetchBeerDataCounter: Int = 0
    
    func fetchBeerData(_ completion: @escaping ([Beer]?, Error?) -> Void) {
        fetchBeerDataCounter += 1
        let error = NSError(domain: "", code: 200, userInfo: [NSLocalizedDescriptionKey: "Error message"])
        completion(nil, error)
    }
}
