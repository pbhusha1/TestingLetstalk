//
//  ChatBuddyPreference.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by ADMI NISTRATOR on 09/03/23.
//

import SwiftUI

struct ChatBuddyPreference: View {
    var body: some View {
        VStack{
            Text("Chat buddy preference")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 20)
            
            Text("Who would you like to chat with")
            
            VStack{
                
                Text("Prefer to talk with")
                
                Button("Woman") {
                    
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
                
                Button("Man") {
                    
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
                
               
                //THIS SHOULD BE IMPLEMENTED AS A PICKER
                Button("More") {
                    
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
                
                Button("Any gender") {
                    
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

struct ChatBuddyPreference_Previews: PreviewProvider {
    static var previews: some View {
        ChatBuddyPreference()
    }
}
