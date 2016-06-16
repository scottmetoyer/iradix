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
        pad1View.layer.borderColor = UIColor.grayColor().CGColor;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

