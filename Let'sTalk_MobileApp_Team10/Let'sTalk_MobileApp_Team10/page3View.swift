//
//  page3View.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 2/1/23.
//

import SwiftUI

struct page3View: View {
    @State private var name: String = ""
    @State private var pwd: String = ""
    @State private var age: String = ""
    @State private var gen: String = ""
    @State private var repwd: String = ""
    @State private var email: String = ""
    @State private var phone: String = ""
    @State private var selection = 1
    @State private var error = ""
    @State private var registrationComplete = false
    
    var body: some View {
        
        NavigationView {
            VStack{
                Color("Twilight")
                Text("Let's get to know each other!")
                    .font(.title)
                    .foregroundColor(Color("Strong"))
                HStack{
                    Text("Name").padding().foregroundColor(Color("Strong"))
                    TextField("Enter your name", text: $name)
                    .padding()
                    .tag(1)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .foregroundColor(Color("Strong"))
                }
                HStack{
                    Text("Age").padding().foregroundColor(Color("Strong"))
                    TextField("Enter your age", text: $age)
                        .padding()
                        .tag(2)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .foregroundColor(Color("Strong"))
                }
                HStack{
                    Text("Gender").padding().foregroundColor(Color("Strong"))
                    Picker(selection: $selection, label: Text("Select a Gender")) {
                        Text("Male").tag(1)
                        Text("Female").tag(2)
                    }
                    .tag(3)
                }
                HStack{
                    Text("Email").padding().foregroundColor(Color("Strong"))
                    TextField("Enter your email", text: $email)
                        .padding()
                        .tag(4)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .foregroundColor(Color("Strong"))
                }
                HStack {
                    Text("Phone").padding().foregroundColor(Color("Strong"))
                    TextField("Enter your phone number", text: $phone)
                        .padding()
                        .tag(5)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                HStack {
                    Text("Choose a password").padding().foregroundColor(Color("Strong"))
                    SecureField("Enter your password", text: $pwd)
                        .padding()
                        .tag(6)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                HStack {
                    Text("Re-enter password").padding().foregroundColor(Color("Strong"))
                    SecureField("Enter your password", text: $repwd)
                        .padding()
                        .tag(7)
                        .textFieldStyle(RoundedBorderTextFieldStyle())

                }
                
                VStack {
                    NavigationLink(destination: uploadPhotoView()) {
//                        Text("Register")
//                            .font(.headline)
//                            .foregroundColor(.white)
//                            .padding()
//                            .background(Color.blue)
//                            .cornerRadius(10)
                        Text("Register")
                            .font(.custom("Poppins", size:20))
                            .foregroundColor(Color("Strong"))
                            .padding(.horizontal, 20)
                                    .padding(.vertical, 10)
                                    .background(
                                        RoundedRectangle(cornerRadius: 20)
                                            .stroke(Color("Strong"), lineWidth: 2)
                                    )
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    //.offset(y: -50)
                    }
                }
                
                
//                Button("Register", action: register)
//                    .font(.headline)
//                    .foregroundColor(.white)
//                    .padding()
//                    .background(Color.blue)
//                    .cornerRadius(10)
                           
//                NavigationLink(
//                    destination: uploadPhotoView(),
//                    tag: true,
//                    selection: $registrationComplete,
//                    label: {
//                        Button("Register", action: register)
//                            .font(.headline)
//                            .foregroundColor(.white)
//                            .padding()
//                            .background(Color.blue)
//                            .cornerRadius(10)
//                    })
//                VStack {
//                    NavigationLink(destination: uploadPhotoView()) {
//                        Text("Register")
//                            .font(.headline)
//                            .foregroundColor(.white)
//                            .padding()
//                            .background(Color.blue)
//                            .cornerRadius(10)
//                    }
//                }
            }
            .background(Color("Twilight"))
        }
        .navigationBarHidden(true)
    }

}

struct page3View_Previews: PreviewProvider {
    static var previews: some View {
        page3View()
    }
}
