//
//  AuthService.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 02.09.2023.
//

import Foundation
import Firebase
import FirebaseAuth
import FirebaseCore
import FirebaseFirestore
import FirebaseFirestoreSwift

class AuthService {
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: UserDO?
    
    static let shared = AuthService()
    
    init() {
        Task { try await loadUserData() }
    }
    
    @MainActor func login(withEmail email: String, password: String) async throws {
        print("[DEBUG]: AuthService | login | email: \(email)")
        print("[DEBUG]: AuthService | login | password: \(password)")
        
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            try await loadUserData()
        } catch {
            print("[DEBUG]: AuthService | login | Failed to login with error \(error.localizedDescription)")
            throw error
        }
    }
    
    @MainActor func createUser(email: String, password: String, userName: String) async throws {
        print("[DEBUG]: AuthService | createUser | email: \(email)")
        print("[DEBUG]: AuthService | createUser | password: \(password)")
        print("[DEBUG]: AuthService | createUser | username: \(userName)")
        
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            print("[DEBUG]: AuthService | createUser | Did create user...")
            
            await uploadUserData(uid: result.user.uid, email: email, userName: userName)
            print("[DEBUG]: AuthService | createUser | Did upload user data...")
        } catch {
            print("[DEBUG]: AuthService | createUser | Failed to create user with error \(error.localizedDescription)")
        }
    }
    
    @MainActor func loadUserData() async throws {
        self.userSession = Auth.auth().currentUser
        guard let currentUid = userSession?.uid else { return }
        let snapshot = try await Firestore.firestore().collection("users").document(currentUid).getDocument()
        print("[DEBUG]: AuthService | loadUserData | snapshot data is \(String(describing: snapshot.data()))")
        self.currentUser = try? snapshot.data(as: UserDO.self)
    }
    
    func signOut() {
        print("[DEBUG]: AuthService | signOut")
        try? Auth.auth().signOut()
        self.currentUser = nil
        self.userSession = nil
    }
    
    private func uploadUserData(uid: String, email: String, userName: String) async {
        let user = UserDO(id: uid, email: email, userName: userName)
        self.currentUser = user
        
        guard let encodedUser = try? Firestore.Encoder().encode(user) else { return }
        try? await Firestore.firestore().collection("users").document(user.id).setData(encodedUser)
        print("[DEBUG]: AuthService | uploadUserData | Document successfully written!")
    }
}
