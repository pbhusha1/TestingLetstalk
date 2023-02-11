//
//  page3View.swift
//  Application1
//
//  Created by Krishna Sai  on 2/10/23.
//

import SwiftUI

struct page3View: View {
    @State private var name: String = ""
    //@State private var gender: String = ""
    @State private var email: String = ""
    @State private var phone: String = ""
    @State private var selection = 1
    
    var body: some View {
        VStack{
            HStack{
                Text("Name").padding()
                TextField("Enter your name", text: $name)
            }
            HStack{
                Text("Gender").padding()
                Picker(selection: $selection, label: Text("Select a Gender")) {
                        Text("Male").tag(1)
                        Text("Female").tag(2)
                }
            }
            HStack{
                Text("Email").padding()
                TextField("Enter your email", text: $email)
            }
            HStack {
                Text("Phone").padding()
                TextField("Enter your phone number", text: $phone)
            }
        }
    }
}

struct page3View_Previews: PreviewProvider {
    static var previews: some View {
        page3View()
    }
}
