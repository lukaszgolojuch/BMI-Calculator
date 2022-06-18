//
//  SecondView.swift
//  BMI Calculator
//
//  Created by Łukasz Gołojuch on 6/18/22.
//

import SwiftUI

struct SecondView: View {
    
    private var colors = Colors()
    
    var body: some View {
        ZStack{
            Color(colors.backgroundColor).edgesIgnoringSafeArea(.all)
            
            VStack{
                VStack{
                    Text("Activity level")
                        .font(.custom("AppleSDGothicNeo-Light", size: 18))
                        .foregroundColor(Color(colors.darkBlueColor))
                    
                    
                    Picker(selection: .constant(1), label: Text("")) {
                        Text("Stationary").tag(1)
                        Text("Exercise 1-3 times a week").tag(2)
                        Text("Exercise 4-5 times a week").tag(3)
                        Text("Daily exercise or intense exercise 3-4 times/week").tag(4)
                        Text("Intense exercise 6-7 times/week").tag(5)
                        Text("Very intense exercise daily, or physical job").tag(6)
                    }
                    .frame(width: 100)
                    .clipped()
                }
                .frame(width: 380, height: 150, alignment: .center)
                .background(Color(colors.lightBlueColor))
                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                .shadow(radius: 10)
                .padding()
                
                VStack{
                    Text("Goal")
                        .font(.custom("AppleSDGothicNeo-Light", size: 18))
                        .foregroundColor(Color(colors.darkBlueColor))
                    
                    
                    Picker(selection: .constant(1), label: Text("")) {
                        Text("Maintaining body weight").tag(1)
                        Text("Weight gain").tag(2)
                        Text("Weight loss").tag(3)
                    }
                    .frame(width: 100)
                    .clipped()
                }
                .frame(width: 380, height: 150, alignment: .center)
                .background(Color(colors.lightBlueColor))
                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                .shadow(radius: 10)
                .padding()
                
                Spacer()
                
                Button("Calculate") {}
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

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
