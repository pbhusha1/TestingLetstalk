//
//  registration3View.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 3/17/23.
//

import SwiftUI

struct registration3View: View {
    let ageCategories = ["18-25", "26-35", "36-50", "51-65", "65+"]
    @State private var age: String = ""
    @State private var phone: String = ""
    @State private var email: String = ""
    @State private var displayAgeOnProfile = false
    var body: some View {
        NavigationView {
            VStack {
                Text("Let's Talk")
                    .font(.custom("LeagueSpartan", size: 34))
                    .foregroundColor(Color("Strong"))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                VStack(spacing: 20) {
                    Text("Age")
                        .font(.title)
                        .font(.custom("Poppins", size:20))
                        .foregroundColor(Color("Strong"))
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .offset(y: -50)

                    Spacer()
                    Picker(selection: $age, label: Text("Age")) {
                    ForEach(ageCategories, id: \.self) { category in
                    Text(category)
                    }
                    }
                    .pickerStyle(MenuPickerStyle())
                    .padding(.horizontal)
                    .frame(height: 1)
                    .background(Color.blue)
                    .padding(.vertical, -30)
                    //Spacer()
                    Toggle("Show my age on my Profile", isOn: $displayAgeOnProfile)
                                    .padding(.vertical)
                                    .toggleStyle(CheckboxStyle())
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
                        .padding(.top, 1)
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
                        .padding(.top, 1)
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

struct CheckboxStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack {
            HStack {
                Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                    .foregroundColor(configuration.isOn ? .accentColor : .secondary)
                configuration.label
            }
            .onTapGesture {
                configuration.isOn.toggle()
            }
            .padding(.vertical)

            Rectangle()
                .fill(Color.gray)
                .frame(height: 1)
        }
    }
}

struct registration3View_Previews: PreviewProvider {
    static var previews: some View {
        registration3View()
    }
}

