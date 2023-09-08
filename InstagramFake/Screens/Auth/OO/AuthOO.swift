//
//  RegistrationOO.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 03.09.2023.
//

import Foundation

class AuthOO: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var username = ""
    
    func createUser() async throws {
        try await AuthService.shared.createUser(
            email: email,
            password: password,
            username: username
        )
    }
}
