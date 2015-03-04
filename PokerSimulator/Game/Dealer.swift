//
//  Dealer.swift
//  PokerSimulator
//
//  Created by Vlad-R on 01/03/15.
//  Copyright (c) 2015 Vlad-R. All rights reserved.
//

class Dealer {
    private var deck: Deck?
    private var hands = [Hand]()
    private let examinerChain: HandExaminer!
    
    init() {
        self.examinerChain = self.createExaminerChain()
    }
    
    func startNewRound() {
        self.deck = Deck()
        self.deck?.shuffle()
        
        self.hands.removeAll(keepCapacity: true)
    }
    
    func dealNumberOfHands(handCount: UInt, withNumberOfCards cardCount:UInt) {
        if let deck = self.deck {
            for i in 0..<handCount {
                let cards = deck.draw(count: cardCount)
                let hand = Hand(cards: cards)
                self.hands += [hand]
            }
            self.deck = nil
        }
    }
    
    func examineHands() {
        for hand in self.hands {
            self.examinerChain.examine(hand)
        }
    }
    
    var handsInfo: String {
        var result = ""
        for hand in self.hands {
            result += "\(hand)\n"
        }
        return result
    }
    
    // MARK: - Private
    private func createExaminerChain() -> HandExaminer {
        return RoyalFlushExaminer(
            StraightFlushExaminer(
                FourOfAKindExaminer(
                    FullHouseExaminer(
                        FlushExaminer(
                            StraightExaminer(
                                ThreeOfAKindExaminer(
                                    TwoPairExaminer(
                                        OnePairExaminer(
                                            HighCardExaminer())))))))))
    }
}
