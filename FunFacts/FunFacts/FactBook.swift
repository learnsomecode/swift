//
//  FactBook.swift
//  FunFacts
//
//  Created by Josh Trommel on 2015-01-24.
//  Copyright (c) 2015 Josh Trommel. All rights reserved.
//

import Foundation

struct FactBook {
    let facts = [
        "fact 1",
        "fact 2"
    ]
    
    func randomFact() -> String {
        var unsigned = UInt32(facts.count)
        var randomNumber = Int(arc4random_uniform(unsigned))
        return facts[randomNumber]
    }
}