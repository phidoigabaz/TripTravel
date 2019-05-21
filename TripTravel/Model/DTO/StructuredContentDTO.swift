//
//  StructuredContentDTO.swift
//  TripTravel
//
//  Created by Tạ Thành Đạt on 5/21/19.
//  Copyright © 2019 dattt. All rights reserved.
//

import UIKit
import SwiftyJSON

class StructuredContentDTO: NSObject {
    var image: [ImageDTO] = []
    var section: [SectionsDTO] = []
    
    init(_ json: JSON) {
        for (_, subJson) in json["images"] {
            image.append(ImageDTO(subJson))
        }
        
        for (_, subJson) in json["sections"] {
            section.append(SectionsDTO(subJson))
        }
    }
}
