//
//  AccountCompletionView.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by ADMI NISTRATOR on 09/03/23.
//

import SwiftUI

struct AccountCompletionView: View {
    var body: some View {
        VStack{
            Text("Your Let's Talk account is created").font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
            
            //Create the image design
            
            Image(systemName: "checkmark.circle.fill")
                .resizable()
                .foregroundColor(.blue)
                .frame(width:100, height: 100)
                .padding()
                
            Text("Enjoy your Conversations!!!")
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
            
            
            //TO-DO
            //Button(
            
            //Button Action code to be written
            //)
            
            
        }
    }
}

struct AccountCompletionView_Previews: PreviewProvider {
    static var previews: some View {
        AccountCompletionView()
    }
}
