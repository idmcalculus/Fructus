//
//  OnboardingView.swift
//  Fructus
//
//  Created by IGE DAMILOLA MICHAEL on 02/02/2022.
//

import SwiftUI

struct OnboardingView: View {
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        TabView {
            ForEach(0..<6) { i in
                if i == 5 {
                    FruitCardView(fruit: fruits[i], text: "Start")
                } else {
                    FruitCardView(fruit: fruits[i], text: "Next")
                }
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
