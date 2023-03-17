//
//  registration2View.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 3/17/23.
//

import SwiftUI

struct registration2View: View {
    let genders = ["Male", "Female", "Non-Binary"]
    @State private var selectedGender: String?
    @State private var displayGenderOnProfile = false
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Let's Talk")
                    .font(.custom("LeagueSpartan", size: 34))
                    .foregroundColor(Color("Strong"))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                Text("I identify as...")
                    .font(.custom("Poppins", size:20))
                    .foregroundColor(Color("Strong"))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(y: -50)
                Spacer ()
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
                Toggle("Show my Gender on my Profile", isOn: $displayGenderOnProfile)
                                    .padding(.vertical)
                NavigationLink(destination: registration3View()) {
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

struct registration2View_Previews: PreviewProvider {
    static var previews: some View {
        registration2View()
    }
}
