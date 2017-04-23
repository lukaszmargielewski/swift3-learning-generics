//
//  AppDelegate.swift
//  Generics
//
//  Created by Lukasz Marcin Margielewski on 23/04/2017.
//  Copyright © 2017 Unwire ApS. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let viewController = ViewController(nibName: nil, bundle: nil)
        self.window = UIWindow()
        self.window?.rootViewController = UINavigationController(rootViewController: viewController)
        self.window?.makeKeyAndVisible()
        return true
    }
}

