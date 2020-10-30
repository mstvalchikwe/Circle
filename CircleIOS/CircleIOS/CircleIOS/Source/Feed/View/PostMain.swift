//
//  PostMain.swift
//  CircleIOS
//
//  Created by Michelle on 12/10/2020.
//

import SwiftUI

struct PostMain: View {
    
    var body: some View {
        VStack (spacing: 0){
           LogoNavBar(title: "LOGO", leftButtonTitle: "chevron.left", leftButtonAction: {
                print("left action pressed")
            }, rightButtonTitle: "plus") {
                print("right action pressed")
            }
            PostsView()
            CustomTabBar()
                
            }.edgesIgnoringSafeArea(.bottom)
        }
    }


struct PostMain_Previews: PreviewProvider {
    static var previews: some View {
        PostMain()
    }
}


