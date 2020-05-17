//
//  UserSessionService.swift
//  InstagramSwiftUI
//
//  Created by Cícero Camargo on 16/05/20.
//  Copyright © 2020 Codemus. All rights reserved.
//

import Combine
import Foundation

final class UserSessionService: ObservableObject {
    @Published var session: UserSession?
    
    func login() {
        session = .init(user: .init(name: "Cicero"), token: UUID().uuidString)
    }
    
    func logout() {
        session = nil
    }
    
    func udpateUserName(_ name: String) {
        session?.user.name = name
    }
}
