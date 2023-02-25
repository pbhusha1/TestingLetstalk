//
//  page1View.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 2/1/23.
//

import SwiftUI

struct page1View: View {
    @State private var name: String = ""
    
    var body: some View {
        VStack {
            Color("Twilight")
            Text("Why Let's Talk?")
                .font(.largeTitle)
                .foregroundColor(Color("Strong"))
                .bold()
            Text("Safe conversations to foster understanding").foregroundColor(Color("Strong"))
            Text("Improve Communication skills").foregroundColor(Color("Strong"))
            Text("Improve understanding").foregroundColor(Color("Strong"))
            Text("Broaden your mindet").foregroundColor(Color("Strong"))
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
        .background(Color("Twilight"))
    }
}

struct StartPage_Previews: PreviewProvider {
    static var previews: some View {
        page1View()
    }
}
