//
//  Product.swift
//  coder-swag
//
//  Created by Donald Belliveau on 2017-11-30.
//  Copyright © 2017 Donald Belliveau. All rights reserved.
//

import Foundation

/*
 Product Struct.
 */
struct Product {
    /*
     Instance Variables.  Private set but public get.
     */
    
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    /*
     Initializer.
     */
    // init all 3 variables.
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
    // End init.
}
// END Product Struct.



