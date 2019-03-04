//
//  PhotoService.swift
//  flickrParser
//
//  Created by Elibay Nuptebek on 3/4/19.
//  Copyright © 2019 Elibay Nuptebek. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class PhotoService {
    static func getPhotos(success: @escaping ([Photo]) -> Void, failure: @escaping (Error) -> Void) {
        let url = URL.init(string: "https://www.flickr.com/services/api/render?method=flickr.photos.getRecent&api_key=93ba2a13e201e37687788d9909f85b72&format=json&nojsoncallback=1&api_sig=8ac88b93b67f14c6d8a37cad501bdf7c")
        Alamofire.request(url!, parameters: nil, headers: nil).responseJSON {
            response in
            switch response.result {
            case .success(let val):
                let photos = JSON(val)["photos"].arrayValue
                var res = [Photo]()
                for json in photos {
                    res.append(Photo.init(json: json))
                }
                success(res)
            case .failure(let error):
                failure(error)
            }
        }
    }
}
