//
//  page2View.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 2/1/23.
//

import SwiftUI

struct page2View: View {
    @State private var name: String = ""
    @State private var pwd: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("Twilight")
                VStack {
                    Color("Twilight")
                    HStack {
                        Text("Username").padding().foregroundColor(Color("Strong")).font(.custom("Poppins", size:20))
                        TextField("Enter your username", text: $name)
                    }
                    HStack {
                        Text("Password").padding().foregroundColor(Color("Strong")).font(.custom("Poppins", size:20))
                        SecureField("Enter your password", text: $pwd)
                    }
                    Text("Login")
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
                .padding()
                .background(Color("Twilight"))
            }
            .background(Color("Twilight"))
        }
        .navigationBarHidden(true)
    }
}

struct page2View_Previews: PreviewProvider {
    static var previews: some View {
        page2View()
    }
}
