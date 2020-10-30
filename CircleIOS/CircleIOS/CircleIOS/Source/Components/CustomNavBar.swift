//
//  NotificationView.swift
//  CircleIOS
//
//  Created by Michelle on 21/10/2020.
//

import SwiftUI

struct NotificationView: View {
    var title: String = " "
    var leftButton: String? = nil
    var leftButtonAction: (() -> Void)? = nil
    var rightButton: String? = nil
    var rightButtonAction: (() -> Void)? = nil
    
    
    var body: some View {
        VStack {
            ZStack {
                Text(title)
                    .font(.title)
                    .fontWeight(.bold)
                    .opacity(0.8)
                
                HStack {
                    if let title = leftButton, let action = leftButtonAction {
                        Button(action: action) {
                            Image(systemName: title)
                                .font(.system(size: 25))
                                .foregroundColor(Color("mainPurple"))
                                .opacity(0.8)
                        }
                    }
                    
                    Spacer()
                    
                    if let title = rightButton, let action = rightButtonAction {
                        Button(action: action) {
                                Image(systemName: title)
                                    .font(.system(size: 25))
                                    .foregroundColor(Color("mainPurple"))
                                    .opacity(0.8)
                        }
                    }
                    
                    
                }
                
            }
            .padding(.horizontal)
            .padding(.top)
            Rectangle()
                .frame(height: 1)
        }
    }

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView(title: "Title", leftButton: "arrow.left", leftButtonAction: {
                            print("left button pressed")
        },
        rightButton: "magnifyingglass", rightButtonAction: {
            print("right button pressed")
        })
        .previewLayout(.sizeThatFits)
        
        NotificationView(title: "Title", leftButton: "arrow.left", leftButtonAction: {
            print("back button pressed")
        })
        .previewLayout(.sizeThatFits)
        
        NotificationView(leftButton: "arrow.left", leftButtonAction: {
            print("back button pressed")
        })
        .previewLayout(.sizeThatFits)
        
        NotificationView(
        rightButton: "magnifyingglass", rightButtonAction: {
            print("right button pressed")
        })
        .previewLayout(.sizeThatFits)
    
        }
    }
}
