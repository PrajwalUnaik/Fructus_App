//
//  FruitRowView.swift
//  Fructus
//
//  Created by Prajwal U on 26/12/23.
//

import SwiftUI

struct FruitRowView: View {
    
    var fruit: Fruit
    
    
    var body: some View {
        HStack{
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80,height: 80,alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0), radius: 0.3, x: 2, y: 2)
                .background(LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5){
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline).font(.caption)
                    .foregroundColor(.secondary)
            }
        }
    }
}

#Preview {
    FruitRowView(fruit: fruitsData[0])
}
