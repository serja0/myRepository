//
//  OpenWeatherService.swift
//  weather_app
//
//  Created by Deny Vorko on 28.09.2022.
//

import Foundation
import Alamofire

class OpenWeatherService {
    
    static let apiEndpoint = ""
    static let apiKey = ""
    
    static func getWeatherInfo (){
        guard let url = URL(string: apiEndpoint),
              let request = try? URLRequest(url: url, method: .get) else {
                  return
              }
        
        AF.request(apiEndpoint).response { response in
            
        }
    }
}
