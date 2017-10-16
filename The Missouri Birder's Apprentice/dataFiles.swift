//
//  dataFiles.swift
//  The Missouri Birder's Apprentice
//
//  Created by student on 10/15/17.
//  Copyright © 2017 student. All rights reserved.
//

import Foundation
import CoreLocation
import UIKit


class Bird:Equatable,CustomStringConvertible{
    
    var name:String!
    var latinName:String!
    var location:CLLocationCoordinate2D!
    var dateFirstSighted:DateComponents!
    var noOfSightings:Int!
    var img:UIImage!
    func updateNumSightings(){
        
    }
    
    init(name:String, latinName:String, location:CLLocationCoordinate2D, dateFirstSighted:DateComponents, noOfSightings:Int, img:UIImage){
        self.name = name
        self.latinName = latinName
        self.location = location
        self.dateFirstSighted = dateFirstSighted
        self.noOfSightings = noOfSightings
        self.img = img
    }
    
    static func ==(lhs: Bird, rhs: Bird) -> Bool {
        return true
    }
    
    var description:String{
        //for temporary testing
        return "hello"
    }

}

var b1 = Bird(name: "Indian Roller", latinName: "Coracias benghalensis", location: CLLocationCoordinate2D(latitude: 37.0,longitude: 45.0), dateFirstSighted: DateComponents(year: 2005, month: 02, day:15, hour: 8, minute: 34), noOfSightings: 25, img: #imageLiteral(resourceName: "indian _roller"))

var b2 = Bird(name: "American Goldfinch", latinName: "Spinus tristis", location: CLLocationCoordinate2D(latitude: 37.0,longitude: 45.0), dateFirstSighted: DateComponents(year: 2005, month: 02, day:15, hour: 8, minute: 34), noOfSightings: 25, img: #imageLiteral(resourceName: "American_Goldfinch_b13-40-018_l_0"))

var b3 = Bird(name: "European Starling", latinName: "Sturnus vulgaris", location: CLLocationCoordinate2D(latitude: 37.0,longitude: 45.0), dateFirstSighted: DateComponents(year: 2005, month: 02, day:15, hour: 8, minute: 34), noOfSightings: 25, img: #imageLiteral(resourceName: "european_starling_16"))

struct Country{
    var countryName:String
    var birdsArray:[Bird]
}

//var s1:Country = Country(counrryName:"India",birdsArray[b1])

struct State{
    static var countryArray:[Country] = [Country(countryName: "India", birdsArray: [b1]), Country(countryName: "America", birdsArray: [b2]), Country(countryName: "Europe", birdsArray: [b3])]
}
