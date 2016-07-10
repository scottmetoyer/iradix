//
//  ViewController.swift
//  iradix
//
//  Created by Scott Metoyer on 6/4/16.
//  Copyright © 2016 Scott Metoyer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var pad1View: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pad1View.layer.borderWidth = 1
        pad1View.layer.borderColor = UIColor(netHex:0x979797).CGColor;
        pad1View.backgroundColor = UIColor(patternImage: UIImage(named: "pad-options.png")!);
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