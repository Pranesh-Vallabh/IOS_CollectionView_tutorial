//
//  Extensions.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/13.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import UIKit
import AlamofireImage
import Alamofire

extension UIImageView: ImageViewDownloadable {
    public func loadImageFromUrl(with imageUrl: String) {
        
        fetchImage(with: imageUrl) { (imageData) in
            if let imageData = imageData {
                self.image = UIImage(data: imageData)
            } else {
                self.image = UIImage(named: "beerPlaceHolderImage")
            }
        }
        
    }
    
    private func fetchImage(with imageUrl: String, _ completion: @escaping (Data?) -> Void) {
        guard let url = URL(string: imageUrl) else {
            completion(nil)
            return
        }
        
        Alamofire.request(url).validate().responseImage{ (response) in
            if response.result.isSuccess, let imageData = response.data  {
                completion(imageData)
            } else {
                completion(nil)
            }
        }
    }
}
