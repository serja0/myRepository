//
//  WeeklyTableViewCell.swift
//  weather_app
//
//  Created by Deny Vorko on 20.09.2022.
//

import Foundation
import UIKit
// наша кастомна ячейка
class WeeklyTableViewCell: UITableViewCell {
    
    private let dayLabel = UILabel()
    private let dateLabel = UILabel()
    private let temp1Label = UILabel()
    private let temp2Label = UILabel()
    private let sunImageView = UIImageView(image: UIImage(named: "sunny"))
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
}
    
    func configure(info: WeekDayInfo) {
        dayLabel.text = info.day
        dateLabel.text = info.date
        temp1Label.text = info.temp1
        temp2Label.text = info.temp2
        
    }

    
    private func setupViews() {
        
        contentView.addSubview(dayLabel)
        dayLabel.snp.makeConstraints {
            $0.leading.top.equalToSuperview().inset(5)
        }
        dayLabel.font = .systemFont(ofSize: 13, weight:.bold)
        
        contentView.addSubview(dateLabel)
        dateLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(5)
            $0.top.equalToSuperview().inset(23)
        }
        dateLabel.font = .systemFont(ofSize: 14)
        
        contentView.addSubview(temp1Label)
        temp1Label.snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(70)
            $0.top.equalToSuperview().inset(5)
        }
        temp1Label.font = .systemFont(ofSize:14, weight:.bold)

        contentView.addSubview(temp2Label)
        temp2Label.snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(30)
            $0.top.equalToSuperview().inset(5)
        }
        temp2Label.font = .systemFont(ofSize:14, weight:.thin)
        
        contentView.addSubview(sunImageView)
        sunImageView.snp.makeConstraints{
            $0.leading.equalTo(self.snp.centerX)
            $0.height.width.equalTo(20)
            $0.top.equalTo(3)
        }

        backgroundColor = .appBackground
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
