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
        NavigationView {
            VStack {
                Text("Find a developer")
                    .font(.title.weight(.bold))
                Text("Start searching for a developer to make your app...")
                    .multilineTextAlignment(.center)
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .foregroundColor(.gray)
            .navigationTitle("Search")
        }.searchable(text: $searchTerm) {
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



struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
