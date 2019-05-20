//
//  HomeViewModel.swift
//  TripTravel
//
//  Created by Tạ Thành Đạt on 5/20/19.
//  Copyright © 2019 dattt. All rights reserved.
//

import Foundation
import SwiftyJSON

class HomeViewModel {
    
    func parseCountryLocal() {
        if let filePath = Bundle.main.path(forResource: "country", ofType: "json"),
            let data = FileManager.default.contents(atPath: filePath)  {
            do {
                let json = try JSON(data: data)
                var models = [CountryModel]()
                for item in json.arrayValue {
                    let dto = CountryDTO(item)
                    let model = CountryModel(dto)
                    models.append(model)
                }
            } catch (let error) {
                print(error.localizedDescription)
            }
        }
    }
}
