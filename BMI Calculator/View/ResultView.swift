//
//  ResultView.swift
//  BMI Calculator
//
//  Created by Łukasz Gołojuch on 6/30/22.
//

import SwiftUI

struct ResultView: View {
    
    let colors = Colors()
    let personalData: PersonalData
    
    var body: some View {
        ZStack{
            Color(colors.backgroundColor).edgesIgnoringSafeArea(.all)
            ScrollView{
                VStack{
                    VStack{
                        Text("BMR")
                            .font(.custom("AppleSDGothicNeo-Light", size: 25))
                            .foregroundColor(Color(colors.darkBlueColor))
                        Text("\(String(personalData.bmr)) kcal")
                            .padding()
                            .font(.custom("ArialHebrew", size: 50))
                            .foregroundColor(Color(colors.darkBlueColor))
                    }
                    .frame(width: 380, height: 200, alignment: .center)
                    .background(Color(colors.lightBlueColor))
                    .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                    .shadow(radius: 10)
                    .padding()
                    
                    VStack{
                        Text("Your caloric demand")
                            .font(.custom("AppleSDGothicNeo-Light", size: 25))
                            .foregroundColor(Color(colors.darkBlueColor))
                        Text("\(String(personalData.caloricDemand)) kcal")
                            .padding()
                            .font(.custom("ArialHebrew", size: 50))
                            .foregroundColor(Color(colors.darkBlueColor))
                    }
                    .frame(width: 380, height: 200, alignment: .center)
                    .background(Color(colors.lightBlueColor))
                    .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                    .shadow(radius: 10)
                    .padding()
                    
                    VStack{
                        Text("You should consume")
                            .font(.custom("AppleSDGothicNeo-Light", size: 25))
                            .foregroundColor(Color(colors.darkBlueColor))
                        Text("\(String(personalData.shouldConsume)) kcal")
                            .padding()
                            .font(.custom("ArialHebrew", size: 50))
                            .foregroundColor(Color(colors.darkBlueColor))
                    }
                    .frame(width: 380, height: 200, alignment: .center)
                    .background(Color(colors.lightBlueColor))
                    .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                    .shadow(radius: 10)
                    .padding()
                    
                    PieChartView(values: [Double(personalData.macroelements.proteinKcal), Double(personalData.macroelements.fatKcal), Double(personalData.macroelements.carbsKcal)], names: ["Protein", "Fat ", "Carbs"], formatter: {value in String(format: "%.0f kcal", value)})
                }
            }
        }
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(personalData: PersonalData(Bmr: 1000, Gender: true, Weight: 75, Height: 180, Age: 22, ActivityType: .sixthLevel, Goal: .weightLoss))
    }
}
