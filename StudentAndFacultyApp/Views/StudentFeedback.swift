//
//  StudentFeedback.swift
//  StudentAndFacultyApp
//
//  Created by Mac on 06/07/21.
//

import SwiftUI

struct StudentFeedback: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        GeometryReader { geo in
            VStack(alignment : .leading){
                
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    HStack{
                        Image(systemName: "arrow.left")
                        Text("Student Feedback")
                    }
                    .foregroundColor(.black)
                })
                .padding(.horizontal)
                
                
                Divider()
                
                Spacer().frame(maxHeight: 20)
                
                HStack {
                    
                    Text("Main method")
                        .font(.system(size: 14, weight: .semibold))
                    Spacer()
                    Text("Avg. Rating : ")
                        .font(.system(size: 12))
                    Image("notUnderstood")
                    Spacer().frame(maxWidth: 20)
                    
                    Image(systemName: "control")
                }
                .padding(.horizontal, 30)
                
                Spacer().frame(maxHeight: 20)
                
                VStack(alignment : .leading) {
                    
                    HStack(spacing : 15){
                        Image("personCircle")
                        Text("Darshan Kulthe")
                            .font(.system(size: 20, weight: .semibold, design: .default))
                    }
                    
                    Spacer().frame(maxHeight: 40)
                    
                    HStack{
                        VStack{
                            Image("notUnderstoodGray")
                            Text("Not Understood")
                                .lineLimit(0)
                            
                        }
                        Spacer()
                        VStack{
                            Image("partiallyUnderstoodGray")
                            Text("Partially Understood")
                                .lineLimit(0)
                        }
                        Spacer()
                        VStack{
                            Image("understood")
                            Text("Understood")
                                .lineLimit(0)
                            
                        }
                    }
                    .modifier(TextStyle10())
                    
                    Spacer().frame(maxHeight: 40)
                    
                    Text("Comment:")
                        .font(.system(size: 14.0, weight: .semibold, design: .default))
                    Spacer().frame(height: 10)
                    Text("Need practical example, show with the coding.")
                        .font(.system(size: 14.0, weight: .regular, design: .default))
                    
                }
                .padding()
                .frame(maxWidth: geo.size.width * 0.9)
                .modifier(GrayShadow())
                .padding(.horizontal)
                
                Spacer().frame(height: 20)
                
                VStack(alignment : .leading) {
                    
                    HStack(spacing : 15){
                        Image("personCircle")
                        Text("Renuka Pathak")
                            .font(.system(size: 20, weight: .semibold, design: .default))
                    }
                    
                    Spacer().frame(maxHeight: 40)
                    
                    HStack{
                        VStack{
                            Image("notUnderstoodReg")
                            Text("Not Understood")
                                .lineLimit(0)
                        }
                        Spacer()
                        VStack{
                            Image("partiallyUnderstoodGray")
                            Text("Partially Understood")
                                .lineLimit(0)
                        }
                        Spacer()
                        VStack{
                            Image("understoodGray")
                            Text("Understood")
                                .lineLimit(0)
                            
                        }
                    }
                    .modifier(TextStyle10())
                    
                    Spacer().frame(maxHeight: 40)
                    
                    Text("Comment:")
                        .font(.system(size: 14.0, weight: .semibold, design: .default))
                    Spacer().frame(maxHeight: 10)
                    Text("Need practical example, show with the coding.")
                        .font(.system(size: 14.0))
                    
                }
                .padding()
                .frame(maxWidth: geo.size.width * 0.9)
                .modifier(GrayShadow())
                .padding(.horizontal)
                
                Spacer()
            }
        }
    }
}

struct StudentFeedback_Previews: PreviewProvider {
    static var previews: some View {
        StudentFeedback()
            .previewDevice("iPhone 12 Pro Max")
    }
}
