//
//  CustomTabBar.swift
//  CircleIOS
//
//  Created by Michelle on 21/10/2020.
//

import SwiftUI

struct CustomTabBar: View {
    
    @State var isPurple0 = false
    @State var isPurple1 = false
    @State var isPurple2 = false
    @State var isTapped = false
    
    var body: some View {
        VStack {
            ZStack{
                //MARK - contains the code for the tab bar buttons + the purple toggle animation
                HStack{
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "house")
                            .font(.system(size: 25))
                            .foregroundColor(isPurple0 ? Color("mainPurple") : .black).opacity(0.8)
                            .padding(.leading)
                            .onTapGesture{
                                self.isPurple0.toggle()
                                isPurple1 = false
                                isPurple2 = false
                                
                            }
                    }
                    
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "bell")
                            .font(.system(size: 25))
                            .foregroundColor(isPurple1 ? Color("mainPurple") : .black).opacity(0.8)
                            .onTapGesture{
                                self.isPurple1.toggle()
                                isPurple0 = false
                                isPurple2 = false
                                
                            }
                    }
                    
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 25))
                            .foregroundColor(isPurple2 ? Color("mainPurple") : .black).opacity(0.8)
                            .onTapGesture{
                                self.isPurple2.toggle()
                                isPurple0 = false
                                isPurple1 = false
                                
                            }
                    }
                    
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Image("Image")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 30, height: 30)
                            .padding(.trailing)
                            .onTapGesture{
                                self.isTapped.toggle()
                                isPurple0 = false
                                isPurple1 = false
                                isPurple2 = false
                            }
                    }
                }
                    .padding(.horizontal)
                    .padding([.top ,.bottom])
            }
        }.padding(.bottom, 10)
    }
    
    
    struct CustomTabBar_Previews: PreviewProvider {
        static var previews: some View {
            CustomTabBar()
                .previewLayout(.sizeThatFits)
        }
    }
}
