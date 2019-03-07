//
//  PhotoViewController.swift
//  flickrParser
//
//  Created by Elibay Nuptebek on 3/7/19.
//  Copyright © 2019 Elibay Nuptebek. All rights reserved.
//

import UIKit
import SVProgressHUD

class PhotoViewController: UIViewController {
    var photoID: String = ""
    var photoUrl: String = ""
    
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var t1tle: UILabel!
    @IBOutlet weak var descr1ption: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var views: UILabel!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SVProgressHUD.show()
        loadInfo()
    }
    func loadInfo() {
        spinner.startAnimating()
        ImageDownloader.fetchImage(with: photoUrl) { image in
            self.photo.image = image
            self.spinner.stopAnimating()
            self.spinner.isHidden = true
        }
        PhotoService.getPhotoInfo(photoID, success: { (photoInfo) in
            SVProgressHUD.dismiss()
            print(photoInfo.title)
            self.t1tle.text = photoInfo.title
            self.username.text = photoInfo.username
            self.descr1ption.text = photoInfo.description
            self.date.text = photoInfo.date
            self.views.text = photoInfo.views
        }) { (error) in
            SVProgressHUD.dismiss()
        }
    }
    
}
