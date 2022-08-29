//
//  appTabBarController.swift
//  my_project
//
//  Created by Deny Vorko on 08.07.2022.
//

import Foundation
import UIKit

class AppTabBarController: UITabBarController, UITabBarControllerDelegate {
  
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let vc = ViewController()
        let icon1 = UITabBarItem(title: "Oleg", image: nil, selectedImage: nil)
        vc.tabBarItem = icon1
       // vc.view.backgroundColor = .lightGray
        
        self.viewControllers = [vc]
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        return true
    }
}
