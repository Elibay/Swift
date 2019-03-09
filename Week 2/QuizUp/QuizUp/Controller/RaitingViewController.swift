//
//  RaitingViewController.swift
//  QuizUp
//
//  Created by Elibay Nuptebek on 3/9/19.
//  Copyright © 2019 Elibay Nuptebek. All rights reserved.
//

import UIKit

class RaitingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var users = [User]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        users = User.get()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RaitingTableViewCell", for: indexPath) as! RaitingTableViewCell
        cell.setValue(position: indexPath.row + 1, name: users[indexPath.row].name, score: users[indexPath.row].lastScore)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }


}
