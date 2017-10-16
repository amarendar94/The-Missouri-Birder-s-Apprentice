//
//  BirdTableViewCell.swift
//  The Missouri Birder's Apprentice
//
//  Created by student on 10/16/17.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit

class BirdTableViewCell: UITableViewCell {

        override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
            super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
}
