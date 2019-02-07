//
//  ViewController.swift
//  lecture1
//
//  Created by Elibay Nuptebek on 2/7/19.
//  Copyright © 2019 Elibay Nuptebek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    var emojies = ["✌🏻", "🤙🏻", " 🤟🏻"]
    
    @IBAction func buttonTouched(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.white {
            if sender == button1 {
                sender.setTitle(emojies[0], for: .normal)
            }
            else if sender == button2 {
                sender.setTitle(emojies[1], for: .normal)
            }
            else {
                sender.setTitle(emojies[2], for: .normal)
            }
            sender.backgroundColor = UIColor.red
        }
        else {
            sender.setTitle("", for: .normal)
            sender.backgroundColor = UIColor.white
        }
    }
    override func viewDidLoad() {
        buttonTouched(button1)
        buttonTouched(button2)
        buttonTouched(button3)
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}

