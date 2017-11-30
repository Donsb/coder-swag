//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Donald Belliveau on 2017-11-29.
//  Copyright © 2017 Donald Belliveau. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    /*
     IBOutlets
     */
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    /*
     Functions
     */
    
    /*
     updateViews Function.
     Function to update the views on the cell.
     */
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
    /*
     END updateViews Function.
     */
    
    
}
// END Class CategoryCell.
