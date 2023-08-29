//
//  PersonalDataObject.swift
//  FirstSwiftApp
//
//  Created by Anton Ustinoff on 15.06.2023.
//

import Foundation

struct PersonalDataObject : Identifiable {
    var id = UUID()
    var name = ""
    var phone = ""
    var email = ""
    
}

extension PersonalDataObject {
    static func mock() -> PersonalDataObject {
        return PersonalDataObject(name: "Mock Doe", phone: "+7 (927) 000-00-00", email: "mockdoe@gmail.com");
    }
}
