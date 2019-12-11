//
//  ViewController.swift
//  Weatherly
//
//  Created by Joseph Bouhanef on 2019-12-01.
//  Copyright © 2019 Joseph Bouhanef. All rights reserved.
//

import UIKit
import CoreLocation

class WeatherViewController: UIViewController {
    
    
    @IBOutlet weak var citySearchTextField: UITextField!
    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    var weatherManager = WeatherManager()
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
         locationManager.delegate = self
         locationManager.requestWhenInUseAuthorization()
         locationManager.requestLocation()
       
        weatherManager.delegate = self
        citySearchTextField.delegate = self
        citySearchTextField.textFieldRoundedCorners()
    }
    
}


