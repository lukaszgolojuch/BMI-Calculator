//
//  QuestionEnums.swift
//  BMI Calculator
//
//  Created by Łukasz Gołojuch on 7/5/22.
//

import Foundation

enum ActivityLevel: String, CaseIterable {
    case firstLevel = "Stationary"
    case secondLevel = "Exercise 1-3 times a week"
    case thirdLevel = "Exercise 4-5 times a week"
    case fourthLevel = "Daily exercise"
    case fifthLevel = "Daily intense exercise"
    case sixthLevel = "Very intense exercise/phisical work"
}

enum Goal: String, CaseIterable {
    case maintain = "Maintain body weight"
    case weightLoss = "Weight loss"
    case weightGain = "Weight gain"
}
