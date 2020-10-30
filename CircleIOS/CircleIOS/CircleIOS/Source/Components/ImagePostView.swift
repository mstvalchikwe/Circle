//
//  ImagePostView.swift
//  CircleIOS
//
//  Created by Michelle on 24/10/2020.
//

import SwiftUI

struct ImagePostView: View {
    var body: some View {
        VStack(spacing: 0) {
           // MARK: - Image Post
            
            VStack {
                Image("sunset")
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .padding(.top, 8)
                    .frame(width: screen.width - 35, height: screen.height/3, alignment: .center)
                
                Text("Sunset at the beach today")
                    .lineLimit(nil).padding(8)
                    .frame(alignment: .leading)
            }
                    
            HStack {
                //MARK: - Profile pic and username
                HStack(alignment: .center, spacing: 0) {
                    Image("Image")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                        .padding()
                    
                    Text("@michelle")
                        .fontWeight(.bold)
                }
                
                //MARK: - Post Interaction Buttons
                //pending review of the itemization of TextpostView()
//                HStack {
//                    ForEach(0 ..< iconButtons.count) { button in
//                        Spacer()
//                        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
//                            Image(systemName:  iconButtons[button]).font(.system(size: 20))
//                        }.foregroundColor(.black).opacity(0.6)
//                    }
//
//                }
//                .padding(.trailing, 30)
//                .padding(.vertical, 20)
            }
        }
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
        .padding(2.5)
        .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 2)
        .padding(.horizontal, 8)
    }
}

struct ImagePostView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePostView()
    }
}
