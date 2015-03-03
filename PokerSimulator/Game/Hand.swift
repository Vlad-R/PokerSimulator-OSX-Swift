//
//  Hand.swift
//  PokerSimulator
//
//  Created by Vlad-R on 01/03/15.
//  Copyright (c) 2015 Vlad-R. All rights reserved.
//

class Hand: Printable {
    enum Rank: String, Comparable, Printable {
        case RoyalFlush = "Royal Flush"
        case StraightFlush = "Straight Flush"
        case FourOfAKind = "Four of a Kind"
        case FullHouse = "Full House"
        case Flush = "Flush"
        case Straight = "Straight"
        case ThreeOfAKind = "Three of a Kind"
        case TwoPair = "Two Pair"
        case OnePair = "One Pair"
        case HighCard = "High Card"
        
        init() {
            self = .HighCard
        }
        
        var priority: UInt {
            switch(self) {
            case .HighCard:
                return 0
            case .OnePair:
                return 1
            case .TwoPair:
                return 2
            case .ThreeOfAKind:
                return 3
            case .Straight:
                return 4
            case .Flush:
                return 5
            case .FullHouse:
                return 6
            case .FourOfAKind:
                return 7
            case .StraightFlush:
                return 8
            case .RoyalFlush:
                return 9
            default:
                return 0
            }
        }
        
        // MARK: - Printable Protocol
        var description: String {
            return self.rawValue
        }
    }
    
    var cards: [Card]
    var rank = Rank()
    
    init(cards: [Card]) {
        self.cards = cards
    }
    
    // MARK: - Printable Protocol
    var description: String {
        return "\(self.cards) - \(self.rank)"
    }
}

// MARK: - Operators:

// MARK: Equatable Protocol
func ==(lhs: Hand.Rank, rhs: Hand.Rank) -> Bool {
    return lhs.priority == rhs.priority
}

// MARK: Comparable Protocol
func <(lhs: Hand.Rank, rhs: Hand.Rank) -> Bool {
    return lhs.priority < rhs.priority
}
