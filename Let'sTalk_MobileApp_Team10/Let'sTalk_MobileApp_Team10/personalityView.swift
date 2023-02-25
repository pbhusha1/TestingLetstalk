//
//  personalityView.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 2/24/23.
//

import SwiftUI

struct personalityView: View {
    @State private var value = 3.0
    @State private var value1 = 3.0
    @State private var value2 = 3.0
    @State private var value3 = 3.0
    var body: some View {
        NavigationView {
            ZStack {
                Color("Twilight")
                    .ignoresSafeArea()
                VStack {
                    Color("Twilight")
                    Text("Abortion")
                        .font(.custom("Poppins", size:20))
                        .foregroundColor(Color("Strong"))
                        .padding(.bottom, 20)
                    HStack {
                        Text("Strongly Disagree")
                        Slider(value: $value, in: 1...5, step: 1.0)
                        Text("Strongly Agree")
                    }
                    .padding(.bottom, 20)
                    //            Text(getValueString())
                    //                .font(.title3)
                    
                    Text("Gun Rights")
                        .font(.custom("Poppins", size:20))
                        .foregroundColor(Color("Strong"))
                        .padding(.bottom, 20)
                    HStack {
                        Text("Strongly Disagree")
                        Slider(value: $value1, in: 1...5, step: 1.0)
                        Text("Strongly Agree")
                    }
                    .padding(.bottom, 20)
                    //            Text(getValueString())
                    //                .font(.title3)
                    
                    Text("Same Sex Marriage")
                        .font(.custom("Poppins", size:20))
                        .foregroundColor(Color("Strong"))
                        .padding(.bottom, 20)
                    HStack {
                        Text("Strongly Disagree")
                        Slider(value: $value2, in: 1...5, step: 1.0)
                        Text("Strongly Agree")
                    }
                    .padding(.bottom, 20)
                    //            Text(getValueString())
                    //                .font(.title3)
                    
                    Text("Marijuana Legalization")
                        .font(.custom("Poppins", size:20))
                        .foregroundColor(Color("Strong"))
                        .padding(.bottom, 20)
                    HStack {
                        Text("Strongly Disagree")
                        Slider(value: $value3, in: 1...5, step: 1.0)
                        Text("Strongly Agree")
                    }
                    .padding(.bottom, 20)
                    //            Text(getValueString())
                    //                .font(.title3)
                    
                    
                }
                .padding()
            }
        }
        .navigationBarBackButtonHidden(true)
        
    }
    
    func getValueString() -> String {
            switch value {
            case 1:
                return "Strongly Disagree"
            case 2:
                return "Disagree"
            case 3:
                return "Neutral"
            case 4:
                return "Agree"
            case 5:
                return "Strongly Agree"
            default:
                return ""
            }
        }
}

struct personalityView_Previews: PreviewProvider {
    static var previews: some View {
        personalityView()
    }
}
