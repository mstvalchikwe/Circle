//
//  PostView.swift
//  CircleIOS
//
//  Created by Michelle on 16/10/2020.
//

import SwiftUI

struct TextPostView: View {
    
    var imageTitle: String? = nil
    var text: String? = nil
    
    @State var isLiked = false
    @State var isShared = false
    @State var isReplied = false
    
    var body: some View {
        VStack {
            //MARK: - Post main body
            VStack {
                if let imageTitle = imageTitle {
                    Image(imageTitle)
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        .padding(.top, 8)
                        .frame(width: screen.width - 35, height: screen.height/3, alignment: .center)
                }
                
                if let title = text {
                    Text(title)
                        .multilineTextAlignment(.leading)
                        .lineLimit(nil).padding(8)
                }}
            
            
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
                HStack {
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "heart")
                            .font(.system(size: 20))
                            .foregroundColor(isLiked ? Color(#colorLiteral(red: 1, green: 0.1165214851, blue: 0, alpha: 1)) : .black).opacity(0.8)
                            .onTapGesture{
                                self.isLiked.toggle()
                            }
                    }
                    
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "arrow.2.circlepath")
                            .font(.system(size: 20))
                            .foregroundColor(isShared ? Color("mainPurple") : .black).opacity(0.8)
                            .onTapGesture{
                                self.isShared.toggle()
                            }
                    }
                    
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "arrow.turn.down.left")
                            .font(.system(size: 20))
                            .foregroundColor(isReplied ? Color("mainPurple") : .black).opacity(0.8)
                            .onTapGesture{
                                self.isReplied.toggle()
                            }
                    }
                    
                }
                    .padding(.trailing, 30)
                    .padding(.vertical, 20)
                }.padding(.top, 2)
            }
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
            .padding(2.5)
            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 2)
            .padding(.horizontal, 8)
    }
}

struct TextPostView_Previews: PreviewProvider {
    static var previews: some View {
        TextPostView(imageTitle: "sunset", text: "just saw the nicest view")
            .previewLayout(.sizeThatFits)
        
        TextPostView(text: "on my way home, on my way home, on my way home, on my way home, on my way home\n on my way homeon my way home ")
            .previewLayout(.sizeThatFits)
    }
}
