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
        let server = json["server"].stringValue
        let farm = json["farm"].stringValue
        id = json["id"].stringValue
        url = "https://farm\(farm).staticflickr.com/\(server)/\(id)_\(secret).jpg"
        print (url)
    }
}
class PhotoInfo {
    var username: String
    var title: String
    var description: String
    var date: String
    var views: String
    
    init(json: JSON) {
        username = json["owner"]["username"].stringValue
        title = json["title"]["_content"].stringValue
        description = json["description"]["_content"].stringValue
        date = json["date"]["taken"].stringValue
        views = json["views"].stringValue
    }
}
