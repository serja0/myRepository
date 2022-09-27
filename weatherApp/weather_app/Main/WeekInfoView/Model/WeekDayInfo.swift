//
//  WeekDayInfo.swift
//  weather_app
//
//  Created by Deny Vorko on 19.09.2022.
//

import Foundation
import UIKit
// МОК данні
struct WeekDayInfo {
    
    let day: String
    let date: String
    let temp1: String
    let temp2: String

    static func someInfo() -> [WeekDayInfo] {
        return [
            WeekDayInfo.init(day: "Monday", date: "22 Mar", temp1: "0°", temp2: "0°"),
            WeekDayInfo.init(day: "Thuesday", date: "23 Mar", temp1: "0°", temp2: "0°"),
            WeekDayInfo.init(day: "Wednesday", date: "24 Mar", temp1: "0°", temp2: "0°"),
            WeekDayInfo.init(day: "Thursday", date: "25 Mar", temp1: "0°", temp2: "0°"),
            WeekDayInfo.init(day: "Friday", date: "26 Mar", temp1: "0°", temp2: "0°")

        ]
    }

}
