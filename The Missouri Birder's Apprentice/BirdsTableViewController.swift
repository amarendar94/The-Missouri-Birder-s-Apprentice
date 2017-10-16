//
//  BirdsTableViewController.swift
//  The Missouri Birder's Apprentice
//
//  Created by student on 10/15/17.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit

class BirdsTableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var cntry:String!
    var birds:[String]!  = ["Parrot", "Eagle", "Crane", "hen"]
    var tableView2: UITableView!
    
    override func viewDidLoad() {
        self.navigationItem.title = cntry
        tableView2 = UITableView(frame: CGRect(x: 0, y: 10, width: self.view.frame.width, height: self.view.frame.height))
        tableView2.register(UITableViewCell.self, forCellReuseIdentifier: "birds_cell")
        tableView2.delegate = self
        tableView2.dataSource = self
        view.addSubview(tableView2)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return birds.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "birds_cell", for: indexPath)
        cell.textLabel?.text = birds[indexPath.row]
        
        //            var birdImageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 50, height: 50))
        //            var birdName = UILabel(frame: CGRect(x: 70, y: 13, width: 200, height: 20))
        //            var detail = UILabel(frame: CGRect(x: 70, y: 35, width: 200, height: 20))
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Now we instantiate a CitiesFlownTableViewController, where we will display a list of cities flown
        
        let birdVC:BirdViewController = BirdViewController()
        
        // Examine CitiesFlownTableViewController -- you will see it defines an airline property that we configure here
        // so that by the time that TVC becomes visible, the airline's property & cities will be displayed to the user
        
        birdVC.brd = birds[indexPath.row]
        
        // Every UIViewController, if it is part of a UINavigationController stack, has a navigationController property that references that
        // UINavigationController.  This is quite handy, when we want to push a new view controller
        self.navigationController?.pushViewController(birdVC, animated: true)
    }
}
