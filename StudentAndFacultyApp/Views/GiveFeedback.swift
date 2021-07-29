//
//  GiveFeedback.swift
//  StudentAndFacultyApp
//
//  Created by Mac on 20/07/21.
//

import SwiftUI

struct GiveFeedback: View {
    
    @State private var comment = ""
    var body: some View {
        VStack(spacing : 20) {
            
            HStack{
                Image(systemName: "arrow.left")
                Text("Give Feedback")
                Spacer()
            }
            .padding(.horizontal)
            .font(.system(size: 20, weight: .semibold, design: .default))
            
            Divider()
            
            VStack(alignment: .leading){
                HStack{
                    Text("Topic Name :").fontWeight(.semibold)
                    Text("Main method")
                    Spacer()
                }
                .modifier(TextStyle14())
                .padding(.vertical, 1)
                
                
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
                
                TextField("Comments:", text: $comment)
                Divider()
                    .padding(.horizontal, 1)
                    .frame(height : 0.6)
                    .background(Color.red)
                
                Spacer().frame(height: 10)
                
                Text("Note*: Feedback will be seen by faculty.")
                    .font(.system(size: 10, weight: .regular))
                    .italic()
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: 276)
            .modifier(GrayShadow())
            .padding(.horizontal)
            Spacer()
        }
    }
}

struct GiveFeedback_Previews: PreviewProvider {
    static var previews: some View {
        GiveFeedback()
    }
}
