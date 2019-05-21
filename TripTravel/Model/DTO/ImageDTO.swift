//
//  ImageDTO.swift
//  TripTravel
//
//  Created by Tạ Thành Đạt on 5/21/19.
//  Copyright © 2019 dattt. All rights reserved.
//

import UIKit
import SwiftyJSON

class ImageDTO: NSObject {
    var license_link: String
    var attribution_link: String
    var attribution_text: String
    var license_text: String
    var format: String
    var mediumUrl: String
    var mediumWidth: Float
    var mediumHeight: Float
    var originalUrl: String
    var originalWidth: Float
    var originalHeight: Float
    var thumbailUrl: String
    var thumbailWidth: Float
    var thumbailHeight: Float
    var owner: String
    var sourceUrl: String
    var caption: String
    var ownerUrl: String
    
    init(_ json: JSON) {
        license_link = json["attribution"]["license_link"].stringValue
        attribution_link = json["attribution"]["attribution_link"].stringValue
        attribution_text = json["attribution"]["attribution_text"].stringValue
        license_text = json["attribution"]["license_text"].stringValue
        format = json["attribution"]["format"].stringValue
        mediumUrl = json["sizes"]["medium"]["mediumUrl"].stringValue
        mediumWidth = json["sizes"]["medium"]["mediumWidth"].floatValue
        mediumHeight = json["sizes"]["medium"]["mediumHeight"].floatValue
        originalUrl = json["sizes"]["original"]["originalUrl"].stringValue
        originalWidth = json["sizes"]["original"]["originalWidth"].floatValue
        originalHeight = json["sizes"]["original"]["originalHeight"].floatValue
        thumbailUrl = json["sizes"]["thumbnail"]["thumbailUrl"].stringValue
        thumbailWidth = json["sizes"]["thumbnail"]["thumbailWidth"].floatValue
        thumbailHeight = json["sizes"]["thumbnail"]["thumbailHeight"].floatValue
        owner = json["owner"].stringValue
        sourceUrl = json["sourceUrl"].stringValue
        caption = json["caption"].stringValue
        ownerUrl = json["ownerUrl"].stringValue

    }
}
