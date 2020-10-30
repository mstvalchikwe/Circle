//
//  ContentView.swift
//  CircleIOS
//
//  Created by Michelle on 01/09/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("LOGO")
                .resizable()
                .frame(width: 50, height: 50)
                .padding([.top, .horizontal])
        
            
            HStack{
                Text("Login to your existing account.")
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

            PurpleButtonView(text: "Login")
           

            UnderButtonView(text: "Don't have an acocunt? Sign up")
            
            
        }
        
    
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ShortDividerView: View {
    var body: some View {
        Divider()
            .frame(width: 380, height: 2)
    }
}

struct PurpleButtonView: View {
    let text: String
    
    var body: some View {
        
        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
            Text(text)
                .foregroundColor(.white)
                .fontWeight(.semibold)
        }
        .background(Color("mainPurple"))
        .frame(minWidth: 350, minHeight: 35)
        .padding(10)
        .foregroundColor(.white)
        .background(Color("mainPurple"))
        .border(Color.purple)
        .cornerRadius(15)
        .shadow(color: Color.gray, radius: 3, x: 0, y: 4)
    }
}

struct UnderButtonView: View {
    let text: String
   
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
            Text(text)
        }
        .foregroundColor(Color("mainPurple"))
        .font(.subheadline)
        .padding(.bottom, 15)
    }
}
