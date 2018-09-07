//
//  Constants.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/13.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Foundation

public struct ApiURL {
    
    private static var apiURL:String = ""
    
    public static func setupApiUrl(with apiURL: String) {
        self.apiURL = apiURL
    }
    
    public static func getApiUrl() -> String {
        if let mockUrl = LaunchEnvironmentKey.IsMockUrl.processInfoValue() {
            return mockUrl
        }
        return apiURL
    }
}
