//
//  CountriesTableViewController.swift
//  The Missouri Birder's Apprentice
//
//  Created by student on 10/15/17.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit
    
    class CountriesTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
        var countries:[String]!  = ["India", "USA", "South America", "Australia"]
        var tableView = UITableView()
        
        override func viewDidLoad() {
            tableView.frame = CGRect(x: 0, y: 10, width: self.view.frame.width, height: self.view.frame.height)
            tableView.register(UITableViewCell.self, forCellReuseIdentifier: "countries_cell")
            tableView.delegate = self
            tableView.dataSource = self
            self.view.addSubview(tableView)
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return countries.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "countries_cell", for: indexPath)
            cell.textLabel?.text = countries[indexPath.row]
            return cell
        }
        
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
            // Now we instantiate a CitiesFlownTableViewController, where we will display a list of cities flown
            
            let birdsTVC:BirdsTableViewController = BirdsTableViewController()
            
            // Examine CitiesFlownTableViewController -- you will see it defines an airline property that we configure here
            // so that by the time that TVC becomes visible, the airline's property & cities will be displayed to the user
            
            birdsTVC.cntry = countries[indexPath.row]
            
            // Every UIViewController, if it is part of a UINavigationController stack, has a navigationController property that references that
            // UINavigationController.  This is quite handy, when we want to push a new view controller
            self.navigationController?.pushViewController(birdsTVC, animated: true)
        }
}
