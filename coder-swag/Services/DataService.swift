//
//  DataService.swift
//  coder-swag
//
//  Created by Donald Belliveau on 2017-11-29.
//  Copyright © 2017 Donald Belliveau. All rights reserved.
//

import Foundation

class DataService {
    /*
     Static means there is only ever 1 copy of it in memory.
     In other words, there is only 1 copy of our data!
     */
    static let instance = DataService()
    
    // This is to simulate the Server we would contact.  Or for a small business, the
    // Data they have.
    private let categories = [
        Category(title: "SHIRTS", imageName: " shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    // Function that would contact a Server and retreive Data.
    // Just a simulation as no Server actually exists.
    func getCategories()-> [Category] {
        return categories
    }
    
    
}
