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
    
    private let header = HeaderView()
    private let hourlyView = HourlyContainerView()
    //контейнер з тейблвью
    private let weeklyView = WeeklyContainerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    // вся логика тут(тільки отрисовка и констрейнты)
    private func setupViews() {
        // главная вью
        view.backgroundColor = .appBackground
        
        view.addSubview(header)
        header.snp.makeConstraints{
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(20)
            $0.height.equalTo(250)
        }
        
        view.addSubview(weeklyView)
        weeklyView.snp.makeConstraints{
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(400)
            $0.height.equalTo(260)
        }
        
        view.addSubview(hourlyView)
        hourlyView.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview()
            $0.height.equalTo(100)
            $0.width.equalTo(400)

        }
        hourlyView.backgroundColor = .green
        
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
