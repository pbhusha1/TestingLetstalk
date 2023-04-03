//
//  AudioCallView.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 3/24/23.
//

import SwiftUI

struct AudioCallView: View {
    var body: some View {
        VStack(spacing: 30) {
            Spacer()
            Text("Ringing...")
                .font(.title)
            Spacer()
        HStack {
            Button(action: {
                // End button action
            }) {
                Image(systemName: "speaker.fill")
                    .font(.system(size: 50))
                    .foregroundColor(.blue)
            }
            Button(action: {
                // End button action
            }) {
                Image(systemName: "mic.fill")
                    .font(.system(size: 50))
                    .foregroundColor(.blue)
            }
            Spacer()
            Button(action: {
                // End button action
            }) {
                Text("End")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.red)
                    .cornerRadius(10)
//                Image(systemName: "phone.fill.arrow.down")
//                    .font(.system(size: 20))
//                    .foregroundColor(.white)
//                    .frame(width: 40, height: 40)
//                    .background(Color.red)
//                    .cornerRadius(10)
//                    .padding(.trailing)
            }
            .buttonStyle(BorderlessButtonStyle())
        }
        .background(Color("Twilight"))
    }
    .padding()
    .background(Color("Twilight"))
    }
}

struct AudioCallView_Previews: PreviewProvider {
    static var previews: some View {
        AudioCallView()
    }
}

