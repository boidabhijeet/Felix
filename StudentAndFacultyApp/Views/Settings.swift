//
//  ContentView.swift
//  StudentAndFacultyApp
//
//  Created by Abhi’s iPhone on 16/06/21.
//

import SwiftUI

struct Settings: View {
    
    var body: some View {
        VStack(spacing : 10){
            Spacer().frame(maxHeight : 40)
            
            Image("profileImage")
            
            Text("Tanmay Kalbhor")
            
            Text("tanmay@gmail.com")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Spacer().frame(maxHeight : 20)
            
            
            Divider()
            
            Spacer().frame(maxHeight: 20)
            
            VStack(){
                NavigationLink(
                    destination: Profile()
                        .navigationBarBackButtonHidden(true)
                        .navigationBarHidden(true),
                    label: {
                        HStack(spacing: 19) {
                            Image("profileIcon")
                            Text(" Profile")
                            Spacer()
                        }
                        .padding()
                    })
                
                Spacer().frame(maxHeight: 20)
                
                NavigationLink(
                    destination: Text("Change Password"),
                    label: {
                        HStack(spacing: 15) {
                            Image("lockIcon")
                            Text("Change Password")
                            Spacer()
                        }
                        .padding()
                    })
                
                Spacer().frame(maxHeight: 20)
                
                NavigationLink(
                    destination: Text("Logout"),
                    label: {
                        HStack(spacing: 19) {
                            Image("logoutIcon")
                            Text("Logout")
                            Spacer()
                        }
                        .padding()
                    })
                Spacer()
            }
            .foregroundColor(.black)
        }
        .navigationBarHidden(true)
    }
}


struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
            .previewDevice("iPhone 12 Pro Max")
    }
}
