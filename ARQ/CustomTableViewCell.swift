//
//  CustomTableViewCell.swift
//  ARQ
//
//  Created by Brenda Miao on 5/14/18.
//  Copyright © 2018 Brenda Miao. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    
    @IBOutlet weak var cellView: UIView!
    
    @IBOutlet weak var medImage: UIImageView!
    
    @IBOutlet weak var medButton: UIButton!
    
    @IBOutlet weak var medLabel: UILabel!
    
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
