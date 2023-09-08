//
//  ContentOO.swift
//  InstagramFake
//
//  Created by Anton Ustinoff on 02.09.2023.
//

import FirebaseAuth
import Firebase
import Combine

class ContentOO: ObservableObject {
    private let service = AuthService.shared
    private var cancellabels = Set<AnyCancellable>()
    
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        setupSubscribers()
    }
    
    func setupSubscribers() {
        service.$userSession.sink { [weak self] userSession  in
            self?.userSession = userSession
        }.store(in: &cancellabels)
    }
}
