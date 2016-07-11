//
//  SidebarTabStoryboardSegue.swift
//  Iradix
//
//  Created by Scott Metoyer on 7/10/16.
//  Copyright © 2016 Scott Metoyer. All rights reserved.
//

import UIKit

class SidebarTabStoryboardSegue: UIStoryboardSegue {
    override func perform() {
        
        let tabBarController = self.sourceViewController as! SidebarTabViewController
        let destinationController = self.destinationViewController as UIViewController
        
        for view in tabBarController.placeholderView.subviews as [UIView] {
            view.removeFromSuperview() // 1
        }
        
        // Add view to placeholder view
        tabBarController.currentViewController = destinationController
        tabBarController.placeholderView.addSubview(destinationController.view) // 2
        
        // Set autoresizing
        tabBarController.placeholderView.translatesAutoresizingMaskIntoConstraints = false
        destinationController.view.translatesAutoresizingMaskIntoConstraints = false
        
        let horizontalConstraint = NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[v1]-0-|", options: .AlignAllTop, metrics: nil, views: ["v1": destinationController.view]) // 3
        
        tabBarController.placeholderView.addConstraints(horizontalConstraint)
        
        let verticalConstraint = NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[v1]-0-|", options: .AlignAllTop, metrics: nil, views: ["v1": destinationController.view]) // 3
        
        tabBarController.placeholderView.addConstraints(verticalConstraint)
        
        tabBarController.placeholderView.layoutIfNeeded() // 3
        destinationController.didMoveToParentViewController(tabBarController) // 4
        
    }
}
