//
//  Report1View.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 3/31/23.
//

import SwiftUI

struct Report1View: View {
    @State private var additionalInfo = ""
    var body: some View {
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        NavigationView {
            VStack {
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .padding(.bottom, 2)
                Text("Disrespectful, uncivil, unkind")
                    .font(.custom("Poppins", size:25))
                    .fontWeight(.bold)
                    .foregroundColor(Color("Strong"))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(y: -80)
                    .padding(.bottom, -20)
                Text("Additional information can help determine if the chat violates Let's Talk community guidelines (link)")
                    .font(.custom("Poppins", size:20))
                    .foregroundColor(Color("Strong"))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(y: -150)
                TextField("Enter additional information here", text: $additionalInfo)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                    .offset(y: -150)
                NavigationLink(destination: FreeMembershipView()) {
                    Text("Submit Report")
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
        .navigationBarBackButtonHidden(true)
    }
}

struct Report1View_Previews: PreviewProvider {
    static var previews: some View {
        Report1View()
    }
}

