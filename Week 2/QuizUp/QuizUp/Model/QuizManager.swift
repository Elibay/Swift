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
    
    func getCurrentQuestion() -> Question {
        return questions[currentIndex]
    }
}
