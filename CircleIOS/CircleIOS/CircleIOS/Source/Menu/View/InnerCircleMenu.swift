//
//  InnerCircleMenu.swift
//  CircleIOS
//
//  Created by Michelle on 21/10/2020.
//

import SwiftUI

struct InnerCircleMenu: View {
    
    @ObservedObject var store = CircleStore()
    
    var body: some View {
        NavigationView {
            ZStack {
                //CustomNavBar()
                ScrollView {
                    VStack {
                        ForEach(store.circles) { circle in
                            CircleView(circle: circle)
                        }
                        
                        Spacer()
                    }
                }
            }.navigationBarTitle("Inner Circles")
        }
        
    }
    
    
    struct InnerCircleMenu_Previews: PreviewProvider {
        static var previews: some View {
            InnerCircleMenu()
        }
    }
}

struct CreateInnerCircle: Identifiable {
    var id = UUID()
    var title: String
}

let innerCircleData = [
    CreateInnerCircle(title: "Besties")
]


struct CircleView: View {
    var circle: CreateInnerCircle
    var body: some View {
        NavigationLink (
            destination: InnerCircleFeed(circles: circle).navigationBarHidden(true).navigationBarBackButtonHidden(true),
            label: {
                
                Text(circle.title)
                    .frame(width: 180, height: 180)           .background(Color.white)
                    .clipShape(Circle())
                    .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 2)
                    .padding()
            })
    }
}
