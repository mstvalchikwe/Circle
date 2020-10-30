//
//  PostView.swift
//  CircleIOS
//
//  Created by Michelle on 11/10/2020.
//

import SwiftUI

let screen = UIScreen.main.bounds

struct PostsView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
               
                
                ScrollView (showsIndicators: false){
                    
                    ForEach(0 ..< 10) { item in
                        VStack {
                            TextPostView(imageTitle: "sunset", text: "just saw the nicest view")
                                .previewLayout(.sizeThatFits)
                            
                            TextPostView(text: "on my way home, on my way home, on my way home, on my way home, on my way home\n on my way homeon my way home ")
                                .previewLayout(.sizeThatFits)
                        }
                    }
                }
            }
        }
    }
    
    
    struct PostsView_Previews: PreviewProvider {
        static var previews: some View {
            PostsView()
        }
    }
}

