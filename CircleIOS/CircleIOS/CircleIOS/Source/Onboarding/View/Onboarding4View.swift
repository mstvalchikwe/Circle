//
//  SwiftUIView.swift
//  CircleIOS
//
//  Created by Michelle on 06/09/2020.
//

import SwiftUI

struct Onboarding4View: View {
    @State var isPresented: Bool = false
    
    var body: some View {
        VStack {
            
            VStack {
                
                Spacer()
                HStack{
                    Text("But not")
                        .font(.system(size: 23))
                        .foregroundColor(.black)
                        .opacity(0.8)
                    Text("that")
                        .fontWeight(.semibold)
                        .font(.system(size: 28))
                        .foregroundColor(.black)
                    Text("close")
                        .font(.system(size: 23))
                        .foregroundColor(.black)
                        .opacity(0.8)
                    
                }.padding()
                
                
                OnboardingButtonView(text: "Done", action: {
                    self.isPresented.toggle()
                })
                .padding(.bottom, 50)
                .fullScreenCover(isPresented: $isPresented, content: {
                    Menu()
                })
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding4View()
    }
}

struct OnboardingButtonView: View {
    let text: String
    var action: () -> Void
    
    var body: some View {
        
        Button(action: action) {
            Text(text)
                .foregroundColor(Color.white)
                .fontWeight(.semibold)
        }
        .frame(minWidth: 300, minHeight: 35)
        .padding(10)
        .background(Color("mainPurple"))
        .cornerRadius(20)
        .shadow(color: Color("mainPurple").opacity(0.8), radius: 3, x: 0, y: 4)
    }
}
