//
//  UploadPostOO.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 31.08.2023.
//

import Foundation
import PhotosUI
import SwiftUI

class UploadPostOO: ObservableObject {
    @Published var selectedImage: PhotosPickerItem? {
        didSet { Task {await loadImage(fromImte: selectedImage)} }
    }
    
    @Published var postImage: Image?
    
    func loadImage(fromImte item: PhotosPickerItem?) async {
        guard let item = item else { return }
        
        guard let data = try? await item.loadTransferable(type: Data.self) else { return }
        guard let uiImage = UIImage(data: data) else { return }
        
        self.postImage = Image(uiImage: uiImage)
    }
}
