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
        let url = URL.init(string: "https://api.flickr.com/services/rest/?method=flickr.photos.getRecent&api_key=9f342dc0b2edfea383debb95782fd39e&format=json&nojsoncallback=1&api_sig=73f8da583d6907820e9c8b7ac30373c2")
        Alamofire.request(url!, parameters: nil, headers: nil).responseJSON {
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
        print(photoId)
        let url = URL.init(string: "https://api.flickr.com/services/rest/")
        var prms = Parameters()
        prms["method"] = "flickr.photos.getInfo"
        prms["api_key"] = "9f342dc0b2edfea383debb95782fd39e"
        prms["photo_id"] = "32365413677"
        prms["format"] = "json"
        prms["nojsoncallback"] = "1"
        prms["api_sig"] = "7ffc280004b7ba0517c7232071d05e49"
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
