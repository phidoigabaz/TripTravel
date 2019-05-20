//
//  HomeViewController.swift
//  TripTravel
//
//  Created by Tạ Thành Đạt on 5/20/19.
//  Copyright © 2019 dattt. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var searchImageView: UIImageView!
    @IBOutlet weak var searchView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func setupView() {
        searchImageView.image = searchImageView.image?.withRenderingMode(.alwaysTemplate)
        searchImageView.tintColor = .black
        searchView.layer.cornerRadius = 10
    }
}
