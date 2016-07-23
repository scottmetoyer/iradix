//
//  PadViewController.swift
//  iradix
//
//  Created by Scott Metoyer on 7/21/16.
//  Copyright © 2016 Scott Metoyer. All rights reserved.
//

import UIKit

class PadViewController: UIViewController {
    
    @IBOutlet var padViews: Array<UIView>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create pad borders
        for padView in padViews {
            padView.layer.borderWidth = 1
            padView.layer.borderColor = UIColor(netHex:0x979797).CGColor;
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
