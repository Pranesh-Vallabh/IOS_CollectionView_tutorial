//
//  PunkDetailViewController.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/13.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import UIKit

class PunkDetailViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var beerImage: UIImageView!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var tagLineLabel: UILabel!
    
    var beerSelected: Beer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let beerSelected = beerSelected else {
            return
        }
        nameLabel.text = beerSelected.name
        beerImage.imageFromUrl(urlString: beerSelected.imageUrl) 
        descriptionLabel.text = beerSelected.description
        tagLineLabel.text = beerSelected.tagline
    }

 
}
