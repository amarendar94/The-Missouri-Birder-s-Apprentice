//
//  ViewController.swift
//  The Missouri Birder's Apprentice
//
//  Created by student on 10/13/17.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit

class CountriesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
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
}
