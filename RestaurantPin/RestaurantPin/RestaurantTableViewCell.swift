//
//  RestaurantTableViewCell.swift
//  RestaurantPin
//
//  Created by Daniel Alejandro on 24/01/20.
//  Copyright © 2020 DAML. All rights reserved.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var typeLabel: UILabel!
    
    @IBOutlet var thumbnailImageView: UIImageView!{
        didSet{
            thumbnailImageView.layer.cornerRadius = 30
            thumbnailImageView.clipsToBounds = true
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
