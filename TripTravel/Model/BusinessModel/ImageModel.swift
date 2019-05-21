//
//  ImageModel.swift
//  TripTravel
//
//  Created by Tạ Thành Đạt on 5/21/19.
//  Copyright © 2019 dattt. All rights reserved.
//

import UIKit

class ImageModel: NSObject {
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
    
    init(_ dto: ImageDTO) {
        license_link = dto.license_link
        attribution_link = dto.attribution_link
        attribution_text = dto.attribution_text
        license_text = dto.license_text
        format = dto.format
        mediumUrl = dto.mediumUrl
        mediumWidth = dto.mediumWidth
        mediumHeight = dto.mediumHeight
        originalUrl = dto.originalUrl
        originalWidth = dto.originalWidth
        originalHeight = dto.originalHeight
        thumbailUrl = dto.thumbailUrl
        thumbailWidth = dto.thumbailWidth
        thumbailHeight = dto.thumbailHeight
        owner = dto.owner
        sourceUrl = dto.sourceUrl
        caption = dto.caption
        ownerUrl = dto.ownerUrl
    }
}
