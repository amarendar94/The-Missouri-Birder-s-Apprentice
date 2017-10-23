//
//  AddCountiesViewController.swift
//  The Missouri Birder's Apprentice
//
//  Created by Reddygari,Amarendar Reddy on 10/22/17.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit

class AddCountiesViewController: UIViewController {

    @IBAction func cancelAddingCounties(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func addCounty(_ sender: Any) {
        let countyToAdd = Country(name: countyToAddTF.text!)
        State.countries.append(countyToAdd)
        //var x = State.countries[3].name
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var countyToAddTF: UITextField!
    
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
