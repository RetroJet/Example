//
//  Helper.swift
//  Example
//
//  Created by Nazar on 22.01.2025.
//

import Foundation

class Person {
    private var numbers: [Int] = [] // 1

        func addNumber(_ number: Int) { // 2
            numbers.append(number)
        }
        
        func getNumbers() -> [Int] { // 3
            numbers
        }
    }
