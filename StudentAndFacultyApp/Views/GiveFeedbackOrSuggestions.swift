//
//  GiveFeedback.swift
//  StudentAndFacultyApp
//
//  Created by Abhi’s iPhone on 21/06/21.
//

import SwiftUI


struct GiveFeedbackOrSuggestions : View {
    
    @State var descriptionText : String = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        GeometryReader { geo in
            VStack{
                
                Button(
                    action: {
                        self.presentationMode.wrappedValue.dismiss()},
                    label: {
                        HStack(spacing : 10){
                            Image(systemName: "arrow.left")
                            Text("Give Feedback")
                                .font(.system(size: 20))
                        }
                        .frame(maxWidth: geo.size.width * 0.9, alignment: .leading)
                        .padding(.horizontal)
                        .foregroundColor(.black)
                    })
                
                Divider()
                
                Text("Do you have any suggestion or issue?\nPlease feel free to let us know...")
                    .frame(maxWidth: geo.size.width * 0.9, alignment: .leading)
                    .padding()
                
                TextField("Describe your issue or idea...", text: $descriptionText)
                    .modifier(TextStyle14())
                    .padding(10)
                    .frame(maxWidth: geo.size.width * 0.9, minHeight: 130, alignment: .topLeading)
                    .background(Color(red: 1.0, green: 0.78, blue: 0.796))
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .padding(.horizontal)
                
                Text("How do you feel? (Optional)")
                    .font(.system(size: 16))
                    .frame(maxWidth: geo.size.width * 0.9, alignment: .leading)
                    .padding(.top, 30)
                    .padding(.horizontal)
                
                
                Image("FeedbackEmoji")
                    .frame(maxWidth: geo.size.width, alignment: .center)
                
                //Paste below HStack here and remove above static image.
                
                Spacer()
                
                Button("Send") {
                    //code
                }
                .font(.system(size: 24, weight: .semibold, design: .default))
                .frame(maxWidth: geo.size.width, minHeight: 65, alignment: .center)
                .background(Color.red)
                .foregroundColor(.white)
            }
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}


struct GiveFeedbackOrSuggestions_Previews: PreviewProvider {
    static var previews: some View {
        GiveFeedbackOrSuggestions(descriptionText: "Describe your issue or idea...")
            .previewDevice("iPhone 12 Pro Max")
    }
}

//                HStack{
//                    //Todo - Adding custom star rating HWS
//                    VStack{
//                        Image("notUnderstoodGray")
//                        Text("Poor")
//                    }
//                    VStack{
//                        Image("notUnderstoodGray")
//                        Text("Bad")
//                    }
//                    VStack{
//                        Image("partiallyUnderstoodGray")
//                        Text("Okay")
//                    }
//                    VStack{
//                        Image("understood")
//                        Text("Great")
//                    }
//                    VStack{
//                        Image("understoodGray")
//                        Text("Good")
//                    }
//                }
//                .font(.system(size: 10))
//                .padding(8)
//                .frame(maxWidth: geo.size.width, alignment: .center)
//                .background(Color(.systemGray6))
