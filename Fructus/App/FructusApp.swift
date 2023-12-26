//
//  FructusApp.swift
//  Fructus
//
//  Created by Prajwal U on 26/12/23.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage ("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            }
            else{
                ContentView()
            }
        }
    }
}

