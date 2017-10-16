//
//  BirdsTableViewController.swift
//  The Missouri Birder's Apprentice
//
//  Created by student on 10/15/17.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit

class BirdsTableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var cntry:Country!
    var tableView2: UITableView!
    
    override func viewDidLoad() {
        self.navigationItem.title = cntry.countryName
        tableView2 = UITableView(frame: CGRect(x: 0, y: 10, width: self.view.frame.width, height: self.view.frame.height))
        tableView2.register(BirdTableViewCell.self, forCellReuseIdentifier: "birds_cell")
        tableView2.delegate = self
        tableView2.dataSource = self
        view.addSubview(tableView2)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cntry.birdsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "birds_cell", for: indexPath)
        cell.textLabel?.text = cntry.birdsArray[indexPath.row].name
        cell.detailTextLabel?.text = cntry.birdsArray[indexPath.row].latinName
        cell.imageView?.image = cntry.birdsArray[indexPath.row].img
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let birdVC:BirdViewController = BirdViewController()
        
        birdVC.brd = cntry.birdsArray[indexPath.row]
        self.navigationController?.pushViewController(birdVC, animated: true)
    }
    
}
