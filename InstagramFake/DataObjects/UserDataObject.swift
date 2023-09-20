//
//  UserDataObject.swift
//  FirstSwiftApp
//
//  Created by Anton Ustinoff on 15.06.2023.
//

import Foundation

struct UserDataObject : Identifiable, Hashable, Codable {
    let id: String
    let email: String
    var bio: String?
    var avatar: String?
    var fullName: String?
    var userName: String
    
}

//extension UserDataObject {
//    static func mock() -> UserDataObject {
//        return UserDataObject(
//            id: NSUUID().uuidString,
//            email: "ironman@gmail.com",
//            bio: "I'm bellionere",
//            avatar: "iron_man",
//            fullName: "Tony Stark",
//            userName: "iron_man"
//        );
//    }
//}
