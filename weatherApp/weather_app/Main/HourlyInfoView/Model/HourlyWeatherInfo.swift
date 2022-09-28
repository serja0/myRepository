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
            HourlyWeatherInfo(time: "2 pm", imageName: "sunny", temp: 12),
            HourlyWeatherInfo(time: "3 pm", imageName: "sunny", temp: 12),
            HourlyWeatherInfo(time: "4 pm", imageName: "sunny", temp: 12),
            HourlyWeatherInfo(time: "5 pm", imageName: "sunny", temp: 12),
            HourlyWeatherInfo(time: "6 pm", imageName: "sunny", temp: 12),
            HourlyWeatherInfo(time: "7 pm", imageName: "sunny", temp: 12),
            HourlyWeatherInfo(time: "8 pm", imageName: "sunny", temp: 12)

            ]
    
}
