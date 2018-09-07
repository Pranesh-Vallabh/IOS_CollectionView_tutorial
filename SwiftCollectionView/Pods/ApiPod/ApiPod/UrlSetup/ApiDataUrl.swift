//
//  Constants.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/13.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Foundation

public struct ApiDataUrl {
    private static var apiUrl:String = ""
    
    public static func setupApiUrl(with apiUrl: String) {
        self.apiUrl = apiUrl
    }
    
    public static func getApiUrl() -> String {
        if let mockUrl = LaunchEnvironmentKey.MockUrl.processInfoValue() {
            return mockUrl
        }
        return apiUrl
    }
}
