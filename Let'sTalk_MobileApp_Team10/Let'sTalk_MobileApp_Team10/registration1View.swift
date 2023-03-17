//
//  registration1View.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 3/17/23.
//

import SwiftUI

struct registration1View: View {
    @State private var name: String = ""
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Let's Talk")
                    .font(.custom("LeagueSpartan", size: 34))
                    .foregroundColor(Color("Strong"))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                Text("Let's get to know each other!")
                    .font(.custom("Poppins", size:20))
                    .foregroundColor(Color("Strong"))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(y: -50)
                Spacer ()
                VStack {
                    Text("My name is")
                        .font(.title)
                        .font(.custom("Poppins", size:20))
                        .foregroundColor(Color("Strong"))
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .offset(y: -50)
                    
                    TextField("", text: $name)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding(.horizontal)
                        .frame(height: 1)
                        //.padding(.top, 20)
                        .background(Color.blue)
                        .padding(.vertical, -30)

                    NavigationLink(destination: registration2View()) {
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
            .background(Color("Twilight"))
        }
        .navigationBarHidden(true)
    }
}

struct registration1View_Previews: PreviewProvider {
    static var previews: some View {
        registration1View()
    }
}
