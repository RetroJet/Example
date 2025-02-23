//
//  UserRepository.swift
//  Example
//
//  Created by Nazar on 23.02.2025.
//

import Foundation

class UserRepository {
    
    func getUsers() -> [User] {
        return [User(login: "morris", password: "moris12345", infoUser: Person(firstName: "Moris", secondName: "Glen")),
                User(login: "daryna", password: "abaldueva12345", infoUser: Person(firstName: "Daryna", secondName: "Abaldueva"))]
    }
}
