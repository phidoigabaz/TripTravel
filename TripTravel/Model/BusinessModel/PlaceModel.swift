//
//  PlaceModel.swift
//  TripTravel
//
//  Created by Tạ Thành Đạt on 5/21/19.
//  Copyright © 2019 dattt. All rights reserved.
//

import UIKit

class PlaceModel: NSObject {
    var score: Float
    var name: String
    var countryId: String
    var intro: String
    var snippet: String
    var content: [SectionsModel] = []
    var images: [ImageModel] = []
    var structuredContent: [StructuredContentModel] = []
    var type: String
    var id: String
    
    init(_ dto: PlaceDTO) {
        score = dto.score
        name = dto.name
        countryId = dto.countryId
        intro = dto.intro
        snippet = dto.snippet
        for dtos in dto.content {
            content.append(SectionsModel(dtos))
        }
        for dtos in dto.images {
            images.append(ImageModel(dtos))
        }
        for dtos in dto.structuredContent {
            structuredContent.append(StructuredContentModel(dtos))
        }
        type = dto.type
        id = dto.id
    }
}
