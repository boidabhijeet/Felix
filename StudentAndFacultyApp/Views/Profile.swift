//
//  Profile.swift
//  StudentAndFacultyApp
//
//  Created by Abhi’s iPhone on 22/06/21.
//

import SwiftUI

struct Profile: View {
    
    @Environment(\.presentationMode) var presentationMode

    @State var name : String = ""
    @State var email : String = ""
    @State var mobileNumber : String = ""
    var body: some View {
        VStack{
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                    HStack{
                        Image(systemName: "arrow.left")
                        Text("Profile")
                        Spacer()
                    }
                    .padding(.horizontal)
                    .foregroundColor(.black)
            })
 
            Group{
                
                Divider()

                Spacer().frame(maxHeight: 20)
                
                Image("profileImage")
                
                Spacer().frame(maxHeight: 20)
                
                Text("Change Profile Picture")
                    .foregroundColor(.gray)
                
                Spacer().frame(maxHeight: 20)

                Divider()

            }
            VStack(alignment : .leading){
                Spacer().frame(maxHeight : 20)
                
                Text("Name")
                    .padding(.horizontal)
                TextField("Tanmay Kalbhor", text: $name)
                    .modifier(CustomTextField())
                
                Spacer().frame(maxHeight: 20)
                
                Text("Email")
                    .padding(.horizontal)
                TextField("tanmay@gmail.com", text: $email)
                    .modifier(CustomTextField())

               
                Spacer().frame(maxHeight: 20)
                
                Text("Mobile")
                    .padding(.horizontal)
                TextField("1234567890", text: $mobileNumber)
                    .modifier(CustomTextField())

            }
            Spacer().frame(maxHeight : 30)
            
            HStack{
                Spacer()
                Button("Cancel") {
                    //code
                }
                .frame(maxWidth : 80, maxHeight: 34)
                .border(Color.red)
                .background(Color.white)
                .foregroundColor(.red)
                .font(.system(size: 15, weight: .regular, design: .default))
                Spacer().frame(width: 20)
                Button("Update") {
                    //code
                }
                .frame(maxWidth : 80, maxHeight: 34)
                .background(Color.red)
                .foregroundColor(.white)
                .font(.system(size: 15, weight: .regular, design: .default))
            }
            .padding(.horizontal)
            Spacer()
        }
    }
}
            
struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
            .previewDevice("iPhone 12 Pro Max")
    }
}
