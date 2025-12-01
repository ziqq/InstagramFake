//
//  NetworkImageView.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 16.12.2024.
//


import SwiftUI

struct NetworkImageView: View {
    let url: URL

    var body: some View {
        AsyncImage(url: url) { phase in
            switch phase {
                case .empty:
                ProgressView()
                case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                case .failure:
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.gray)
                @unknown default:
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.gray)
            }
        }
    }
}


struct NetworkImageView_Previews: PreviewProvider {
    static var previews: some View {
        NetworkImageView(url: URL(string: MockService.shared.getPostsFromNetwork().first!.imageUrl)!)
    }
}
