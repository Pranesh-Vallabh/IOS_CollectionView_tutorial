//
//  MockApiRepository.swift
//  SwiftCollectionViewTests
//
//  Created by Pranesh on 2018/09/10.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Foundation
import  ApiPod
import Cuckoo
@testable import SwiftCollectionView

public class SuccessMockApiRepository: NetworkingInjectable, ApiDataGetable {
    private(set) var verifyFetchApiDataCounter: Int = 0

    public func fetchApiData<T : Modelable>(_ completion: @escaping ([T]?, Error?) -> Void){
        verifyFetchApiDataCounter += 1
        let items: [T] = BeerSampleData.generateBeerData() as! [T]
        completion(items ,nil)
    }
}

public class ErrorMockApiRepository: NetworkingInjectable, ApiDataGetable {
    private(set) var verifyFetchApiDataCounter: Int = 0

    public func fetchApiData<T>(_ completion: @escaping ([T]?, Error?) -> Void) where T : Modelable {
        verifyFetchApiDataCounter += 1
        let error = NSError(domain: "", code: 200, userInfo: [NSLocalizedDescriptionKey: "Error message"])
        completion(nil, error)
    }
}
