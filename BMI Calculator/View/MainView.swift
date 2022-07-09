//
//  ContentView.swift
//  BMI Calculator
//
//  Created by Łukasz Gołojuch on 6/14/22.
//

import SwiftUI

struct MainView: View {
    @State private var age: Int = 22
    @State private var weight: Int = 55
    @State private var height: Float = 170
    
    //gender value
    //true - female
    //false - male
    @State private var gender: Bool = true
    
    private var colors = Colors()
    @State private var calculations = Calculations()
    
    var body: some View {
        NavigationView{
            ZStack{
                Color(colors.backgroundColor).edgesIgnoringSafeArea(.all)
                ScrollView{
                    VStack{
                        HStack(alignment: .center){
                            VStack(alignment: .center){
                                Text("Age")
                                    .font(.custom("AppleSDGothicNeo-Light", size: 18))
                                    .foregroundColor(Color(colors.darkBlueColor))
                                Text("\(age)")
                                    .font(.custom("ArialHebrew", size: 50))
                                    .foregroundColor(Color(colors.darkBlueColor))
                                Stepper("", value: $age, in: 1...100, step: 1)
                                    .labelsHidden()
                            }
                            .frame(width: UIScreen.main.bounds.width * 0.40, height: 170, alignment: .center)
                            .background(Color(colors.lightBlueColor))
                            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                            .shadow(radius: 10)
                            .padding()
                            
                            Spacer()
                            VStack(alignment: .center){
                                Text("Weight")
                                    .font(.custom("AppleSDGothicNeo-Light", size: 18))
                                    .foregroundColor(Color(colors.darkBlueColor))
                                Text("\(weight)")
                                    .font(.custom("ArialHebrew", size: 50))
                                    .foregroundColor(Color(colors.darkBlueColor))

                                Stepper("", value: $weight, in: 20...250, step: 1)
                                    .labelsHidden()

                            }
                            .frame(width: UIScreen.main.bounds.width * 0.40, height: 170, alignment: .center)
                            .background(Color(colors.lightBlueColor))
                            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                            .shadow(radius: 10)
                            .padding()
                        }
                        .padding()
                        VStack{
                            Text("Height")
                                .font(.custom("AppleSDGothicNeo-Light", size: 18))
                                .foregroundColor(Color(colors.darkBlueColor))
                            HStack{
                                Slider(value: $height, in: 100...230) {
                                    Text("\(height)")
                                        .font(.custom("ArialHebrew", size: 50))
                                }
                                .padding()

                                Text("\(Int(height)) cm")
                                    .font(.custom("ArialHebrew", size: 30))
                                    .padding()
                                    .foregroundColor(Color(colors.darkBlueColor))
                            }
                    
                        }
                        .frame(width: UIScreen.main.bounds.width * 0.90, height: 170, alignment: .center)
                        .background(Color(colors.lightBlueColor))
                        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                        .shadow(radius: 10)
                        .padding()
                        VStack{
                            Text("Gender")
                                .font(.custom("AppleSDGothicNeo-Light", size: 18))
                                .foregroundColor(Color(colors.darkBlueColor))
                            HStack{
                                Text("i'm")
                                    .font(.custom("AppleSDGothicNeo-MediumBold", size: 70))
                                    .bold()
                                    .foregroundColor(Color(colors.darkBlueColor))
                                Text("male")
                                    .foregroundColor(Color(colors.darkBlueColor))
                                Toggle(isOn: $gender){
                                    Text("")
                                }.onChange(of: gender) { value in
                                    gender = value
                                }
                                .tint(Color(colors.additionalColor))
                                .labelsHidden()
                                Text("female")
                                    .foregroundColor(Color(colors.darkBlueColor))
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width * 0.90, height: 170, alignment: .center)
                        .background(Color(colors.lightBlueColor))
                        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                        .shadow(radius: 10)
                        .padding()
                        Spacer()
                        
                        NavigationLink {
                            
                            SecondView(BMR: calculations.calculateBMR(gender: gender, weight: weight, height: Int(height), age: age), age: age, weight: weight, height: height, gender: gender)
                            
                        } label: {
                            Text("Next Step")
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
            .navigationBarTitle("BMI Calculator")
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
