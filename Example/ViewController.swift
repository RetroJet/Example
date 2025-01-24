//
//  ViewController.swift
//  Example
//
//  Created by Nazar on 22.01.2025.
//

import UIKit

class ViewController: UIViewController {
    
    private let person = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateNumbers()
    }
    
    private func updateNumbers() {
        person.addNumber (Int.random (in: 1...10))
    
        for number in person.getNumbers() { // 3
            print(number)
        }
    }
}

