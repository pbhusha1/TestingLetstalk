//
//  registration4View.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 3/17/23.
//

import SwiftUI

struct registration4View: View {
    @State private var pwd: String = ""
    @State private var cpwd: String = ""
    var body: some View {
        NavigationView {
            VStack {
                Text("Let's Talk")
                    .font(.custom("LeagueSpartan", size: 34))
                    .foregroundColor(Color("Strong"))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                VStack {
                    Text("Choose a Password")
                        .font(.title)
                        .font(.custom("Poppins", size:20))
                        .foregroundColor(Color("Strong"))
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .offset(y: -50)
                    Spacer()
                    SecureField("", text: $pwd)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding(.horizontal)
                        .frame(height: 1)
                    //.padding(.top, 20)
                        .background(Color.blue)
                        .padding(.vertical, -30)
                    Spacer()
                    Text("Re-enter Password")
                        .font(.title)
                        .font(.custom("Poppins", size:20))
                        .foregroundColor(Color("Strong"))
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .offset(y: -50)
                    
                    SecureField("", text: $cpwd)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding(.horizontal)
                        .frame(height: 1)
                    //.padding(.top, 20)
                        .background(Color.blue)
                        .padding(.vertical, -30)
                }
                .background(Color("Twilight"))
                NavigationLink(destination: uploadPhotoView()) {
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

struct registration4View_Previews: PreviewProvider {
    static var previews: some View {
        registration4View()
    }
}
