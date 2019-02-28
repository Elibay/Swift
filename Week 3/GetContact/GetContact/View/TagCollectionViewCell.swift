//
//  TagCollectionViewCell.swift
//  GetContact
//
//  Created by Elibay Nuptebek on 2/28/19.
//  Copyright © 2019 KBTU. All rights reserved.
//

import UIKit
let colors = [UIColor.green, UIColor.black, UIColor.red, UIColor.yellow]
class TagCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var cellButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setTag(_ index: Int) {
        cellButton.backgroundColor = colors[index % 4]
        backgroundColor = colors[index % 4]
    }
}
