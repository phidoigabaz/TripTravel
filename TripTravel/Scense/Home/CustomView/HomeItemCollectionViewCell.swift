//
//  HomeItemCollectionViewCell.swift
//  TripTravel
//
//  Created by Tạ Thành Đạt on 5/20/19.
//  Copyright © 2019 dattt. All rights reserved.
//

import UIKit

class HomeItemCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var thumbaiImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        thumbaiImageView.setRadiusView(10)
        dropShadowView()
    }
    
    func bindingWithData(_ model: CountryModel) {
        nameLabel.text = model.country
        thumbaiImageView.image = UIImage(named: model.image)
    }
    
    //addShadow
    
}
