//
//  registration2View.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 3/17/23.
//

import SwiftUI
import FirebaseFirestore

struct registration2View: View {
    let genders = ["Male", "Female", "Non-Binary"]
    let username: String
    @State  var selectedGender: String?
    @State  var displayGenderOnProfile = false
    @State var showAlert = false
    @State var isGenderSelectionComplete = false
    let db = Firestore.firestore()
    
    
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
                HStack {
                    Text("Display Gender on Profile")
                        .font(.custom("Poppins", size: 16))
                        .foregroundColor(Color("Strong"))
                    Spacer()
                    CheckboxView(checked: $displayGenderOnProfile)
                }
                .padding(.vertical)
                
                
                //LINK TO SECOND PAGE
                Button(action: {
                    addGender()
                })
                {
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
                        .alert(isPresented: $showAlert) {
                            Alert(title: Text("Enter Gender"), message: Text("Please select a gender for \(username)."), dismissButton: .default(Text("OK")))
                        }
                    //.offset(y: -50)
                    
                }
                .navigationBarBackButtonHidden(true)
                
            }
            .fullScreenCover(isPresented: $isGenderSelectionComplete) {
                registration3View()
            }
            
            
            
            .background(Color("Twilight"))
            .onAppear {
                showAlert = true
            }
            
        }
        .navigationBarHidden(true)
        
    }
    func addGender() {
        //if name != "" && username != "" {
        if let selectedGender = selectedGender {
            
            let userRef = Firestore.firestore().collection("users").document(username)
            print(userRef)
            userRef.setData(["gender": selectedGender], merge: true)
            
            isGenderSelectionComplete = true
            
            
        }
    }
    
    
    
    struct CheckboxView: View {
        @Binding var checked: Bool
        var body: some View {
            Button(action: {
                self.checked.toggle()
            }) {
                Image(systemName: checked ? "checkmark.square.fill" : "square")
                    .foregroundColor(Color("Strong"))
                    .font(.system(size: 22))
                
            }
        }
    }
}

struct registration2View_Previews: PreviewProvider {
    static var previews: some View {
        registration2View(username: "test")
    }
}
