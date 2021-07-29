//
//  HomePage.swift
//  StudentAndFacultyApp
//
//  Created by Abhi’s iPhone on 17/06/21.
//

import SwiftUI

struct HomePage: View {
    
    var body: some View {
        
        NavigationView {
            VStack {
                HStack {
                    Text("Felix Student")
                    Spacer()
                    Image(systemName : "bell")
                }
                .padding()
                .modifier(TextStyle20())
                
                List(testData) { item in
                    
                    HomePageSubView(item: item)
                }
                .listStyle(PlainListStyle())
            }
            .navigationBarHidden(true)
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
            .previewDevice("iPhone 12 Pro Max")
    }
}

