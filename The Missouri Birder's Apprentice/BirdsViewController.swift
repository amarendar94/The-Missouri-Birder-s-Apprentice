//
//  BirdsViewController.swift
//  The Missouri Birder's Apprentice
//
//  Created by student on 10/14/17.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit
import CoreLocation

class BirdsViewController: NSObject {

}

//Model Structs and Classes:1. A Bird (class) has a name, latin name, location (a CLLocationCoordinate2D struct), date first sighted and number of sightings (all optional), and an updateNumSightings() method.. Bird should adhere to the Equatable and CustomStringConvertible protocols.2.A County (struct) has a name and an array of Birds.3.A State (struct) is an array of Counties. Make it static, for easy access throughout the app.

class Bird:Equatable,CustomStringConvertible{
    
    static func ==(lhs: Bird, rhs: Bird) -> Bool {
        return true
    }
    
    var description:String = ""
    var name:String!
    var latinName:String!
    var location:String!
    var dateFirstSighted:Date!
    var noOfSightings:Int!
    func updateNumSightings(){
        
    }
}

struct Country{
    var countryName:String
    var birdsArray:[Bird]
}


struct State{
    var countryArray:[Country]
}




