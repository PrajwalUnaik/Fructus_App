//
//  NutrientsView.swift
//  Fructus
//
//  Created by Prajwal U on 27/12/23.
//

import SwiftUI

struct NutrientsView: View {
    var fruits: Fruit
    let nutrient:[String] = ["Energy","Sugar","Fat","Protien","Vitamins","Minerals"]
    var body: some View {
        GroupBox{
            DisclosureGroup("Nutritional value per 100g"){
                VStack {
                    ForEach(0 ..< nutrient.count , id: \.self) { item in
                        
                        Divider().padding(.vertical , 2)
                        HStack{
                            Group {
                                Image(systemName: "info.circle")
                                    
                                Text(nutrient[item])
                            }
                            .foregroundColor(fruits.gradientColors[1])
                                .font(Font.system(.body).bold())
                            Spacer(minLength:25)
                            Text(fruits.nutrition[item]).multilineTextAlignment(.trailing)
                        }
                    }
                    
                }
            }
        }//BOX
    }
}

#Preview {
    NutrientsView(fruits: fruitsData[0])
}
