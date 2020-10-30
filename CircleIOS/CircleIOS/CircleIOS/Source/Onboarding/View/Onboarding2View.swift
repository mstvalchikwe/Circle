//
//  Onboarding2View.swift
//  CircleIOS
//
//  Created by Michelle on 06/09/2020.
//

import SwiftUI

struct Onboarding2View: View {
    var body: some View {
        VStack {
                
            VStack {
                Spacer()
                OnboardingTextView(header: "Two worlds in one place", explanation: "You have both an Inner Circle and an Outer Circle")
                //OnboardingButtonView(text: "Skip")
            }
    
            
        }
}

struct Onboarding2View_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding2View()
    }
}
    
}
