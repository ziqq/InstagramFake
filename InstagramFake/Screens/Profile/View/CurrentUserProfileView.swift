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
    
    @State private var isShowingSheet = false
    
    @StateObject var oo = ProfileObservableObject()
    
    @State private var showSheet = false
    
    
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
                        self.isShowingSheet.toggle()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }.sheet(isPresented: $isShowingSheet) {
                List {
                    SheetRowWithIcon(icon: "gear", text: "Settings")
                    SheetRowWithIcon(icon: "calendar.badge.clock", text: "Your actions")
                    SheetRowWithIcon(icon: "clock.arrow.circlepath", text: "Archive")
                    SheetRowWithIcon(icon: "qrcode.viewfinder", text: "QR-code")
                    SheetRowWithIcon(icon: "bookmark", text: "Saving")
                    SheetRowWithIcon(icon: "person.badge.key", text: "Controls")
                    SheetRowWithIcon(icon: "list.star", text: "Friends")
                    SheetRowWithIcon(icon: "star", text: "Favorites")
                    SheetRowWithIcon(
                        icon: "carrot",
                        text: "Logout"
                    )
                    .foregroundColor(.red)
                    .onTapGesture {
                        print("[DEBUG]: Click on logout")
                        AuthService.shared.signOut()
                    }
                    Button {
                        print("[DEBUG]: Click on logout button")
                        AuthService.shared.signOut()
                    } label: {
                        Text("Logout")
                    }
                }
                .disabled(true)
                .presentationDragIndicator(.visible)
                .presentationDetents([.fraction(0.65)])
            }
        }
    }
}

struct CurrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView(user: MockService.shared.getUser())
    }
}
