//
//  ImageDownloader.swift
//  QuizUp
//
//  Created by Elibay Nuptebek on 3/9/19.
//  Copyright © 2019 Elibay Nuptebek. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireImage

class ImageDownloader {
    static func fetchImage(with url: String, completion: @escaping (UIImage) -> Void) {
        Alamofire.request(url).responseImage { response in
            if let image = response.result.value {
                completion(image)
            }
        }
    }
}
