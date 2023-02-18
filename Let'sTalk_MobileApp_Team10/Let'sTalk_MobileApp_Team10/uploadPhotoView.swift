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
        VStack(spacing:30) {
            if let image = image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            } else {
                Button("Select Photo") {
                    self.showImagePicker = true
                }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            }
        }
        .sheet(isPresented: $showImagePicker, onDismiss: loadImage) {
            ImagePicker(image: self.$image)
        }
        HStack(spacing:30) {
            Text("Continue").font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
        }
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
