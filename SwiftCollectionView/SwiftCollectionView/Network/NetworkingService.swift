//
//  NetworkingService.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/13.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Foundation
import Alamofire

class NetworkingService {
    
    func fetchBeerData(_ completion: @escaping ([Beer]?, Error?) -> Void) {
        var beers = [Beer]()
        
        Alamofire.request(Constants.ApiUrl).validate().responseJSON { (response) -> Void in
            switch response.result {
            case .success(_):
                
                guard let data = response.data else {
                    return
                }
                
                do {
                    let decoder = JSONDecoder()
                    decoder.keyDecodingStrategy = .convertFromSnakeCase
                    beers = try decoder.decode([Beer].self, from: data)
                    completion(beers, nil)
                } catch let jsonError {
                    completion(nil, jsonError)
                }
                
            case .failure(let error):
                completion(nil, error)
            }
        }
    }
    
    func fetchPunkImage(url: URL, _ completion: @escaping (Data?, Error?) -> Void) {
        Alamofire.request(url).validate().responseData { (response) in
            switch response.result {
            case .success(_):
                guard let data = response.data else {
                    let error = NSError(domain: "", code: 200, userInfo: [NSLocalizedDescriptionKey: "No image found"])
                    completion(nil, error)
                    return
                }
                completion(data, nil)
            case .failure(let error):
                completion(nil, error)
            }
        }
    }
}

