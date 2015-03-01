//
//  Array+Additions.swift
//  PokerSimulator
//
//  Created by Vlad-R on 01/03/15.
//  Copyright (c) 2015 Vlad-R. All rights reserved.
//

import Foundation

extension Array {
    mutating func shuffle() {
        for i in 0..<(self.count - 1) {
            let j = Int(arc4random_uniform(UInt32(self.count - i))) + i
            swap(&self[i], &self[j])
        }
    }
}
