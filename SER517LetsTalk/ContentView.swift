//
//  ContentView.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 2/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("Twilight")
                .ignoresSafeArea()
            //            Color.cyan
            //                .ignoresSafeArea()
            NavigationView {
                VStack {
                    Color("Twilight")
                        //.ignoresSafeArea()
                    //Spacer()
                    //Spacer()
                    Image("Logo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
//                    Text("Let's Talk!")
//                        .font(.custom("LeagueSpartan", size: 34))
//                        .foregroundColor(Color("Strong"))
//                        .fontWeight(.bold)
//                        .frame(maxWidth: .infinity, maxHeight: .infinity)
//                        .offset(y: -50)
                    Spacer()
                    //                        Image("Speech")
                    //                            .resizable()
                    //                            .scaledToFit()
                    Text("A platform to foster honest, respectful and safe one-on-one conversations about challenging topics to deepen understanding and human connection")
                        .font(.custom("Poppins", size:20))
                        .foregroundColor(Color("Strong"))
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                                //.offset(y: -50)
                        
                    //Spacer()
                    //NavigationLink(destination: benefitsView()) {
                    //LINK TO SECOND PAGE
                    
                    HStack {
                        NavigationLink(destination: introView()) {
                            Text("Register")}
                        .font(.custom("Poppins", size:20))
                        .foregroundColor(Color("Strong"))
                        .padding(.horizontal, 20)
                                .padding(.vertical, 10)
                                .background(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color("Strong"), lineWidth: 2)
                                )
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .offset(y: -50)
                        
                        Spacer()
                        NavigationLink(destination: page2View()) {
                            Text("Login")}
                        .font(.custom("Poppins", size:20))
                        .foregroundColor(Color("Strong"))
                        .padding(.horizontal, 20)
                                .padding(.vertical, 10)
                                .background(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color("Strong"), lineWidth: 2)
                                )
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .offset(y: -50)
                    }
                }
                .padding()
                .background(Color("Twilight"))
                
            }
            .padding()
            .navigationBarBackButtonHidden(true)
            //.background(Color("Hex"))
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

