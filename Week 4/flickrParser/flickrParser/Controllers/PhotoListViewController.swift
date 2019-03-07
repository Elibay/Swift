//
//  PhotoListViewController.swift
//  flickrParser
//
//  Created by Elibay Nuptebek on 3/5/19.
//  Copyright © 2019 Elibay Nuptebek. All rights reserved.
//

import UIKit
import SVProgressHUD


class PhotoListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var photos = [Photo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadPhotos()
        
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func loadPhotos() {
        SVProgressHUD.show()
        PhotoService.getPhotos(success: { (photos) in
            SVProgressHUD.dismiss()
            self.photos = photos
            self.tableView.reloadData()
        }) { (error) in
            SVProgressHUD.dismiss()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return min (photos.count, 10)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 255
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "PhotoViewController") as! PhotoViewController
        controller.photoID = photos[indexPath.row].id
        controller.photoUrl = photos[indexPath.row].url
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PhotoListTableViewCell", for: indexPath) as! PhotoListTableViewCell
        cell.setValue(photos[indexPath.row])
        return cell
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
