//
//  Calculations.swift
//  BMI Calculator
//
//  Created by Łukasz Gołojuch on 6/16/22.
//

import Foundation

class calculations{
    
    func calculateBmi(weight: Int, height: Float) -> Float {
        let BMI: Float = Float(weight) / (height * height)
        
        return BMI
    }
    
    func calculatePPM(weight: Int, height: Float, age: Int, gender: Bool) -> Float {
        var PPM: Float
        
        if gender {
            //for female
            PPM = 10 * Float(weight) + 6.25 * height - 5 * Float(age) - 161
        }
        else {
            //for male
            PPM = 10 * Float(weight) + 6.25 * height - 5 * Float(age) + 5
        }
        return PPM
    }
}
