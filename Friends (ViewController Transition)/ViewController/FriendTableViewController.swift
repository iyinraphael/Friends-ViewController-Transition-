//
//  FriendTableViewController.swift
//  Friends (ViewController Transition)
//
//  Created by Iyin Raphael on 1/10/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

import UIKit

class FriendTableViewController: UITableViewController, UIViewControllerTransitioningDelegate {
   
    var nameLabel: UILabel?
    var imageView: UIImageView?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        friendController.createFriend()
        navigationController?.delegate = naviagtionControllerDelegate
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return friendController.friends.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as? FriendTableViewCell else {return UITableViewCell()}
        let friend = friendController.friends[indexPath.row]
        cell.friend = friend
        nameLabel = cell.nameLabel
        imageView = cell.friendImageView
        return cell
    }
    

    
    // MARK: - Navigation
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "showSegue"{
            guard let detailVc = segue.destination as? FriendViewController,
            let index = tableView.indexPathForSelectedRow else {return}
            let friend = friendController.friends[index.row]
            detailVc.friend = friend
            detailVc.navigationDelagate = naviagtionControllerDelegate
        }
    }
    
    let naviagtionControllerDelegate =  NavigationControllerDelegate()
    let friendController = FriendController()

}
