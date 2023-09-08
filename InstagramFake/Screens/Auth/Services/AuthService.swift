//
//  AuthService.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 02.09.2023.
//

import Foundation
import FirebaseAuth

class AuthService {
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    @MainActor
    func login(withEmail email: String, password: String) async throws {
        print("AuthService | login | email: \(email)")
        print("AuthService | login | password: \(password)")
        
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
        } catch {
            print("AuthService | DEBUG: Failed to login with error \(error.localizedDescription)")
        }
    }
    
    @MainActor
    func createUser(email: String, password: String, username: String) async throws {
        print("AuthService | createUser | email: \(email)")
        print("AuthService | createUser | password: \(password)")
        print("AuthService | createUser | username: \(username)")
        
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
        } catch {
            print("AuthService | DEBUG: Failed to create user with error \(error.localizedDescription)")
        }
    }
    
    func loadUserData() async throws {
        
    }
    
    func signOut() {
        print("AuthService | signOut")
        try? Auth.auth().signOut()
        self.userSession = nil
    }
}
