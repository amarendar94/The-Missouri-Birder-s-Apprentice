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
    var image:UIImage!
    
    init(name:String, latinName:String, location:CLLocationCoordinate2D, dateFirstSighted:DateComponents, noOfSightings:Int, image:UIImage){
        self.name = name
        self.latinName = latinName
        self.location = location
        self.dateFirstSighted = dateFirstSighted
        self.noOfSightings = noOfSightings
        self.image = image
    }
    
    func updateNumSightings(sightings:Int){
        noOfSightings! += 1
    }
    
    static func ==(lhs: Bird, rhs: Bird) -> Bool {
        return true
    }
    
    var description:String{
        //for temporary testing
        return ""
    }

}

var b1 = Bird(name: "Indian Roller", latinName: "Coracias benghalensis", location: CLLocationCoordinate2D(latitude: 37.0,longitude: 45.0), dateFirstSighted: DateComponents(year: 2005, month: 02, day:15, hour: 8, minute: 34), noOfSightings: 25, image: #imageLiteral(resourceName: "indian _roller"))

var b2 = Bird(name: "American Goldfinch", latinName: "Spinus tristis", location: CLLocationCoordinate2D(latitude: 37.0,longitude: 45.0), dateFirstSighted: DateComponents(year: 2005, month: 02, day:15, hour: 8, minute: 34), noOfSightings: 25, image: #imageLiteral(resourceName: "American_Goldfinch_b13-40-018_l_0"))

var b3 = Bird(name: "European Starling", latinName: "Sturnus vulgaris", location: CLLocationCoordinate2D(latitude: 37.0,longitude: 45.0), dateFirstSighted: DateComponents(year: 2005, month: 02, day:15, hour: 8, minute: 34), noOfSightings: 25, image: #imageLiteral(resourceName: "european_starling_16"))

var b4 = Bird(name: "Indian Mynah", latinName: "Acridotheres tristis", location: CLLocationCoordinate2D(latitude: 20.93,longitude: 80.07), dateFirstSighted: DateComponents(year: 1905, month: 04, day:05, hour: 01, minute: 28), noOfSightings: 125, image: #imageLiteral(resourceName: "Indian_Myna"))

var b5 = Bird(name: "Green imperial pigeon", latinName: "Ducula aenea", location: CLLocationCoordinate2D(latitude: 24.35,longitude: 85.60), dateFirstSighted: DateComponents(year: 1927, month: 07, day:19, hour: 02, minute: 43), noOfSightings: 202, image:#imageLiteral(resourceName: "Green imperial-pigeon Ducula aenea"))

var b6 = Bird(name: "Northern cardinal", latinName: "Cardinalis cardinalis", location: CLLocationCoordinate2D(latitude: 40.34,longitude: -84.91), dateFirstSighted: DateComponents(year: 1950, month: 03, day:13, hour: 09, minute: 18), noOfSightings: 502, image: #imageLiteral(resourceName: "Northern-Cardinal-male-4"))

var b7 = Bird(name: "American Robin", latinName: "Turdus migratorius", location: CLLocationCoordinate2D(latitude: 44.88,longitude: -91.81), dateFirstSighted: DateComponents(year: 1903, month: 09, day:25, hour: 04, minute: 54), noOfSightings: 225, image:#imageLiteral(resourceName: "American_Robin_10-17-2010_2"))

var b8 = Bird(name: "Chukar partridge", latinName: "Alectoris chukar", location: CLLocationCoordinate2D(latitude: 38.06,longitude: 19.97), dateFirstSighted: DateComponents(year: 1964, month: 01, day:28, hour: 05, minute: 14), noOfSightings: 205, image: #imageLiteral(resourceName: "Chukar partridge alectoris chukar"))

var b9 = Bird(name: "white-rumped swift", latinName: "Apus caffer", location: CLLocationCoordinate2D(latitude: 47.14,longitude: 17.25), dateFirstSighted: DateComponents(year: 1998, month: 10, day:07, hour: 06, minute: 38), noOfSightings: 215, image: #imageLiteral(resourceName: "White-rumped-Swift-20081215"))

class Country{
    var name:String
    var birds:[Bird]
    
    init(name:String, birds:[Bird]){
        self.name = name
        self.birds = birds
    }
    
    init(name:String){
        self.name = name
        self.birds = []
    }

}

//var s1:Country = Country(counrryName:"India",birdsArray[b1])

struct State{
    static var countries:[Country] = [Country(name: "India", birds: [b1, b4, b5]), Country(name: "America", birds: [b2, b6, b7]), Country(name: "Europe", birds: [b3, b8, b9])]
}


struct Row{
    static var ix:Int = 0
}

