//
//  PersonalData.swift
//  BMI Calculator
//
//  User personal data structure
//
//  Created by Łukasz Gołojuch on 7/1/22.
//

import UIKit

struct PersonalData {
    
    private let calculations = Calculations()
    
    let bmi: Float
    let bmr: Int
    let caloricDemand: Int
    let shouldConsume: Int
    let macroelements: Macroelements
    
    init(Bmr: Int, Gender: Bool, Weight: Int, Height: Int, Age: Int, ActivityType: ActivityLevel, Goal: Goal) {
        bmi = calculations.calculateBMI(weight: Weight, height: Height)
        bmr = Bmr
        print("\(ActivityType.rawValue)")
        caloricDemand = calculations.calculateCaloricDemand(BMR: bmr, activityType: ActivityType)
        shouldConsume = calculations.calculateShouldConsume(caloricDemand: caloricDemand, goal: Goal)
        macroelements = calculations.calculateMacroelements(shouldConsume: shouldConsume, goal: Goal)
    }
}
