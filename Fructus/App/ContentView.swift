//
//  ContentView.swift
//  Fructus
//
//  Created by Prajwal U on 26/12/23.
//

import SwiftUI

struct ContentView: View {
    
    var fruits:[Fruit] = fruitsData
    
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: fruitDetailView(fruit: item))
                    {
                        FruitRowView(fruit:item)
                            .padding(.vertical ,4)
                    }

                }.listRowSeparator(.hidden)
            }
                .navigationTitle("Fruits")
        }
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
