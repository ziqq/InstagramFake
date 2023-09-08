//
//  LoginOO.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 05.09.2023.
//

import Foundation

class LoginOO: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func login() async throws {
        try await AuthService.shared.login(
            withEmail: email,
            password: password
        )
    }
}
