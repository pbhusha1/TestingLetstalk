//
//  VideoCallView.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 3/27/23.
//

import SwiftUI

struct VideoCallView: View {
    @State var isMicMuted = false
    @State var isCameraOn = true

    var body: some View {
        ZStack {
            CameraView(isCameraOn: $isCameraOn)

            VStack {
                Spacer()

                HStack(spacing: 40) {
                    Spacer()
                    Button(action: {
                    }) {
                        Image(systemName: "arrow.triangle.2.circlepath.camera.fill")
                            .foregroundColor(.white)
                            .font(.title)
                    }
                    
                    Button(action: {
                        isCameraOn.toggle()
                    }) {
                        Image(systemName: isCameraOn ? "video.fill" : "video.slash.fill")
                            .foregroundColor(isCameraOn ? .white : .red)
                            .font(.title)
                    }
                    .padding(.trailing)

                    Button(action: {
                        isMicMuted.toggle()
                    }) {
                        Image(systemName: isMicMuted ? "mic.slash.fill" : "mic.fill")
                            .foregroundColor(isMicMuted ? .red : .white)
                            .font(.title)
                    }
                    .padding(.trailing)

                    Button(action: {
                    }) {
                        Image(systemName: "phone.down.fill")
                            .foregroundColor(.red)
                            .font(.title)
                    }

                    

                    Spacer()
                }
                .padding(.bottom)
            }
        }
        .background(Color("Twilight"))
    }
}

struct CameraView: View {
    @Binding var isCameraOn: Bool

    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)

            if isCameraOn {
                // Replace this with actual camera view
                Text("Camera View")
                    .foregroundColor(.white)
                    .font(.largeTitle)
            } else {
                // Show black screen when camera is off
                Color.black.opacity(0.7)
            }
        }
    }
}


struct VideoCallView_Previews: PreviewProvider {
    static var previews: some View {
        VideoCallView()
    }
}
