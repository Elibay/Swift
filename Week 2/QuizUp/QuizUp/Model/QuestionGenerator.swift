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
        
        questions.append(Question.init(text: "Which ocean lies on the east coast of the United States?",
            varinats: ["Atlantic", "Eastern", "Indian", "Pacific"], answer: 0, imageUrl:
            "https://cdn.playbuzz.com/cdn//f063e8fe-ad57-485e-8211-ed2ee0d9a205/4a864049-816a-479e-8736-51740e8b724b.jpg"))
        questions.append(Question.init(text: "Which is the world's highest mountain?", varinats: ["Makalu", "Kilimanjaro", "K2", "Mount Everest"], answer: 3, imageUrl:
            "https://cdn.playbuzz.com/cdn//f063e8fe-ad57-485e-8211-ed2ee0d9a205/4d101ba1-9275-4fb5-ba2c-5606e6c0274e.jpg"))
        questions.append(Question.init(text: "How many years lived XXXTentation?", varinats:
            ["18", "20", "30", "25"], answer: 1, imageUrl:
            "https://lastfm-img2.akamaized.net/i/u/ar0/f4fd91470883f4d836f2032306e7fb12.jpg"))
        questions.append(Question.init(text: "The biggest desert in the world is. . ?", varinats:
            ["Arabian", "Sahara", "Great Australian", "Aral"], answer: 1, imageUrl:
            "https://cdn.playbuzz.com/cdn//f063e8fe-ad57-485e-8211-ed2ee0d9a205/f33b8cf4-9602-4f91-85db-ca29451e927d.jpg"))
        questions.append(Question.init(text: "Which of these cities is not in Europe?", varinats:
            ["Reykjavik", "Barcelona", "Moscow", "Prague"], answer: 2, imageUrl:
            "https://cdn.playbuzz.com/cdn//f063e8fe-ad57-485e-8211-ed2ee0d9a205/07121a24-b34b-4711-9bfa-5287163e65ce.jpg"))
        //
        questions.append(Question.init(text: "The United Kingdom is comprised of how many countries?", varinats:
            ["5", "6", "4", "8"], answer: 2, imageUrl:
            "https://cdn.playbuzz.com/cdn//f063e8fe-ad57-485e-8211-ed2ee0d9a205/ecf8af7b-8541-4572-b63b-ee7d7f9fc4cc.jpg"))
        questions.append(Question.init(text: "Which of the following countries do not border France?", varinats:
            ["Spain", "Italy", "Netherlands", "Germany"], answer: 2, imageUrl:
            "https://cdn.playbuzz.com/cdn//f063e8fe-ad57-485e-8211-ed2ee0d9a205/5f54df78-1031-456a-84be-c1d5c2f8299e.jpg"))
        questions.append(Question.init(text: "Which lake is the arrow pointing to?", varinats:
            ["Erie", "Huron", "Michigan", "Superior"], answer: 2, imageUrl:
            "https://cdn.playbuzz.com/cdn//f063e8fe-ad57-485e-8211-ed2ee0d9a205/ffe658ac-bc6a-4316-9b9d-b05349305a70.jpg"))
        questions.append(Question.init(text: "Which U.S. state is the Grand Canyon located in?", varinats:
            ["New Mexico", "Arizona", "Wyoming", "Nevada"], answer: 1, imageUrl:
            "https://cdn.playbuzz.com/cdn//f063e8fe-ad57-485e-8211-ed2ee0d9a205/6e99b817-7be7-4f8a-9146-3f602ac81fad.jpg"))
        questions.append(Question.init(text: "Which is the longest river in the world?", varinats:
            ["Nile", "Yellow", "Congo", "Amazon"], answer: 0, imageUrl:
            "https://cdn.playbuzz.com/cdn//f063e8fe-ad57-485e-8211-ed2ee0d9a205/13efaf72-d695-4f65-b043-2b805b6a88eb.jpg"))
        
        //
        questions.append(Question.init(text: "What is this colored area of land called?", varinats:
            ["Arabian Peninsula", "Saharah Desert", "The Middle East", "Iberian Peninsula"], answer: 0, imageUrl:
            "https://cdn.playbuzz.com/cdn//f063e8fe-ad57-485e-8211-ed2ee0d9a205/fa2c7b84-8cb6-4e9e-b6a5-0f58f82c9123.jpg"))
        
        questions.append(Question.init(text: "Which is the largest body of water?", varinats:
            ["Indian", "Atlantic", "Southern", "Pacific"], answer: 3, imageUrl:
            "https://cdn.playbuzz.com/cdn//f063e8fe-ad57-485e-8211-ed2ee0d9a205/1226f177-dc1a-4142-8875-bdaa177717d7.jpg"))
        questions.append(Question.init(text: "Which is the smallest country, measured by total land area?", varinats:
            ["Monaco", "Maldives", "Tuvalu", "Vatican"], answer: 3, imageUrl:
            "https://cdn.playbuzz.com/cdn//f063e8fe-ad57-485e-8211-ed2ee0d9a205/866f119d-e5e2-45ca-846c-b6d10a59d1e4.jpg"))
        questions.append(Question.init(text: "What is the approximate size of Earth's equator?", varinats:
            ["50k km", "40k km", "30k km", "20k km"], answer: 1, imageUrl:
            "https://cdn.playbuzz.com/cdn//f063e8fe-ad57-485e-8211-ed2ee0d9a205/88fc2361-464e-4856-8a7e-6e8bd668c546.jpg"))
        questions.append(Question.init(text: "Kazakhstan is thought to be the original home of what fruit?", varinats:
            ["Pear", "Apple", "Nectarine", "Pomegranate"], answer: 1, imageUrl:
            "https://foodrevolution.org/wp-content/uploads/2018/05/blog-featured_fruit-20180502.jpg"))
        
        
        
        
        
        return questions
    }
    
}
