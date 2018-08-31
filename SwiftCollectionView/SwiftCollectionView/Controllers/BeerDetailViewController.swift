//
//  PunkDetailViewController.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/13.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import UIKit

class BeerDetailViewController: UIViewController {
    
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
        beerImage.loadImageFromUrl(with: beerSelected.imageUrl)
        descriptionLabel.text = beerSelected.description
        tagLineLabel.text = beerSelected.tagline
        setupAccessibility()
    }
    
    private func setupAccessibility() {
        nameLabel.accessibilityIdentifier = AccessibilityIdentifier.Name.rawValue
        beerImage.accessibilityIdentifier = AccessibilityIdentifier.Image.rawValue
        beerImage.accessibilityLabel = AccessibilityLabel.beerImageView
        descriptionLabel.accessibilityIdentifier = AccessibilityIdentifier.Description.rawValue
        tagLineLabel.accessibilityIdentifier = AccessibilityIdentifier.TagLine.rawValue
    }
}
