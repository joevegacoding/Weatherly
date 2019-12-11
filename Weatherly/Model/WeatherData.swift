//
//  WeatherData.swift
//  Weatherly
//
//  Created by Joseph Bouhanef on 2019-12-07.
//  Copyright © 2019 Joseph Bouhanef. All rights reserved.
//

import Foundation


struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
    
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let id: Int
}
