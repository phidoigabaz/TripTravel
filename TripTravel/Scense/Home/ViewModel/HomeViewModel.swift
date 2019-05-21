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
    
    var countryModel: [CountryModel] = []
    
    init() {
        
    }
    
    func parseCountryLocal() {
        if let filePath = Bundle.main.path(forResource: "country", ofType: "json"),
            let data = FileManager.default.contents(atPath: filePath)  {
            do {
                let json = try JSON(data: data)
                for item in json.arrayValue {
                    let dto = CountryDTO(item)
                    let model = CountryModel(dto)
                    countryModel.append(model)
                }
            } catch (let error) {
                print(error.localizedDescription)
            }
        }
    }
    
    //MARK: push viewcontroller
    
    func goInfoCountry(_ navigation: UINavigationController) {
        let placePointVC = PlacePointViewController.initWithDefaultNib()
        navigation.pushViewController(placePointVC, animated: true)
    }
    
    //MARK: push data
    func presentPlacePoint() {
        
    }
    
    //MARK: size for item cell
    func sizeForItem(_ collectionView: UICollectionView) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.bounds.size.height*getHeightItem())
    }
    
    func getHeightItem() -> CGFloat {
        return Constants.isIpad ? 3/4 : 1/2
    }
}
