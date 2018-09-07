//
//  AppDelegate.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/08.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import UIKit
import ApiPod

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let dependencyRegisration =  DependencyRegistration()
        dependencyRegisration.registerDependency()
       // dependencyRegistration.registerDependency()
        /*let container = DepedencyContainer.instance
        container.register(dependecy: BeerDataGetable.self, implementation: {
            BeerRepository()
        })
        container.register(dependecy: Networkable.self, implementation: {
            Networking()
        })*/
        
        return true
    }

}

