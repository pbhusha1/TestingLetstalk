//
//  BuddyPreferenceView.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 3/25/23.
//

import SwiftUI

struct BuddyPreferenceView: View {
    let genders = ["Woman", "Man", "Non-Binary", "Any gender"]
    @State private var selectedGender: String?
    var body: some View {
        VStack {
            Image("Logo")
                .resizable()
                .scaledToFit()
                .padding(.bottom, 3)
            Text("Chat buddy preference")
                .font(.title)
                .fontWeight(.bold)
                .font(.custom("Poppins", size:30))
                .foregroundColor(Color("Strong"))
                //.padding(.leading)
                .frame(maxWidth: 700, maxHeight: 50)
                .offset(y: -0)
            Spacer()
            Text("Who would you like to chat with?")
                .font(.custom("Poppins", size:20))
                .foregroundColor(Color("Strong"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .offset(y: -50)
            Text("This can be changed at any time in profile settings")
                .font(.custom("Poppins", size:20))
                .foregroundColor(Color("Strong"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .offset(y: -50)
            Spacer()
            Text("I prefer to talk with")
                .font(.custom("Poppins", size:20))
                .foregroundColor(Color("Strong"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .offset(y: -50)
            ForEach(genders, id: \.self) { gender in
                                Button(action: {
                                    selectedGender = gender
                                }) {
                                    HStack {
                                        Text(gender)
                                            .font(.custom("Poppins", size:20))
                                            .foregroundColor(Color("Strong"))
                                            .padding(.horizontal, 20)
                                            .padding(.vertical, 10)
                                            .frame(width: 200, height: 50)
                                            .background(
                                                RoundedRectangle(cornerRadius: 20)
                                                    .stroke(Color("Strong"), lineWidth: 2)
                                            )
                                            //.frame(maxWidth: .infinity, maxHeight: .infinity)
                                        //Spacer()
                                        if selectedGender == gender {
                                            Image(systemName: "checkmark")
                                                .foregroundColor(.blue)
                                        }
                                    }
                                    //.padding(.horizontal)
                                    //.padding(.vertical, 10)
                                }
                                .accentColor(.primary)
                                .background(Color.clear)
                                .cornerRadius(10)
                                .padding(.horizontal)
                                .padding(.vertical, 5)
            }
            NavigationLink(destination: ConversationModeView()) {
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
}

struct BuddyPreferenceView_Previews: PreviewProvider {
    static var previews: some View {
        BuddyPreferenceView()
    }
}

