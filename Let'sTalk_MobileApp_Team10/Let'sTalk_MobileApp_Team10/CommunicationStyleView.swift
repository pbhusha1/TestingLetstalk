//
//  CommunicationStyleView.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 3/24/23.
//

import SwiftUI

struct CommunicationStyleView: View {
    var body: some View {
        NavigationView {
            VStack{
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .padding(.bottom, 5)
                Spacer()
                Text("Communication Style")
                    .font(.title)
                    .fontWeight(.bold)
                    .font(.custom("Poppins", size:20))
                    .foregroundColor(Color("Strong"))
                    .padding(.bottom, 20)
                
                Text("What kind of a communicator are you and what do you prefer?")
                    .font(.custom("Poppins", size:15))
                    .foregroundColor(Color("Strong"))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(y: -20)
                
                VStack{
                    
                    Text("I am more of a")
                        .font(.custom("Poppins", size:25))
                        .foregroundColor(Color("Strong"))
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    //.offset(y: -50)
                    
                    Button("Listener/Observer") {
                        
                        //Store to DB
                    }
                    .font(.custom("Poppins", size:20))
                    .foregroundColor(Color("Strong"))
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .frame(width: 200, height: 50)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color("Strong"), lineWidth: 2)
                    )
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                    Button("Talker/Sharer") {
                        
                        //Store to DB
                    }
                    .font(.custom("Poppins", size:20))
                    .foregroundColor(Color("Strong"))
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .frame(width: 200, height: 50)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color("Strong"), lineWidth: 2)
                    )
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                    
                    
                }
                .background(Color("Twilight"))
                
                Spacer()
                
                VStack{
                    
                    Text("I Prefer to talk with")
                        .font(.custom("Poppins", size:25))
                        .foregroundColor(Color("Strong"))
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    //.offset(y: -50)
                    
                    Button("Listener/Observer") {
                        
                        //Store to DB
                    }
                    .font(.custom("Poppins", size:20))
                    .foregroundColor(Color("Strong"))
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .frame(width: 200, height: 50)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color("Strong"), lineWidth: 2)
                    )
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                    Button("Talker/Sharer") {
                        
                        //Store to DB
                    }
                    .font(.custom("Poppins", size:20))
                    .foregroundColor(Color("Strong"))
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .frame(width: 200, height: 50)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color("Strong"), lineWidth: 2)
                    )
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                    Button("Either is Fine") {
                        
                        //Store to DB
                    }
                    .font(.custom("Poppins", size:20))
                    .foregroundColor(Color("Strong"))
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .frame(width: 200, height: 50)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color("Strong"), lineWidth: 2)
                    )
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                    
                    
                    
                }
                .background(Color("Twilight"))
                
                
                NavigationLink(destination:ConversationTypeView()) {
                    Text("Continue")}
                .font(.custom("Poppins", size:20))
                .foregroundColor(Color("Strong"))
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color("Strong"), lineWidth: 2)
                )
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                
            }
            .background(Color("Twilight"))
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct CommunicationStyleView_Previews: PreviewProvider {
    static var previews: some View {
        CommunicationStyleView()
    }
}
