//
//  fruitDetailView.swift
//  Fructus
//
//  Created by Prajwal U on 26/12/23.
//

import SwiftUI

struct fruitDetailView: View {
    var fruit:Fruit
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical ,showsIndicators: false){
                VStack(alignment: .center , spacing: 20) {
                    
                    
                    FruitHeaderView(fruit: fruit)
                    
                    
                    VStack(alignment: .leading , spacing: 20)
                    {
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                    
                        
                        //Headline
                        
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //Nutrients
                        
                        
                        //Subheading
                        Text("Learn more about \(fruit.title) ".uppercased())
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(fruit.gradientColors[1])
                        
                        //Description
                        Text(fruit.description)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
            
                    }//VSTACK
                    .padding(.horizontal,20)
                    .frame(maxWidth: 640,alignment: .center)
                }//VSTACk
                .navigationBarTitle(fruit.title ,displayMode : .inline)
                .navigationBarHidden(true)
            }//SCROLL
            .edgesIgnoringSafeArea(.top)
        }//NAVIAGTION
    }
}

#Preview {
    fruitDetailView(fruit: fruitsData[4])
}
