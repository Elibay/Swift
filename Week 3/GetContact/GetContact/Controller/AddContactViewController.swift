//
//  AddContactViewController.swift
//  GetContact
//
//  Created by Narikbi on 2/21/19.
//  Copyright © 2019 KBTU. All rights reserved.
//

import UIKit

protocol AddContactDelegate {
    func didCreateContact(contact: Contact)
}


class AddContactViewController: UIViewController, UICollectionViewDataSource {
    
    

    @IBOutlet weak var checkCell: UIImageView!
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var firstnameField: UITextField!
    @IBOutlet weak var lastnameField: UITextField!
    @IBOutlet weak var phoneField: UITextField!
    var tagSetting = UIColor.clear
    
    var delegate: AddContactDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let addButton = UIBarButtonItem.init(title: "Add", style: .done, target: self, action: #selector(addTapped))
        self.navigationItem.rightBarButtonItem = addButton
        
        collectionView.dataSource = self
    }
    @IBAction func tagTapped(_ sender: Any) {
        let button = sender as! UIButton
        tagSetting = (button.backgroundColor ?? UIColor.clear)
//        checkCell.isHidden = false
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! TagCollectionViewCell
        cell.checkCell.isHidden = false
        print("i am here")
    }

    func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! TagCollectionViewCell
        cell.checkCell.isHidden = false
        print("i am her")
    }

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TagCollectionViewCell", for: indexPath) as! TagCollectionViewCell
        cell.setTag(indexPath.row)
        cell.layer.cornerRadius = min(cell.frame.size.height, cell.frame.size.width) / 2.0
        
        cell.layer.masksToBounds = true
        cell.checkCell.isHidden = true
        return cell
        
    }
    
    @objc
    func addTapped() {
        
        guard firstnameField.text != "" else {
            
            let alert = UIAlertController.init(title: "Error", message: "Fill out your name", preferredStyle: .alert)
            let okButton = UIAlertAction.init(title: "OK", style: .cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
            
            return
        }
        
        guard phoneField.text != "" else {
            
            let alert = UIAlertController.init(title: "Error", message: "Fill out your phone", preferredStyle: .alert)
            let okButton = UIAlertAction.init(title: "OK", style: .cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
            
            return
        }
        
        
        let contact = Contact.init(firstname: firstnameField.text ?? "", lastname: lastnameField.text ?? "", phone: phoneField.text ?? "", tag: tagSetting)
        Contact.saveOneContact(contact)
        delegate?.didCreateContact(contact: contact)

        self.navigationController?.popViewController(animated: true)
        
    }
    

}
