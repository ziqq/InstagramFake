//
//  ProfileObservableObject.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 31.08.2023.
//

import Foundation

class ProfileObservableObject: ObservableObject {
    var data: [PostDO] = []
    
    init() {
        data = MockService.shared.getPosts();
    }
}
