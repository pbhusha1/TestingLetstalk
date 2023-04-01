//
//  RegistrationCompletionView.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 3/31/23.
//

import SwiftUI

struct RegistrationCompletionView: View {
    var body: some View {
        VStack {
            Image("Logo")
                .resizable()
                .scaledToFit()
                .padding(.bottom, 2)
            Text("Welcome to Let's Talk!")
                .font(.custom("Poppins", size:50))
                .fontWeight(.bold)
                .foregroundColor(Color("Strong"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .offset(y: -50)
                .padding(.bottom, -50)
            Image("Completion")
                .resizable()
                .scaledToFit()
                .padding(.bottom, 2)
            Text("Be honest, be kind, be yourself!")
                .font(.custom("Poppins", size:40))
                .fontWeight(.bold)
                .foregroundColor(Color("Strong"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .offset(y: -50)
                .padding(.bottom, -50)
            Text("Let's Talk")
                .font(.custom("Poppins", size:25))
                .foregroundColor(Color("Strong"))
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .frame(width: 200, height: 50)
                .background(
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color("Strong"), lineWidth: 2)
                )
                .offset(y: -50)
            
            
        }
        .background(Color("Twilight"))
        
    }
}

struct RegistrationCompletionView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationCompletionView()
    }
}
