//
//  Menu.swift
//  CircleIOS
//
//  Created by Michelle on 04/10/2020.
//

import SwiftUI

struct MenuView: View {
    
    @ObservedObject var store = CircleStore()
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                
                VStack(spacing: 10) {
                    
                    //MARK: Navigation Links to the outer circles
                    NavigationLink (
                        destination: OuterCircleFeed().navigationBarHidden(true).navigationBarBackButtonHidden(true),
                        label: {
                            CircleDesign(title: "Outer Circle")
                        })
                    
                    
                    //MARK: Navigation Links to the outer circles
                    NavigationLink(                        destination: InnerCircleMenu()
                            .navigationBarHidden(true)
                            .navigationBarBackButtonHidden(true),
                        label: {
                            CircleDesign(title: "Inner Circles")
                        }
                    )
                    
                }
                .navigationBarTitle("Your Circles")
                .navigationBarItems(leading:Image(systemName: "gear").font(.system(size: 25)), trailing: Image(systemName: "plus").font(.system(size: 25))
                )}.padding()
            
        }
    }
}


struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}



struct CircleDesign: View {
    var title: String
    
    var body: some View {
        Text(title)
            .frame(width: 300, height: 300)  .background(Color.white)
            .clipShape(Circle())
            .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 2)
            .padding()
    }
}
