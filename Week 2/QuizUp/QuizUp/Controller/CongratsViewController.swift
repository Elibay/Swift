//
//  CongratsViewController.swift
//  QuizUp
//
//  Created by Elibay Nuptebek on 3/7/19.
//  Copyright © 2019 Elibay Nuptebek. All rights reserved.
//

import UIKit

class CongratsViewController: UIViewController {

    
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    
    @IBAction func replayAction(_ sender: UIButton) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "QuizViewController") as! QuizViewController
        self.present(controller, animated: false, completion: nil)
    }
    
    @IBAction func viewScore(_ sender: UIButton) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "RaitingViewController") as! RaitingViewController
//        self.present(controller, animated: true, completion: nil)
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = "You have scored: \(Statics.user.lastScore) points"
    }
    

}
