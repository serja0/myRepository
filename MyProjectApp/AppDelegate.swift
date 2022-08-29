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
        
      // let vc = ViewController()
       // vc.view.backgroundColor = .cyan
//        let tbVC = UITabBarController()
//        tbVC.view.backgroundColor = .gray
       // let appTabBar = AppTabBarController()
        let frame = UIScreen.main.bounds
        self.window = UIWindow(frame: frame)
        self.window?.rootViewController = AppTabBarController()
        window?.makeKeyAndVisible()
        
        
        return true
    }

}

