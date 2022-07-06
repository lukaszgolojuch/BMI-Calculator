//
//  PersonalData.swift
//  BMI Calculator
//
//  Created by Łukasz Gołojuch on 7/1/22.
//

import UIKit

struct PersonalData {
    let bmr: Int
    let caloricDemand: Int
    let shouldConsume: Int
    let macroelements: Macroelements
    
    private let calculations = Calculations()
    
    init(Bmr: Int, Gender: Bool, Weight: Int, Height: Int, Age: Int, ActivityType: ActivityLevel, Goal: Goal) {
        bmr = Bmr
        caloricDemand = calculations.calculateCaloricDemand(BMR: bmr, activityType: ActivityType)
        shouldConsume = calculations.calculateShouldConsume(caloricDemand: caloricDemand, goal: Goal)
        macroelements = calculations.calculateMacroelements(shouldConsume: shouldConsume, goal: Goal)
    }
}
