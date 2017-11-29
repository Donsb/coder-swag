//
//  Category.swift
//  coder-swag
//
//  Created by Donald Belliveau on 2017-11-29.
//  Copyright © 2017 Donald Belliveau. All rights reserved.
//

import Foundation

struct Category {
    // Public Variables that can be fetched but not Set!
    private(set) public var title:String
    private(set) public var imageName: String
    
    // Initializer that sets the title and imageName on creation.
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
