//
//  ViewController.swift
//  Example
//
//  Created by Nazar on 22.01.2025.
//

import UIKit

class ViewController: UIViewController {
    
   private let helper = Helper()
   private let userRepository = UserRepository()
    private let textLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(ciColor: .blue)
        view.alpha = CGFloat(1.0)
        
        
        let users = userRepository.getUsers()
        helper.addUsers(users)
        
        for user in helper.getPerson() {
            print("Полное имя: \(user.infoUser.firstName) \(user.infoUser.secondName)")
        }
        
        updateLabel()
        view.addSubview(textLabel)
        view.addSubview(updateButton)
    }
    private func updateLabel() {
        let person = helper.getPerson().randomElement()
        let firstname = person?.infoUser.firstName
        let secondName = person?.infoUser.secondName
        textLabel.text = "\(firstname ?? "") \(secondName ?? "")"
        textLabel.font = .systemFont(ofSize: 25, weight: .bold)
        textLabel.textColor = .red
        textLabel.frame = .init(x: 100, y: 100, width: 300, height: 50)
    }
    
    private let updateButton: UIButton = {
        let testButton = UIButton()
        testButton.setTitle("Show FullName", for: .normal)
        testButton.backgroundColor = .green
        testButton.frame = .init(x: 100, y: 150, width: 150, height: 50)
        return testButton
    }()
}


