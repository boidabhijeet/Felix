//
//  LoginFaculty.swift
//  StudentAndFacultyApp
//
//  Created by Abhi’s iPhone on 16/06/21.
//

import SwiftUI

struct Login: View {
    
    @State private var alertIsPresented = false
    @State private var text : String = ""
    
    @State var email = ""
    @State var password = ""
    @State var visible = false
    @State var alert = false
    @State var error = ""
    
    var body: some View {
        ZStack {
            VStack{
                
                Spacer().frame(maxHeight: 40)
                
                Image("HeaderLogo")
                    .renderingMode(.original)
                    .frame(maxWidth : .infinity, alignment: .center)
                
                Spacer().frame(maxHeight: 60)
                
                Text("Good Day Faculty,")
                    .font(.system(size: 20))
                    .foregroundColor(.red)
                    .frame(maxWidth : .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                Spacer().frame(maxHeight: 10)
                
                Text("Let's login to the classroom")
                    .font(.system(size: 24))
                    .frame(maxWidth : .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                Spacer().frame(maxHeight: 50)
                
                
                Group{
                    
                    TextField("Email", text: $email)
                        .modifier(CustomTextField())
                    
                    Spacer().frame(maxHeight: 30)
                    
                    HStack(spacing: 15){
                        if self.visible{
                            TextField("Password", text: self.$password)
                                .autocapitalization(.none)
                        }else{
                            SecureField("Password", text: self.$password)
                                .autocapitalization(.none)
                        }
                        
                        Button(action: {
                            self.visible.toggle()
                        }) {
                            Image(systemName: self.visible ? "eye.slash.fill" : "eye.fill")
                                .foregroundColor(.red)
                        }
                    }
                    .modifier(CustomTextField())
                    
                    
                    Spacer().frame(maxHeight: 50)
                    
                    
                    
                    NavigationLink(
                        destination: CustomTabBar()
                            .navigationBarBackButtonHidden(true)
                            .navigationBarHidden(true)){
                        Text("LOGIN")
                            .modifier(RedButton())
                    }
                    
                    Spacer().frame(maxHeight: 30)
                    
                    Button("Forgot Password?"){
                        self.alertIsPresented = true
                    }
                    .foregroundColor(.black)
                    
                }
                Spacer()
            }
            .navigationBarHidden(true)
            .padding(.horizontal)
            
            ForgotPwdAlert(isPresented: $alertIsPresented, text: $text)
        
        }
        .background(alertIsPresented ? Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.1).ignoresSafeArea(.all) : nil)
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
            .previewDevice("iPhone 12 Pro Max")
    }
}
