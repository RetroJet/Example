//
//  Helper.swift
//  Example
//
//  Created by Nazar on 25.01.2025.
//

import Foundation

class Helper {
   private var users: [User] = []
        
    func addPerson(_ person: User) {
            users.append(person)
        }
        
    func getPerson() -> [User] {
            users
        }
    
    func addUsers(_ user: [User]) {
            users.append(contentsOf: user)
    }
}
