//
//  LogoNavBar.swift
//  CircleIOS
//
//  Created by Michelle on 20/10/2020.
//

import SwiftUI

struct LogoNavBar: View {
    var title: String = "LOGO"
    var leftButtonTitle: String? = nil
    var leftButtonAction: (() -> Void)? = nil
    var rightButtonTitle: String? = nil
    var rightButtonAction: (() -> Void)? = nil
    
    var body: some View {
        VStack {
            ZStack{
                //MARK: Nav Logo
                HStack(spacing: 0) {
                    Image(title)
                        .resizable()
                        .frame(width: 30, height: 30)
                }
                
                HStack{
                    //MARK: Back button
                    if let title = leftButtonTitle, let action = leftButtonAction {
                        Button(action: action) {
                            Image(systemName: title)
                                .font(.system(size: 25))
                        }.foregroundColor(Color("mainPurple"))
                    }
                    
                    Spacer()
                    
                    //MARK: Add member button
                    if let title = rightButtonTitle, let action = rightButtonAction {
                        Button(action: action) {
                            Image(systemName: title)
                                .font(.system(size: 25))
                        }.foregroundColor(Color("mainPurple"))
                    }
                }
                
                
            }
            .padding(.horizontal)
            .padding(.top)
            
            Rectangle()
                .foregroundColor(Color.gray)
                .frame(height: 1)
    }
    }
}

struct LogoNavBar_Previews: PreviewProvider {
    static var previews: some View {
        LogoNavBar(title: "LOGO", leftButtonTitle: "chevron.left", leftButtonAction: {
            print("left action pressed")
        }, rightButtonTitle: "plus") {
            print("right action pressed")
        }
        .previewLayout(.sizeThatFits)
        
        LogoNavBar(title: "LOGO", leftButtonTitle: "chevron.left", leftButtonAction: {
            print("left action pressed")
    })
        .previewLayout(.sizeThatFits)
        
    LogoNavBar()
        .previewLayout(.sizeThatFits)
    }
}
