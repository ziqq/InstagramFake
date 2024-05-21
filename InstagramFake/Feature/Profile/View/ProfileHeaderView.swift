//
//  ProfileHeaderView.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 31.08.2023.
//

import SwiftUI

struct ProfileHeaderView: View {
    let user: UserDO
    
    var body: some View {
        VStack() {
            HStack {
                Image(user.avatar ?? AppConstants.Content.imageStubUser)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                
                Spacer()
                
                HStack(spacing: 8) {
                    UserStatView(value: 3, title: "Posts")
                    UserStatView(value: 12, title: "Followers")
                    UserStatView(value: 24, title: "Following")
                }
            }.padding(.horizontal)
            
            VStack(alignment: .leading, spacing: 0) {
                if let fullName = user.fullName {
                    Text(fullName).fontWeight(.semibold)
                }
                
                if let bio = user.bio {
                    Text(bio)
                }
                
                Text(user.userName)
            }
            .font(.footnote)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            Button {
                if user.isCurrentUser {
                    print("[DEBUG]: Edit Profile")
                } else {
                    print("[DEBUG]: Follow...")
                }
            } label: {
                Text(user.isCurrentUser ? "Edit Profile" : "Follow")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: AppConstants.Design.ButtonSize.extraSmall)
                    .background(user.isCurrentUser ? .white : Color(.systemBlue))
                    .foregroundColor(user.isCurrentUser ? .black : .white)
                    .cornerRadius(AppConstants.Design.Corner.small)
                    .overlay(
                        RoundedRectangle(
                            cornerRadius: AppConstants.Design.Corner.small
                        )
                        .stroke(
                            user.isCurrentUser ? Color.gray : .clear,
                            lineWidth: 1
                        )
                    )
            }
            .padding(.bottom, AppConstants.Design.Padding.small)
            .padding(.top, AppConstants.Design.Padding.extraSmall)
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView(user: MockService.shared.getUser())
    }
}
