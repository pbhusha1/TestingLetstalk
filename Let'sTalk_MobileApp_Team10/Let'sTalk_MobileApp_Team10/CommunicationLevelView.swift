//
//  CommunicationLevelView.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by ADMI NISTRATOR on 09/03/23.
//

import SwiftUI

struct CommunicationLevelView: View {
   
    @State private var selectedLevel: Int? = nil
    
    let options = [
        (name: "The cautious chat", description:"You prefer to chat with others that have a slightly different opinion" ),
        (name: "The moderate chat", description:"You prefer to chat with others that challenges your beliefs" ),
        (name: "The courageous chat", description:"you prefer to chat with others that have opposing point of views" )
    ]
    
    var body: some View {
        
        VStack{
            
            Text("This will place you into the level of communication that you are comfortable with")
            
            
            HStack(spacing: 30){
                
                //Write the code to display three levels
                
                //ForEach(options, id: \.self){
                    
                    
                    
                    
                    
                //}
                
                
            }
            
            
            
            
        }
        
        
        
    }
}

struct CommunicationLevelView_Previews: PreviewProvider {
    static var previews: some View {
        CommunicationLevelView()
    }
}
