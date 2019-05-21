//
//  CountryDTO.swift
//  TripTravel
//
//  Created by Tạ Thành Đạt on 5/20/19.
//  Copyright © 2019 dattt. All rights reserved.
//

import UIKit
import SwiftyJSON

class CountryDTO: NSObject {
    var name: String
    var image: String
    var country: String
    
    init(_ json: JSON) {
        name = json["name"].stringValue
        image = json["image"].stringValue
        country = json["country"].stringValue
        
    }
}
