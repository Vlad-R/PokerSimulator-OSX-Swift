//
//  Deck.swift
//  PokerSimulator
//
//  Created by Vlad-R on 01/03/15.
//  Copyright (c) 2015 Vlad-R. All rights reserved.
//

class Deck: Printable {
    var cards = [Card]()
    
    init() {
        for suit in Card.Suit.allValues {
            for rank in Card.Rank.allValues {
                self.cards += [Card(suit: suit, rank: rank)];
            }
        }
    }
    
    // MARK: - Printable Protocol
    var description: String {
        return "\(self.cards)"
    }
}
