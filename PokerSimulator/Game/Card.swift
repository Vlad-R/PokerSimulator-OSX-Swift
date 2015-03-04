//
//  Card.swift
//  PokerSimulator
//
//  Created by Vlad-R on 01/03/15.
//  Copyright (c) 2015 Vlad-R. All rights reserved.
//

class Card: Comparable, Printable {
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
    
    let suit: Suit
    let rank: Rank
    
    var value: UInt {
        switch self.rank {
        case .Two:
            return 2
        case .Three:
            return 3
        case .Four:
            return 4
        case .Five:
            return 5
        case .Six:
            return 6
        case .Seven:
            return 7
        case .Eight:
            return 8
        case .Nine:
            return 9
        case .Ten:
            return 10
        case .Jack:
            return 11
        case .Queen:
            return 12
        case .King:
            return 13
        case .Ace:
            return 14
        default:
            return 0
        }
    }
    
    init(suit: Suit, rank: Rank) {
        self.suit = suit
        self.rank = rank
    }
    
    // MARK: - Printable Protocol
    var description: String {
        return "\(self.suit.rawValue)\(self.rank.rawValue)"
    }
}

// MARK: - Operators:

// MARK: Equatable Protocol
func ==(lhs: Card, rhs: Card) -> Bool {
    return lhs.value == rhs.value
}

// MARK: Comparable Protocol
func <(lhs: Card, rhs: Card) -> Bool {
    return lhs.value < rhs.value
}
