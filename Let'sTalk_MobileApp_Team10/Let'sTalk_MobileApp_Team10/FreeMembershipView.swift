//
//  FreeMembershipView.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 3/31/23.
//

import SwiftUI

struct FreeMembershipView: View {
    var body: some View {
        VStack {
            Image("Logo")
                .resizable()
                .scaledToFit()
                .padding(.bottom, 2)
            Text("Yay!")
                .font(.custom("Poppins", size:30))
                .fontWeight(.bold)
                .foregroundColor(Color("Strong"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .offset(y: -50)
                .padding(.bottom, -50)
            Text("You are ready to discover your first chat buddies!")
                .font(.custom("Poppins", size:30))
                .fontWeight(.bold)
                .foregroundColor(Color("Strong"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .offset(y: -50)
                .padding(.bottom, -10)
            Text("First month Free!")
                .font(.custom("Poppins", size:40))
                .fontWeight(.bold)
                .foregroundColor(Color("Strong"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .offset(y: -50)
                .padding(.bottom, -10)
            Text("Access to text, audio, and video chat, unlimited topic choices and unlimited chat buddies to deepen understanding, further human connection, and decrease polarization!")
                .font(.custom("Poppins", size:14))
                .foregroundColor(Color("Strong"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .offset(y: -80)
            Text("Subscription info on the next page")
                .font(.custom("Poppins", size:14))
                .foregroundColor(Color("Strong"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .offset(y: -70)
            NavigationLink(destination: MembershipOptionsView()) {
            Text("Continue")
                .font(.custom("Poppins", size:20))
                .foregroundColor(Color("Strong"))
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .frame(width: 200, height: 50)
                .background(
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color("Strong"), lineWidth: 2)
                )
                .offset(y: -50)
            }
            .navigationBarBackButtonHidden(true)
            
            
        }
        .background(Color("Twilight"))
    }
}

struct FreeMembershipView_Previews: PreviewProvider {
    static var previews: some View {
        FreeMembershipView()
    }
}
