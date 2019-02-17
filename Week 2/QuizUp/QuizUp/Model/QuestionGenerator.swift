//
//  QuestionGenerator.swift
//  QuizUp
//
//  Created by Elibay Nuptebek on 2/17/19.
//  Copyright © 2019 Elibay Nuptebek. All rights reserved.
//

import Foundation

class QuestionGenerator {
    
    static func getQuizQuestion() -> [Question] {
        
        var questions = [Question]()
        
        questions.append(Question.init(text: "Which ocean lies on the east coast of the United States?", varinats: ["Atlantic", "Eastern", "Indian", "Pacific"], answer: 0))
        
        questions.append(Question.init(text: "Which is the world's highest mountain?", varinats: ["Makalu", "Kilimanjaro", "K2", "Mount Everest"], answer: 3))
        
        questions.append(Question.init(text: "How many years lived XXXTentation?", varinats: ["18", "20", "30", "25"], answer: 1))
        
        return questions
    }
    
}
