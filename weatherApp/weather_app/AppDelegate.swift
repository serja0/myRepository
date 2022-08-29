//
//  AppDelegate.swift
//  weather_app
//
//  Created by Deny Vorko on 21.07.2022.
//

import UIKit
// аттрибут класса AppDelegate
@main
//делегат приложения
class AppDelegate: UIResponder, UIApplicationDelegate {
    // главное окно-контейнер для отображения приложения / верхний уровень для всех вью/ он же-сториборд
    var window: UIWindow?
    // старт приложения/Вызывается тогда, когда приложение запустилось
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // аппаратный дисплей/ определили экран и его взяли границы - окно в фрме прямоугольника
        let frame = UIScreen.main.bounds
        let vc = LaunchViewController()
        let navVC = UINavigationController(rootViewController: vc)
        // главному окну форму прямоугольника
        window = UIWindow(frame: frame)
        // Устанавливаем корневой вьюконтроллер окна который будет вызываться при запуске приложения
        window?.rootViewController = navVC
        // и отображаем окно/ключевое окно
        window?.makeKeyAndVisible()
        print("didfinish")
        return true
        
    }

    


}

