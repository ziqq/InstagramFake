//
//  FeedCellView.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 30.08.2023.
//

import SwiftUI

struct FeedCellView: View {
    let post: PostDataObject
    
    var body: some View {
        VStack {
            // MARK:- image + username
            HStack  {
                Image(post.user.avatar ?? AppConstants.Content.imageStubUser)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                Text(post.user.userName)
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            .padding(.leading)
            
            // MARK:- post image
            Image(post.imageUrl)
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            
            // MARK:- action buttons
            HStack(spacing: 8) {
                Button {
                    print("--------> Like post")
                } label: {
                    Image(systemName: "heart").imageScale(.large)
                }
                
                Button {
                    print("--------> Send conmment")
                } label: {
                    Image(systemName: "message").imageScale(.large)
                }
                
                Button {
                    print("--------> Send message")
                } label: {
                    Image(systemName: "paperplane").imageScale(.large)
                }
                
                Spacer()
            }
            .foregroundColor(.black)
            .padding(.horizontal, 8)
            .padding(.top, 2)
            
            // MARK:- likes label
            Text("\(post.likes)")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
            
            // MARK:- caption label
            HStack {
                Text("\(post.user.userName) ").fontWeight(.semibold) +
                Text("\(post.capton)")
            }
            .font(.footnote)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 10)
            .padding(.top, 1)
            
            // MARK:- time stamp 6h ago
            Text("\(post.timeStamp)")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
                .foregroundColor(.gray)
        }
    }
}

struct FeedCellView_Previews: PreviewProvider {
    static var previews: some View {
        FeedCellView(post: MockService.shared.getPost())
    }
}
