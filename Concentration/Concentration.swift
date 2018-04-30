//
//  Concentration.swift
//  Concentration
//
//  Created by Mauhibah Laila on 30/04/18.
//  Copyright © 2018 Laila Mauhibah. All rights reserved.
//

import Foundation

class Concentration {
    private(set) var cards = [Card]()
    private var indexOfOneAndOnlyOneFaceUpCard: Int? {
        get {
            var foundIndex: Int?
            for index in cards.indices {
                if cards[index].isFacedUp {
                    if foundIndex == nil {
                        foundIndex = index
                    } else {
                        return nil
                    }
                }
            }
            return foundIndex
        }
        set {
            for index in cards.indices {
                cards[index].isFacedUp = (index == newValue)
            }
        }
    }
    
    func chooseCard(at index: Int) {
        assert(cards.indices.contains(index), "Concentration.chooseCard(at: \(index)): Chosen card is not in the cards")
        if !cards[index].isMatched {
            if let matchIndex = indexOfOneAndOnlyOneFaceUpCard, matchIndex != index {
                // check if card matches
                if (cards[matchIndex].identifier == cards[index].identifier) {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFacedUp = true
            } else {
                // either no cards or 2 cards are face up
                indexOfOneAndOnlyOneFaceUpCard = index
            }
        }
        
    }
    
    init(numberOfPairsOfCards: Int) {
        assert(numberOfPairsOfCards > 0, "Concentration.init(numberOfPairsOfCards: \(numberOfPairsOfCards)): you must have at least one pair of cards")
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
        
        // TODO: shuffle the cards
    }
}
