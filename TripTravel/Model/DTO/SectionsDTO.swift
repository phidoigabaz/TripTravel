//
//  SectionDTO.swift
//  TripTravel
//
//  Created by Tạ Thành Đạt on 5/21/19.
//  Copyright © 2019 dattt. All rights reserved.
//

import UIKit
import SwiftyJSON

class SectionsDTO: NSObject {
    var body: String
    var image: [ImageDTO] = []
    var title: String
    
    init(_ json: JSON) {
        body = json["body"].stringValue
        for(_, subJson) in json["image"] {
            image.append(ImageDTO(subJson))
        }
        title = json["title"].stringValue
    }
}
