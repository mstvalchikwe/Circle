//
//  Modifiers.swift
//  CircleApp
//
//  Created by Michelle on 06/08/2020.
//  Copyright © 2020 Michelle. All rights reserved.
//

import SwiftUI

//mod to create the underline textField
struct TextFieldUnderline: ViewModifier {
    func body(content: Content) -> some View {
    content
        .frame(width: 380, height: 2)
        //.padding(.horizontal, 32)
    }
}

extension View {
    func fieldUnderline() -> some View {
       self.modifier(TextFieldUnderline())
    }
}

//mod for purple button
struct PurpleBtn: ViewModifier {
    func body(content: Content) -> some View {
        content
        .frame(minWidth: 350, minHeight: 35)
        .padding(10)
        .foregroundColor(.white)
        .background(ColorManager.mainPurple)
        .border(Color.purple)
        .cornerRadius(15)
        .shadow(color: Color.gray, radius: 3, x: 0, y: 4)
        
    }
}

extension View {
    func purpleBtn() -> some View {
        self.modifier(PurpleBtn())
    }
}

//extention for titles on onboarding pages (**must be Text extension**)
extension Text {
    func onboardingTitle() -> Text {
        self
            .font(.system(size: 56))
            .fontWeight(.semibold)
            .lineLimit(2)
            .padding(32) as! Text
    }
}

//mod for TextField height
struct MyTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(16)
            .frame(height: 100, alignment: .trailing)
            .background(
                RoundedRectangle(cornerRadius: 15, style: .continuous)
                    .stroke(Color.gray, lineWidth: 0.5)
                )
    }
}

//this stops stack from extending beyond the width of the screen and allows for internal padding to keep working within the frame
//.frame(minWidth: 0, maxWidth: .infinity, alignment: .leading).padding(.horizontal)
