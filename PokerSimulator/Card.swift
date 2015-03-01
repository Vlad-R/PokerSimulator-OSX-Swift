//
//  Card.swift
//  PokerSimulator
//
//  Created by Vlad-R on 01/03/15.
//  Copyright (c) 2015 Vlad-R. All rights reserved.
//

class Card: Printable {
    enum Suit: String {
        case Clubs = "\u{2663}"
        case Diamonds = "\u{2666}"
        case Hearts = "\u{2665}"
        case Spades = "\u{2660}"
        
        static var allValues: [Suit] {
            return [.Clubs, .Diamonds, .Hearts, .Spades];
        }
    }
    
    enum Rank: String {
        case Two = "2"
        case Three = "3"
        case Four = "4"
        case Five = "5"
        case Six = "6"
        case Seven = "7"
        case Eight = "8"
        case Nine = "9"
        case Ten = "10"
        case Jack = "J"
        case Queen = "Q"
        case King = "K"
        case Ace = "A"
        
        static var allValues: [Rank] {
            return [.Two, .Three, .Four, .Five, .Six, .Seven, .Eight, .Nine, .Ten, .Jack, .Queen, .King, .Ace];
        }
    }
    
    private let suit: Suit
    private let rank: Rank
    
    init(suit: Suit, rank: Rank) {
        self.suit = suit
        self.rank = rank
    }
    
    // MARK: - Printable Protocol
    var description: String {
        return "\(self.suit.rawValue)\(self.rank.rawValue)"
    }
}
