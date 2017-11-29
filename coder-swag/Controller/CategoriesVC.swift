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
    /*
     END View Did Load.
     */
    
    
    /*
     Did Receive Memory Warning Function.
     */
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    /*
     END Did Receive Memory Warning Function.
     */
    
    
    /*
     Number Of Rows In Section.
     */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    /*
     END Number Of Rows In Section.
     */
    
    
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
    /*
     END Cell For Row At.
     */
    
    //
}

