//
//  uploadPhotoView.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 2/18/23.
//

import SwiftUI

struct uploadPhotoView: View {
    @State private var image: UIImage?
    @State private var showImagePicker: Bool = false
    var body: some View {
            VStack {
                Color("Twilight")
                if let image = image {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                } else {
                    Button("Upload user photo") {
                        self.showImagePicker = true
                    }
                    .font(.custom("Poppins", size:30))
                    .foregroundColor(Color("Strong"))
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
//                    .background(
//                        RoundedRectangle(cornerRadius: 20)
//                            .stroke(Color("Strong"), lineWidth: 2)
//                    )
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding(.bottom, 0)
                    //.offset(y: -50)
                }
            }
            .background(Color("Twilight"))
            .sheet(isPresented: $showImagePicker, onDismiss: loadImage) {
                ImagePicker(image: self.$image)
            }
            //.padding(.top, 0)
            Spacer()
            VStack {
                //Color("Twilight")
                NavigationLink(destination: basicProfileCompView()) {
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
                    //                            .offset(y: -50)
                }
            }
            .background(Color("Twilight"))

    }

    func loadImage() {
        if image != nil {
            // perform image processing or upload to server
        }
    }
}

struct uploadPhotoView_Previews: PreviewProvider {
    static var previews: some View {
        uploadPhotoView()
    }
}

