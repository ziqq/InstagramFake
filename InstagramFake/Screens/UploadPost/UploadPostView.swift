//
//  UploadPostView.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 31.08.2023.
//

import PhotosUI
import SwiftUI

struct UploadPostView: View {
    @Binding var mainTabIndex: Int
    
    private let imageDimention: CGFloat = (UIScreen.main.bounds.width / 3) - 1
    
    @State private var imagePickerPresented = false
    @State private var caption = ""
    
    @StateObject var oo = UploadPostOO()
    
    
    var body: some View {
        VStack {
            // MARK:- Header
            HStack {
                Button {
                    print("Cancel upload")
                    caption = ""
                    oo.postImage = nil
                    oo.selectedImage = nil
                    mainTabIndex = 0
                } label: {
                    Text("Cancel")
                }
                
                Spacer()
                
                Text("New Post").fontWeight(.semibold)
                
                Spacer()
                
                
                Button {
                    print("Upload")
                } label: {
                    Text("Upload")
                }
            }.padding(.horizontal)
            
            // MARK:- Photo + Comment
            HStack(spacing: AppConstants.Design.Padding.base / 2) {
                if let image = oo.postImage {
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(
                            width: AppConstants.Design.AvatarSize.medium,
                            height: AppConstants.Design.AvatarSize.medium
                        )
                        .clipped()
                } else {
                    Image(AppConstants.Content.imageStubPhoto)
                        .resizable()
                        .scaledToFill()
                        .frame(
                            width: AppConstants.Design.AvatarSize.medium,
                            height: AppConstants.Design.AvatarSize.medium
                        )
                        .clipped()
                    
                }
                
                TextField("Enter your caption", text: $caption, axis: .vertical)
                
                
            }
            .padding()
            
            // MARK:- White space
            Spacer()
        }
        .onAppear() {
            imagePickerPresented.toggle()
        }
        .photosPicker(
            isPresented: $imagePickerPresented,
            selection: $oo.selectedImage
        )
        
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView(mainTabIndex: .constant(0))
    }
}
