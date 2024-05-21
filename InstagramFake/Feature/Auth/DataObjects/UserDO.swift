//
//  UserDO.swift
//  FirstSwiftApp
//
//  Created by Anton Ustinoff on 15.06.2023.
//

import Foundation
import Firebase

struct UserDO : Identifiable, Hashable, Codable {
    let id: String
    let email: String
    var bio: String?
    var avatar: String?
    var fullName: String?
    var userName: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else { return false }
        return currentUid == id
    }
}

//extension UserDO {
//    static func mock() -> UserDO {
//        return UserDO(
//            id: NSUUID().uuidString,
//            email: "ironman@gmail.com",
//            bio: "I'm bellionere",
//            avatar: "iron_man",
//            fullName: "Tony Stark",
//            userName: "iron_man"
//        );
//    }
//}
