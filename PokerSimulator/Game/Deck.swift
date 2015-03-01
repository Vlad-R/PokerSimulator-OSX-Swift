//
//  Deck.swift
//  PokerSimulator
//
//  Created by Vlad-R on 01/03/15.
//  Copyright (c) 2015 Vlad-R. All rights reserved.
//

class Deck: Printable {
    private var cards = [Card]()
    
    init() {
        for suit in Card.Suit.allValues {
            for rank in Card.Rank.allValues {
                self.cards += [Card(suit: suit, rank: rank)];
            }
        }
    }
    
    func shuffle() {
        self.cards.shuffle()
    }
    
    // MARK: - Printable Protocol
    var description: String {
        return "\(self.cards)"
    }
}
