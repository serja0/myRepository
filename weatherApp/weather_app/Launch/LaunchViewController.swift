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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // цвет первому экрану
        self.view.backgroundColor = .gray
        setupViews()
    }
    // операции с кнопкой
    private func setupViews () {
        // добавили кнопку на первый экран
        self.view.addSubview(startButton)
        // добавляем констрейнты кнопке с помощью Snapkit
        startButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.height.equalTo(50)
            make.width.equalTo(200)
        }
        // задали цвет кнопке шоб увидеть ее/иначе не видно
        self.startButton.backgroundColor = .black
        self.startButton.layer.cornerRadius = 20
        // задаем текст внутри кнопки
        self.startButton.setTitle("GO", for: .normal)
        self.startButton.addTarget(self, action: #selector(goToMainViewController(sender:)), for: .touchUpInside)

        }
    
    @objc private func goToMainViewController(sender: AnyObject) {
        let vc = MainViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
