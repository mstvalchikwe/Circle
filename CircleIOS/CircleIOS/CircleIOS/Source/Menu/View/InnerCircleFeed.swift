//
//  InnerCircleFeed.swift
//  CircleIOS
//
//  Created by Michelle on 05/10/2020.
//

import SwiftUI

struct InnerCircleFeed: View {
    var circles: CreateInnerCircle = innerCircleData[0]
    
    var body: some View {
        TabView {
            ScrollView {
                VStack {
                    Spacer()
                    Text("Hello, SwiftUI!")
                        .navigationBarTitleDisplayMode(.inline)
                }
            }
        }
    }
    
}



struct InnerCircleFeed_Previews: PreviewProvider {
    static var previews: some View {
        InnerCircleFeed()
    }
}
