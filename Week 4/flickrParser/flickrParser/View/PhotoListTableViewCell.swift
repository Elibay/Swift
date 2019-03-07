//
//  PhotoListTableViewCell.swift
//  flickrParser
//
//  Created by Elibay Nuptebek on 3/6/19.
//  Copyright © 2019 Elibay Nuptebek. All rights reserved.
//

import UIKit

class PhotoListTableViewCell: UITableViewCell {

    @IBOutlet weak var owner: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setValue(_ photo: Photo) {
        owner.text = photo.owner
        title.text = photo.title
        spinner.startAnimating();
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
