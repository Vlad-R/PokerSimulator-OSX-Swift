//
//  main.swift
//  PokerSimulator
//
//  Created by Vlad-R on 01/03/15.
//  Copyright (c) 2015 Vlad-R. All rights reserved.
//

let dealer = Dealer()
dealer.startNewRound()
dealer.dealNumberOfHands(5, withNumberOfCards: 5)
dealer.examineHands()

println(dealer.handsInfo)
