//
//  SidebarTabViewController.swift
//  Iradix
//
//  Created by Scott Metoyer on 7/10/16.
//  Copyright © 2016 Scott Metoyer. All rights reserved.
//

import UIKit

class SidebarTabViewController: UIViewController {
    
    var currentViewController: UIViewController?
    @IBOutlet var placeholderView: UIView!
    @IBOutlet var tabBarButtons: Array<UIButton>!
    
    @IBOutlet var test: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(tabBarButtons.count > 0) {
            performSegueWithIdentifier("PadSegue", sender: tabBarButtons[0])
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let availableIdentifiers = ["PadSegue", "OptionsSegue"]
        
        if(availableIdentifiers.contains(segue.identifier!)) {
            
            for btn in tabBarButtons {
                btn.selected = false
            }
            
            let senderBtn = sender as! UIButton
            senderBtn.selected = true
            
        }
    }
    
}
