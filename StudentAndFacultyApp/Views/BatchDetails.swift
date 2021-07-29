//
//  BatchDetails.swift
//  StudentAndFacultyApp
//
//  Created by Abhi’s iPhone on 21/06/21.

import SwiftUI

struct BatchDetails: View {
    
    var item : Subject
    var screenSize = UIScreen.main.bounds
    
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack(alignment : .bottomTrailing) {
            VStack{
                
                Button(
                    action: {self.presentationMode.wrappedValue.dismiss()},
                    label: {
                        HStack{
                            Image(systemName: "arrow.left")
                            Text("Batch Details")
                        }
                        .foregroundColor(.black)
                        .frame(maxWidth : .infinity, alignment : .leading)
                        .padding(.leading, 15.0)
                    })
                
                Divider()
                
                
                HStack(spacing : 0){
                    Image("\(item.barName)Bar")
                    
                    VStack(spacing : 10){
                        
                        HStack{
                            
                            VStack(alignment :.leading, spacing : 12) {
                                Text(item.title)
                                    .font(.system(size: 20, weight: .regular, design: .default))
                                Text("Batch Start Date: \(item.batchStartDate)")
                                Text("Hours Covered: \(item.hoursCovered) Hrs")
                            }
                            .modifier(TextStyle14())
                            
                            Spacer()
                            
                            Image(item.imageName)
                        }
                        
                        
                        NavigationLink(
                            destination : Text("Display Study Material"),
                            label: {
                                Text("Show study material")
                                    .modifier(TextStyle14())
                                    .foregroundColor(.red)
                                    .lineLimit(0)
                                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment : .trailing)
                                
                                Image("rightArrowRed")
                            })
                    }
                    .padding()
                    .frame(maxWidth : screenSize.width * 0.9, maxHeight : screenSize.height * 0.16, alignment: .center)
                    .background(Color.white)
                    .clipped()
                    .shadow(radius : 5)
                }.padding(.vertical, 5)
                
                Text("Topics Covered")
                    .font(.system(size: 18, weight: .semibold))
                    .frame(maxWidth : screenSize.width * 0.9, alignment: .leading)
                    .padding(.top)
                
                ZStack(alignment : .bottomTrailing) {
                    VStack(alignment : .leading){
                        HStack{
                            Text("Inheritance")
                                .font(.system(size: 14, weight: .semibold))
                            Spacer()
                            Text("15-Mar-2020")
                                .font(.system(size: 12))
                        }
                        
                        Text("Hours : 2:30 Hrs")
                            .font(.system(size: 12))
                        
                        Spacer().frame(maxHeight : 20)
                        HStack{
                            Text("Polymorphism")
                                .font(.system(size: 14, weight: .semibold))
                            Spacer()
                            
                        }
                        
                        Text("Hours : 2:30 Hrs")
                            .font(.system(size: 12))
                        
                    }
                    .padding()
                    .frame(maxWidth : screenSize.width * 0.9)
                    .modifier(GrayShadow())
                    
                    Image("absent").padding()
                    
                }.padding(.vertical, 10)
                
                
                ZStack(alignment : .bottomTrailing) {
                    VStack(alignment : .leading){
                        HStack{
                            Text("Normalization")
                                .font(.system(size: 14, weight: .semibold))
                            Spacer()
                            Text("11-Mar-2020")
                                .font(.system(size: 12))
                            
                        }
                        
                        Text("Hours : 2:30 Hrs")
                            .font(.system(size: 12))
                        
                        Spacer().frame(maxHeight : 20)
                        
                        
                        HStack(spacing : 1) {
                            Text("My rating:")
                                .font(.system(size: 12))
                            
                            Image("understood")
                                .resizable()
                                .frame(width: 24, height: 24)
                        }
                    }
                    .padding()
                    .frame(maxWidth : screenSize.width * 0.9)
                    .modifier(GrayShadow())
                    
                    NavigationLink(
                        destination: Text("Destination")
                        ,
                        label: {
                            Image("feedbackSent").padding()
                        })
                }
                Spacer()
            }
            
            NavigationLink(destination:
                AddTopic()
                    .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(true))
            {
                Image("addTopicIcon").padding()
            }
        }
    }
}

struct BatchDetails_Previews: PreviewProvider {
    static var previews: some View {
        BatchDetails(item: testData[0])
    }
}


