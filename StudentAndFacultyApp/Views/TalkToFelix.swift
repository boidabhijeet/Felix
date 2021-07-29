//
//  TalkToFelix.swift
//  StudentAndFacultyApp
//
//  Created by Abhi’s iPhone on 21/06/21.
//

import SwiftUI

struct TalkToFelix: View {
    var body: some View {
        VStack(alignment: .leading){
            
            Text("@ Felix Management")
                .font(.system(size: 20.0, weight: .semibold))
            
            Divider()
            
            
            Spacer().frame(maxHeight : 25)
            
            NavigationLink(
                destination: GiveFeedbackOrSuggestions()
                    .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(true)
                ,
                label: {
                    HStack(spacing: 10) {
                        Image("FeedbackIcon")
                        Text("Give Feedback")
                    }
                    .modifier(HStackModifier())
                })
            
            
            Spacer().frame(maxHeight : 25)
            
            NavigationLink(
                destination: ReferAndEarn()
                    .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(true)
                ,
                label: {
                    HStack(spacing: 10) {
                        Image("ReferAndEarnIcon")
                        Text("Refer & Earn")
                    }
                    .modifier(HStackModifier())
                })
            
            
            Spacer().frame(maxHeight : 25)
            
            NavigationLink(
                destination: RaiseTicket()
                    .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(true)
                ,
                label: {
                    HStack(spacing: 10) {
                        Image("RaiseATicketIcon")
                        Text("Raise A Ticket")
                    }
                    .modifier(HStackModifier())
                })
            Spacer()
        }
        .padding()
        .foregroundColor(.black)
        .font(.system(size: 18.0))
        .navigationBarHidden(true)
    }
}

struct TalkToFelix_Previews: PreviewProvider {
    static var previews: some View {
        TalkToFelix()
            .previewDevice("iPhone 12 Pro Max")
    }
}

