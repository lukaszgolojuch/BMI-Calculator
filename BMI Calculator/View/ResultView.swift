//
//  ResultView.swift
//  BMI Calculator
//
//  Created by Łukasz Gołojuch on 6/30/22.
//

import SwiftUI

struct ResultView: View {
    
    private var colors = Colors()
    
    @State private var bmr: Int = 1000
    @State private var caloricDemand: Int = 1000
    @State private var shouldConsume: Int = 1700
    @State private var carbsKcal: Int = 1000
    @State private var proteinKcal: Int = 600
    @State private var fatKcal: Int = 100
    
    
    var body: some View {
        ZStack{
            Color(colors.backgroundColor).edgesIgnoringSafeArea(.all)
            ScrollView{
                VStack{
                    VStack{
                        Text("BMR")
                            .font(.custom("AppleSDGothicNeo-Light", size: 25))
                            .foregroundColor(Color(colors.darkBlueColor))
                        Text("\(String(bmr)) kcal")
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
                        Text("2000 kcal")
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
                        Text("1200 kcal")
                            .padding()
                            .font(.custom("ArialHebrew", size: 50))
                            .foregroundColor(Color(colors.darkBlueColor))
                    }
                    .frame(width: 380, height: 200, alignment: .center)
                    .background(Color(colors.lightBlueColor))
                    .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                    .shadow(radius: 10)
                    .padding()
                    
                    PieChartView(values: [1300, 500, 300], names: ["Protein", "Fat ", "Carbs"], formatter: {value in String(format: "%.0f kcal", value)})
                }
            }
        }
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
