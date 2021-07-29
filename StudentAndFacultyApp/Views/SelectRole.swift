//
//  SelectRole.swift
//  StudentAndFacultyApp
//
//  Created by Abhi’s iPhone on 16/06/21.
//

import SwiftUI

struct SelectRole: View {
    
    var screenSize = UIScreen.main.bounds
    
    var body: some View {
            VStack{
    
                Spacer()
                
                Image("HeaderLogo")
                
                Image("SelectRole")
                
                Spacer()
                
                VStack{
                    
                    Text("Please select your role.")
                        .font(.system(size: 23.0))
                        .frame(maxWidth : .infinity, alignment: .topLeading)
                        .padding(.horizontal)
                        .padding(.bottom, 30)
                    
                    
                    HStack{
                        NavigationLink(
                            destination: Login()
                                .navigationBarBackButtonHidden(true)
                                .navigationBarHidden(true))
                        {
                            HStack{
                                Image("FacultyIcon")
                                Text("Faculty")
                            }
                            .modifier(RedButton())
                        }

                        Spacer()
                        
                        NavigationLink(destination: Login()
                            .navigationBarBackButtonHidden(true)
                            .navigationBarHidden(true)
                        ){
                            
                            HStack {
                                Image("StudentIcon")
                                Text("Student")
                            }
                            .modifier(RedButton())
                                
                        }
                    }.padding(.bottom, 30)
                }
                .padding()
                .frame(maxWidth : screenSize.width, maxHeight: screenSize.height * 0.25)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 5)

            }
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.bottom)
       }
}

struct SelectRole_Previews: PreviewProvider {
    static var previews: some View {
        SelectRole()
            .previewDevice("iPhone 12 Pro Max")
    }
}

