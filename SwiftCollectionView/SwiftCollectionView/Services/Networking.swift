//
//  Networking.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/24.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Foundation
import Alamofire

class Networking: Networkable {
    
    func request(_ completion: @escaping (DataResponse<Any>?) -> Void) {
        Alamofire.request(Constants.getApiUrl()).responseJSON{ (dataResponse) in
            completion(dataResponse)
        }
    }
}
