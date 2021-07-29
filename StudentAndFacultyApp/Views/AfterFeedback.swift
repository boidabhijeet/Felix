//
//  GiveFeedback.swift
//  StudentAndFacultyApp
//
//  Created by Abhi’s iPhone on 22/06/21.

import SwiftUI

struct AfterFeedback: View {
    var body: some View {
        VStack(spacing : 20) {
            
            HStack{
                Image(systemName: "arrow.left")
                Text("Feedback")
                Spacer()
            }
            .padding(.horizontal)
            .font(.system(size: 20, weight: .semibold, design: .default))
            
            Divider()
            
            VStack(alignment: .leading){
                HStack{
                    Text("Topic Name :").fontWeight(.semibold)
                    Text("Normalization")
                    Spacer()
                    Image("editIcon").padding()
                }.modifier(TextStyle14())
                
                
                HStack{
                    Text("Hours: ").fontWeight(.semibold)
                    Text("2:30 Hrs")
                }.modifier(TextStyle14())
                
                Spacer()
                
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
                
                Spacer()
                
                Text("Comment:")
                    .fontWeight(.semibold)
                    .modifier(TextStyle14())
                
                
                Spacer().frame(height: 10)
                
                Text("Need practical example, show with the coding.")
                    .modifier(TextStyle14())
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: 276)
            .modifier(GrayShadow())
            .padding(.horizontal)
            Spacer()
        }
    }
}

struct AfterFeedback_Previews: PreviewProvider {
    static var previews: some View {
        AfterFeedback()
            .previewDevice("iPhone 12 Pro Max")
    }
}
