//
//  Pads.swift
//  iradix
//
//  Created by Scott Metoyer on 8/9/16.
//  Copyright © 2016 Scott Metoyer. All rights reserved.
//

class PadSingleton {
    static let sharedInstance = PadSingleton()
    private init() {}
}

class Pad {
    var note: Int!
    
    var channel: Int!
    
    var xParam: Int!
    
    var yParam: Int!
    
}
