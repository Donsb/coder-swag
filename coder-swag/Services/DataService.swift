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
     Instance Variables.
     */
    
    /*
     Static means there is only ever 1 copy of it in memory.
     In other words, there is only 1 copy of our data!
     */
    static let instance = DataService()
    
    // This is to simulate the Server we would contact.  Or for a small business, the
    // Data they have.
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    // Product Data for Hats Category.
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    // Product Data for Hoodies.
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devslopes Hoodie Grey", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Devslopes Hoodie Black", price: "$32", imageName: "hoodie04.png")
    ]
    
    // Product Data for Shirts.
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslopes Badge Shirt Light Grey", price: "$19", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "$18", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Grey", price: "$18", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black", price: "$18", imageName: "shirt05.png")
    ]
    
    // Product Data for Digital.  Empty Array of Type Product.
    private let digitalGoods = [Product]()
    
    
    /*
     Functions.
     */
    
    
    // Function that would contact a Server and retreive Data.
    // Just a simulation as no Server actually exists.
    func getCategories()-> [Category] {
        return categories
    }
    // END getCategories.
    
    
    /*
     Get Products Function.
     */
    func getProducts(forCategoryTitle title:String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    // END Get Products Function
    
    
    /*
     Get Hats Function.
     */
    func getHats() -> [Product] {
        return hats
    }
    // END Get Hats Function.
    
    
    /*
     Get Hoodies Function.
     */
    func getHoodies()-> [Product] {
        return hoodies
    }
    // END Get Hoodies Function.
    
    
    /*
     Get Shirts Function.
     */
    func getShirts()-> [Product] {
        return shirts
    }
    // END Get Shirts Function.
    
    
    /*
     Get Digital Goods Function.
     */
    func getDigitalGoods()-> [Product] {
        return digitalGoods
    }
    // END Get Didital Goods Function.
    
}
// END Class DataService.



