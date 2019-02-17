//
//  Question.swift
//  QuizUp
//
//  Created by Elibay Nuptebek on 2/14/19.
//  Copyright © 2019 Elibay Nuptebek. All rights reserved.
//

import Foundation

class Question {
    var text:String = ""
    var varinats = [String]()
    var answer:Int
    
    init(text:String, varinats:[String], answer:Int) {
        self.varinats = varinats
        self.answer = answer
        self.text = text
    }
    
}
