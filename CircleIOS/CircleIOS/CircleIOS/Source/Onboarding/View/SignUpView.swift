//
//  SignUpView.swift
//  CircleIOS
//
//  Created by Michelle on 02/09/2020.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        VStack {
            Image("LOGO")
                .resizable()
                .frame(width: 50, height: 50)
                .padding([.top, .horizontal])
        
            
            HStack{
                Text("Sign up for a new account.")
                    .fontWeight(.semibold)
                    .font(.largeTitle)
                    .multilineTextAlignment(.leading)
                    .padding()
            
                Spacer()
                    
            }

            Spacer()
            
            VStack(alignment: .leading) {
                Text("Username and email")
                    .padding(.horizontal)
                TextField("Username or email", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal)
            }
            ShortDividerView()
                .padding(.bottom)
            
            VStack(alignment: .leading){
                Text("Password")
                    .padding(.horizontal)
                TextField("Password", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal)
            }
            ShortDividerView()
                .padding(.bottom, 60)

            PurpleButtonView(text: "Sign In")
            UnderButtonView(text: "Have an acocunt? Login")
        
        }
        
    
            
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
