//
//  OnboardingView.swift
//  Fructus
//
//  Created by Prajwal U on 26/12/23.
//

import SwiftUI

struct OnboardingView: View {
//MARK: -PROPERTIES
    var fruits:[Fruit] = fruitsData
    
    //MARK: BODY

    
    var body: some View {
        TabView{
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }//: LOOP
        } // TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical , 20)
    }
}

//MARK: - PREVIEW

#Preview {
    OnboardingView(fruits: fruitsData)
}
