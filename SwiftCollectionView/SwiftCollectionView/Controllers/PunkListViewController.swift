//
//  PunkListViewController.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/13.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import UIKit

class PunkListViewController: UIViewController {

    var beers = [Beer]()
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getBeerData()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == Constants.PunkDetailSegueIdentifier {
            
            guard let punkDetailViewController = segue.destination as? PunkDetailViewController else {
                return
            }
            
            guard let punkPhotoViewCell = sender as? PunkPhotoCell else {
                return
            }
            
            guard let indexPath = collectionView.indexPath(for: punkPhotoViewCell) else {
                return
            }
            
            punkDetailViewController.beerSelected = beers[indexPath.row]
        }
    }
}

extension PunkListViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return beers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.PunkCollectionViewCellIdentifier, for: indexPath) as? PunkPhotoCell else {
            return UICollectionViewCell()
        }
        
        cell.loadData(with: beers[indexPath.row])
        
        return cell
    }
}

extension PunkListViewController {
    
    func getBeerData() {
        
        let networkingService = NetworkingService()
        
        networkingService.fetchBeerData { (retrivedBeers, error) -> Void in
            
            if let error = error {
                print("Error: \(error.localizedDescription)")
            } else if let retrivedBeers = retrivedBeers {
                self.beers = retrivedBeers
                self.collectionView.reloadData()
            }
        }
    }
}
