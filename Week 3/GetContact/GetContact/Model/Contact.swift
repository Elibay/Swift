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
    
}
