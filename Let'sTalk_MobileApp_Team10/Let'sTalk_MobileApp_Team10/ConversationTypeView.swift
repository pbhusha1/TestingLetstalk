//
//  ConversationTypeView.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 3/24/23.
//

import SwiftUI

struct ConversationTypeView: View {
    var body: some View {
        NavigationView {
        VStack{
            Text("Conversation Type")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 20)
            
            Text("What type of communicator are you and what type do you prefer to talk with?")
            
            VStack{
                Text("I am...")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .padding(.bottom, 20)
                
                HStack{
                    
                    Button("Analytical") {
                        
                        //Store to DB
                    }
                    .font(.custom("Poppins", size:20))
                    .foregroundColor(Color("Strong"))
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color("Strong"), lineWidth: 2)
                    )
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                    Button("Functional") {
                        
                        //Store to DB
                    }
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
                
                HStack{
                    
                    Button("Intuitive") {
                        
                        //Store to DB
                    }
                    .font(.custom("Poppins", size:20))
                    .foregroundColor(Color("Strong"))
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color("Strong"), lineWidth: 2)
                    )
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                    Button("Personal") {
                        
                        //Store to DB
                    }
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
                
            }
            
            
            VStack{
                Text("Prefer to talk with")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .padding(.bottom, 20)
                
                HStack{
                    
                    Button("Analytical") {
                        
                        //Store to DB
                    }
                    .font(.custom("Poppins", size:20))
                    .foregroundColor(Color("Strong"))
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color("Strong"), lineWidth: 2)
                    )
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                    Button("Functional") {
                        
                        //Store to DB
                    }
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
                
                HStack{
                    
                    Button("Intuitive") {
                        
                        //Store to DB
                    }
                    .font(.custom("Poppins", size:20))
                    .foregroundColor(Color("Strong"))
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color("Strong"), lineWidth: 2)
                    )
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                    Button("Personal") {
                        
                        //Store to DB
                    }
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
                NavigationLink(destination: TextCommunicationView()) {
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
            
        }
        .background(Color("Twilight"))
    }
        .navigationBarBackButtonHidden(true)
            
    }
    
}


struct ConversationTypeView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationTypeView()
    }
}
