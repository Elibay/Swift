//
//  Contact.swift
//  GetContact
//
//  Created by Narikbi on 2/21/19.
//  Copyright © 2019 KBTU. All rights reserved.
//

import Foundation
import UIKit

class Contact {
    
    var firstname: String
    var lastname: String
    var phone: String
    var tag: UIColor
    
    init(firstname: String, lastname: String, phone: String, tag: UIColor) {
        
        self.firstname = firstname
        self.lastname = lastname
        self.phone = phone
        self.tag = tag
        
    }
    
    static func save(_ contacts: [Contact]) {
        
        var firstnames = [String]()
        var lastnames = [String]()
        var phones = [String]()
        var tags = [UIColor]()
        for contact in contacts {
            firstnames.append(contact.firstname)
            lastnames.append(contact.lastname)
            phones.append(contact.phone)
            tags.append(contact.tag)
        }
        UserDefaults.standard.set(firstnames, forKey: "firstnames")
        UserDefaults.standard.set(lastnames, forKey: "lastnames")
        UserDefaults.standard.set(phones, forKey: "phones")
//        UserDefaults.standard.set(tags, forKey: "tags")
        UserDefaults.standard.set(NSKeyedArchiver.archivedData(withRootObject: tags), forKey: "tags")

    }
    static func saveOneContact(_ contact: Contact) {
        var contacts = Contact.get()
        contacts.append(contact)
        Contact.save(contacts)
    }
    static func get() -> [Contact] {
        var contacs = [Contact]()
        
        let defaults = UserDefaults.standard
        let firstnames = defaults.stringArray(forKey: "firstnames") ?? [String]()
        
        let lastnames = defaults.stringArray(forKey: "lastnames") ?? [String]()
        let phones = defaults.stringArray(forKey: "phones") ?? [String]()
//        let tags = defaults.array(forKey: "tags") as? [UIColor] ?? [UIColor]()
        //For retrieving use following
        let decodedColorsData = UserDefaults.standard.object(forKey: "tags") as! NSData
        let tags = (NSKeyedUnarchiver.unarchiveObject(with: decodedColorsData as Data) as! NSArray) as Array
        
        for index in 0..<firstnames.count {
            let contact = Contact(firstname: firstnames[index], lastname: lastnames[index], phone: phones[index], tag: tags[index] as! UIColor)
            contacs.append(contact)
        }
        return contacs
    }
    
    
}
