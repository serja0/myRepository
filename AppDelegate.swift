//
//  AppDelegate.swift
//  my_project
//
//  Created by Deny Vorko on 07.07.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let tbVC = UITabBarController()
        tbVC.view.backgroundColor = .gray
        let frame = UIScreen.main.bounds
        self.window = UIWindow(frame: frame)
        self.window?.rootViewController = tbVC
        window?.makeKeyAndVisible()
        
        return true
    }

}

