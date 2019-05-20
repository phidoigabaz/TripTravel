//
//  BaseTableViewCell.swift
//  5dmax
//
//  Created by Huy Nguyen on 3/13/17.
//  Copyright © 2017 Huy Nguyen. All rights reserved.
//

import UIKit

//protocol PBaseTableViewCell {
//    func bindingWithModel(_ model: PBaseRowModel)
//}

class BaseTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel?
    @IBOutlet weak var descLabel: UILabel?
    @IBOutlet weak var thumbImageView: UIImageView?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

//    func bindingWithModel(_ model: PBaseRowModel) {
//        titleLabel?.text = model.title
//        descLabel?.text = model.desc
//        if let url = URL(string: model.image) {
//            thumbImageView?.kf.setImage(with: url)
//        }
//    }
}
