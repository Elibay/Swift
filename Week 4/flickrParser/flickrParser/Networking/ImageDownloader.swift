//
//  ImageDownloader.swift
//  flickrParser
//
//  Created by Elibay Nuptebek on 3/7/19.
//  Copyright © 2019 Elibay Nuptebek. All rights reserved.
//

import Foundation
import AlamofireImage
import Alamofire

class ImageDownloader {
    static func fetchImage(with url: String, completion: @escaping (UIImage) -> Void) {
        Alamofire.request(url).responseImage { response in
            if let image = response.result.value {
                completion(image)
            }
        }
    }
}
