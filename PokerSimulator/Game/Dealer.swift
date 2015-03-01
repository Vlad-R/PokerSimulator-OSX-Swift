//
//  Dealer.swift
//  PokerSimulator
//
//  Created by Vlad-R on 01/03/15.
//  Copyright (c) 2015 Vlad-R. All rights reserved.
//

class Dealer: Printable {
    private var deck = Deck()
    private var hands = [Hand]()
    
    init() {
        self.deck.shuffle()
    }
    
    func openNewRound() {
        self.deck = Deck()
        self.deck.shuffle()
        
        self.hands.removeAll(keepCapacity: true)
    }
    
    func dealNumberOfHands(handCount: UInt, withNumberOfCards cardCount:UInt) {
        for i in 0..<handCount {
            let cards = self.deck.draw(count: cardCount)
            let hand = Hand(cards: cards)
            self.hands += [hand]
        }
    }
    
    // MARK: - Printable Protocol
    var description: String {
        var result = ""
        for hand in self.hands {
            result += "\(hand)\n"
        }
        return result
    }
}
