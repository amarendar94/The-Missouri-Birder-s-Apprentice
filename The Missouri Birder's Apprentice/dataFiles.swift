//
//  dataFiles.swift
//  The Missouri Birder's Apprentice
//
//  Created by student on 10/15/17.
//  Copyright © 2017 student. All rights reserved.
//

import Foundation
import CoreLocation

class Bird:Equatable,CustomStringConvertible{
    
    static func ==(lhs: Bird, rhs: Bird) -> Bool {
        return true
    }
    
    var description:String{
        return ""
    }
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
    static var countryArray:[Country]!
}
