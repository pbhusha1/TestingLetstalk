//
//  MembershipOptionsView.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 3/31/23.
//

import SwiftUI

struct MembershipOptionsView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .padding(.bottom, 2)
                Text("Subscription Level")
                    .font(.custom("Poppins", size:30))
                    .fontWeight(.bold)
                    .foregroundColor(Color("Strong"))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(y: -50)
                    .padding(.bottom, -50)
                Text("Choose which kind of membership you prefer after your first free month")
                    .font(.custom("Poppins", size:20))
                    .foregroundColor(Color("Strong"))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(y: -50)
                Text("Every subscription Level includes unlimited talking time!")
                    .font(.custom("Poppins", size:23))
                    .fontWeight(.bold)
                    .foregroundColor(Color("Strong"))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(y: -50)
                    .padding(.bottom, 50)
                HStack {
                    Text("Let's Talk +")
                        .font(.custom("Poppins", size:20))
                        .foregroundColor(Color.orange)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .frame(width: 200, height: 50)
                        .background(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.orange, lineWidth: 2)
                        )
                        //.offset(y: -50)
                    Text("$1.99/month upto 3 topics billed annually")
                        .foregroundColor(Color.orange)
                        .font(.custom("Poppins", size:15))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 20)
                }
                .background(Color("Twilight"))
                .offset(y: -80)
                HStack {
                    Text("Let's Talk Gold")
                        .font(.custom("Poppins", size:20))
                        .foregroundColor(Color.yellow)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .frame(width: 200, height: 50)
                        .background(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.yellow, lineWidth: 2)
                        )
                        //.offset(y: -30)
                    
                    Text("$2.99/month unlimited topics billed annually")
                        .foregroundColor(Color.yellow)
                        .font(.custom("Poppins", size:15))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 10)
                }
                .background(Color("Twilight"))
                .offset(y: -60)
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
                    .offset(y: -20)
            }
            .background(Color("Twilight"))
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct MembershipOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        MembershipOptionsView()
    }
}
