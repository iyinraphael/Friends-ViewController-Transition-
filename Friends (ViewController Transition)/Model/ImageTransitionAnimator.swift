//
//  ImageTransitionAnimator.swift
//  Friends (ViewController Transition)
//
//  Created by Iyin Raphael on 1/10/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

import UIKit

class ImageTransitionAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.5
    }
    
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        guard let fromVc = transitionContext.viewController(forKey: .from) as? FriendTableViewController,
        let toVC = transitionContext.viewController(forKey: .to) as? FriendViewController,
        let toView = transitionContext.view(forKey: .to) else {
                return
        }
        
        let containerView = transitionContext.containerView
        
        let destinationViewFrame = transitionContext.finalFrame(for: toVC)
        containerView.addSubview(toView)
        toView.frame = destinationViewFrame
        toView.alpha = 0
        
        let sourceImage = fromVc.imageView!
        let destinationImage = toVC.imageView!
        
        let sourceLabel = fromVc.nameLabel!
        let destinationLabel = toVC.nameLabel!
        
        let labelInitialFrame = containerView.convert(sourceLabel.bounds, from: sourceLabel)
        let imageInitialFrame = containerView.convert(sourceImage.bounds, from: sourceImage)
        
        let animationLabel = UILabel()
        let animationImage = UIImageView()
        
        animationLabel.frame = labelInitialFrame
        animationLabel.text = destinationLabel.text
        animationLabel.font = destinationLabel.font
        
        animationImage.frame = imageInitialFrame
        animationImage.image = destinationImage.image
        
        containerView.addSubview(animationLabel)
        containerView.addSubview(animationImage)
        
        toView.layoutIfNeeded()
        
        UIView.animate(withDuration: transitionDuration(using: transitionContext), animations: {
            
            animationLabel.frame = containerView.convert(destinationLabel.bounds, from: destinationLabel)
            
            animationImage.frame = containerView.convert(destinationImage.bounds, from: destinationImage)
            toView.alpha = 1
            
        }) { (success) in
            
            destinationLabel.alpha = 1
            destinationImage.alpha = 1
            
            sourceImage.alpha = 1
            sourceLabel.alpha = 1
            
            animationImage.removeFromSuperview()
            animationLabel.removeFromSuperview()
            
            transitionContext.completeTransition(!transitionContext.transitionWasCancelled)
            
            
        }
        
        
    }
    
    
    
}
