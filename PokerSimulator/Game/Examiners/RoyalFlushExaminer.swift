//
//  RoyalFlushExaminer.swift
//  PokerSimulator
//
//  Created by Vlad-R on 03/03/15.
//  Copyright (c) 2015 Vlad-R. All rights reserved.
//

class RoyalFlushExaminer: HandExaminer {
    override func isHandValid(hand: Hand) -> Bool {
        return false
    }
    
    override var examinedRank: Hand.Rank {
        return .RoyalFlush
    }
}
