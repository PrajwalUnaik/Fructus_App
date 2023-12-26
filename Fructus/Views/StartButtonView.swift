//
//  StartButtonView.swift
//  Fructus
//
//  Created by Prajwal U on 26/12/23.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: properties
    
    
    //MARK: Body
    
    var body: some View {
        
        Button(action: {
            print("Exit the onboarding ")
        }){
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal , 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color .white,lineWidth: 1.25))
        }
        .accentColor(.white)
        
    }
}



//MARK: Preview

#Preview {
    StartButtonView().previewLayout(.sizeThatFits)
}
