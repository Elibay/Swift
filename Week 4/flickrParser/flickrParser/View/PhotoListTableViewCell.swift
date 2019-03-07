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
        spinner.startAnimating()
        let url = photo.url
        
//        let url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6IQqwgiW8rm_1DZBiS-oObIZGsDi5MLL2uCCbjgdWf5e2ksQb"
        ImageDownloader.fetchImage(with: url) { image in
            self.photo.image = image
            self.spinner.stopAnimating()
            self.spinner.isHidden = true
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
