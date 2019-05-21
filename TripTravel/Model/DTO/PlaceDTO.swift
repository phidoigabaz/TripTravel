//
//  PlaceDTO.swift
//  TripTravel
//
//  Created by Tạ Thành Đạt on 5/21/19.
//  Copyright © 2019 dattt. All rights reserved.
//

import UIKit
import SwiftyJSON

class PlaceDTO: NSObject {
    var score: Float
    var name: String
    var countryId: String
    var intro: String
    var snippet: String
    var content: [SectionsDTO] = []
    var images: [ImageDTO] = []
    var structuredContent: [StructuredContentDTO] = []
    var type: String
    var id: String
    
    init(_ json: JSON) {
        score = json["score"].floatValue
        name = json["name"].stringValue
        countryId = json["countryId"].stringValue
        intro = json["intro"].stringValue
        snippet = json["snippet"].stringValue
        for(_, subJson) in json["content"]["sections"] {
            content.append(SectionsDTO(subJson))
        }
        
        for(_, subJson) in json["images"] {
            images.append(ImageDTO(subJson))
        }
        
        for(_, subJson) in json["structured_content"] {
            structuredContent.append(StructuredContentDTO(subJson))
        }
        
        type = json["type"].stringValue
        id = json["id"].stringValue
    }
}
