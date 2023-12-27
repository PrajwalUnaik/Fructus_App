//
//  SettingLabelView.swift
//  Fructus
//
//  Created by Prajwal U on 27/12/23.
//

import SwiftUI

struct SettingLabelView: View {
    var labelText:String
    var labelImage: String
    
    
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
                .fontWeight(.bold)
        }
    }
}

#Preview {
    SettingLabelView(labelText: "Fructus", labelImage: "info.circle")
}
