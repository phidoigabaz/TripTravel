//
//  File.swift
//  TripTravel
//
//  Created by Tạ Thành Đạt on 5/21/19.
//  Copyright © 2019 dattt. All rights reserved.
//

import Foundation
import UIKit

class PlaceViewModel {
    
    var placeModel: [PlaceModel] = []
    var travelService = TravelService()
    
    func getPlaceCountry() {
        travelService.placeCountry(part_of: "Vietnam", tag_labels: "city") { (model, err) in
            if err == nil {
                self.placeModel = model
            } else {
                if let error = err {
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    func presentPlacePoint(_ navigationController: UINavigationController)  {
        
    }
}

struct PlacePointViewModel {
    var title: String = ""
    var desc: String = ""
    var imageThumb: String = ""
    var placeModel: [PlaceModel] = []
    
    struct CountryInfoModel {
        
    }
    
    //list place in country
    struct PlaceListPointModel: PBaseRowModel {
        var title: String
        var desc: String
        var imageUrl: String
        var identifier: String
        
        init(_ pointListModel: PlaceModel) {
            title = pointListModel.name
            desc = pointListModel.intro
            imageUrl = ""
            for i in pointListModel.images {
                imageUrl = i.mediumUrl
            }
            identifier = ""
        }
    }
}
