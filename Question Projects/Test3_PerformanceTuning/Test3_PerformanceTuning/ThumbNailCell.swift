//
//  ThumbNailCell.swift
//  Test3_PerformanceTuning
//
//  Created by Lunar's Macbook Pro on 2/5/2561 BE.
//  Copyright © 2561 Lunar's Macbook Pro. All rights reserved.
//

import UIKit

class ThumbNailCell: UITableViewCell {

    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
