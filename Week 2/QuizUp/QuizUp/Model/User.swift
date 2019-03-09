//
//  User.swift
//  QuizUp
//
//  Created by Elibay Nuptebek on 3/9/19.
//  Copyright © 2019 Elibay Nuptebek. All rights reserved.
//

import Foundation
class User {
    
    var name: String
    var lastScore: Int
    
    init (name: String, lastScore: Int) {
        self.name = name
        self.lastScore = lastScore
    }
    
    static func save(user: User) {
        var users = get()
        users.append(user)
        var names = [String]()
        var scores = [String]()
        for user in users {
            names.append(user.name)
            scores.append(String(user.lastScore))
        }
        UserDefaults.standard.set(names, forKey: "names")
        UserDefaults.standard.set(scores, forKey: "scores")
    }
    
    static func get() -> [User] {
        var users = [User]()
        let defaults = UserDefaults.standard
        let names = defaults.stringArray(forKey: "names") ?? [String]()
        let scores = defaults.stringArray(forKey: "scores") ?? [String]()
        
        for index in 0..<names.count {
            let user = User(name: names[index], lastScore: Int(scores[index]) ?? 0)
            users.append(user)
        }
        return users.sorted(by: { $0.lastScore > $1.lastScore })
    }
}
