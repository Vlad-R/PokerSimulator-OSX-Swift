//
//  FlushExaminer.swift
//  PokerSimulator
//
//  Created by Vlad-R on 04/03/15.
//  Copyright (c) 2015 Vlad-R. All rights reserved.
//

class FlushExaminer: HandExaminer {
    override func isRankValid(hand: Hand) -> Bool {
        return GameRules.isFlush(hand: hand)
    }
    
    override var examinedRank: Hand.Rank {
        return .Flush
    }
}
