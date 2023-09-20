//
//  MockService.swift
//  FirstSwiftApp
//
//  Created by Anton Ustinoff on 15.06.2023.
//

import Foundation

class MockService {
    public static let shared = MockService()
    
    func getData() -> [PersonalDataObject] {
        return [
            PersonalDataObject(name: "John Doe", phone: "+7 (927) 111-11-11", email: "johndoe@gmail.com"),
            PersonalDataObject(name: "John Moo", phone: "+7 (927) 222-22-22", email: "johnmoo@gmail.com"),
            PersonalDataObject(name: "Holand Foo", phone: "+7 (927) 333-33-33", email: "holandfoo@gmail.com"),
        ]
    }
    
    /// Return UserDataObject
    func getUser() -> UserDataObject {
        .init(
            id: NSUUID().uuidString,
            email: "ironman@gmail.com",
            bio: "I'm bellionere",
            avatar: "iron_man",
            fullName: "Tony Stark",
            userName: "iron_man"
        )
    }
    
    /// Return [UserDataObject]
    /// Array lenght is 9
    func getUsers() -> [UserDataObject] {
        return [
            .init(id: NSUUID().uuidString, email: "ironman@gmail.com", bio: "I'm bellionere", avatar: "iron_man", fullName: "Tony Stark", userName: "iron_man"),
            .init(id: NSUUID().uuidString, email: "blackwidow@gmail.com", bio: "I'm black widow", avatar: "black_widow", fullName: "Natasha Romanov", userName: "black_widow"),
            .init(id: NSUUID().uuidString, email: "capamerica@gmail.com", bio: "I'm Cap", avatar: "cap_america", fullName: "Stiv Rogers", userName: "cap_america"),
            .init(id: NSUUID().uuidString, email: "capmarvel@gmail.com", bio: "I'm Cap of Marvel", avatar: "cap_marvel", fullName: "Lexi", userName: "cap_marvel"),
            .init(id: NSUUID().uuidString, email: "enot@gmail.com", bio: "I'm Racketa", avatar: "enot", fullName: "Racketa", userName: "enot"),
            .init(id: NSUUID().uuidString, email: "hulk@gmail.com", bio: "I'm HUKL", avatar: "hulk", fullName: "Bruce Banner", userName: "hulk"),
            .init(id: NSUUID().uuidString, email: "murovey@gmail.com", bio: "I'm small & big man", avatar: "murovey", fullName: "Scot", userName: "murovey"),
            .init(id: NSUUID().uuidString, email: "socoleye@gmail.com", bio: "I'm eye of socol", avatar: "socol_eye", fullName: "Daniel Redcliff", userName: "socol_eye"),
            .init(id: NSUUID().uuidString, email: "tor@gmail.com", bio: "I'm God", avatar: "tor", fullName: "Tor", userName: "tor")

        ]
    }
    
    
    func getPost() -> PostDataObject {
        return PostDataObject(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            capton: "This is caption",
            imageUrl: "iron_man",
            timeStamp: Date(timeIntervalSinceNow: 30 * 7 * 24 * 60),
            likes: 32, user: getUser()
        );
    }
    
    
    func getPosts() -> [PostDataObject] {
        return [
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                capton: "This is caption",
                imageUrl: "iron_man",
                timeStamp: Date.now,
                likes: 32,
                user: getUsers()[0]
            ),
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                capton: "This is some test caption for now, this is long string of strings",
                imageUrl: "black_widow",
                timeStamp: Date.now,
                likes: 32,
                user: getUsers()[1]
            ),
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                capton: "This is caption",
                imageUrl: "cap_america",
                timeStamp: Date.now,
                likes: 32,
                user: getUsers()[2]
            ),
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                capton: "This is some test caption for now, this is long string of strings",
                imageUrl: "cap_marvel",
                timeStamp: Date.now,
                likes: 32,
                user: getUsers()[3]
            ),
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                capton: "This is caption",
                imageUrl: "enot",
                timeStamp: Date.now,
                likes: 32,
                user: getUsers()[4]
            ),
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                capton: "This is some test caption for now, this is long string of strings",
                imageUrl: "hulk",
                timeStamp: Date.now,
                likes: 32,
                user: getUsers()[5]
            ),
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                capton: "This is caption",
                imageUrl: "murovey",
                timeStamp: Date.now,
                likes: 32,
                user: getUsers()[6]
            ),
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                capton: "This is some test caption for now, this is long string of strings",
                imageUrl: "socol_eye",
                timeStamp: Date.now,
                likes: 32,
                user: getUsers()[7]
            ),
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                capton: "This is caption",
                imageUrl: "tor",
                timeStamp: Date.now,
                likes: 32,
                user: getUsers()[8]
            )
        ];
    }
}
