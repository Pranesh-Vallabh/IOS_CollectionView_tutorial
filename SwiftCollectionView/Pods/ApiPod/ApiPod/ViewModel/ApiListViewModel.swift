//
//  BeerListViewModel.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/15.
//  Copyright © 2018 Pranesh. All rights reserved.
//
import UIKit

public class ApiListViewModel: ApiListViewModelable, ApiRepositoryInjectable {
    
    private weak var apiListView: ApiListViewable?
    
    public init(apiListView: ApiListViewable?, apiUrl: String) {
        self.apiListView = apiListView
        ApiDataUrl.setupApiUrl(with: apiUrl)
        
    }
    
    public func getApiData<T: Modelable>(modelType: T.Type) {
        guard let apiListView = apiListView else {
            return
        }
        
        DispatchQueue.global().async { 
            
            self.apiRepository.fetchApiData{ (retrivedApiData: [T]?, error) -> Void in
                
                DispatchQueue.main.async {
                    if let error = error {
                        apiListView.showErrorMessage(errorMessage: error.localizedDescription)
                    } else if let retrivedApiData = retrivedApiData {
                        apiListView.showApiItemList(itemList: retrivedApiData)
                    }
                }
            }
        }
    }
}




