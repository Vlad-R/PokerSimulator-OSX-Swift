//
//  HighCardExaminer.swift
//  PokerSimulator
//
//  Created by Vlad-R on 04/03/15.
//  Copyright (c) 2015 Vlad-R. All rights reserved.
//

class HighCardExaminer: HandExaminer {
    override func isRankValid(hand: Hand) -> Bool {
        return true
    }
    
    override var examinedRank: Hand.Rank {
        return .HighCard
    }
}
