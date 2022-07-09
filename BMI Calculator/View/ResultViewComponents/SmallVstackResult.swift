//
//  SmallVstackResult.swift
//  BMI Calculator
//
//  Created by Łukasz Gołojuch on 7/9/22.
//

import SwiftUI

struct SmallVstackResult: View {
    
    let colors = Colors()
    
    let labelText: String
    let kcalValue: Int
    
    var body: some View {
        VStack(alignment: .center){
            Text("\(labelText)")
                .font(.custom("AppleSDGothicNeo-Light", size: 18))
                .foregroundColor(Color(colors.darkBlueColor))
            Text(String(kcalValue / 4) + " g")
                .font(.custom("ArialHebrew", size: 25))
                .foregroundColor(Color(colors.darkBlueColor))
        }
        .frame(width: UIScreen.main.bounds.width * 0.35, height: 170, alignment: .center)
        .background(Color(colors.additionalColor))
        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
        .shadow(radius: 10)
        .padding()
    }
}

struct SmallVstackResult_Previews: PreviewProvider {
    static var previews: some View {
        SmallVstackResult(labelText: "Carbohydrates", kcalValue: 500)
    }
}
