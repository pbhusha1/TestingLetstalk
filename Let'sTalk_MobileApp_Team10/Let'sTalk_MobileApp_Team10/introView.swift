//
//  introView.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 2/16/23.
//

import SwiftUI

struct introView: View {
    let text = """
    Personalized profile
    Chat Buddy options
    Communication skill podcasts
    Monthly talks by experts
    Membership options
    Moderators for transformative talks
    Ongoing support
    Rewards for engaged members
    """
    var body: some View {
        NavigationView {
            VStack {
                Color("Twilight")
                Spacer()
                Text("What is 'Let's Talk'?")
                    .font(.custom("LeagueSpartan", size: 34))
                    .foregroundColor(Color("Strong"))
                    .bold()
                Text("One-on-one live conversations for people over 21 who want to improve communication skills on challenging topics, fostering deeper understanding and human connection").font(.system(size:15)).foregroundColor(Color("Strong"))
                
                Spacer()
                Text("Features").bold().underline().foregroundColor(Color("Strong"))
                Text(text).foregroundColor(Color("Strong")).lineSpacing(30).font(.custom("Poppins", size:20))
                Spacer()

                NavigationLink(destination: benefitsView()) {
                    //LINK TO SECOND PAGE
                    
                    Text("Continue")
                }
                .font(.custom("Poppins", size:20))
                .foregroundColor(Color("Strong"))
                .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color("Strong"), lineWidth: 2)
                        )
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .offset(y: -50)
                        .navigationBarBackButtonHidden(true)

            }
            .background(Color("Twilight"))
        }
        .navigationBarHidden(true)
    }
}

struct introView_Previews: PreviewProvider {
    static var previews: some View {
        introView()
    }
}

