//
//  Volunteer.swift
//  SafeWalkVolunteer
//  Lab exercise Created by Paul Inventado on 2/9/22.
//

import Foundation

protocol Volunteer: ObservableObject {
    var name: String { get set }
    var age: Int { get set }
    var maxHours: Int { get }
}

class SafeWalkVolunteer: Volunteer {
    var name: String
    var age: Int
    

    var maxHours: Int {
        switch age {
        case 0..<18:
            return 1
        case 18...:
            return 3
        default:
            return 0
        }
    }
    
    //without parameters
    init() {
        self.name = ""
        self.age = 0
    }
    
    //with parameters
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
