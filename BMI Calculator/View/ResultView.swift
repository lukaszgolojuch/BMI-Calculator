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
            Color(colors.getBmiColor(BMI: personalData.bmi)).edgesIgnoringSafeArea(.all)
                VStack{
                    ZStack{
                        VStack{
                            Text("Your BMI")
                                .font(.custom("AppleSDGothicNeo-Light", size: 30))
                                .foregroundColor(Color(colors.darkBlueColor))
                            Text("\(Int(personalData.bmi))")
                                .font(.custom("AppleSDGothicNeo-Bold", size: 60))
                                .foregroundColor(Color(colors.darkBlueColor))
                        }
                        .scaledToFill()
                        .frame(height: getImageHeight())
                            Spacer()
                        }
                        VStack{
                            ScrollView{
                                Text("Your diet")
                                    .font(.custom("AppleSDGothicNeo-Light", size: 45))
                                    .foregroundColor(Color(colors.darkBlueColor))
                                    .padding()
                                Spacer()
                                Divider()
                                
                                HStack{
                                    BigVstackResult(labelText: "BMR", kcalValue: personalData.bmr)

                                        
                                    SmallVstackResult(labelText: "Carbohydrates", kcalValue: personalData.macroelements.carbsKcal)
                                }
                                
                                HStack{
                                    SmallVstackResult(labelText: "Protein", kcalValue: personalData.macroelements.proteinKcal)
                                    
                                    BigVstackResult(labelText: "Caloric Demand", kcalValue: personalData.caloricDemand)
                                }
                                
                                HStack{
                                    BigVstackResult(labelText: "Should Consume", kcalValue: personalData.shouldConsume)
                                    
                                    SmallVstackResult(labelText: "Fat", kcalValue: personalData.macroelements.fatKcal)
                                }
                                Spacer()
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getStackHeight(), alignment: .top)
                        .background(Color.init(colors.backgroundColor))
                        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                        .overlay(RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                                .stroke(Color(red: 45/255, green: 49/255, blue: 250/255), lineWidth: 2))
                        .ignoresSafeArea(edges: .bottom)
                    }
                }
                .ignoresSafeArea(edges: .all)
        }
        
        func getStackHeight() -> CGFloat {
            return (UIScreen.main.bounds.height * 0.75)
        }
        
        func getImageHeight() -> CGFloat {
            return (UIScreen.main.bounds.height * 0.25)
        }
    
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(personalData: PersonalData(Bmr: 1000, Gender: true, Weight: 75, Height: 180, Age: 22, ActivityType: .sixthLevel, Goal: .weightLoss))
    }
}
