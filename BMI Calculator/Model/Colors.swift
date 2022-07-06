//
//  Colors.swift
//  BMI Calculator
//
//  Created by Łukasz Gołojuch on 6/15/22.
//

import UIKit

struct Colors {
    let backgroundColor: UIColor = UIColor(red: 196/255, green: 221/255, blue: 255/255, alpha: 1.0)
    let lightBlueColor: UIColor = UIColor(red: 127/255, green: 181/255, blue: 255/255, alpha: 1.0)
    let darkBlueColor: UIColor = UIColor(red: 0/255, green: 29/255, blue: 110/255, alpha: 1.0)
    let additionalColor: UIColor = UIColor(red: 254/255, green: 226/255, blue: 197/255, alpha: 1.0)
    
    let correctBMIColor: UIColor = UIColor(red: 153/255, green: 255/255, blue: 153/255, alpha: 1.0)
    let mediumBMIColor: UIColor = UIColor(red: 255/255, green: 255/255, blue: 204/255, alpha: 1.0)
    let wrongBMIColor: UIColor = UIColor(red: 255/255, green: 153/255, blue: 153/255, alpha: 1.0)
    
    func getBmiColor(BMI: Float) -> UIColor {
        
        if BMI <= 16.0 {
            return wrongBMIColor
        } else if BMI <= 18.5 {
            return mediumBMIColor
        } else if BMI <= 24.9 {
            return correctBMIColor
        } else if BMI <= 29.9 {
            return mediumBMIColor
        } else {
            return wrongBMIColor
        }
    }
}
