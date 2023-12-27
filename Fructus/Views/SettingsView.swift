//
//  SettingsView.swift
//  Fructus
//
//  Created by Prajwal U on 27/12/23.
//

import SwiftUI

struct SettingsView: View {
    
    
    //MARK: - properties
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false

    //MARK: - Body
    var body: some View {
        NavigationView{
            ScrollView(.vertical , showsIndicators: false)
            {
                VStack (spacing : 20)
                {
                    GroupBox(label : SettingLabelView(labelText: "fructus", labelImage: "info.circle"))
                    {
                        Divider().padding(.vertical , 4)
                        HStack(alignment: .center , spacing: 10) {
                            Image("logo").resizable().scaledToFit()
                                .frame(width: 80,height: 80).cornerRadius(9)
                            
                            Spacer()
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    //section1
                    //section2
                    GroupBox(
                                label: SettingLabelView(labelText: "Customization", labelImage: "paintbrush")
                    )
                    {
                                Divider().padding(.vertical, 4)
                                
                                Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                                  .padding(.vertical, 8)
                                  .frame(minHeight: 60)
                                  .layoutPriority(1)
                                  .font(.footnote)
                                  .multilineTextAlignment(.leading)
                                
                                Toggle(isOn: $isOnboarding) {
                                  if isOnboarding {
                                    Text("Restarted".uppercased())
                                      .fontWeight(.bold)
                                      .foregroundColor(Color.green)
                                  } else {
                                    Text("Restart".uppercased())
                                      .fontWeight(.bold)
                                      .foregroundColor(Color.secondary)
                                  }
                                }
                                .padding()
                                .background(
                                  Color(UIColor.tertiarySystemBackground)
                                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                                )
                              }
                    //section3
                    
                    
                    GroupBox(
                                label:
                                SettingLabelView(labelText: "Application", labelImage: "apps.iphone")
                              ) {
                                SettingsRowView(name: "Developer", content: "Prajwal U")
                                SettingsRowView(name: "Designer", content: "Prajwal U")
                                SettingsRowView(name: "Compatibility", content: "iOS 14+")
                                SettingsRowView(name: "Github", linkLabel: "Github", linkDestination: "github.com/PrajwalUnaik")
                                SettingsRowView(name: "Twitter", linkLabel: "@PrajwalNaik28", linkDestination: "twitter.com/PrajwalNaik28")
                                SettingsRowView(name: "SwiftUI", content: "2.0")
                                SettingsRowView(name: "Version", content: "1.1.0")
                              }
                }
                .navigationBarTitle(Text("Settings") , displayMode: .large)
                .navigationBarItems(trailing:Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                })
            }
        }
    }
}

#Preview {
    SettingsView()
}
