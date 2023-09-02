//
//  ProfileHeaderView.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 31.08.2023.
//

import SwiftUI

struct ProfileHeaderView: View {
    let user: UserDataObject
    
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
            }
            .font(.footnote)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            Button {
                print("Edit Profile")
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundColor(.black)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(Color.gray, lineWidth: 1)
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
