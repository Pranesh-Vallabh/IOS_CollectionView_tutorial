//
//  PunkPhotoCell.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/13.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import UIKit

class PunkPhotoCell: UICollectionViewCell {
    
    @IBOutlet weak var beerImage: UIImageView!
    
    @IBOutlet weak var beerNameLabel: UILabel!
   
    func loadData(with data: Beer ) {
        beerImage.imageFromUrl(urlString: data.imageUrl)
        beerNameLabel.text = data.name
    }
}


