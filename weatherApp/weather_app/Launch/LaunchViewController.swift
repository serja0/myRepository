//
//  LaunchViewController.swift
//  weather_app
//
//  Created by Deny Vorko on 21.07.2022.
//

import Foundation
import UIKit
import SnapKit
// первый экран
class LaunchViewController : UIViewController {
    // определили кнопку
    private lazy var startButton = UIButton()
    // переопределили родительский метод/ класса UIViewController
    override func viewDidLoad() {
        // родительский viewDidLoad/ класса UIViewController
        super.viewDidLoad()
        // цвет первому экрану
        self.view.backgroundColor = .gray
        setupViews()
    }
    
    // операции с кнопкой
    private func setupViews () {
        // кнопку на экран
        self.view.addSubview(startButton)
        // констрейнты кнопке с помощью Snapkit
        startButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.height.equalTo(50)
            make.width.equalTo(200)
        }
        
        // цвет кнопке шоб увидеть ее/иначе не видно/и радиус
        self.startButton.backgroundColor = .black
        self.startButton.layer.cornerRadius = 20
        // текст внутри кнопки
        self.startButton.setTitle("GO", for: .normal)
        // переход на другой контроллер по нажатию/экшн
        self.startButton.addTarget(self, action: #selector(goToMainViewController(sender:)), for: .touchUpInside)
        }
    
    @objc private func goToMainViewController(sender: AnyObject) {
        // куда переходим
        let vc = MainViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }

    override func viewWillAppear(_ animated: Bool) {
        print("willAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("didAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("willDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("didDisappear")
    }
    
}
