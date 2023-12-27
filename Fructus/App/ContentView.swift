//
//  ContentView.swift
//  Fructus
//
//  Created by Prajwal U on 26/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSettings : Bool = false
    
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
                .navigationBarItems(trailing: Button(action:{
                    isShowingSettings = true
                }){
                    Image(systemName: "slider.horizontal.3")
                })//end of button
                .sheet(isPresented: $isShowingSettings, content: {
                    SettingsView()
                })
        }
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
