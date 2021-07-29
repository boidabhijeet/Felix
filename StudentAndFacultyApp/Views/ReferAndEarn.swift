//
//  ReferAndEarn.swift
//  StudentAndFacultyApp
//
//  Created by Abhi’s iPhone on 22/06/21.

import SwiftUI

struct ReferAndEarn: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var name : String = ""
    @State var email : String = ""
    @State var contact : String = ""
    
    var body: some View {
        VStack {
            
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                HStack{
                    Image(systemName: "arrow.left")
                    Text("Refer & Earn")
                    Spacer()
                }.padding(.horizontal)
                .foregroundColor(.black)
            })
            
            Divider()
            
            Image("ReferAndEarn2")
                .resizable()
                .frame(maxWidth : .infinity, maxHeight: .infinity)
            //                    .scaledToFill()
            
            Spacer()
            
            Text("Here'a an Awesome")
            Text("Refer & Earn!").font(.title3)
            Text("Refer a friend and recieve upto ₹1000 as reward").font(.subheadline)
            
            Spacer()
            
            VStack{
                Group{
                    
                    TextField("Full Name", text: $name)
                    
                    TextField("Email", text: $email)
                    
                    TextField("Contact", text: $contact)
                    
                }
                .modifier(CustomTextField())
                
                NavigationLink(destination: TalkToFelix()){
                    
                    Text("SUBMIT")
                        .font(.system(size: 16, weight: .semibold))
                        .modifier(RedButton())
                }
            }
            .padding()
            .modifier(GrayShadow())
            .padding(10)
            
        }
    }
}

struct ReferAndEarn_Previews: PreviewProvider {
    static var previews: some View {
        ReferAndEarn()
            .previewDevice("iPhone 12 Pro Max")
    }
}
