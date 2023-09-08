//
//  CurrentUserProfileView.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 31.08.2023.
//

import SwiftUI

struct CurrentUserProfileView: View {
    let user: UserDataObject
    
    private let lightImpact = UIImpactFeedbackGenerator(style: .light)
    
    @StateObject var oo = ProfileObservableObject()
    
    
    var body: some View {
        NavigationStack {
            ScrollView {
                // header
                ProfileHeaderView(user: user)
                
                // post grid view
                PostGridView(posts: oo.data.filter({$0.user.userName == user.userName}))
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        lightImpact.impactOccurred()
                        AuthService.shared.signOut()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

struct CurrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView(user: MockService.shared.getUser())
    }
}
