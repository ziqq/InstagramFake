//
//  ContentView.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 29.08.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Feed").tabItem {
                Image(systemName: "house.fill")
            }
            Text("Search").tabItem {
                Image(systemName: "magnifyingglass")
            }
            Text("Feed").tabItem {
                Image(systemName: "plus.app")
            }
            Text("Upload Post").tabItem {
                Image(systemName: "heart.fill")
            }
            Text("Profile").tabItem {
                Image(systemName: "person.fill")
            }
        }.accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
