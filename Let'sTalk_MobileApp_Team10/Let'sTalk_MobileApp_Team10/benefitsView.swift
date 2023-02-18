//
//  benefitsView.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 2/16/23.
//

import SwiftUI

struct benefitsView: View {
    let text = """
    Safe conversational environment
    Improve communication skills
    Improve understanding
    Improve overall wellbeing
    Broaden your mindset
    """
    
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Why 'Let's Talk'?")
                    .font(.largeTitle)
                    .bold()
                Text("User Benefits").font(.system(size:25)).lineSpacing(50)
                Spacer()
                Text(text).lineSpacing(50)
                Spacer()

                NavigationLink(destination: conditionsView()) {
                    //LINK TO SECOND PAGE
                    
                    Text("Continue")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                    
                }
            }
            .padding()
            //.navigationBarTitle("")
            .navigationBarHidden(true)
        }
        .padding()
    }
}

struct benefitsView_Previews: PreviewProvider {
    static var previews: some View {
        benefitsView()
    }
}
