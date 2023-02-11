//
//  ContentView.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 2/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Color.cyan
            .ignoresSafeArea()
        NavigationView {
            VStack {
                
                Spacer()
                Text("Welcome to Let's Talk!")
                    .font(.largeTitle)
                    .bold()
                Spacer()
                        Image("Speech")
                            .resizable()
                            .scaledToFit()
                Text("A platform to foster honest and safe one-on-one conversations to deepen understanding and human connection")
                NavigationLink(destination: page1View()) { //LINK TO SECOND PAGE
                    Text("Get Started")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                Spacer()
            }
            .padding()
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
