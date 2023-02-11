//
//  page1View.swift
//  Application1
//
//  Created by Krishna Sai  on 2/10/23.
//

import SwiftUI

struct page1View: View {
    @State private var name: String = ""
    
    var body: some View {
        VStack {
            Text("Why Let's Talk?")
                .font(.largeTitle)
                .bold()
            Text("Safe conversations to foster understanding")
            Text("Improve Communication skills")
            Text("Improve understanding")
            Text("Broaden your mindet")
//            Text("My name is")
//                .font(.headline)
//            TextField("Enter your name", text: $name)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//                .padding()
            HStack {
                NavigationLink(destination: page3View()) {
                    Text("Register")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                Spacer()
                NavigationLink(destination: page2View()) {
                    Text("Login")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
                .navigationBarTitle("")
                .navigationBarHidden(true)
            }
            Spacer()
        }
        .padding()
        .navigationBarTitle("Enter Your Name")
    }
}

struct StartPage_Previews: PreviewProvider {
    static var previews: some View {
        page1View()
    }
}

