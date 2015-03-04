//
//  OnePairExaminer.swift
//  PokerSimulator
//
//  Created by Vlad-R on 04/03/15.
//  Copyright (c) 2015 Vlad-R. All rights reserved.
//

class OnePairExaminer: HandExaminer {
    override func isRankValid(hand: Hand) -> Bool {
        return GameRules.numberOfFormationsInHand(hand, containingNumberOfCards: 2) == 1
    }
    
    override var examinedRank: Hand.Rank {
        return .OnePair
    }
}
