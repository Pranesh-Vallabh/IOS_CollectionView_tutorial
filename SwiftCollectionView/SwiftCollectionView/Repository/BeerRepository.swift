//
//  BeerRepository.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/15.
//  Copyright © 2018 Pranesh. All rights reserved.
//
import Alamofire

struct BeerRepository: NetworkingInjectable, BeerDataGetable {
    
    func fetchBeerData(_ completion: @escaping ([Beer]?, Error?) -> Void) {
        var beers = [Beer]()
        
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
}

