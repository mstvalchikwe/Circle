//
//  NotificationItem.swift
//  CircleIOS
//
//  Created by Michelle on 29/10/2020.
//

import SwiftUI

struct NotificationItem: View {
    var body: some View {
        ZStack {
            
            VStack {
                Text("17h ago")
                        .foregroundColor(.blue)
                    .fontWeight(.light)
                
                Text("`user24874 liked your post")
                    .foregroundColor(.black)
                    .fontWeight(.bold)
            }
            
            
        
            
        }.frame(width: screen.width - 30, height: screen.height/8)
        .background(Color.gray)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .padding(2.5)
        
        .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 2)
        .padding(.horizontal, 8)
        
    }
}

struct NotificationItem_Previews: PreviewProvider {
    static var previews: some View {
        NotificationItem()
    }
}
