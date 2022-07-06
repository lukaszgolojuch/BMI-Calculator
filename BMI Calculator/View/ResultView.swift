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
                            Text("59")
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
                                    VStack(alignment: .center){
                                        Text("BMR")
                                            .font(.custom("AppleSDGothicNeo-Light", size: 18))
                                            .foregroundColor(Color(colors.darkBlueColor))
                                            
                                        Text(String(personalData.bmr) + " kcal")
                                            .font(.custom("ArialHebrew", size: 40))
                                            .foregroundColor(Color(colors.darkBlueColor))
                                            .lineLimit(0)
                                    }
                                    .frame(width: UIScreen.main.bounds.width * 0.5, height: 170, alignment: .center)
                                    .background(Color(colors.lightBlueColor))
                                    .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                                    .shadow(radius: 10)
                                    .padding()
                                    
                                    VStack(alignment: .center){
                                        Text("Carbohydrates")
                                            .font(.custom("AppleSDGothicNeo-Light", size: 18))
                                            .foregroundColor(Color(colors.darkBlueColor))
                                        Text(String(personalData.macroelements.carbsKcal / 4) + " g")
                                            .font(.custom("ArialHebrew", size: 25))
                                            .foregroundColor(Color(colors.darkBlueColor))
                                    }
                                    .frame(width: UIScreen.main.bounds.width * 0.35, height: 170, alignment: .center)
                                    .background(Color(colors.additionalColor))
                                    .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                                    .shadow(radius: 10)
                                    .padding()
                                }
                                
                                HStack{
                                    VStack(alignment: .center){
                                        Text("Protein")
                                            .font(.custom("AppleSDGothicNeo-Light", size: 18))
                                            .foregroundColor(Color(colors.darkBlueColor))
                                        Text(String(personalData.macroelements.proteinKcal / 4) + " g")
                                            .font(.custom("ArialHebrew", size: 25))
                                            .foregroundColor(Color(colors.darkBlueColor))
                                    }
                                    .frame(width: UIScreen.main.bounds.width * 0.35, height: 170, alignment: .center)
                                    .background(Color(colors.additionalColor))
                                    .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                                    .shadow(radius: 10)
                                    .padding()
                                    
                                    VStack(alignment: .center){
                                        Text("Caloric Demand")
                                            .font(.custom("AppleSDGothicNeo-Light", size: 18))
                                            .foregroundColor(Color(colors.darkBlueColor))
                                            
                                        Text(String(personalData.caloricDemand) + " kcal")
                                            .font(.custom("ArialHebrew", size: 40))
                                            .foregroundColor(Color(colors.darkBlueColor))
                                            .lineLimit(0)
                                    }
                                    .frame(width: UIScreen.main.bounds.width * 0.5, height: 170, alignment: .center)
                                    .background(Color(colors.lightBlueColor))
                                    .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                                    .shadow(radius: 10)
                                    .padding()
                                }
                                
                                HStack{
                                    VStack(alignment: .center){
                                        Text("Should Consume")
                                            .font(.custom("AppleSDGothicNeo-Light", size: 18))
                                            .foregroundColor(Color(colors.darkBlueColor))
                                            
                                        Text(String(personalData.shouldConsume) + " kcal")
                                            .font(.custom("ArialHebrew", size: 40))
                                            .foregroundColor(Color(colors.darkBlueColor))
                                            .lineLimit(0)
                                    }
                                    .frame(width: UIScreen.main.bounds.width * 0.5, height: 170, alignment: .center)
                                    .background(Color(colors.lightBlueColor))
                                    .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                                    .shadow(radius: 10)
                                    .padding()
                                    
                                    VStack(alignment: .center){
                                        Text("Fat")
                                            .font(.custom("AppleSDGothicNeo-Light", size: 18))
                                            .foregroundColor(Color(colors.darkBlueColor))
                                        Text(String(personalData.macroelements.fatKcal / 9) + " g")
                                            .font(.custom("ArialHebrew", size: 25))
                                            .foregroundColor(Color(colors.darkBlueColor))
                                    }
                                    .frame(width: UIScreen.main.bounds.width * 0.35, height: 170, alignment: .center)
                                    .background(Color(colors.additionalColor))
                                    .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                                    .shadow(radius: 10)
                                    .padding()
                                }
                                
                                Spacer()
                            }
                        }
                        .frame(width: .infinity, height: getStackHeight(), alignment: .top)
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
