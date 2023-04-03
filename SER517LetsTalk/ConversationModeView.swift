//
//  ConversationModeView.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 3/27/23.
//

import SwiftUI

struct ConversationModeView: View {
    let options = ["Live, via video", "Texting, via chat", "Call, via audio"]
    @State private var selectedOption: String?
    var body: some View {
            VStack {
                
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .padding(.bottom, 3)
                Text("Conversation Mode")
                    .font(.title)
                    .fontWeight(.bold)
                    .font(.custom("Poppins", size:30))
                    .foregroundColor(Color("Strong"))
                //.padding(.leading)
                    .frame(maxWidth: 700, maxHeight: 50)
                    .offset(y: -10)
                Spacer()
                Text("Choose which method of communication you prefer.")
                    .font(.custom("Poppins", size:20))
                    .foregroundColor(Color("Strong"))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(y: -50)
                Text("I prefer to talk")
                    .font(.custom("Poppins", size:20))
                    .foregroundColor(Color("Strong"))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(y: -90)
                
                ForEach(options, id: \.self) { option in
                    Button(action: {
                        selectedOption = option
                    }) {
                        HStack {
                            Text(option)
                                .font(.custom("Poppins", size:20))
                                .foregroundColor(Color("Strong"))
                                .padding(.horizontal, 20)
                                .padding(.vertical, 10)
                                .frame(width: 200, height: 50)
                                .background(
                                    RoundedRectangle(cornerRadius: 30)
                                        .stroke(Color("Strong"), lineWidth: 2)
                                )
                            //                                        .frame(maxWidth: 200, maxHeight: 50)
                            
                            //Spacer()
                            if selectedOption == option {
                                Image(systemName: "checkmark")
                                    .foregroundColor(.blue)
                            }
                        }
                        
                    }
                    .accentColor(.primary)
                    .background(Color.clear)
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .padding(.vertical, 5)
                }
                Spacer()
                Text("All modes will be safeguarded and monitored within the app for your safety")
                    .font(.custom("Poppins", size:20))
                    .foregroundColor(Color("Strong"))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(y: -20)
                //Spacer()
                NavigationLink(destination: ReportOrBlockView()) {
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
                    
                    
                }
                .navigationBarHidden(true)
            }
            
            .background(Color("Twilight"))
       
        
    }
}

struct ConversationModeView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationModeView()
    }
}


