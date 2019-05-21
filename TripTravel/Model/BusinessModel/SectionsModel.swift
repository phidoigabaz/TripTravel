//
//  SectionModel.swift
//  TripTravel
//
//  Created by Tạ Thành Đạt on 5/21/19.
//  Copyright © 2019 dattt. All rights reserved.
//

import UIKit

class SectionsModel: NSObject {
    var body: String
    var image: [ImageModel] = []
    var title: String
    
    init(_ dto: SectionsDTO) {
        body = dto.body
        for dtos in dto.image {
            image.append(ImageModel(dtos))
        }
        title = dto.title
    }
}
