//
//  ProfileView.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 29.08.2023.
//

import SwiftUI

struct ProfileView: View {
    let user: UserDO
    
    private let lightImpact = UIImpactFeedbackGenerator(style: .light)
    
    @StateObject var oo = ProfileOO()
    
    var body: some View {
        ScrollView {
            VStack {
                // Header
                ProfileHeaderView(user: user)
                
                // Post grid view
                PostGridView(posts: oo.data.filter({$0.user.userName == user.userName}))
            }
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: MockService.shared.getUsers()[0])
    }
}
