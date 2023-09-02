//
//  ContentView.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 29.08.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var mainSelectedIndex = 0
    
    var body: some View {
        
        TabView(selection: $mainSelectedIndex) {
            FeedView()
                .onAppear() {
                    mainSelectedIndex = 0
                }
                .tabItem {
                    Image(systemName: "house.fill")
                }.tag(0)
            SearchView()
                .onAppear() {
                    mainSelectedIndex = 1
                }.tabItem {
                    Image(systemName: "magnifyingglass")
                }.tag(1)
            UploadPostView(mainTabIndex: $mainSelectedIndex)
                .onAppear() {
                    mainSelectedIndex = 2
                }.tabItem {
                    Image(systemName: "plus.app")
                }.tag(2)
            Text("Like Post")
                .onAppear() {
                    mainSelectedIndex = 3
                }.tabItem {
                    Image(systemName: "heart.fill")
                }.tag(3)
            CurrentUserProfileView(user: MockService.shared.getUser())
                .onAppear() {
                    mainSelectedIndex = 4
                }.tabItem {
                    Image(systemName: "person.fill")
                }.tag(4)
        }.accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
