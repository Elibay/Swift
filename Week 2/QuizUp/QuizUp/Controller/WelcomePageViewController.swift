//
//  WelcomePageViewController.swift
//  QuizUp
//
//  Created by Elibay Nuptebek on 3/9/19.
//  Copyright © 2019 Elibay Nuptebek. All rights reserved.
//

import UIKit

class WelcomePageViewController: UIViewController {

    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var nextPage: UIButton!
    
    @IBAction func showButton(_ sender: UITextField) {
        if let text = nameTextField.text {
            if text.count > 0 {
                nextPage.isHidden = false
            } else {
                nextPage.isHidden = true
            }
        }
        else {
            nextPage.isHidden = true
        }
    }
    
    @IBAction func nextPage(_ sender: UIButton) {
        Statics.user.name = nameTextField.text!
        let controller = storyboard?.instantiateViewController(withIdentifier: "QuizViewController") as! QuizViewController
        self.present(controller, animated: false, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextPage.isHidden = true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
