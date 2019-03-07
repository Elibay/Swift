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
    var owner: String
    var title: String
//    var secret: String
//    var server: String
//    var farm: String
    var id: String
    var url: String
    init(json: JSON) {
        owner = json["owner"].stringValue
        title = json["title"].stringValue
        let secret = json["secret"].stringValue
        let server = json["secret"].stringValue
        let farm = json["secret"].stringValue
        id = json["id"].stringValue
        url = "http://farm\(farm).staticflickr.com/\(server)/\(id)_\(secret).jpg"
    }
}
