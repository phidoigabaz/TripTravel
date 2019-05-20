//
//  CountryModel.swift
//  TripTravel
//
//  Created by Tạ Thành Đạt on 5/20/19.
//  Copyright © 2019 dattt. All rights reserved.
//

import UIKit

class CountryModel: NSObject {
    var name: String
    
    init(_ dto: CountryDTO) {
        name = dto.name
    }
}
