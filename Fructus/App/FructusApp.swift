//
//  FructusApp.swift
//  Fructus
//
//  Created by IGE DAMILOLA MICHAEL on 01/02/2022.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}

