//
//  StartButtonView.swift
//  Fructus
//
//  Created by IGE DAMILOLA MICHAEL on 02/02/2022.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    var text: String
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    // MARK: - BODY
    
    var body: some View {
        Button (action: {
            if text == "Start" {
                isOnboarding = false
                
            } else {
                isOnboarding = true
            }
        }) {
            HStack(spacing: 8) {
                Text(text)
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(.white, lineWidth: 1.25)
            )
        } //: BUTTON
        .accentColor(.white)
        .opacity(text == "Start" ? 1 : 0.6)
    }
}

// MARK: - PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView(text: "Next")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
