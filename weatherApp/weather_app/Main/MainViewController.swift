//
//  MainVievController.swift
//  weather_app
//
//  Created by Deny Vorko on 21.07.2022.
//

import Foundation
import UIKit
// второй экран
class MainViewController: UIViewController {
    // разделяет вью на равные части/в ней три вью у нас
    private lazy var stackView = UIStackView()
    // вьюхи определяем
    // контейнер
    private lazy var imageContainer = UIView()
    // вьюхи/ облако - 14 - "So, it's Windy."
    private lazy var mainImageView = UIImageView()
    private lazy var mainTitleView = UILabel()
    private lazy var descriptionLabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    // вся логика тут
    private func setupViews() {
        // главная вью
        self.view.backgroundColor = .white
        // в главную вью стеквью
        self.view.addSubview(stackView)
        // констрейнты стеквью по отношению главной вью
        stackView.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top)
            make.height.equalTo(UIScreen.main.bounds.height * 2/3)
        }
        // вертикальное расположение стеквью
        stackView.axis = .vertical
        // контейнер поверх стеквью или в контейнер стеквью
        stackView.addArrangedSubview(imageContainer)
        // в контейнер облако
        imageContainer.addSubview(mainImageView)
        // облаку констрейнты
        mainImageView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.height.width.equalTo(150)
        }
        // в стеквью 14
        stackView.addArrangedSubview(mainTitleView)
        // в стеквью "So, it's Windy."
        stackView.addArrangedSubview(descriptionLabel)
        stackView.spacing = 40
        // какая картинка будет у облака
        mainImageView.image = UIImage(named: "cloud")
        // расположение картинки
        mainImageView.contentMode = .scaleAspectFit
        // 14 шрифт - позицию - текст
        mainTitleView.font = .systemFont(ofSize: 100)
        mainTitleView.font = .boldSystemFont(ofSize: 90)
        mainTitleView.textAlignment = .center
        mainTitleView.text = "14"
        // тексту шрифт - позицию - текст
        descriptionLabel.font = .systemFont(ofSize: 32)
        descriptionLabel.textAlignment = .center
        descriptionLabel.text = "So, it's Windy."
        // отступ от навигейшнКонстроллера облака
        stackView.layoutMargins = UIEdgeInsets(top: 70, left: 0, bottom: 70, right: 0)
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.backgroundColor = .lightGray
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("willAppear Main")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("didAppear Main")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("willDisappear Main")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("didDisappear Main")
    }

}
