//
//  HandExaminer.swift
//  PokerSimulator
//
//  Created by Vlad-R on 03/03/15.
//  Copyright (c) 2015 Vlad-R. All rights reserved.
//

import Cocoa

class HandExaminer: Examiner {
    init(_ nextExaminer: Examiner?) {
        self.nextExaminer = nextExaminer
    }
    
    convenience init() {
        self.init(nil)
    }
    
    // MARK: - Examiner Protocol
    var nextExaminer: Examiner?
    
    func examine(obj: AnyObject) {
        if let hand = obj as? Hand {
            if self.isRankValid(hand) {
                hand.rank = self.examinedRank
            } else {
                self.nextExaminer?.examine(obj)
            }
        }
    }
    
    // MARK: - Methods to Override
    
    /**
    Checks if a given hand is of the examinedRank.
    
    :param: hand The Hand object that will be examined.
    
    :returns: A Bool indicating whether a given hand is of the examinedRank or not.
    */
    func isRankValid(hand: Hand) -> Bool {
        assert(false, "No Implementation")
        return true
    }
    
    /**
    Gets the Hand rank that the current HandExaminer has to check for.
    
    :returns: A Hand.Rank enum case, indicating the rank.
    */
    var examinedRank: Hand.Rank {
        assert(false, "No Implementation")
        return .HighCard
    }
}
