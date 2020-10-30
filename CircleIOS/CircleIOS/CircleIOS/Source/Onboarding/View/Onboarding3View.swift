//
//  Onboarding3View.swift
//  CircleIOS
//
//  Created by Michelle on 06/09/2020.
//

import SwiftUI

struct Onboarding3View: View {
    var body: some View {
        VStack {
                
            VStack {
                Spacer()
                OnboardingTextView(header: "", explanation: "Your inner circle can have up to 20 people. Your outer circle has the people, topics and news that you want close...")
               // OnboardingButtonView(text: "Skip")
                
                }
            }
            
        }
    }


struct Onboarding3View_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding3View()
    }
}
