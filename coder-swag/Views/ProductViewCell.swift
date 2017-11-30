//
//  ProductViewCell.swift
//  coder-swag
//
//  Created by Donald Belliveau on 2017-11-29.
//  Copyright © 2017 Donald Belliveau. All rights reserved.
//

import UIKit

class ProductViewCell: UICollectionViewCell {
    /*
     IBOutlets
     */
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    
    /*
     Functions.
     */
    
    
    /*
     Update Views Function.
     Function to update the IBOutles
     */
    func updateViews(product: Product) {
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
    // END Update Views Function.
    
}






