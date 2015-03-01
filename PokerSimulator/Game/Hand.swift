//
//  Hand.swift
//  PokerSimulator
//
//  Created by Vlad-R on 01/03/15.
//  Copyright (c) 2015 Vlad-R. All rights reserved.
//

class Hand: Printable {
    var cards = [Card]()
    
    init(cards: [Card]) {
        self.cards = cards
    }
    
    // MARK: - Printable Protocol
    var description: String {
        return "\(self.cards)"
    }
}
