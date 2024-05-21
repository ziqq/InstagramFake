//
//  SearchView.swift
//  FirstSwiftApp
//
//  Created by Anton Ustinoff on 15.06.2023.
//

import SwiftUI

struct SearchView: View {
    @StateObject var oo = SearchOO()
    @State private var searchTerm = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: AppConstants.Design.Padding.small) {
                    ForEach(oo.data) { user in
                        NavigationLink(value: user) {
                            UserRowView(user: user)
                        }
                    }
                }
                .padding(.top, AppConstants.Design.Padding.extraSmall)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .searchable(text: $searchTerm) {
                    ForEach(oo.serchResults) { user in
                        UserRowView(user: user)
                    }
                }
                .onChange(of: searchTerm) { searchTerm in
                    oo.serchResults = oo.data.filter({ user in
                        if let fullName = user.fullName {
                            return fullName.contains(searchTerm)
                        } else {
                            return false
                        }
                    })
                }
            }
            .navigationDestination(for: UserDO.self) { user in
                ProfileView(user: user)
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}



struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
