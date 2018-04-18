//
//  HomeTableViewCell.swift
//  calculator
//
//  Created by Apple on 18/04/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var homeImage: UIImageView!
    @IBOutlet weak var homeAlbumName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
