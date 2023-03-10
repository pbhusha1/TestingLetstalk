//
//  InterestGroupsView.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by ADMI NISTRATOR on 09/03/23.
//

import SwiftUI

struct InterestGroupsView: View {
    
    
    var body: some View {
        
        VStack{
            Text("Interest Groups")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 20)
            
            
            HStack{
                
                Button("Abortion") {
                    
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
                
                Button("Animal Rights") {
                    
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
            
            HStack{
                
                Button("Gun Control") {
                    
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
                
                Button("Vaccines") {
                    
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
            
            HStack{
                
                
                Button("Privacy Rights") {
                    
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
                
                Button("Global Climate Change") {
                    
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
            
            HStack{
                
                Button("Free market capitalism") {
                    
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
                
                Button("Religious freedom") {
                    
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
            
            HStack{
                
                Button("Marriage equality") {
                    
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
                
                Button("Immigration reform") {
                    
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
            
           //Code to add more buttons based on requirements
            //Code for COntinue Button
            
        }
    }
}

struct InterestGroupsView_Previews: PreviewProvider {
    static var previews: some View {
        InterestGroupsView()
    }
}
