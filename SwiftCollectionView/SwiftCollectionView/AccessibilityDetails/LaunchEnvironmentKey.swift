//
//  LaunchEnvironmentKey.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/09/03.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Foundation

enum LaunchEnvironmentKey: String {
    case IsUITesting = "IS_UI_TESTING",
    IsMockUrl = "Mock"
    
    func isInLaunchArguments() -> Bool {
        return ProcessInfo.processInfo.arguments.contains(rawValue)
    }
    
    func processInfoValue() -> String? {
        return ProcessInfo.processInfo.environment[rawValue]
    }
}
