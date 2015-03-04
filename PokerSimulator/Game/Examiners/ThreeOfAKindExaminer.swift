//
//  ThreeOfAKindExaminer.swift
//  PokerSimulator
//
//  Created by Vlad-R on 04/03/15.
//  Copyright (c) 2015 Vlad-R. All rights reserved.
//

class ThreeOfAKindExaminer: HandExaminer {
    override func isRankValid(hand: Hand) -> Bool {
        return GameRules.numberOfFormationsInHand(hand, containingNumberOfCards: 3) == 1
    }
    
    override var examinedRank: Hand.Rank {
        return .ThreeOfAKind
    }
}
