//
//  Game.swift
//  Bullseye
//
//  Created by Maunesh Ahir on 12/29/20.
//

import Foundation

struct Game {
    var target: Int = Int.random(in: 1...100)
    var score = 0
    var currentRound = 1
    
    func points(sliderValue: Int) -> Int {
        let difference = abs(self.target - sliderValue)
        let bonus: Int
        
        if difference == 0 {
            bonus = 100
        } else if difference <= 2 {
            bonus = 50
        } else {
            bonus = 0
        }
        return 100 - difference + bonus
    }
    
    mutating func startNewRound(points: Int) {
        self.score += points
        self.currentRound += 1
        target = Int.random(in: 1...100 )
    }
    
    mutating func restart() {
        self.score = 0
        self.currentRound = 1
    }
    
    
}
