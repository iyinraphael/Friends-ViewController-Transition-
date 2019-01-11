//
//  NavigationControllerDelegate.swift
//  Friends (ViewController Transition)
//
//  Created by Iyin Raphael on 1/10/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

import UIKit

class NavigationControllerDelegate: NSObject, UINavigationControllerDelegate {
    
   
    

    
    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationController.Operation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        return animator
    }
    
    let animator = ImageTransitionAnimator()
    var sourceCell: UITableViewCell?
    
}
