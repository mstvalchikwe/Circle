//
//  Onboarding1View.swift
//  CircleIOS
//
//  Created by Michelle on 05/09/2020.
//

import SwiftUI

struct Onboarding1View: View {
    
    
    var body: some View {
        VStack {
            
            
            VStack {
                ZStack {
//                    Color("mainPurple")
//                        .edgesIgnoringSafeArea(.all)
                    
                    VStack {
                        Text("Welcome to")
                            .foregroundColor(.black)
                            .font(.title)
                            .fontWeight(.regular)
                            .opacity(0.8)
                        
                        Text("CIRCLE")
                            .foregroundColor(.black)
                            .font(.largeTitle)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(.top, 3)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                    }
                }
            }
                
            VStack {
                Spacer()
                    OnboardingTextView(header: "Create and join cicles", explanation: "Your circles are made up of what matters to you the most")
                        .animation(Animation.interpolatingSpring(stiffness: 40, damping: 7).delay(0.1))
                    //OnboardingButtonView(text: "Skip")
                    
            }
        }
        }
    }


struct Onboarding1View_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding1View()
    }
}

struct OnboardingTextView: View {
    let header: String
    let explanation: String
    
    var body: some View {
        Text(header)
            .foregroundColor(.black)
            .fontWeight(.semibold)
            .font(.system(size: 27))
            .padding()
            .multilineTextAlignment(.center)
        
        Text(explanation)
            .foregroundColor(.black)
            .fontWeight(.regular)
            .font(.system(size: 23))
            .padding(.horizontal)
            .multilineTextAlignment(.center)
            .padding(.bottom, 50)
            .opacity(0.8)
    }
}

