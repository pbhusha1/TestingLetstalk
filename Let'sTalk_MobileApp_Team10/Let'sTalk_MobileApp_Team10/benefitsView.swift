//
//  benefitsView.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 2/16/23.
//

import SwiftUI

struct benefitsView: View {
    let text = """
    Safe conversational environment
    Improve communication skills
    Improve understanding
    Improve overall wellbeing
    Broaden your mindset
    """
    
    
    var body: some View {
        ZStack {
            Color("Twilight")
            NavigationView {
                VStack {
                    Color("Hex")
                    Spacer()
                    Text("Why 'Let's Talk'?")
                        .font(.custom("LeagueSpartan", size: 34))
                        .foregroundColor(Color("Strong"))
                        .bold()
                    
                    Text("User Benefits").font(.custom("LeagueSpartan", size: 25)).foregroundColor(Color("Strong")).lineSpacing(50)
                    Spacer()
                    Text(text).font(.custom("Poppins", size:20)).foregroundColor(Color("Strong")).lineSpacing(30)
                    Spacer()
                    
                    NavigationLink(destination: conditionsView()) {
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
                                    .offset(y: -50)
                        
                    }
                }
                .padding()
                //.navigationBarTitle("")
                .navigationBarHidden(true)
                .background(Color("Twilight"))
            }
            .padding()
            .navigationBarHidden(true)
        }
    }
}

struct benefitsView_Previews: PreviewProvider {
    static var previews: some View {
        benefitsView()
    }
}
