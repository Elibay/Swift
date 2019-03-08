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
        let url = URL.init(string: "https://api.flickr.com/services/rest/")
        var prms = Parameters()
        prms["method"] = "flickr.photos.getRecent"
        prms["api_key"] = "cdd3b7abf0c1cab4149f6616c1171c62"
        prms["format"] = "json"
        prms["nojsoncallback"] = "1"
        prms["api_sig"] = "46f73feb5d3474635a08458e2b554071"
        Alamofire.request(url!, parameters: prms, headers: nil).responseJSON {
            response in
            switch response.result {
            case .success(let val):
                let photos = JSON(val)["photos"]["photo"].arrayValue
                var res = [Photo]()
                print(val)
                for json in photos {
                    res.append(Photo.init(json: json))
                }
                success(res)
            case .failure(let error):
                failure(error)
            }
        }
    }
    static func getPhotoInfo(_ photoId:String, success: @escaping (PhotoInfo) -> Void, failure: @escaping (Error) -> Void) {
        
        let url = URL.init(string: "https://api.flickr.com/services/rest/")
        var prms = Parameters()
        prms["method"] = "flickr.photos.getInfo"
        prms["api_key"] = "cdd3b7abf0c1cab4149f6616c1171c62"
        prms["photo_id"] = photoId
        prms["format"] = "json"
        prms["nojsoncallback"] = "1"
//        prms["api_sig"] = "a6fe446016d20cf4bae22eed7199d2e2"
        Alamofire.request(url!, parameters: prms, headers: nil).responseJSON {
            response in
            switch response.result {
            case .success(let val):
                print (val)
                let res = PhotoInfo.init(json: JSON(val)["photo"])
                success(res)
            case .failure(let error):
                failure(error)
            }
        }
    }
}
