//
//  WeeklyContainerView.swift
//  weather_app
//
//  Created by Deny Vorko on 19.09.2022.
//

import Foundation
import UIKit
//вьюшка - контейнер, в якій буде тейблвью
class WeeklyContainerView: UIView {
    
    private let tableView = UITableView()
    let cellSpacingHeight: CGFloat = 55

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView(){
        
        addSubview(tableView)
        tableView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(WeeklyTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.backgroundColor = .red
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        

    }
}
extension WeeklyContainerView: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return WeekDayInfo.someInfo().count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! WeeklyTableViewCell
        let item = WeekDayInfo.someInfo()[indexPath.row]
        cell.configure(info: item)
        
        return cell
    }
    

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return cellSpacingHeight
    }

}

