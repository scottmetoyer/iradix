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
    @IBOutlet var playButton: UIButton!
    @IBOutlet var stopButton: UIButton!
    @IBOutlet var recordButton: UIButton!
    @IBOutlet var beatLabel: UILabel!
    
    @IBAction func playButtonClicked(sender: AnyObject) {
        if playButton.selected {
            playButton.selected = false
        } else {
            playButton.selected = true
        }
    }
    
    @IBAction func stopButtonClicked(sender: AnyObject) {
        playButton.selected = false
    }
    
    @IBAction func recordButtonClicked(sender: AnyObject) {
        if recordButton.selected {
            recordButton.selected = false
        } else {
            recordButton.selected = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(tabBarButtons.count > 0) {
            performSegueWithIdentifier("PadSegue", sender: tabBarButtons[0])
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let availableIdentifiers = ["PadSegue", "SettingsSegue"]
        
        if(availableIdentifiers.contains(segue.identifier!)) {
            
            for btn in tabBarButtons {
                btn.selected = false
            }
            
            let senderBtn = sender as! UIButton
            senderBtn.selected = true
            
        }
    }
    
}
