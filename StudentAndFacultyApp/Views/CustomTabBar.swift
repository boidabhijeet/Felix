//
//  CustomTabBar.swift
//  StudentAndFacultyApp
//
//  Created by Mac on 10/07/21.

import SwiftUI

struct CustomTabBar: View {
    
    @State private var index = 0
    @State private var isPresented = true
    
    let screenSize = UIScreen.main.bounds
    
    var body: some View {
        ZStack(alignment : .bottom){
            
            VStack{
                if self.index == 0{
                    HomePage()
                }
                else if self.index == 1{
                    TalkToFelix()
                }
                else{
                    Settings()
                }
            }
            CircleTab(index: $index)
        }
        
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct CircleTab : View {
    
    @Binding var index : Int
    
    var body: some View{
        
        HStack(spacing : 10){
            
            Spacer()
            
            Button(action: {
                self.index = 0
                
            }, label: {
                VStack{
                    
                    if(self.index == 0)
                    {
                        Image("HomeIconRed")
                        Text("Home")
                            .foregroundColor(.red)
                        
                    }
                    else{
                        Image("homeIconBlack")
                        Text("Home")
                            .foregroundColor(.black)
                    }
                }
            })
            
            Spacer()
            
            Button(action: {
                self.index = 1
                
            }, label: {
                
                if self.index == 1 {
                    Image("FelixMiniLogoRed")
                        .padding()
                        .clipShape(Circle())
                        .offset(y : -40)
                        .padding(.bottom, -20)
                }
                else{
                    Image("FelixMiniLogo")
                        .padding()
                        .clipShape(Circle())
                        .offset(y : -40)
                        .padding(.bottom, -20)
                }
                
            })
            
            Spacer()
            
            Button(action: {
                self.index = 2
            }, label: {
                VStack{
                    if self.index == 2{
                        Image("settingsIconRed")
                        Text("Settings")
                            .foregroundColor(.red)
                    }
                    else{
                        Image("settingsIconBlack")
                        Text("Settings")
                            .foregroundColor(.black)
                    }
                }
            })
            
            Spacer()
            
        }
        .border(Color.gray, width: 0.2)
        .padding(.horizontal, 25)
        .font(.system(size: 10))
        .background(Color.white)
        .animation(.spring())
        
    }
}
struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar()
            .previewDevice("iPhone 12 Pro Max")
    }
}
