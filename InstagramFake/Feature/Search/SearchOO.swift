//
//  SearchObservableObject.swift
//  FirstSwiftApp
//
//  Created by Anton Ustinoff on 15.06.2023.
//

import Foundation

class SearchOO: ObservableObject {
    @Published var data: [UserDO] = []
    @Published var serchResults: [UserDO] = []
    
    init() {
        Task { try await fetchAllUsers() }
    }
    
    @MainActor func fetchAllUsers() async throws {
        self.data = try await UserService.fetchAllUsers()
    }
}
