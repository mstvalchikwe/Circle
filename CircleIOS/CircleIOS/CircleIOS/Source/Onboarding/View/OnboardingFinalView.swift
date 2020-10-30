//
//  o.swift
//  CircleIOS
//
//  Created by Michelle on 09/09/2020.
//

import SwiftUI

struct OnboardingFinalView: View {
    
    let views : [AnyView] = [ AnyView(Onboarding1View()), AnyView(Onboarding2View()), AnyView(Onboarding3View()), AnyView(Onboarding4View())]
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [ Color.white.opacity(0.5), Color(#colorLiteral(red: 0.431372549, green: 0.07843137255, blue: 0.7843137255, alpha: 1)).opacity(0.2)]), startPoint: .top, endPoint: .bottom)
            //Color("mainPurple")
                .opacity(0.9)
                .overlay(
                GeometryReader { gp in
                    VStack {
                        TabView {
                            ForEach(0..<4) { view in
                                ZStack {
                                    views[view]
                                        .padding(.bottom, 80)
                                }
                            }
                        }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                    }
                }
            )
        }.edgesIgnoringSafeArea(.all)
    }
}

struct OnboardingFinalView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingFinalView()
    }
}



