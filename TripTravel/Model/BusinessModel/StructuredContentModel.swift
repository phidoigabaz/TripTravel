//
//  StructuredContentModel.swift
//  TripTravel
//
//  Created by Tạ Thành Đạt on 5/21/19.
//  Copyright © 2019 dattt. All rights reserved.
//

import UIKit

class StructuredContentModel: NSObject {
    var image: [ImageModel] = []
    var section: [SectionsModel] = []
    
    init(_ dto: StructuredContentDTO) {
        for dtos in dto.image {
            image.append(ImageModel(dtos))
        }
        
        for dtos in dto.section {
            section.append(SectionsModel(dtos))
        }
    }
}
