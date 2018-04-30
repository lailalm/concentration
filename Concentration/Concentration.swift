//
//  Concentration.swift
//  Concentration
//
//  Created by Mauhibah Laila on 30/04/18.
//  Copyright © 2018 Laila Mauhibah. All rights reserved.
//

import Foundation

class Concentration {
    var cards = [Card]()
    var indexOfOneAndOnlyOneFaceUpCard: Int?
    
    func chooseCard(at index: Int) {
        if !cards[index].isMatched {
            if let matchIndex = indexOfOneAndOnlyOneFaceUpCard, matchIndex != index {
                // check if card matches
                if (cards[matchIndex].identifier == cards[index].identifier) {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFacedUp = true
                indexOfOneAndOnlyOneFaceUpCard = nil
            } else {
                // either no cards or 2 cards are face up
                for flipDown in cards.indices {
                    cards[flipDown].isFacedUp = false
                }
                cards[index].isFacedUp = true
                indexOfOneAndOnlyOneFaceUpCard = index
            }
        }
        
    }
    
    init(numberOfPairsOfCards: Int) {
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
        
        // TODO: shuffle the cards
    }
}
