//
//  XCTestCaseExtension.swift
//  SwiftCollectionViewUITests
//
//  Created by Pranesh on 2018/09/03.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Foundation
import XCTest

extension XCTestCase {
    func launchAppForUITesting(withAdditionalInfo additionalInfo: [String : String] = [:]) {
        continueAfterFailure = false
        
        let app = XCUIApplication()
        
        app.launchArguments = [ LaunchEnvironmentKey.IsUITesting.rawValue ]
        
        app.launchEnvironment = additionalInfo
        
        app.launch()
    }
}
