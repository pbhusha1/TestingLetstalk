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
                Color("Twilight")
                //Spacer()
                Text("Welcome to Let's Talk")
                    .font(.system(size:28))
                    .foregroundColor(Color("Strong"))
                    .bold()
                Text("Please follow these community rules").font(.system(size:15)).foregroundColor(Color("Strong"))
                Spacer()
                VStack(spacing:20) {
                    Text("Be yourself.").bold().foregroundColor(Color("Strong")).font(.system(size:20))
                    Text("Make sure who you really are").foregroundColor(Color("Strong"))
                    Text("Safe space,").bold().foregroundColor(Color("Strong")).font(.system(size:20))
                    Text("Create and foster a safe space").foregroundColor(Color("Strong"))
                    Text("Be kind.").bold().foregroundColor(Color("Strong")).font(.system(size:20))
                    Text("Treat others as you want to be treated.").foregroundColor(Color("Strong"))
                         //bullying, any sort of degrading language/actions")
                    Text("Be proactive.").bold().foregroundColor(Color("Strong")).font(.system(size:20))
                    Text("Be an up stander, protect the community").foregroundColor(Color("Strong"))
                }
                NavigationLink(destination: registration1View()) {
                    //LINK TO SECOND PAGE
                    
                    Text("I Agree")
                        .font(.custom("Poppins", size:20))
                        .foregroundColor(Color("Strong"))
                        .padding(.horizontal, 20)
                                .padding(.vertical, 10)
                                .background(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color("Strong"), lineWidth: 2)
                                )
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                                //.offset(y: -50)
                    
                }
                .navigationBarBackButtonHidden(true)
            }
            .background(Color("Twilight"))
        }
        .navigationBarHidden(true)
    }
}

struct conditionsView_Previews: PreviewProvider {
    static var previews: some View {
        conditionsView()
    }
}

