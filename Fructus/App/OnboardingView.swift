//
//  OnboardingView.swift
//  Fructus
//
//  Created by Frank Bara on 10/11/21.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                //FruitCardView()
                Text("Cards")
            }
            
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
