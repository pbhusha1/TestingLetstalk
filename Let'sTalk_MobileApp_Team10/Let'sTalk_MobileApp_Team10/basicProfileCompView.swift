//
//  basicProfileCompView.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 3/23/23.
//

import SwiftUI

struct basicProfileCompView: View {
    var body: some View {
        NavigationView {
            VStack (spacing: 20){
                Color("Twilight")
                //.ignoresSafeArea()
                //Spacer()
                //Spacer()
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("Yay! You've completed your basic profile.")
                    .font(.title)
                    .fontWeight(.bold)
                    .font(.custom("Poppins", size:30))
                    .foregroundColor(Color("Strong"))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(y: -30)
                //Spacer()
                Image("Completion")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("Now, let's talk about your chat preferences!")
                    .font(.title)
                    .font(.custom("Poppins", size:20))
                    .foregroundColor(Color("Strong"))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(y: -50)
                Spacer()
                NavigationLink(destination: CommunicationLevelView()) {
                    Text("Continue")
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
                }
            }
            .background(Color("Twilight"))
        }

        .navigationBarBackButtonHidden(true)
    }
}

struct basicProfileCompView_Previews: PreviewProvider {
    static var previews: some View {
        basicProfileCompView()
    }
}
