//
//  PhotoCollectionViewCell.swift
//  flickrParser
//
//  Created by Elibay Nuptebek on 3/8/19.
//  Copyright © 2019 Elibay Nuptebek. All rights reserved.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    func setValue(_ photo_url: String) {
        spinner.startAnimating()
        ImageDownloader.fetchImage(with: photo_url) { image in
            self.photo.image = image
            self.spinner.stopAnimating()
            self.spinner.isHidden = true
        }
    }
}
