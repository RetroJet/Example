//
//  ViewController.swift
//  Example
//
//  Created by Nazar on 22.01.2025.
//

import UIKit

class ViewController: UIViewController {
    
    let helper = Helper()
    let userRepository = UserRepository()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(ciColor: .blue)
        view.alpha = CGFloat(0.90)
        
        let users = userRepository.getUsers()
        helper.addUsers(users)
        
        for user in helper.getPerson() {
            print("Полное имя: \(user.infoUser.firstName) \(user.infoUser.secondName)")
        }
    }
    
}


