//
//  CustomTabView.swift
//  StudentAndFacultyApp
//
//  Created by Abhi’s iPhone on 22/06/21.
//

import SwiftUI

struct CustomTabView: View {
    
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
        UITabBar.appearance().barTintColor = UIColor.white
    }
     
    @State private var selection = 0
    
    var body: some View {
        
        TabView(selection: $selection){
            
            HomePage().tabItem {
                Button(action: {
                    self.selection = 0
                }, label: {
                    VStack{
                        
                        if(self.selection == 0)
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
            }.tag(0)
            
            TalkToFelix().tabItem {
                Button(action: {
                    self.selection = 1
                    
                }, label: {
                    
                    if self.selection == 1 {
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
            }.tag(1)
            
            Settings().tabItem {
                Button(action: {
                    self.selection = 2
                }, label: {
                    VStack{
                        if self.selection == 2{
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
            }.tag(2)
        }
        .accentColor(.red)
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView().previewDevice("iPhone 12 Pro")
    }
}

/*
 //
 //  CustomTabView.swift
 //  StudentAndFacultyApp
 //
 //  Created by Abhi’s iPhone on 22/06/21.
 //

 import SwiftUI

 struct CustomTabView: View {
     
     
     init() {
         UITabBar.appearance().backgroundColor = UIColor.white
         UITabBar.appearance().barTintColor = UIColor.white
     }
     
     @State private var selection = 0
     
     var body: some View {
         
         TabView(selection: $selection){
             
             HomePage().tabItem {
                 Button(action: {
                     self.selection = 0
                 }, label: {
                     VStack{
                         
                         if(self.selection == 0)
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
             }.tag(0)
             
             TalkToFelix().tabItem {
                 Button(action: {
                     self.selection = 1
                     
                 }, label: {
                     
                     if self.selection == 1 {
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
             }.tag(1)
             
             Settings().tabItem {
                 Button(action: {
                     self.selection = 2
                 }, label: {
                     VStack{
                         if self.selection == 2{
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
             }.tag(2)
         }
         .accentColor(.red)
     }
 }

 struct CustomTabView_Previews: PreviewProvider {
     static var previews: some View {
         CustomTabView().previewDevice("iPhone 12 Pro")
     }
 }

 */
