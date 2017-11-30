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
        productsCollection.dataSource = self
        productsCollection.delegate = self
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
    
    /*
     Number Of Items In Section Function.
     */
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    // END Number Of Items In Section Function.
    
    /*
     Cell For Item At Function.
     */
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductViewCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        return ProductViewCell() // This is in place of an else, should never run.  If does, theres an issue in code.
    }
    // END Cell For Item At Function.
    
}
// END Class ProductsVC.


















