//
//  UserRowView.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 30.08.2023.
//

import SwiftUI

struct UserRowView: View {
    let user: UserDataObject
    
    var body: some View {
        HStack  {
            Image(user.avatar ?? AppConstants.Content.imageStubUser)
                .resizable()
                .scaledToFill()
                .frame(
                    width: AppConstants.Design.AvatarSize.small,
                    height: AppConstants.Design.AvatarSize.small
                )
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text(user.userName).fontWeight(.semibold)
                
                if let fullName = user.fullName {
                    Text(fullName).fontWeight(.semibold)
                }
            }
            .font(.footnote)
            .foregroundColor(.black)
            
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView(user: MockService.shared.getUsers()[0])
    }
}
