//
//  Model.swift
//  ImageLoading
//
//  Created by Ravindra Patidar on 23/09/19.
//  Copyright © 2019 Ravindra Patidar. All rights reserved.
//

import Foundation
//typealias Photos = [Photo]

struct Photo {
   let id: String
   let raw: String
   let full: String
   let regular: String
   let small: String
   let thumb: String
   let  height : Int
}
//struct Photo {
//    public private(set)  var id: String
//    public private(set)var urls: Urls
//}

enum URLS {
    case raw, full, regular, small, thumb
}

