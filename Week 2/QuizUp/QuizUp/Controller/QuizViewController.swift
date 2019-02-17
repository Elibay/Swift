//
//  QuizViewController.swift
//  QuizUp
//
//  Created by Elibay Nuptebek on 2/17/19.
//  Copyright © 2019 Elibay Nuptebek. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

    
    
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var fourthButton: UIButton!
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var textLabel: UILabel!
    var manager = QuizManager()
    
    @IBAction func questionButtonTapped(_ sender: UIButton) {
        let tag = sender.tag
        let question = manager.getCurrentQuestion()
        if tag == question.answer {
            sender.backgroundColor = #colorLiteral(red: 0.1803921569, green: 0.8, blue: 0.4431372549, alpha: 1)
        } else {
            sender.backgroundColor = #colorLiteral(red: 0.9058823529, green: 0.2980392157, blue: 0.2352941176, alpha: 1)
        }
    }
    func show() -> Void {
        let question = manager.getCurrentQuestion()
        textLabel.text = question.text
        firstButton.setTitle(question.varinats[0], for: .normal)
        secondButton.setTitle(question.varinats[1], for: .normal)
        thirdButton.setTitle(question.varinats[2], for: .normal)
        fourthButton.setTitle(question.varinats[3], for: .normal)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        show()
        
    }
    

    

}
