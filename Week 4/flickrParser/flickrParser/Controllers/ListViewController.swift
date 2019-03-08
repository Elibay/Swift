//
//  ListViewController.swift
//  flickrParser
//
//  Created by Elibay Nuptebek on 3/8/19.
//  Copyright © 2019 Elibay Nuptebek. All rights reserved.
//

import UIKit
import SVProgressHUD

class ListViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    var photos = [Photo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadPhotos()
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    func loadPhotos() {
        SVProgressHUD.show()
        PhotoService.getPhotos(success: { (photos) in
            SVProgressHUD.dismiss()
            self.photos = photos
            self.collectionView.reloadData()
        }) { (error) in
            SVProgressHUD.dismiss()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return min (50, photos.count)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCollectionViewCell", for: indexPath) as! PhotoCollectionViewCell
        cell.setValue(photos[indexPath.row].url)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "PhotoViewController") as! PhotoViewController
        controller.photoID = photos[indexPath.row].id
        controller.photoUrl = photos[indexPath.row].url
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
}
