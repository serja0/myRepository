//
//  HourlyTableViewCell.swift
//  weather_app
//
//  Created by Deny Vorko on 22.09.2022.
//

import Foundation
import UIKit

class HourlyTableViewCell: UITableViewCell {

    let timeLabel = UILabel()
    let imageLabel = UIImageView(image: UIImage(named: "sunny"))
    let tempLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(info: HourlyWeatherInfo){
        timeLabel.text = info.time
        tempLabel.text = info.temp
    }

    private func setupViews(){
        
        contentView.addSubview(timeLabel)
        timeLabel.snp.makeConstraints{
            $0.leading.top.equalToSuperview().inset(5)
            timeLabel.font = .systemFont(ofSize: 13)
        }
        
        contentView.addSubview(imageLabel)
        imageLabel.snp.makeConstraints{
            $0.height.width.equalTo(20)
            $0.top.equalTo(15)
            $0.leading.equalToSuperview().inset(5)
        }
        
        contentView.addSubview(tempLabel)
        tempLabel.snp.makeConstraints{
            $0.leading.equalToSuperview().inset(5)
            $0.top.equalTo(25)
            tempLabel.font = .systemFont(ofSize: 13)
        }

        backgroundColor = .red
    }
}
