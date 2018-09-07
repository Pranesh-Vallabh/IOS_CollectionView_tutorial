//
//  BeerRepository.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/15.
//  Copyright © 2018 Pranesh. All rights reserved.
//
import Alamofire

public struct ApiRepository: NetworkingInjectable, ApiDataGetable {
    
    public init() {
    }
    
    public func fetchApiData<T: Modelable>(_ completion: @escaping ([T]?, Error?) -> Void){
        self.networking.request{ (response) -> Void in
            guard let response = response else {
                return
            }
            switch response.result {
            case .success(_):
                guard let data = response.data else {
                    return
                }
                do {
                    let decoder = JSONDecoder()
                    decoder.keyDecodingStrategy = .convertFromSnakeCase
                    let beers = try decoder.decode([T].self, from: data)
                    completion(beers, nil)
                } catch let jsonError {
                    completion(nil, jsonError)
                }
                
            case .failure(let error):
                completion(nil, error)
            }
        }
    }
}

