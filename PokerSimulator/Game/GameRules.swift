//
//  GameRules.swift
//  PokerSimulator
//
//  Created by Vlad-R on 04/03/15.
//  Copyright (c) 2015 Vlad-R. All rights reserved.
//

class GameRules {
    class func highCardInHand(hand: Hand) -> Card? {
        if let firstCard = hand.cards.first {
            return hand.cards.reduce(firstCard) { max($0, $1) }
        }
        return nil
    }
    
    class func numberOfFormationsInHand(hand: Hand, containingNumberOfCards cardCount: Int) -> UInt {
        hand.cards.sort { $0 < $1 }
        
        var formationCount: UInt = 0
        var cards = hand.cards
        
        while 0 != cards.count {
            let card = cards[0]
            let filteredArray = cards.filter { $0 == card }
            if filteredArray.count == cardCount {
                ++formationCount
            }
            cards.removeRange(Range(start: 0, end: filteredArray.count))
        }
        
        return formationCount
    }
    
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
