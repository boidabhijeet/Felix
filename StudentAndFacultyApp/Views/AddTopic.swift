//
//  AddTopic.swift
//  StudentAndFacultyApp
//
//  Created by Abhi’s iPhone on 22/06/21.
//

import SwiftUI

struct AddTopic: View {
    
    @State private var isPresented = false
    @State private var topicTF : String = ""
    @State private var noteTF : String = ""
    @State private var selectedDate = Date()
    
    var batchDate : String = "02 Apr, 2021" //Implement the variable later***
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading){
                
                Text("Add Topic")
                    .padding(.horizontal)
                
                Divider()
                
                Spacer().frame(maxHeight : 20)
                
                HStack() {
                    
                    Text("Batch Date :")
                        .fontWeight(.semibold)
                    Text(batchDate)
                    
                    Spacer()
                    
                    DatePicker("", selection: $selectedDate, in: Date()..., displayedComponents : .date)
                    
                    
                }.padding(.horizontal)
                
                Spacer().frame(maxHeight : 20)
                
                List(topic) { item in
                    HStack{
                        VStack(alignment :.leading, spacing : 10) {
                            Text(item.topicName)
                            Text(item.topicNote)
                            Text(item.topicHours)
                        }
                        .font(.system(size: 15))
                        
                        Spacer()
                        
                        Menu {
                            Button(action: {}) {
                                Label("Edit", systemImage: "pencil")
                            }
                            
                            Button(action: {}) {
                                Label("Delete", systemImage: "trash.fill")
                            }
                        }
                        label: {
                            Image("verticalDots")
                        }
                        
                    }
                    .padding()
                    .modifier(GrayShadow())
                }
                .listStyle(PlainListStyle())
                
                HStack{
                    
                    Spacer()
                    
                    HStack(spacing : 2){
                        Image(systemName : "plus")
                            .foregroundColor(.red)
                        
                        Button("Click To Add Topic") {
                            isPresented.toggle()
                        }
                        .sheet(isPresented: $isPresented) {
                            AddNewTopicAlert(topic: $topicTF, isPresented: $isPresented, note: $noteTF)
                        }
                        
                    }
                    .font(.system(size: 13, weight: .semibold))
                    .frame(maxWidth: 165, maxHeight: 40)
                    .background(Color.white)
                    .foregroundColor(.black)
                    .clipShape(Capsule())
                    .clipped()
                    .shadow(color: .gray, radius : 5)
                }
                .padding(.horizontal)
                
                Spacer().frame(maxHeight : 20)
                
                Button("Send") {
                    //code
                }
                .font(.system(size: 24, weight: .semibold))
                .frame(maxWidth: .infinity, maxHeight: 65, alignment: .center)
                .background(Color.red)
                .foregroundColor(.white)
                
            }
            .edgesIgnoringSafeArea(.bottom)
            .blur(radius: isPresented ? 2 : 0)
            
            //                .opacity(isPresented ? 0.3 : 1)
            
            //                AddNewTopicAlert(topic: $topicTF, isPresented: $isPresented, note: $noteTF)
        }
    }
}

struct AddTopic_Previews: PreviewProvider {
    static var previews: some View {
        AddTopic()
            .previewDevice("iPhone 12 Pro Max")
    }
}
