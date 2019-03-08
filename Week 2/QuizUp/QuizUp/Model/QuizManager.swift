//
//  QuizManager.swift
//  QuizUp
//
//  Created by Elibay Nuptebek on 2/17/19.
//  Copyright © 2019 Elibay Nuptebek. All rights reserved.
//

import Foundation

class QuizManager {
    var questions = QuestionGenerator.getQuizQuestion()
    var currentIndex = 0
    var score = 0
    
    func increaseScore() {
        score += 10
    }
    func getCurrentQuestion() -> Question {
        return questions[currentIndex]
    }
    
    func nextQuestion() {
        currentIndex += 1
    }
    
    func isFinished() -> Bool {
        if currentIndex == questions.count - 1 {
            return true
        }
        return false
    }
}
