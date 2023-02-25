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
        VStack {
            HStack {
                Text("Username").padding().foregroundColor(Color("Strong"))
                TextField("Enter your username", text: $name)
            }
            HStack {
                Text("Password").padding().foregroundColor(Color("Strong"))
                SecureField("Enter your password", text: $pwd)
            }
            Button(action: {
            }) {
                Text("Login")
            }
        }
    }
}

struct page2View_Previews: PreviewProvider {
    static var previews: some View {
        page2View()
    }
}
