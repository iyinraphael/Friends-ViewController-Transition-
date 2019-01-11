//
//  FriendController.swift
//  Friends (ViewController Transition)
//
//  Created by Iyin Raphael on 1/10/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

import UIKit

class FriendController{
    
    
    var friends = [Friend]()
    
    func createFriend(name: String = "Demi", jobTitle:String = "Daughter", image:UIImage = UIImage(named: "daughter.jpg")!) {
        
        let friend = Friend(name: name, image: image, jobTitle: jobTitle)
        friends.append(friend)
        
    }
    
    
    
}
