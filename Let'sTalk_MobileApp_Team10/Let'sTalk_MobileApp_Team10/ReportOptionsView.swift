//
//  ReportOptionsView.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 3/31/23.
//

import SwiftUI

struct ReportOptionsView: View {
    var body: some View {
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        NavigationView {
            VStack {
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    //.padding(.bottom, 3)
                Spacer()
                Text("Report")
                    .font(.custom("Poppins", size:30))
                    .foregroundColor(Color.red)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(y: -10)
                .padding(.bottom, -30)
                Text("Why are you reporting this chat?")
                    .font(.custom("Poppins", size:20))
                    .foregroundColor(Color("Strong"))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(y: -1)
                Text("Your report is anonymous, except if you're reporting an intellectual property infringement. If someone is in immediate danger, call the local emergency services - don't wait.")
                    .font(.custom("Poppins", size:14))
                    .foregroundColor(Color("Strong"))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(y: -10)
                //Spacer()
                NavigationLink(destination: Report1View()) {
                    Text("Disrespectful, uncivil, unlinked (Bullying, insulting, harassing, shaming, threatening, foul language, shouting)")
                        .font(.custom("Poppins", size:18))
                        .foregroundColor(Color("Strong"))
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .frame(minWidth: nil, maxWidth: .infinity, minHeight: 90, maxHeight: .infinity)
                        .background(
                            RoundedRectangle(cornerRadius: 50)
                                .stroke(Color("Strong"), lineWidth: 2)
                            
                        )
                        .offset(y: -10)
                }
                .navigationBarBackButtonHidden(true)
                //Spacer()
                    //.padding(.bottom, -30)
                Text("Discriminatory (Racism, sexism, ageism, homophobia, or other discrimination)")
                    .font(.custom("Poppins", size:18))
                    .foregroundColor(Color("Strong"))
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .frame(minWidth: nil, maxWidth: .infinity, minHeight: 90, maxHeight: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(Color("Strong"), lineWidth: 2)
                    )
                Spacer()
                    .offset(y: 100)
                    .padding(.bottom, -40)
                Text("Supporting or promoting hate")
                    .font(.custom("Poppins", size:18))
                    .foregroundColor(Color("Strong"))
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .frame(minWidth: nil, maxWidth: .infinity, minHeight: 90, maxHeight: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(Color("Strong"), lineWidth: 2)
                    )
                //Spacer()
                    .offset(y:-20)
                    .padding(.bottom, 50)
                Text("Other")
                    .font(.custom("Poppins", size:18))
                    .foregroundColor(Color("Strong"))
                    .padding(.horizontal, 40)
                    .padding(.vertical, 10)
                    .frame(minWidth: nil, maxWidth: .infinity, minHeight: 90, maxHeight: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(Color("Strong"), lineWidth: 2)
                    )
                //Spacer()
                    .offset(y: -50)
                    .padding(.bottom, 50)
                
            }
            .background(Color("Twilight"))
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ReportOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        ReportOptionsView()
    }
}
