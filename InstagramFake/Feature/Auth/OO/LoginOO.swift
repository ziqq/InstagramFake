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
    
    
    @Published var loading = false
    @Published var showAlert = false
    @Published var errorMessage = ""
    
    func login() async throws {
            do {
                DispatchQueue.main.async {
                    self.loading = true
                }
                try await AuthService.shared.login(
                    withEmail: email,
                    password: password
                )
                DispatchQueue.main.async {
                    self.loading = false
                }
            } catch {
                DispatchQueue.main.async {
                    self.loading = false
                    self.showAlert = true
                    self.errorMessage = error.localizedDescription
                }
                throw error
            }
        }
}
