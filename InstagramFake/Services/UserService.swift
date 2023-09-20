//
//  UserService.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 20.09.2023.
//

import Foundation
import Firebase
import FirebaseFirestore

struct UserService {
    static func fetchAllUsers() async throws -> [UserDataObject] {
        var users = [UserDataObject]()
        
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        return snapshot.documents.compactMap({ try? $0.data(as: UserDataObject.self) })
    }
}
