//
//  BigVstackResult.swift
//  BMI Calculator
//
//  Created by Łukasz Gołojuch on 7/9/22.
//

import SwiftUI

struct BigVstackResult: View {
    
    let colors = Colors()
    
    let labelText: String
    let kcalValue: Int
    
    var body: some View {
        VStack(alignment: .center){
            Text("\(labelText)")
                .font(.custom("AppleSDGothicNeo-Light", size: 18))
                .foregroundColor(Color(colors.darkBlueColor))
                
            Text(String(kcalValue) + " kcal")
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
}

struct BigVstackResult_Previews: PreviewProvider {
    static var previews: some View {
        BigVstackResult(labelText: "Should Consume", kcalValue: 1500)
    }
}
