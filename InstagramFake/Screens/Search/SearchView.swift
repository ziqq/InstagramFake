//
//  SearchView.swift
//  FirstSwiftApp
//
//  Created by Anton Ustinoff on 15.06.2023.
//

import SwiftUI

struct SearchView: View {
    @StateObject var oo = SearchObservableObject()
    @State private var searchTerm = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: AppConstants.Design.Padding.small) {
                    ForEach(0 ... 15, id: \.self) { user in
                        UserRowView()
                    }
                }
                .padding(.top, AppConstants.Design.Padding.extraSmall)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .foregroundColor(.gray)
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
            .searchable(text: $searchTerm) {
                ForEach(oo.serchResults) { person in
                    PersonRowView(person: person)
                }
            }
            .onChange(of: searchTerm) { searchTerm in
                oo.serchResults = oo.data.filter({ person in
                    person.name.contains(searchTerm)
                })
            }
        }
    }
}



struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
