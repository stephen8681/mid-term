//
//  Restaurant1TableViewCell.swift
//  FoodPin
//
//  Created by eva on 11/5/2018.
//  Copyright © 2018年 Stephen. All rights reserved.
//

import UIKit

class Restaurant1TableViewCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var thumbnailImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
