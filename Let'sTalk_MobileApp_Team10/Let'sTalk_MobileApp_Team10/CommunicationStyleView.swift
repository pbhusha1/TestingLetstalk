//
//  CommunicationStyleView.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by ADMI NISTRATOR on 09/03/23.
//

import SwiftUI

struct CommunicationStyleView: View {
    var body: some View {
        
        VStack{
            Text("Communication Style")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 20)
            
            Text("What kind of a communicator are you and what do you prefer?")
            
            VStack{
                
                Text("I am more of a")
                
                Button("Listener/Observer") {
                    
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
                
                Button("Talker/Sharer") {
                    
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
            
            
            VStack{
                
                Text("I Prefer to talk with")
                
                Button("Listener/Observer") {
                    
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
                
                Button("Talker/Sharer") {
                    
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
                
                Button("Either is Fine") {
                    
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
        
        
        Button("Continue") {
            
            // ADD THE CODE TO Perform the Navigation
            
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

struct CommunicationStyleView_Previews: PreviewProvider {
    static var previews: some View {
        CommunicationStyleView()
    }
}
