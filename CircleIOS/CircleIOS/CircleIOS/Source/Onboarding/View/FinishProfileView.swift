//
//  FinishProfileView.swift
//  CircleIOS
//
//  Created by Michelle on 02/09/2020.
//

import SwiftUI

struct FinishProfileView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Finish creating your account")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                    .padding()
                
                Spacer()
            }
            
            Spacer()
            
            VStack(spacing: 15){
                Image(systemName: "camera.circle")
                    .font(.system(size: 200, weight: .ultraLight))
                    .foregroundColor(Color(.gray))
                
                Text("Add a profile picture")
                    .font(.system(size: 30))
            }
            
            Spacer()
            
            VStack {
                Text("Create a bio")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 20))
                
                TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .padding(16)
                    .frame(height: 100, alignment: .trailing)
                    .background(
                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                            .stroke(Color.gray, lineWidth: 0.5)
                        )

                    
                
                
            }.padding(.horizontal, 30)
            
            Spacer()
            
            PurpleButtonView(text: "Done")
            
            Spacer()
            
            }
        }
    }


struct FinishProfileView_Previews: PreviewProvider {
    static var previews: some View {
        FinishProfileView()
    }
}
