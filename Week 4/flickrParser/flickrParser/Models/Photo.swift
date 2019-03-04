//
//  Photo.swift
//  flickrParser
//
//  Created by Elibay Nuptebek on 3/4/19.
//  Copyright © 2019 Elibay Nuptebek. All rights reserved.
//

import Foundation
import SwiftyJSON

class Photo {
    var username: String
    var description: String
    var date: String
    var url: String
    init(json: JSON) {
        username = json["username"].stringValue
        description = json["description"].stringValue
        date = json["date"].stringValue
        url = json["url"].stringValue
    }
}
