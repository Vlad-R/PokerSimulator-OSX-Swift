//
//  Examiner.swift
//  PokerSimulator
//
//  Created by Vlad-R on 03/03/15.
//  Copyright (c) 2015 Vlad-R. All rights reserved.
//

/// Base protocol that a link from the Chain of Responsability must implement.
protocol Examiner {
    var nextExaminer: Examiner? { get set }
    func examine(obj: AnyObject)
}
