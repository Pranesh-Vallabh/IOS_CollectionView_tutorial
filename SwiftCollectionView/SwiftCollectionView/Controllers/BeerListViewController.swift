//
//  PunkListViewController.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/13.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import UIKit
import ApiPod
class BeerListViewController: UIViewController {
    
    var beers = [Beer]()
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    lazy var beerListViewModel: ApiListViewModelable = {
        ApiListViewModel<Beer>(apiListView: self, apiUrl: Constants.punkApiUrl)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAccessibilityAndLocalization()
        getApiData()
    }

    func setupAccessibilityAndLocalization() {
        collectionView.accessibilityLabel = AccessibilityLabel.beerListCollectionView
        self.navigationItem.title = LocalizedString.listTitle
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == Constants.PunkDetailSegueIdentifier {
            
            guard let punkDetailViewController = segue.destination as? BeerDetailViewController else {
                return
            }
            
            guard let punkPhotoViewCell = sender as? BeerPhotoCell else {
                return
            }
            
            guard let indexPath = collectionView.indexPath(for: punkPhotoViewCell) else {
                return
            }
            
            punkDetailViewController.beerSelected = beers[indexPath.row]
        }
    }
}

extension BeerListViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return beers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.PunkCollectionViewCellIdentifier, for: indexPath) as? BeerPhotoCell else {
            return UICollectionViewCell()
        }
        
        cell.setupCell(with: beers[indexPath.row])
        
        return cell
    }
}

extension BeerListViewController : ApiListViewable {
    func showApiItemList<T>(itemList: [T]) where T : Modelable {
        self.beers = itemList as! [Beer]
        self.collectionView.reloadData()
    }
    
    func getApiData() {
        self.beerListViewModel.getApiData()
    }
    
    func showErrorMessage(errorMessage: String) {
        print(errorMessage)
    }
}

