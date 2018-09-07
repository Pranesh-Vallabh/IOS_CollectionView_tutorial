//
//  Networkable.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/26.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Foundation
import Alamofire

public protocol Networkable {
    func request(_ completion: @escaping (DataResponse<Any>?) -> Void)
}
