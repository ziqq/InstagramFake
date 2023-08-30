//
//  UserRowView.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 30.08.2023.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack  {
            Image("hulk")
                .resizable()
                .scaledToFill()
                .frame(
                    width: AppConstants.Design.AvatarSize.small,
                    height: AppConstants.Design.AvatarSize.small
                )
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text("Hulk").fontWeight(.semibold)
                Text("Bruce Banner")
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
        UserRowView()
    }
}
