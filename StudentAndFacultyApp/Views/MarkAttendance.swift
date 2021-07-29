//
//  MarkAttendance.swift
//  StudentAndFacultyApp
//
//  Created by Abhi’s iPhone on 22/06/21.
//

import SwiftUI

struct MarkAttendance: View {
    
    var students : [String] = ["Pooja kalburgi","Vaishnavi Shimpi","Nikhil Fegade","Nitesh Shinde","Rutuja Pawar"]
    
    var body: some View {
        
        VStack(alignment: .leading){
            
            Text("Mark Attendance")
                .padding(.horizontal)
            
            Divider()
            
            List(0..<students.count) { item in
                HStack{
                    Image("personCircle")
                    
                    Text(students[item])
                    
                    Spacer()
                    
                    Image(systemName: "checkmark.square.fill").foregroundColor(.red)
                }
                .padding(10)
                .modifier(GrayShadow())
            }
            .listStyle(PlainListStyle())
            
            Spacer()
            
            Button("Mark Attendance") {
                //code
            }
            .font(.system(size: 24, weight: .semibold))
            .frame(maxWidth: .infinity, minHeight: 65, alignment: .center)
            .background(Color.red)
            .foregroundColor(.white)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct MarkAttendance_Previews: PreviewProvider {
    static var previews: some View {
        MarkAttendance()
            .previewDevice("iPhone 12 Pro Max")
    }
}
