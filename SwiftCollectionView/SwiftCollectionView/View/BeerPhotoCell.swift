//
//  BeerPhotoCell.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/09/05.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Foundation
import ApiPod

class BeerPhotoCell: UICollectionViewCell {
    
    @IBOutlet weak var beerImage: UIImageView!
    
    @IBOutlet weak var beerNameLabel: UILabel!
    
    func setupCell(with beer: Beer ) {
        beerImage.loadImageFromUrl(with: beer.imageUrl)
        beerNameLabel.text = beer.name
    }
}

