//
//  BirdsTableViewController.swift
//  The Missouri Birder's Apprentice
//
//  Created by student on 10/15/17.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit

class BirdsTableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var country:Country!
    var tableView2: UITableView!
    
    override func viewDidLoad() {
        self.navigationItem.title = country.name
        //if cntry.countryName.characters.
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "\(country.adjective) birds", style: .plain, target: nil, action: nil)
        tableView2 = UITableView(frame: CGRect(x: 0, y: 10, width: self.view.frame.width, height: self.view.frame.height))
        tableView2.register(BirdTableViewCell.self, forCellReuseIdentifier: "birds_cell")
        tableView2.delegate = self
        tableView2.dataSource = self
        view.addSubview(tableView2)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return country.birds.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "birds_cell", for: indexPath)
        cell.textLabel?.text = country.birds[indexPath.row].name
        cell.detailTextLabel?.text = country.birds[indexPath.row].latinName
        cell.imageView?.image = country.birds[indexPath.row].image
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //let birdVC:BirdViewController = BirdViewController()
//        let birdVC = UIStoryboard(name: "Main", bundle:nil).instantiateViewController(withIdentifier:"bird_view_controller") as! BirdViewController]
        let birdVC:BirdViewController = UIStoryboard(name: "Main", bundle:nil).instantiateViewController(withIdentifier:"bird_view_controller") as! BirdViewController
        
        birdVC.bird = country.birds[indexPath.row]
        self.navigationController?.pushViewController(birdVC, animated: true)
    }
    
}
