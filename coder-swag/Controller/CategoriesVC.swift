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
        // Do any additional setup after loading the view, typically from a nib.
    }
    /*
     END View Did Load.
     */
    
    
    /*
     Did Receive Memory Warning Function.
     */
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
        <#code#>
    }
    /*
     END Cell For Row At.
     */
    
}

