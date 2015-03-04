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
            if self.isHandValid(hand) {
                hand.rank = self.examinedRank
            } else {
                self.nextExaminer?.examine(obj)
            }
        }
    }
    
    // MARK: - Methods to Override
    func isHandValid(hand: Hand) -> Bool {
        assert(false, "No Implementation")
        return true
    }
    
    var examinedRank: Hand.Rank {
        assert(false, "No Implementation")
        return .HighCard
    }
}
