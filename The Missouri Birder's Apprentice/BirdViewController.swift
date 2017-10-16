//
//  BirdViewController.swift
//  The Missouri Birder's Apprentice
//
//  Created by student on 10/14/17.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit

class BirdViewController: UIViewController {

    var bird:Bird!
    
    @IBOutlet weak var locationLBL: UILabel!
    @IBOutlet weak var dateLBL: UILabel!
    @IBOutlet weak var sightingsLBL: UITextField!
    
    @IBOutlet weak var birdImage: UIImageView!
    
    @IBAction func updateSightingsBTN(_ sender: Any) {
//        if  let sightingsLBL.text {
        bird.updateNumSightings(sightings:Int(sightingsLBL.text!)!)
        self.sightingsLBL.resignFirstResponder()
        viewDidLoad()
//        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = bird.name!
            locationLBL.text = "\(bird.location.latitude), \(bird.location.longitude)"
        
            dateLBL.text = "\(bird.dateFirstSighted.month!)/\(bird.dateFirstSighted.day!)/\(bird.dateFirstSighted.year!)/  \(bird.dateFirstSighted.hour!):\(bird.dateFirstSighted.minute!)"
            sightingsLBL.text = "\(bird.noOfSightings!)"
            birdImage.image = bird.image!
        
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
