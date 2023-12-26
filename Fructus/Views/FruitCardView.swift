//
//  FruitCardView.swift
//  Fructus
//
//  Created by Prajwal U on 26/12/23.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: properties
    
    var fruit : Fruit
    
    @State private var isAnimating: Bool  = false
    
    //MARK: body
    var body: some View {
        ZStack {
            VStack {
                //FRUIT IMAGE
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color : Color(red: 0, green: 0, blue: 0,opacity:0.15),radius: 8 , x: 6 , y:8)
                    .scaleEffect(isAnimating ? 1 : 0.6)
                    
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color : Color(red: 0, green: 0, blue: 0,opacity:0.15),radius: 2 , x: 2 , y:2)
                
                
                //Fruit:headline
                Text(fruit.headline)                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal , 16)
                    .frame(maxWidth: 480)
                StartButtonView()
            }//:VSTACK
        }//:ZSTACK
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        }
        .frame(minWidth: 0,maxWidth: .infinity,minHeight: 0,maxHeight: .infinity,alignment: .center)
        .background(LinearGradient(
            gradient: Gradient(colors: fruit.gradientColors),
            startPoint: .top,
            endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal , 20)
    }
}

//MARK: Preview
#Preview {
    FruitCardView(fruit: fruitsData[1])
        .previewLayout(.fixed(width: 320, height: 640))
}
