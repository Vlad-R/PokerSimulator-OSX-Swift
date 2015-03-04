//
//  RoyalFlushExaminer.swift
//  PokerSimulator
//
//  Created by Vlad-R on 03/03/15.
//  Copyright (c) 2015 Vlad-R. All rights reserved.
//

class RoyalFlushExaminer: HandExaminer {
    override func isRankValid(hand: Hand) -> Bool {
        return GameRules.isStraight(hand: hand) && GameRules.isFlush(hand: hand) && (GameRules.highCardInHand(hand)!.rank == Card.Rank.Ace)
    }
    
    override var examinedRank: Hand.Rank {
        return .RoyalFlush
    }
}
