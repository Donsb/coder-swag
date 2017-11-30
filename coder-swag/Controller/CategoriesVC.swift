//
//  CategoriesVC.swift
//  coder-swag
//
//  Created by Donald Belliveau on 2017-11-29.
//  Copyright © 2017 Donald Belliveau. All rights reserved.
//

import UIKit

/*
 DataSource and Delegate are PROTOCOLS.  We are agreeing to follow their rules.
 */
class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    /*
     IBOutlets
     */
    
    @IBOutlet weak var categoryTable: UITableView!
    
    
    /*
     Functions
     */
    
    
    /*
     View Did Load Function.
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        // set DataSource and Delegate.
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }
    // END View Did Load.
    
    
    /*
     Did Receive Memory Warning Function.
     */
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    // END Did Receive Memory Warning Function.
    
    
    /*
     Number Of Rows In Section.
     */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    // END Number Of Rows In Section.
    
    
    /*
     Cell For Row At.
     */
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        } else {
            return CategoryCell()
        }
    }
    // END Cell For Row At.
    
    
    /*
     Did Select Row At Function.
     */
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    // END Did Select Row At.
    
    
    /*
     Prepare For Segue Function.
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC {
            // Take out the wording in Nav Back Button
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            
            // assert will only run at build time for devs, if it can't cast sender as Category it will crash.
            assert(sender as? Category != nil)
            productsVC.initProducts(category: sender as! Category)
        }
    }
    // END Prepare For Segue Function.
    
}
// END class CategoriesVC.



