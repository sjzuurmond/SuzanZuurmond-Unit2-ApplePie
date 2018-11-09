//
//  Game.swift
//  Apple Pie
//
//  Created by Suzan Zuurmond on 09/11/2018.
//  Copyright © 2018 Suzan Zuurmond. All rights reserved.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    
    var formattedWord: String {
        var guessedWord : [String] = []
        for letter in word {
            if guessedLetters.contains(letter) {
                guessedWord.append("\(letter)")
            } else {
                guessedWord.append("_")
            }
        }
        return guessedWord.joined(separator: " ")
    }
    
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        }
    }
}
