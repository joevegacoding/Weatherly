//
//  ViewController.swift
//  Weatherly
//
//  Created by Joseph Bouhanef on 2019-12-09.
//  Copyright © 2019 Joseph Bouhanef. All rights reserved.
//

import UIKit

extension WeatherViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        citySearchTextField.endEditing(true)
        return true
    }
    
    @IBAction func searchButtonPressed(_ sender: UIButton) {
        citySearchTextField.endEditing(true)
        citySearchTextField.endEditing(true)
    }
    
    @IBAction func currentLocationButton(_ sender: Any) {
        locationManager.requestLocation()
        
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        
        if citySearchTextField.text != "" {
            return true
        } else {
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        if let city = citySearchTextField.text {
            weatherManager.fetchWeather(cityName: city)
        }
        citySearchTextField.text = ""
    }
}

