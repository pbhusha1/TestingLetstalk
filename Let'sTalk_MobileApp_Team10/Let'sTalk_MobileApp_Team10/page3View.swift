//
//  page3View.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 2/1/23.
//

import SwiftUI
import FirebaseAuth
import Firebase
import FirebaseFirestore

let db = Firestore.firestore()

struct User {
    
    var name: String
    var pwd: String
    var age: String
    var gen: String
    var repwd: String
    var email: String
    var phone: String

}



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
    @State private var showAlert = false
    
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
                HStack(spacing:-10){
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
                
              
                
                
               HStack {
                    // ... your code here ...
                    Button("Register") {
                        
                        Auth.auth().createUser(withEmail: email, password: pwd) { authResult, error in
                            if let error = error {
                                print(error)
                                // Handle error here
                            } else {
                                registrationComplete = true
                            }
                        }
                            
                        if (selection == 1){
                            gen = "Male"
                        }
                        else
                        {
                            gen = "Female"
                        }
                        
                        
                            let user = User(name: name, pwd: pwd, age: age, gen: gen, repwd: repwd, email: email, phone: phone)
                            
                            db.collection("users").addDocument(data: [
                            
                                "name": user.name,
                                "pwd": user.pwd,
                                "age": user.age,
                                "gen": user.gen,
                                "repwd": user.repwd,
                                "email": user.email,
                                "phone": user.phone
                            ])
                            
                        showAlert = true
                        
                    }
                    .font(.custom("Poppins", size:20))
                    .foregroundColor(Color("Strong"))
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color("Strong"), lineWidth: 2)
                    )
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    //.disabled(registrationComplete)
                   // .opacity(registrationComplete ? 0.5 : 1.0)
                    
              
                  if registrationComplete
                   {
                      NavigationLink(destination: uploadPhotoView()) {
                          Text("Continue")
                          
                      }  .font(.custom("Poppins", size:20))
                          .foregroundColor(Color("Strong"))
                          .padding(.horizontal, 20)
                          .padding(.vertical, 10)
                          .background(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color("Strong"), lineWidth: 2)
                          )
                          .frame(maxWidth: .infinity, maxHeight: .infinity)
                         // .disabled(registrationComplete)
                         // .opacity(registrationComplete ? 0.5 : 1.0)
                      
                  }
                   
                   //if registrationComplete {
                
                     //   NavigationLink(destination: uploadPhotoView()) {
                       //     Text("Continue")
                           //     .font(.custom("Poppins", size:20))
                         //       .foregroundColor(.white)
                             //   .padding(.horizontal, 20)
                               // .padding(.vertical, 10)
                                //.background(Color.blue)
                                //.cornerRadius(10)
                        //}
                        
                        //.padding(.top, 20)
                    
                   }
                
                }
                
            .alert(isPresented: $showAlert){
                Alert(title: Text("Registration Successful"), message: Text(" \(name) is registered"), dismissButton: .default(Text("OK")))
                
            }
            
            .background(Color("Twilight"))
                .navigationBarHidden(true)
            }
        }
        
        
        
        //struct page3View_Previews: PreviewProvider {
        //  static var previews: some View {
        //    page3View()
        //}
        //}
        
    }



