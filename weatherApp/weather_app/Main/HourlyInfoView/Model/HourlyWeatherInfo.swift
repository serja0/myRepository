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
    let image: UIImage
    let temp: String
    
    static func someInfo() -> [HourlyWeatherInfo]{
        return [
            HourlyWeatherInfo.init(time: "Now", image: UIImage(named: "sunny")!, temp: "12°"),
            HourlyWeatherInfo.init(time: "Now", image: UIImage(named: "sunny")!, temp: "12°"),
            HourlyWeatherInfo.init(time: "Now", image: UIImage(named: "sunny")!, temp: "12°"),
            HourlyWeatherInfo.init(time: "Now", image: UIImage(named: "sunny")!, temp: "12°"),
            HourlyWeatherInfo.init(time: "Now", image: UIImage(named: "sunny")!, temp: "12°"),
            HourlyWeatherInfo.init(time: "Now", image: UIImage(named: "sunny")!, temp: "12°"),
            HourlyWeatherInfo.init(time: "Now", image: UIImage(named: "sunny")!, temp: "12°"),
            HourlyWeatherInfo.init(time: "Now", image: UIImage(named: "sunny")!, temp: "12°")

            ]
    }
}
