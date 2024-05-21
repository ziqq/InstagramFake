//
//  UserDataObject.swift
//  FirstSwiftApp
//
//  Created by Anton Ustinoff on 15.06.2023.
//

import Foundation

struct PostDO : Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let capton: String
    let imageUrl: String
    let timeStamp: Date
    var likes: Int
    var user: UserDataObject
    
}

//extension PostDataObject {
//    static func mock() -> PostDataObject {
//        return PostDataObject(
//            id: NSUUID().uuidString,
//            ownerUid: NSUUID().uuidString,
//            capton: "This is caption",
//            imageUrl: "iron_man",
//            timeStamp: Date.now,
//            likes: 32,
//            user: MockService.shared.getUser()
//        );
//    }
//}
