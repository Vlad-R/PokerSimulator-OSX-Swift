//
//  GameRules.swift
//  PokerSimulator
//
//  Created by Vlad-R on 04/03/15.
//  Copyright (c) 2015 Vlad-R. All rights reserved.
//

class GameRules {
    /**
    Checks a given hand for the card with the highest value.
    
    :param: hand The Hand object that will be checked.
    
    :returns: The Card object from the given Hand, with the highest value.
    */
    class func highCardInHand(hand: Hand) -> Card? {
        if let firstCard = hand.cards.first {
            return hand.cards.reduce(firstCard) { max($0, $1) }
        }
        return nil
    }
    
    /**
    Checks a given hand for formations containing cards with the same Rank.
    
    :param: hand The Hand object that will be checked.
    :param: cardCount The number of cards that are considered in order to make up a formation.
    
    :returns: The number of described formations found.
    */
    class func numberOfFormationsInHand(hand: Hand, containingNumberOfCards cardCount: Int) -> UInt {
        hand.cards.sort { $0 < $1 }
        
        var formationCount: UInt = 0
        var cards = hand.cards
        
        while 0 != cards.count {
            let card = cards[0]
            // Get all cards with the Rank of the first card
            let filteredArray = cards.filter { $0 == card }
            if filteredArray.count == cardCount {
                ++formationCount
            }
            // Remove all cards with the Rank of the first card
            cards.removeRange(Range(start: 0, end: filteredArray.count))
        }
        
        return formationCount
    }
    
    /**
    Checks if a given hand is a Flush.
    
    :param: hand The Hand object that will be checked.
    
    :returns: A Bool indicating whether a given hand is a Flush or not.
    */
    class func isFlush(#hand: Hand) -> Bool {
        if hand.cards.count < 2 {
            return false
        }
        
        var k = true
        if let firstCard = hand.cards.first {
            let suit = firstCard.suit
            for card in hand.cards {
                if card.suit != suit {
                    k = false
                }
            }
        }
        return k
    }
    
    /**
    Checks if a given hand is a Straight.
    
    :param: hand The Hand object that will be checked.
    
    :returns: A Bool indicating whether a given hand is a Straight or not.
    */
    class func isStraight(#hand: Hand) -> Bool {
        if hand.cards.count < 2 {
            return false
        }
        
        var k = true
        hand.cards.sort { $0 < $1 }
        for index in 1..<hand.cards.count {
            if hand.cards[index].value - hand.cards[index - 1].value != 1 {
                k = false
            }
        }
        return k
    }
}
