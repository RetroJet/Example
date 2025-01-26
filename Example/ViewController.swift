//
//  ViewController.swift
//  Example
//
//  Created by Nazar on 22.01.2025.
//

import UIKit

class ViewController: UIViewController {
    
    let helper = Helper()
    
    let user1 = User(login: "morris", password: "moris12345", infoUser: Person(firstName: "Moris", secondName: "Glen"))
    let user2 = User(login: "daryna", password: "abaldueva12345", infoUser: Person(firstName: "Daryna", secondName: "Abaldueva"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helper.addPerson(user1)
        helper.addPerson(user2)
       
        for user in helper.getPerson() {
            print("Полное имя: \(user.infoUser.firstName) \(user.infoUser.secondName)")
        }
    }
    
}

