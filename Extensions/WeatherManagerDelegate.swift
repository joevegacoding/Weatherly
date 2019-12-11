//
//  WeatherManagerDelegate.swift
//  Weatherly
//
//  Created by Joseph Bouhanef on 2019-12-09.
//  Copyright © 2019 Joseph Bouhanef. All rights reserved.
//

import UIKit

extension WeatherViewController: WeatherManagerDelegate {
    
    //Updates the UI with the information acquired by both the WeatherModel and the WeatherManager
    func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherModel) {
        DispatchQueue.main.async {
            self.temperatureLabel.text = weather.temperatureString
            self.cityLabel.text = weather.cityName
            self.conditionImageView.image = UIImage(systemName: weather.conditionName)
        }
    }
    
    func didFailWithError(error: Error) {
        print(error)
    }
}
