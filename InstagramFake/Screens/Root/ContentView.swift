//
//  ContentView.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 29.08.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var authOO = AuthOO()
    @StateObject var contentOO = ContentOO()
    
    var body: some View {
        Group {
            if contentOO.userSession == nil {
                LoginView().environmentObject(authOO)
            } else {
                MainView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
