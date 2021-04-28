//
//  FructosApp.swift
//  Fructos
//
//  Created by Manvendu Pathak on 22/04/21.
//

import SwiftUI

@main 
struct FructosApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            }else{
                ContentView()
            }
        }
    }
}
