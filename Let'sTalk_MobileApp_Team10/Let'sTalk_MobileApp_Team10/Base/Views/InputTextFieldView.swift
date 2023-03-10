//
//  InputTextFieldView.swift
//  Let'sTalk_MobileApp_Team10

  //Created by ADMI NISTRATOR on 06/03/23.


import SwiftUI

struct InputTextFieldView: View {
    @Binding var text: String
    let placeholder: String
    let keyboardType: UIKeyboardType
    let sfSymbol: String?
    
    private let textFieldLeading: CGFloat = 30
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct InputTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
       InputTextFieldView (text: .constant(""),
                         placeholder: "Email",
                          keyboardType: .emailAddress,
                        sfSymbol: "envelope")
    }
}
