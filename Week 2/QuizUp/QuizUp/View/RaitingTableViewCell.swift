//
//  RaitingTableViewCell.swift
//  QuizUp
//
//  Created by Elibay Nuptebek on 3/9/19.
//  Copyright © 2019 Elibay Nuptebek. All rights reserved.
//

import UIKit

class RaitingTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    func setValue(position:Int, name:String, score: Int) {
        nameLabel.text = "\(position) \(name)"
        scoreLabel.text = String(score)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
