//
//  Calculations.swift
//  BMI Calculator
//
//  Created by Łukasz Gołojuch on 6/16/22.
//

import Foundation

class Calculations{
    
    /*
     Method calculating BMI
     */
    func calculateBMI(weight: Int, height: Int) -> Float{
        
        let heightInMeters: Float = Float(height)/100
        
        return Float(weight) / (heightInMeters * heightInMeters)
    }
    
    /*
     Method calculating BMR
     */
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
    
    /*
     Method calculating caloric demand
     */
    func calculateCaloricDemand(BMR: Int, activityType: ActivityLevel) -> Int{
        
        let FloatBMR: Float = Float(BMR)
        var caloricDemand: Float
        
        switch activityType {
        case .firstLevel:
            //Stationary activity level
            caloricDemand = FloatBMR * 1.0
        case .secondLevel:
            //Exercise 1-3 times a week
            caloricDemand = FloatBMR * 1.2
        case .thirdLevel:
            //Exercise 4-5 times a week
            caloricDemand = FloatBMR * 1.4
        case .fourthLevel:
            //Daily exercise
            caloricDemand = FloatBMR * 1.6
        case .fifthLevel:
            //Daily intense exercise
            caloricDemand = FloatBMR * 1.8
        case .sixthLevel:
            //Very intense exercise/phisical work
            caloricDemand = FloatBMR * 2.0
        }
        
        return Int(caloricDemand)
    }
    
    /*
     Method calculating how many calories should user consume to achive goal
     */
    func calculateShouldConsume(caloricDemand: Int, goal: Goal) -> Int{
        
        let caloricDemandFloat: Float = Float(caloricDemand)
        var shouldConsume: Float
        
        switch goal {
        case .weightGain:
            shouldConsume = caloricDemandFloat * 1.15
        case .weightLoss:
            shouldConsume = caloricDemandFloat * 0.85
        case .maintain:
            shouldConsume = caloricDemandFloat
        }
        
        return Int(shouldConsume)
    }
    
    /*
     Method calculating makroelements in diet
     */
    func calculateMacroelements(shouldConsume: Int, goal: Goal) -> Macroelements{
        
        let shouldConsumeFloat: Float = Float(shouldConsume)
        var carbsKcal: Float
        var proteinKcal: Float
        var fatKcal: Float
        
        switch goal {
        case .maintain:
            carbsKcal = 0.35 * shouldConsumeFloat
            proteinKcal = 0.30 * shouldConsumeFloat
            fatKcal = 0.35 * shouldConsumeFloat
        case .weightLoss:
            carbsKcal = 0.55 * shouldConsumeFloat
            proteinKcal = 0.15 * shouldConsumeFloat
            fatKcal = 0.30 * shouldConsumeFloat
        case .weightGain:
            carbsKcal = 0.15 * shouldConsumeFloat
            proteinKcal = 0.55 * shouldConsumeFloat
            fatKcal = 0.30 * shouldConsumeFloat
        }
        
        return Macroelements(carbsKcal: Int(carbsKcal),
                             proteinKcal: Int(proteinKcal),
                             fatKcal: Int(fatKcal))
    }
}
