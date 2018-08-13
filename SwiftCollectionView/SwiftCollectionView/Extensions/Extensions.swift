//
//  Extensions.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/13.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import UIKit

extension UIImageView {
    public func imageFromUrl(urlString: String) {
        
        guard let url = URL(string: urlString) else {
            return
        }
        
        let networkingService = NetworkingService()
        networkingService.fetchPunkImage(url: url) { (imageData, error) in
            
            if let error = error {
                print(error.localizedDescription)
            }
            
            if let imageData = imageData {
                self.image = UIImage(data: imageData)
            }
        }
    }
}
