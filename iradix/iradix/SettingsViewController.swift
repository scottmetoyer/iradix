//
//  SettingsViewController.swift
//  iradix
//
//  Created by Scott Metoyer on 7/21/16.
//  Copyright © 2016 Scott Metoyer. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
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
}


extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(netHex:Int) {
        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
    }
}