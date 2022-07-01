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
    @State private var shouldConsume: Int = 1000
    
    
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
