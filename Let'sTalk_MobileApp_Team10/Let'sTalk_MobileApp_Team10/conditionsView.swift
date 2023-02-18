//
//  conditionsView.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 2/16/23.
//

import SwiftUI

struct conditionsView: View {
    var body: some View {
        NavigationView {
            VStack {
                //Spacer()
                Text("Welcome to Let's Talk")
                    .font(.largeTitle)
                    .bold()
                Text("Please follow these community rules").font(.system(size:15))
                Spacer()
                VStack(spacing:20) {
                    Text("Be yourself.").bold().font(.system(size:20))
                    Text("Make sure your personal info reflects who you are")
                    Text("Safe space,").bold().font(.system(size:20))
                    Text("Create and foster a space where everyone can understand other's point of views")
                    Text("Be kind.").bold().font(.system(size:20))
                    Text("Treat others as you want to be treated. No tolerance for hate speech")
                         //bullying, any sort of degrading language/actions")
                    Text("Be proactive.").bold().font(.system(size:20))
                    Text("Be an up stander, protect the community")
                }
                NavigationLink(destination: page3View()) {
                    //LINK TO SECOND PAGE
                    
                    Text("I Agree")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                    
                }
                .navigationBarBackButtonHidden(true)
                
                
                
            }
        }
    }
}

struct conditionsView_Previews: PreviewProvider {
    static var previews: some View {
        conditionsView()
    }
}
