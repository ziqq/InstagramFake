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
    @Published var userName = ""
    
    func createUser() async throws {
        try await AuthService.shared.createUser(
            email: email,
            password: password,
            userName: userName
        )
        
        email = ""
        password = ""
        userName = ""
    }
}
