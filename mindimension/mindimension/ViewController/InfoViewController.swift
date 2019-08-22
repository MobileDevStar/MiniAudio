//
//  InfoViewController.swift
//  mindimension
//
//  Created by simba on 8/21/19.
//  Copyright © 2019 simba. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
   

    // Data model: These strings will be the data for the table view cells
    let labels: [String] = ["About Mindimension", "Contact Support", "Manage Music", "Feature Requests", "Restore Purchases", "Unlock All Music"]
    
    // cell reuse id (cells that scroll out of view can be reused)
    let cellReuseIdentifier = "InfoTableViewCell"
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // This view controller itself will provide the delegate methods and row data for the table view.
        tableView.delegate = self
        tableView.dataSource = self
        
        initView()
    }
    
    func initView() {        
        tableView.contentInset = UIEdgeInsets(top: 15, left: 0, bottom: 0, right: 0);
    }
    
    

}

extension InfoViewController: UITableViewDelegate, UITableViewDataSource {
    // number of rows in table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.labels.count
    }
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // create a new cell if needed or reuse an old one
        let cell:InfoTableViewCell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! InfoTableViewCell
        
        // set the text from the data model
        cell.setButTitle(title: labels[indexPath.row])
        
        return cell
    }
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
    }
}
