//
//  Calculations.swift
//  BMI Calculator
//
//  Created by Łukasz Gołojuch on 6/16/22.
//

import Foundation

class calculations{
    
    func calculateBMR(gender: Bool, weight: Int, height: Int, age: Int) -> Int{
        
        var BMR: Float
        
        if gender {
            BMR = 447.593 + (9.247 * Float(weight)) + (3.098 * Float(height)) - (4.330 * Float(age))
        }
        else {
            BMR = 88.362 + (13.397 * Float(weight)) + (4.799 * Float(height)) - (5.677 * Float(age))
        }
        return Int(BMR)
    }
    
    func calculateCaloricDemand(BMR: Int, activityType: String) -> Int{
        
        var caloricDemand: Float
        
        return 2
    }
    
    func calculateShouldConsume(caloricDemand: Int, goal: String) -> Int{
        
        var shouldConsume: Float
        
        return 2
    }
    
    func calculateMacroelements(shouldConsume: Int, goal: String) -> Macroelements{
        
        var carbsKcal: Float
        var proteinKcal: Float
        var fatKcal: Float
        
        
        
        return Macroelements(carbsKcal: 100,
                             proteinKcal: 100,
                             fatKcal: 100)
    }
}
