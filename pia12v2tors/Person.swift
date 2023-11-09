//
//  Person.swift
//  pia12v2tors
//
//  Created by Robin Alwert on 2023-11-09.
//

import Foundation
struct Person: Identifiable {
    var id = UUID()
    
    let firstName :String
    let lastName :String
    
    func prettyName() -> String {
        return "**" + firstName+" " + lastName + "**"
        
    }
}
