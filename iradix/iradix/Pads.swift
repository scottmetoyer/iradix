//
//  Pads.swift
//  iradix
//
//  Created by Scott Metoyer on 8/9/16.
//  Copyright © 2016 Scott Metoyer. All rights reserved.
//

class PadSingleton {
    static let sharedInstance = PadSingleton()
    
    var pads: [Pad] = []
    
    private init() {
        pads.append(Pad(note: 63, channel: 1, xParam: 0, yParam: 0))
        pads.append(Pad(note: 63, channel: 1, xParam: 0, yParam: 0))
        pads.append(Pad(note: 63, channel: 1, xParam: 0, yParam: 0))
        pads.append(Pad(note: 63, channel: 1, xParam: 0, yParam: 0))
        pads.append(Pad(note: 63, channel: 1, xParam: 0, yParam: 0))
        pads.append(Pad(note: 63, channel: 1, xParam: 0, yParam: 0))
        pads.append(Pad(note: 63, channel: 1, xParam: 0, yParam: 0))
        pads.append(Pad(note: 63, channel: 1, xParam: 0, yParam: 0))
        pads.append(Pad(note: 63, channel: 1, xParam: 0, yParam: 0))
        pads.append(Pad(note: 63, channel: 1, xParam: 0, yParam: 0))
        pads.append(Pad(note: 63, channel: 1, xParam: 0, yParam: 0))
        pads.append(Pad(note: 63, channel: 1, xParam: 0, yParam: 0))
        pads.append(Pad(note: 63, channel: 1, xParam: 0, yParam: 0))
        pads.append(Pad(note: 63, channel: 1, xParam: 0, yParam: 0))
        pads.append(Pad(note: 63, channel: 1, xParam: 0, yParam: 0))
        pads.append(Pad(note: 63, channel: 1, xParam: 0, yParam: 0))
    }
}

class Pad {
    var note: Int!
    
    var channel: Int!
    
    var xParam: Int!
    
    var yParam: Int!
    
    init(note: Int, channel: Int, xParam: Int, yParam: Int) {
        self.note = note
        self.channel = channel
        self.xParam = xParam
        self.yParam = yParam
    }
}
