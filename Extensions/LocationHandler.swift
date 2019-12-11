//
//  WeatherViewController.swift
//  Weatherly
//
//  Created by Joseph Bouhanef on 2019-12-09.
//  Copyright © 2019 Joseph Bouhanef. All rights reserved.
//

import UIKit
import CoreLocation

extension WeatherViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        if let location = locations.last {
            locationManager.stopUpdatingLocation()
            let lat = location.coordinate.latitude
            let lon = location.coordinate.longitude
            weatherManager.fetchWeather(latitude: lat, longitude: lon)
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
}
