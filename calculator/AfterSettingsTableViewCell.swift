//
//  AfterSettingsTableViewCell.swift
//  calculator
//
//  Created by Apple on 26/04/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit

class AfterSettingsTableViewCell: UITableViewCell {
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    @IBOutlet weak var outputDisplayText: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
