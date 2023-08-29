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
}
