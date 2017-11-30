//
//  ProductsVC.swift
//  coder-swag
//
//  Created by Donald Belliveau on 2017-11-30.
//  Copyright © 2017 Donald Belliveau. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    /*
     IBOutlets.
     */
    
    @IBOutlet weak var productsCollection: UICollectionView!
    
    /*
     Instance Variables.
     */
    
    private(set) public var products = [Product]()
    
    
    /*
     Functions.
     */
    
    /*
     ViewDidLoad Function.
     */
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // END View Did Load Function.
    
    /*
     Did Receive Memory Warning Function.
     */
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    // END Did receive Memory Warning Function.
    
    /*
     InitProducts Function.
        ->Function to get the category title in order to pass it to the CategoriesVC Class.
     */
    func initProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
    }
    // END InitProducts Function.
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
}
// END Class ProductsVC.


















