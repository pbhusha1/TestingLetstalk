//
//  registration3View.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 3/17/23.
//

import SwiftUI

struct registration3View: View {
    @State private var age: String = ""
    @State private var phone: String = ""
    @State private var email: String = ""
    @State private var displayAgeOnProfile = false
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                Text("Let's Talk")
                    .font(.custom("LeagueSpartan", size: 34))
                    .foregroundColor(Color("Strong"))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                VStack {
                    Text("Age")
                        .font(.title)
                        .font(.custom("Poppins", size:20))
                        .foregroundColor(Color("Strong"))
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .offset(y: -50)
                    Spacer()
                    Toggle("Show my Age on my Profile", isOn: $displayAgeOnProfile)
                        .padding(.vertical)
                    
                    TextField("", text: $age)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding(.horizontal)
                        .frame(height: 1)
                    //.padding(.top, 20)
                        .background(Color.blue)
                        .padding(.vertical, -30)
                    Spacer()
                    Text("Phone")
                        .font(.title)
                        .font(.custom("Poppins", size:20))
                        .foregroundColor(Color("Strong"))
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .offset(y: -50)
                    
                    TextField("", text: $phone)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding(.horizontal)
                        .frame(height: 1)
                    //.padding(.top, 20)
                        .background(Color.blue)
                        .padding(.vertical, -30)
                    Spacer()
                    Text("Email")
                        .font(.title)
                        .font(.custom("Poppins", size:20))
                        .foregroundColor(Color("Strong"))
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .offset(y: -50)
                    
                    TextField("", text: $email)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding(.horizontal)
                        .frame(height: 1)
                    //.padding(.top, 20)
                        .background(Color.blue)
                        .padding(.vertical, -30)
                }
                .background(Color("Twilight"))
                NavigationLink(destination: registration4View()) {
                    //LINK TO SECOND PAGE
                    
                    Text("Continue")
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
                .navigationBarBackButtonHidden(true)
            }
            .background(Color("Twilight"))
        }
        .navigationBarHidden(true)
    }
}

struct registration3View_Previews: PreviewProvider {
    static var previews: some View {
        registration3View()
    }
}
