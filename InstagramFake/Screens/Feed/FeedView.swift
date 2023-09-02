//
//  FeedView.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 30.08.2023.
//

import SwiftUI

struct FeedView: View {
    private let lightImpact = UIImpactFeedbackGenerator(style: .light)
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 24) {
                    ForEach(MockService.shared.getPosts()) { post in
                        FeedCellView(post: post)
                    }
                }
                .padding(.top, 8)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        lightImpact.impactOccurred()
                        print("--------> Pressed on logo")
                    } label: {
                        Image("logo-instagram-svg")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 32)
                            .foregroundColor(.black)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        lightImpact.impactOccurred()
                        print("--------> Pressed on send button")
                    } label: {
                        Image(systemName: "paperplane")
                            .imageScale(.large)
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
