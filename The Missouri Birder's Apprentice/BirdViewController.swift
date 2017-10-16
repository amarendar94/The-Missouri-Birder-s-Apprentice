//
//  BirdViewController.swift
//  The Missouri Birder's Apprentice
//
//  Created by student on 10/14/17.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit

class BirdViewController: UIViewController {

    var brd:Bird!
    
    @IBOutlet weak var locationLBL: UILabel!
    @IBOutlet weak var dateLBL: UILabel!
    @IBOutlet weak var sightingsLBL: UITextField!
    
    @IBOutlet weak var birdImage: UIImageView!
    
    @IBAction func updateSightingsBTN(_ sender: Any) {
//        if  let sightingsLBL.text {
        brd.updateNumSightings(sightings:Int(sightingsLBL.text!)!)
        self.sightingsLBL.resignFirstResponder()
        viewDidLoad()
//        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = brd.name!
            locationLBL.text = "\(brd.location.latitude), \(brd.location.longitude)"
        
            dateLBL.text = "\(brd.dateFirstSighted.month!)/\(brd.dateFirstSighted.day!)/\(brd.dateFirstSighted.year!)/  \(brd.dateFirstSighted.hour!):\(brd.dateFirstSighted.minute!)"
            sightingsLBL.text = "\(brd.noOfSightings!)"
            birdImage.image = brd.img!
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
