//
//  SecondView.swift
//  BMI Calculator
//
//  Created by Łukasz Gołojuch on 6/18/22.
//

import SwiftUI

struct SecondView: View {
    
    private let colors = Colors()
    
    var BMR: Int
    var age: Int
    var weight: Int
    var height: Float
    var gender: Bool
    
    @State private var selectedActivityLevel: ActivityLevel = .thirdLevel
    @State private var selectedGoal: Goal = .weightGain
    
    var body: some View {
        ZStack{
            Color(colors.backgroundColor).edgesIgnoringSafeArea(.all)
            
            ScrollView{
                VStack{
                    VStack{
                        Text("Activity level")
                            .font(.custom("AppleSDGothicNeo-Light", size: 18))
                            .foregroundColor(Color(colors.darkBlueColor))
                        
                        Picker(selection: $selectedActivityLevel, label: Text("Activity level")) {
                                    ForEach(Array(ActivityLevel.allCases), id: \.self) {
                                        Text($0.rawValue)
                                    }
                                }
                        .labelsHidden()
                        .pickerStyle(.wheel)
                        .clipped()
                    }
                    .frame(width: UIScreen.main.bounds.width * 0.90, height: 300, alignment: .center)
                    .background(Color(colors.lightBlueColor))
                    .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                    .shadow(radius: 10)
                    .padding()
                    
                    VStack{
                        Spacer()
                        Text("Goal")
                            .font(.custom("AppleSDGothicNeo-Light", size: 18))
                            .foregroundColor(Color(colors.darkBlueColor))
                        
                        
                        Picker(selection: $selectedGoal, label: Text("Goal")) {
                                    ForEach(Array(Goal.allCases), id: \.self) {
                                        Text($0.rawValue)
                                    }
                                }
                        .padding()
                        .labelsHidden()
                        .pickerStyle(.wheel)
                        .clipped()
                    }
                    .frame(width: UIScreen.main.bounds.width * 0.90, height: 300, alignment: .center)
                    .background(Color(colors.lightBlueColor))
                    .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                    .shadow(radius: 10)
                    .padding()
                                        
                    NavigationLink {
                        ResultView(personalData: PersonalData(Bmr: BMR, Gender: gender, Weight: weight, Height: Int(height), Age: age, ActivityType: selectedActivityLevel, Goal: selectedGoal))
                    } label: {
                        Text("Calculate")
                    }
                    .tint(Color(colors.darkBlueColor))
                    .buttonStyle(.bordered)
                    .buttonBorderShape(.capsule)
                    .controlSize(.large)
                    .padding()
                }
                .padding()
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(BMR: 100, age: 22, weight: 75, height: 180, gender: true)
    }
}
