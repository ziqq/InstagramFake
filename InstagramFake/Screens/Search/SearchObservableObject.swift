//
//  SearchObservableObject.swift
//  FirstSwiftApp
//
//  Created by Anton Ustinoff on 15.06.2023.
//

import Foundation

class SearchObservableObject: ObservableObject {
    var data: [PersonalDataObject] = []
    @Published var serchResults: [PersonalDataObject] = []
    
    init() {
        data = MockService.shared.getData();
    }
}
