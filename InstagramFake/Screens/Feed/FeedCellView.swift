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
            // MARK: - image + username
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
            .padding(.leading, AppConstants.Design.Padding.base)
            
            // MARK: - post image
            Image(post.imageUrl)
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            
            // MARK: - action buttons
            HStack(spacing: AppConstants.Design.Padding.base / 2) {
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
            .padding(.horizontal, AppConstants.Design.Padding.base / 1.5)
            .padding(.top, 2)
            
            // MARK: - likes label
            Text("\(post.likes) likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, AppConstants.Design.Padding.base)
                .padding(.top, 1)
            
            // MARK: - caption label
            HStack {
                Text("\(post.user.userName) ").fontWeight(.semibold) +
                Text("\(post.capton)")
            }
            .font(.footnote)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, AppConstants.Design.Padding.base)
            .padding(.top, 1)
            
            // MARK: - time stamp 5h ago
            Text("\(post.timeStamp)")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, AppConstants.Design.Padding.base)
                .padding(.top, 1)
                .foregroundColor(.gray)
            
            // MARK: - time stamp 5h ago
            Text("\(post.timeStamp.dayOrHour() ?? "") ago")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, AppConstants.Design.Padding.base)
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
