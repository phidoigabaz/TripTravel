//
//  FoodService.swift
//  ChenRestaurant
//
//  Created by Tạ Thành Đạt on 5/15/19.
//  Copyright © 2019 dattt. All rights reserved.
//

import Foundation
import UIKit

class TravelService: APIServiceObject {
    func placeCountry(part_of: String, tag_labels: String,completion: @escaping(([PlaceModel], NSError?) ->Void)) {
        let request = APIRequestProvider.shareInstance.placeCountry(part_of: part_of, tag_labels: tag_labels)
        serviceAgent.startRequest(request) { (json, error) in
            if error == nil {
                var models: [PlaceModel] = []
                for subJson in json.arrayValue {
                    let dto = PlaceDTO(subJson)
                    let model = PlaceModel(dto)
                    models.append(model)
                }
            } else {
                if let err = error {
                    print(err.localizedDescription)
                }
            }
        }
    }
}
