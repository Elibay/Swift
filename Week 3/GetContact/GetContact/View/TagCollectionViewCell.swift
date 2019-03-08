//
//  TagCollectionViewCell.swift
//  GetContact
//
//  Created by Elibay Nuptebek on 2/28/19.
//  Copyright © 2019 KBTU. All rights reserved.
//

import UIKit
var colors = [UIColor.green, UIColor.black, UIColor.red, UIColor.yellow, UIColor.blue,
              UIColor.brown, UIColor.cyan, UIColor.darkGray, UIColor.gray, UIColor.orange,
              UIColor.purple]

class TagCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var checkCell: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override var isSelected: Bool {
        didSet{
            if self.isSelected
            {
                checkCell.isHidden = false
            }
            else
            {
                checkCell.isHidden = true
            }
        }
    }
    
    func setTag(_ index: Int) {
        backgroundColor = colors[index % 11]
    }
}
