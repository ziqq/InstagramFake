//
//  SearchObservableObject.swift
//  FirstSwiftApp
//
//  Created by Anton Ustinoff on 15.06.2023.
//

import Foundation

class SearchObservableObject: ObservableObject {
    var data: [UserDataObject] = []
    @Published var serchResults: [UserDataObject] = []
    
    init() {
        data = MockService.shared.getUsers();
    }
}
