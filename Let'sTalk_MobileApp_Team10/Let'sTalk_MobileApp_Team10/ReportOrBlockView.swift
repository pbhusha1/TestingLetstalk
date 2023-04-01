//
//  ReportOrBlockView.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 3/31/23.
//

import SwiftUI

struct ReportOrBlockView: View {
    var body: some View {
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        VStack {
            Image("Logo")
                .resizable()
                .scaledToFit()
                .padding(.bottom, 3)
            Text("Chat buddy: ")
                .font(.custom("Poppins", size:30))
                .fontWeight(.bold)
                .foregroundColor(Color("Strong"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .offset(y: -50)
                .padding(.bottom, -50)
            Text("Report")
                .font(.custom("Poppins", size:30))
                .foregroundColor(Color.red)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .offset(y: -50)
                .padding(.bottom, -10)
            NavigationLink(destination: ReportOptionsView()){
                Text("Flag for Review")
                    .font(.custom("Poppins", size:20))
                    .foregroundColor(Color("Strong"))
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .frame(width: 200, height: 50)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color("Strong"), lineWidth: 2)
                    )
                    .padding(.bottom, 90)
            }
            .navigationBarBackButtonHidden(true)
            Text("Block this chat buddy")
                .font(.custom("Poppins", size:30))
                .foregroundColor(Color.red)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .offset(y: -50)
                .padding(.bottom,20)
            Text("Block")
                .font(.custom("Poppins", size:20))
                .foregroundColor(Color("Strong"))
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .frame(width: 200, height: 50)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color("Strong"), lineWidth: 2)
                    )
                .padding(.bottom, 90)
            
        }
        .background(Color("Twilight"))
    }
}

struct ReportOrBlockView_Previews: PreviewProvider {
    static var previews: some View {
        ReportOrBlockView()
    }
}
