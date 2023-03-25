//
//  ChatBuddyInfoView.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 3/24/23.
//

import SwiftUI

struct ChatBuddyInfoView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .padding(.bottom, 5)
                Spacer()
                Text("Chat Buddy")
                    .font(.title)
                    .fontWeight(.bold)
                    .font(.custom("Poppins", size:20))
                    .foregroundColor(Color("Strong"))
                    .frame(maxWidth: 700, maxHeight: 50)
                    .offset(y: -20)
                Text("Your chat buddy options are based on your profile input.")
                    .font(.custom("Poppins", size:20))
                    .foregroundColor(Color("Strong"))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(y: -30)
                Text("Let's Talk will match you with a choice of chat buddies in each topic of interest.")
                    .font(.custom("Poppins", size:20))
                    .foregroundColor(Color("Strong"))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(y: -70)
                    .padding(.bottom, -50)
                Text("The number of topics you can choose is based on your subscription level.")
                    .font(.custom("Poppins", size:20))
                    .foregroundColor(Color("Strong"))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(y: -50)
                    .padding(.bottom, -50)
                Text("Every conversation will be one-on-one, you can choose between text, audio, or video chat at any time")
                    .font(.custom("Poppins", size:20))
                    .foregroundColor(Color("Strong"))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(y: -50)
                    .padding(.bottom, -50)
                
                NavigationLink(destination: TextCommunicationView()){
                    Text("Continue")}
                .font(.custom("Poppins", size:20))
                .foregroundColor(Color("Strong"))
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color("Strong"), lineWidth: 2)
                )
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
            }
            .background(Color("Twilight"))
        }
        .navigationBarBackButtonHidden(true)
        
    }
}

struct ChatBuddyInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ChatBuddyInfoView()
    }
}
