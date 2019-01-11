//
//  FriendTableViewCell.swift
//  Friends (ViewController Transition)
//
//  Created by Iyin Raphael on 1/10/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {
    
    var friend: Friend?{
        
        didSet{
            update()
        }
    }
    
    func update(){
        
        if let friend = friend {
            friendImageView.image = friend.image
            nameLabel.text = friend.name
        }
    }
    
    
    
    @IBOutlet weak var friendImageView: UIImageView!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
}
