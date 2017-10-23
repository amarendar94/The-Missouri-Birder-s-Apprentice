//
//  AddBirdViewController.swift
//  The Missouri Birder's Apprentice
//
//  Created by Reddygari,Amarendar Reddy on 10/22/17.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit
import CoreLocation

class AddBirdViewController: UIViewController {

    @IBOutlet weak var addBirdNameTF: UITextField!
    @IBOutlet weak var addLatinNameTF: UITextField!
    @IBOutlet weak var addLatitudeTF: UITextField!
    @IBOutlet weak var addLongitudeTF: UITextField!
    
    
    @IBAction func cancelAddingBirds(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func addBird(_ sender: Any) {
        
        let date = Date()
        let formatter = DateFormatter()
        
        formatter.dateFormat = "MM/dd/yyyy hh:mm"
        
        let result = formatter.string(from: date)
        
        let newBird = Bird(name: addBirdNameTF.text!, latinName: addLatinNameTF.text!, location: CLLocationCoordinate2D(latitude: Double(addLatitudeTF.text!)!,longitude: Double(addLongitudeTF.text!)!), dateFirstSighted: DateComponents(year: 2017, month: 10, day:26, hour: 06, minute: 38), noOfSightings: 1, image: #imageLiteral(resourceName: "twitterImage"))
        var x = Row.ix
        State.countries[Row.ix].birds.append(newBird)
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
