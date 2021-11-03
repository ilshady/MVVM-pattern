//
//  AppDelegate.swift
//  MVVM-pattern
//
//  Created by Ilshat Khairakhun on 01.11.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let vc = LoginController()
        window?.rootViewController = vc
        
        return true
    }



}

