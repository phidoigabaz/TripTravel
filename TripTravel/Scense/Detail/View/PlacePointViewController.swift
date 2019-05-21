//
//  PlaceDetailViewController.swift
//  TripTravel
//
//  Created by Tạ Thành Đạt on 5/21/19.
//  Copyright © 2019 dattt. All rights reserved.
//

import UIKit

class PlacePointViewController: BaseViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var viewModel = PlaceViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        viewModel.getPlaceCountry()
    }
}
