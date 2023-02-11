//
//  page2View.swift
//  Application1
//
//  Created by Krishna Sai  on 2/10/23.
//

import SwiftUI

struct page2View: View {
    @State private var name: String = ""
    @State private var pwd: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Text("Username").padding()
                TextField("Enter your username", text: $name)
            }
            HStack {
                Text("Password").padding()
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
