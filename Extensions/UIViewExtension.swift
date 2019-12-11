//
//  UIViewExtension.swift
//  Weatherly
//
//  Created by Joseph Bouhanef on 2019-12-09.
//  Copyright © 2019 Joseph Bouhanef. All rights reserved.
//

import UIKit

extension UITextField {
    
    func textFieldRoundedCorners() {
        layer.cornerRadius = 20
        clipsToBounds = true
    }

}
