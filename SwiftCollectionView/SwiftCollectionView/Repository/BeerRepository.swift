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
                    print(String(data: data, encoding: .utf8))
                    do {
                        let decoder = JSONDecoder()
                        decoder.keyDecodingStrategy = .convertFromSnakeCase
                        beers = try decoder.decode([Beer].self, from: data)
                        print("Success: \(beers[0].name) ")
                        completion(beers, nil)
                    } catch let jsonError {
                        print("JSON error \(jsonError.localizedDescription)")
                        completion(nil, jsonError)
                    }
                
                case .failure(let error):
                    print("Failure \(error.localizedDescription)")
                    completion(nil, error)
                }
        }
    }
}

