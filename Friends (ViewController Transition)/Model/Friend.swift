//
//  Friend.swift
//  Friends (ViewController Transition)
//
//  Created by Iyin Raphael on 1/10/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

import UIKit


class Friend {
    
    
    let name: String
    let image: UIImage
    var jobTitle: String
    
    init(name: String, image: UIImage, jobTitle: String) {
        self.name = name
        self.jobTitle = jobTitle
        self.image = image
    }
    
}
