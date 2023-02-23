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
                Spacer()
                Text("What is 'Let's Talk'?")
                    .font(.largeTitle)
                    .bold()
                Text("One-on-one live conversations for people over 21 who want to improve communication skills on challenging topics, fostering deeper understanding and human connection").font(.system(size:15))
                Spacer()
                Text("Features").bold().underline()
                Text(text).lineSpacing(30)
                Spacer()

                NavigationLink(destination: benefitsView()) {
                    //LINK TO SECOND PAGE
                    
                    Text("Continue")
                }
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                        .navigationBarBackButtonHidden(true)

            }
        }
    }
}

struct introView_Previews: PreviewProvider {
    static var previews: some View {
        introView()
    }
}
