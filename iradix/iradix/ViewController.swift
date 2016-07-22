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
       
        let image = UIImage(named: "pad-options.png");
        let imageView = UIImageView(image: image!);
        imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50);
        imageView.contentMode = UIViewContentMode.ScaleAspectFill;
        pad1View.addSubview(imageView);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
