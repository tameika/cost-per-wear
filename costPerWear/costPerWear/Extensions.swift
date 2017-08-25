//
//  Extensions.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 8/4/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    static let rose = UIColor(red:0.92, green:0.00, blue:0.40, alpha:1.0)
    static let salmon = UIColor(red:0.93, green:0.53, blue:0.55, alpha:1.0)
    static let coffeeBean = UIColor(red:0.17, green:0.08, blue:0.08, alpha:1.0)
    static let bone = UIColor(red:0.98, green:1.00, blue:0.95, alpha:0.50)
    static let bloodOrange = UIColor(red:1.00, green:0.25, blue:0.00, alpha:1.0)
    static let deepTeal = UIColor(red:0.01, green:0.17, blue:0.20, alpha:1.0)
    static let persianGreen = UIColor(red:0.23, green:0.68, blue:0.68, alpha:1.0)
    static let deepTealNew = UIColor(red:0.13, green:0.38, blue:0.38, alpha:1.0)
    static let tealLight = UIColor(red:0.18, green:0.68, blue:0.68, alpha:1.0)
    static let blueSmoke = UIColor(red:0.75, green:0.83, blue:0.83, alpha:1.0)
    static let blueSmokeDeep = UIColor(red:0.45, green:0.66, blue:0.66, alpha:1.0)
    static let slate = UIColor(red:0.62, green:0.71, blue:0.76, alpha:1.0)
    static let lilacMute = UIColor(red:0.60, green:0.46, blue:0.70, alpha:1.0)
    static let eggplantMute = UIColor(red:0.31, green:0.20, blue:0.46, alpha:1.0)
    static let chocoRose = UIColor(red:0.40, green:0.20, blue:0.20, alpha:1.0)
    static let richOrange = UIColor(red:1.00, green:0.34, blue:0.04, alpha:1.0)
    
}


extension ItemDetailView: UITextFieldDelegate {
    
    var placeholder: NSAttributedString {return NSAttributedString(string: "enter here", attributes: [NSForegroundColorAttributeName : UIColor.lightText])}
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
    
    
}
