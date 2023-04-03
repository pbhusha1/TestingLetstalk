//
//  CommunicationLevelView.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 3/23/23.
//

import SwiftUI

struct CommunicationLevelView: View {
    
    @State private var selectedButton: Int?
    
    var body: some View {
            VStack {
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .padding(.bottom, 5)
                Spacer()
                Text("Communication")
                    .font(.title)
                    .fontWeight(.bold)
                    .font(.custom("Poppins", size:10))
                    .foregroundColor(Color("Strong"))
                    .frame(maxWidth: 700, maxHeight: 50)
                    .offset(y: -20)
                Text("This will place you into the level of communication that you are comfortable with.")
                    .font(.custom("Poppins", size:15))
                    .foregroundColor(Color("Strong"))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(y: -50)
                Text("You can change this at any point in profile settings")
                    .font(.custom("Poppins", size:10))
                    .foregroundColor(Color("Strong"))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(y: -50)
                    .padding(.bottom, -50)
            
                HStack {
                    
                    Button(action: {
                        selectedButton = 1
                    }) {
                        Circle()
                            .stroke(Color.orange, lineWidth: 2)
                            .foregroundColor(selectedButton == 1 ? Color.orange : Color.white)
                            .frame(width: 100, height: 100)
                            .overlay(
                                Text("The cautious chat")
                                    .font(.headline)
                                    .foregroundColor(selectedButton == 1 ? Color.white : Color.orange)
                                    .fontWeight(.bold)
                            )
                    }
                    .padding(.leading, 0)
                    
                    Text("Prefer to chat with others that have a similar or slightly different opinion")
                        .foregroundColor(Color.orange)
                        .font(.custom("Poppins", size:15))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 20)
                }
                .background(Color("Twilight"))
                
                HStack {
                    
                    Button(action: {
                        selectedButton = 2
                    }) {
                        Circle()
                            .stroke(Color.yellow, lineWidth: 2)
                            .foregroundColor(selectedButton == 2 ? Color.yellow : Color.white)
                            .frame(width: 100, height: 100)
                            .overlay(
                                Text("The moderate chat")
                                    .font(.headline)
                                    .foregroundColor(selectedButton == 2 ? Color.white : Color.yellow)
                                    .fontWeight(.bold)
                            )
                    }
                    .padding(.leading, 0)
                    
                    Text("Prefer to chat with others that have somewhat different opinions")
                        .foregroundColor(Color.yellow)
                        .font(.custom("Poppins", size:15))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 20)
                }
                .background(Color("Twilight"))
                
                HStack {
                    
                    Button(action: {
                        selectedButton = 3
                    }) {
                        Circle()
                            .stroke(Color.green, lineWidth: 2)
                            .foregroundColor(selectedButton == 3 ? Color.green : Color.white)
                            .frame(width: 100, height: 100)
                            .overlay(
                                Text("The courageous chat")
                                    .font(.headline)
                                    .foregroundColor(selectedButton == 3 ? Color.white : Color.green)
                                    .fontWeight(.bold)
                            )
                    }
                    .padding(.leading, 0)
                    
                    Text("Prefer to chat with others that have opposing opinions")
                        .foregroundColor(Color.green)
                        .font(.custom("Poppins", size:15))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 20)
                }
                .background(Color("Twilight"))
                
                Spacer()
                
                
                NavigationLink(destination: CommunicationStyleView()) {
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
                        .offset(y: -20)
                        .navigationBarBackButtonHidden(true)
                }
            }
            .padding(.horizontal, 40)
            .background(Color("Twilight"))
    }
}

//struct CircleButton: View {
//    //var icon: String
//    var color: Color
//
//    var body: some View {
//        ZStack {
//            Circle()
//                .fill(color)
//                .frame(width: 150, height: 150)
////            Image(systemName: icon)
////                .resizable()
////                .scaledToFit()
////                .foregroundColor(.white)
////                .frame(width: 50, height: 50)
//        }
//    }
//}

struct CommunicationLevelView_Previews: PreviewProvider {
    static var previews: some View {
        CommunicationLevelView()
    }
}

