//
//  ValueCollectionViewCell.swift
//  weather_app
//
//  Created by Deny Vorko on 01.09.2022.
//

import Foundation
import UIKit
// ячейка
class ValueCollectionViewCell: UICollectionViewCell {
    // дві лейбли на основі яких буде 4 лейбли
    private let firstLabel = UILabel()
    private let secondLabel = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(info: HeaderWeatherInfo) {
        firstLabel.text = info.title
        secondLabel.text = info.value
    }
    
    private func setupViews() {
        //лейбли вложені у ячейку
        contentView.addSubview(firstLabel)
        firstLabel.snp.makeConstraints {
            $0.leading.trailing.top.equalToSuperview().inset(5)
        }
        firstLabel.font = .systemFont(ofSize: 14)
        
        contentView.addSubview(secondLabel)
        secondLabel.snp.makeConstraints {
            $0.leading.bottom.equalToSuperview().inset(5)
            $0.top.equalTo(firstLabel.snp.bottom).offset(1)
        }
        secondLabel.font = .systemFont(ofSize: 12, weight: .bold)

    }
 }
