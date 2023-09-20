//
//  SearchObservableObject.swift
//  FirstSwiftApp
//
//  Created by Anton Ustinoff on 15.06.2023.
//

import Foundation

class SearchOO: ObservableObject {
    @Published var data: [UserDataObject] = []
    @Published var serchResults: [UserDataObject] = []
    
    init() {
        Task { try await fetchAllUsers() }
    }
    
    func fetchAllUsers() async throws {
        self.data = try await UserService.fetchAllUsers()
    }
}
