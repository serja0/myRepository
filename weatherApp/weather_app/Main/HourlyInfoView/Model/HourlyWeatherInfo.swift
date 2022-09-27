//
//  HourlyWeatherInfo.swift
//  weather_app
//
//  Created by Deny Vorko on 21.09.2022.
//

import Foundation
import UIKit

struct HourlyWeatherInfo {
    
    let time: String
    let imageName: String
    let temp: Int
    
    static let mock: [HourlyWeatherInfo] = [
        
            HourlyWeatherInfo(time: "Now", imageName: "sunny", temp: 12),
            HourlyWeatherInfo(time: "Now", imageName: "sunny", temp: 12),
            HourlyWeatherInfo(time: "Now", imageName: "sunny", temp: 12),
            HourlyWeatherInfo(time: "Now", imageName: "sunny", temp: 12),
            HourlyWeatherInfo(time: "Now", imageName: "sunny", temp: 12),
            HourlyWeatherInfo(time: "Now", imageName: "sunny", temp: 12),
            HourlyWeatherInfo(time: "Now", imageName: "sunny", temp: 12),
            HourlyWeatherInfo(time: "Now", imageName: "sunny", temp: 12)

            ]
    
}
