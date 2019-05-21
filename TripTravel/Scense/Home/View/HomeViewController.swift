//
//  HomeViewController.swift
//  TripTravel
//
//  Created by Tạ Thành Đạt on 5/20/19.
//  Copyright © 2019 dattt. All rights reserved.
//

import UIKit

protocol HomeViewControllerDelegate {
    
}
class HomeViewController: BaseViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var searchImageView: UIImageView!
    @IBOutlet weak var searchView: UIView!
    
    var viewModel = HomeViewModel()
    var countryModel: [CountryModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func setupView() {
        searchImageView.image = searchImageView.image?.withRenderingMode(.alwaysTemplate)
        searchImageView.tintColor = .black
        searchView.layer.cornerRadius = 10
        collectionView.setRadiusView(10)
        viewModel.parseCountryLocal()
        let nib = UINib(nibName: HomeItemCollectionViewCell.nibName(), bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: HomeItemCollectionViewCell.nibName())
        //layout.itemSize = viewModel.sizeForItem(collectionView)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.reloadData()
    }
}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.countryModel.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeItemCollectionViewCell.nibName(), for: indexPath) as! HomeItemCollectionViewCell
        cell.bindingWithData(viewModel.countryModel[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        viewModel.goInfoCountry(navigationController!)
    }
}
//
//extension HomeViewController: UICollectionViewDelegate {
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        let offsetY = scrollView.contentOffset.y
//        let contentHeight = scrollView.contentSize.height
//        if offsetY > contentHeight - scrollView.frame.size.height {
//            self.collectionView.reloadData()
//        }
//    }
//}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return viewModel.sizeForItem(collectionView)
    }
}
